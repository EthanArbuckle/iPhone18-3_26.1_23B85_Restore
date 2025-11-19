@interface CSAppearance
+ (CSAppearance)appearanceWithIdentifier:(id)a3;
+ (id)appearanceForProvider:(id)a3;
- (BOOL)isEqualToAppearance:(id)a3;
- (CSAppearance)initWithIdentifier:(id)a3;
- (id)componentForType:(int64_t)a3 identifier:(id)a4;
- (id)componentForType:(int64_t)a3 property:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)flagForComponentType:(int64_t)a3;
- (void)addComponent:(id)a3;
- (void)removeAllComponentsWithIdentifier:(id)a3;
- (void)removeComponent:(id)a3;
- (void)reset;
- (void)setComponents:(id)a3;
- (void)unionAppearance:(id)a3;
@end

@implementation CSAppearance

+ (CSAppearance)appearanceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4];

  return v5;
}

+ (id)appearanceForProvider:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 appearanceIdentifier];
    v6 = [a1 appearanceWithIdentifier:v5];

    v7 = [v4 components];
    [v6 setComponents:v7];

    v8 = [v4 legibilitySettings];

    [v6 setLegibilitySettings:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CSAppearance)initWithIdentifier:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v5)
  {
    [CSAppearance initWithIdentifier:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CSAppearance initWithIdentifier:a2];
  }

  v13.receiver = self;
  v13.super_class = CSAppearance;
  v6 = [(CSAppearance *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    components = v6->_components;
    v6->_components = v7;

    v9 = [v5 copy];
    identifier = v6->_identifier;
    v6->_identifier = v9;

    legibilitySettings = v6->_legibilitySettings;
    v6->_legibilitySettings = 0;
  }

  return v6;
}

- (void)reset
{
  legibilitySettings = self->_legibilitySettings;
  self->_legibilitySettings = 0;

  components = self->_components;

  [(NSMutableSet *)components removeAllObjects];
}

- (void)unionAppearance:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 legibilitySettings];
  if (v5)
  {
    objc_storeStrong(&self->_legibilitySettings, v5);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v4 components];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CSAppearance *)self addComponent:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)isEqualToAppearance:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else if ([(CSAppearance *)v4 isMemberOfClass:objc_opt_class()]&& (transitional = self->_transitional, transitional == [(CSAppearance *)v4 isTransitional]))
  {
    v6 = [(CSAppearance *)v4 legibilitySettings];
    v7 = 0;
    legibilitySettings = self->_legibilitySettings;
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = legibilitySettings == 0;
    }

    if (legibilitySettings)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6 != 0;
    }

    if (v9 && !v10)
    {
      if (legibilitySettings && ![(_UILegibilitySettings *)legibilitySettings sb_isEqualToLegibilitySettings:v6])
      {
        v7 = 0;
      }

      else
      {
        components = self->_components;
        v12 = [(CSAppearance *)v4 components];
        v7 = [(NSMutableSet *)components isEqual:v12];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)componentForType:(int64_t)a3 identifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_components;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 type] == a3)
        {
          v13 = [v12 identifier];
          v14 = BSEqualObjects();

          if (v14)
          {
            v15 = v12;
            goto LABEL_12;
          }
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)componentForType:(int64_t)a3 property:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_components;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if ([v12 type] == a3 && (a4 & ~objc_msgSend(v12, "properties")) == 0)
        {
          if (v9 && (v13 = [v12 priority], v13 <= objc_msgSend(v9, "priority")))
          {
            v15 = [v12 priority];
            v16 = [v9 priority];
            if (a3 == 1 && v15 == v16)
            {
              v17 = [v9 combiningWithEquivalent:v12];
            }
          }

          else
          {
            v14 = v12;

            v9 = v14;
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v18 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v8 = v18;
    }

    while (v18);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)flagForComponentType:(int64_t)a3
{
  v3 = [(CSAppearance *)self componentForType:a3 property:8];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 flag];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)addComponent:(id)a3
{
  if (a3)
  {
    v6 = [a3 copy];
    v4 = [v6 identifier];

    if (!v4)
    {
      v5 = [(CSAppearance *)self identifier];
      [v6 setIdentifier:v5];
    }

    [(NSMutableSet *)self->_components addObject:v6];
  }
}

- (void)removeComponent:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_components removeObject:?];
  }
}

- (void)removeAllComponentsWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableSet *)self->_components copy];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = BSEqualObjects();

        if (v12)
        {
          [(NSMutableSet *)self->_components removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)setComponents:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableSet *)self->_components removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CSAppearance *)self addComponent:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() appearanceForProvider:self];
  [v4 setTransitional:{-[CSAppearance isTransitional](self, "isTransitional")}];
  return v4;
}

- (id)succinctDescription
{
  v2 = [(CSAppearance *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"ID"];
  v5 = [v3 appendBool:self->_transitional withName:@"transitional"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSAppearance *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(CSAppearance *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__CSAppearance_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_27838B838;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __54__CSAppearance_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 32) succinctDescription];
  v4 = [v2 appendObject:v3 withName:@"legibilitySettings" skipIfNil:1];

  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 8) allObjects];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"priority" ascending:0];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9 = [v6 sortedArrayUsingDescriptors:v8];
  [v5 appendArraySection:v9 withName:@"components" skipIfEmpty:1];
}

- (void)initWithIdentifier:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"CSAppearance.m";
    v9 = 1024;
    v10 = 44;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21EB05000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIdentifier:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"CSAppearance.m";
    v9 = 1024;
    v10 = 44;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21EB05000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
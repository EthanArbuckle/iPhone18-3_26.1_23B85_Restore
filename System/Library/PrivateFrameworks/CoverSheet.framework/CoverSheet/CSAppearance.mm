@interface CSAppearance
+ (CSAppearance)appearanceWithIdentifier:(id)identifier;
+ (id)appearanceForProvider:(id)provider;
- (BOOL)isEqualToAppearance:(id)appearance;
- (CSAppearance)initWithIdentifier:(id)identifier;
- (id)componentForType:(int64_t)type identifier:(id)identifier;
- (id)componentForType:(int64_t)type property:(unint64_t)property;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)flagForComponentType:(int64_t)type;
- (void)addComponent:(id)component;
- (void)removeAllComponentsWithIdentifier:(id)identifier;
- (void)removeComponent:(id)component;
- (void)reset;
- (void)setComponents:(id)components;
- (void)unionAppearance:(id)appearance;
@end

@implementation CSAppearance

+ (CSAppearance)appearanceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

+ (id)appearanceForProvider:(id)provider
{
  if (provider)
  {
    providerCopy = provider;
    appearanceIdentifier = [providerCopy appearanceIdentifier];
    v6 = [self appearanceWithIdentifier:appearanceIdentifier];

    components = [providerCopy components];
    [v6 setComponents:components];

    legibilitySettings = [providerCopy legibilitySettings];

    [v6 setLegibilitySettings:legibilitySettings];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CSAppearance)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
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

    v9 = [identifierCopy copy];
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

- (void)unionAppearance:(id)appearance
{
  v16 = *MEMORY[0x277D85DE8];
  appearanceCopy = appearance;
  legibilitySettings = [appearanceCopy legibilitySettings];
  if (legibilitySettings)
  {
    objc_storeStrong(&self->_legibilitySettings, legibilitySettings);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  components = [appearanceCopy components];
  v7 = [components countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(components);
        }

        [(CSAppearance *)self addComponent:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [components countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)isEqualToAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (self == appearanceCopy)
  {
    v7 = 1;
  }

  else if ([(CSAppearance *)appearanceCopy isMemberOfClass:objc_opt_class()]&& (transitional = self->_transitional, transitional == [(CSAppearance *)appearanceCopy isTransitional]))
  {
    legibilitySettings = [(CSAppearance *)appearanceCopy legibilitySettings];
    v7 = 0;
    legibilitySettings = self->_legibilitySettings;
    if (legibilitySettings)
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
      v10 = legibilitySettings != 0;
    }

    if (v9 && !v10)
    {
      if (legibilitySettings && ![(_UILegibilitySettings *)legibilitySettings sb_isEqualToLegibilitySettings:legibilitySettings])
      {
        v7 = 0;
      }

      else
      {
        components = self->_components;
        components = [(CSAppearance *)appearanceCopy components];
        v7 = [(NSMutableSet *)components isEqual:components];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)componentForType:(int64_t)type identifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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
        if ([v12 type] == type)
        {
          identifier = [v12 identifier];
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

- (id)componentForType:(int64_t)type property:(unint64_t)property
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
        if ([v12 type] == type && (property & ~objc_msgSend(v12, "properties")) == 0)
        {
          if (v9 && (v13 = [v12 priority], v13 <= objc_msgSend(v9, "priority")))
          {
            priority = [v12 priority];
            priority2 = [v9 priority];
            if (type == 1 && priority == priority2)
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

- (int64_t)flagForComponentType:(int64_t)type
{
  v3 = [(CSAppearance *)self componentForType:type property:8];
  v4 = v3;
  if (v3)
  {
    flag = [v3 flag];
  }

  else
  {
    flag = 0x7FFFFFFFFFFFFFFFLL;
  }

  return flag;
}

- (void)addComponent:(id)component
{
  if (component)
  {
    v6 = [component copy];
    identifier = [v6 identifier];

    if (!identifier)
    {
      identifier2 = [(CSAppearance *)self identifier];
      [v6 setIdentifier:identifier2];
    }

    [(NSMutableSet *)self->_components addObject:v6];
  }
}

- (void)removeComponent:(id)component
{
  if (component)
  {
    [(NSMutableSet *)self->_components removeObject:?];
  }
}

- (void)removeAllComponentsWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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
        identifier = [v10 identifier];
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

- (void)setComponents:(id)components
{
  v15 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  [(NSMutableSet *)self->_components removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = componentsCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() appearanceForProvider:self];
  [v4 setTransitional:{-[CSAppearance isTransitional](self, "isTransitional")}];
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSAppearance *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"ID"];
  v5 = [v3 appendBool:self->_transitional withName:@"transitional"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSAppearance *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(CSAppearance *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__CSAppearance_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_27838B838;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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
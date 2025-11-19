@interface CHSWidgetExtension
- (BOOL)isEqual:(id)a3;
- (BOOL)isLinkedOnOrAfter:(unint64_t)a3;
- (CHSWidgetExtension)initWithCoder:(id)a3;
- (id)_init;
- (id)controlDescriptorForKind:(id)a3;
- (id)copyFilteredToOptions:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initFromExtension:(id)a3 includeIntents:(BOOL)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilderWithBundleIDInsteadOfFullIdentity:(BOOL)a3;
- (id)succinctDescriptionWithBundleIDWithoutFullIdentity;
- (id)widgetDescriptorForKind:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetExtension

- (unint64_t)hash
{
  if (self->_hasValidHash)
  {
    return self->_hashValue;
  }

  v4 = [MEMORY[0x1E698E6B8] builder];
  v5 = [v4 appendObject:self->_identity];
  v6 = [v4 appendString:self->_containerBundleLocalizedDisplayName];
  v7 = [v4 appendString:self->_localizedDisplayName];
  v8 = [v4 appendObject:self->_orderedWidgetDescriptors];
  v9 = [v4 appendObject:self->_orderedControlDescriptors];
  v10 = [v4 appendObject:self->_entitlements];
  v11 = [v4 appendInteger:self->_dataProtectionLevel];
  v12 = [v4 appendObject:self->_liveActivityDescriptors];
  v3 = [v4 hash];
  self->_hashValue = v3;
  self->_hasValidHash = 1;

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CHSWidgetExtension;
  return [(CHSWidgetExtension *)&v3 init];
}

- (id)initFromExtension:(id)a3 includeIntents:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v46.receiver = self;
  v46.super_class = CHSWidgetExtension;
  v7 = [(CHSWidgetExtension *)&v46 init];
  if (v7)
  {
    v8 = [*(v6 + 1) copy];
    localizedDisplayName = v7->_localizedDisplayName;
    v7->_localizedDisplayName = v8;

    v10 = [*(v6 + 2) copy];
    containerBundleLocalizedDisplayName = v7->_containerBundleLocalizedDisplayName;
    v7->_containerBundleLocalizedDisplayName = v10;

    objc_storeStrong(&v7->_identity, *(v6 + 3));
    v12 = [*(v6 + 7) copy];
    entitlements = v7->_entitlements;
    v7->_entitlements = v12;

    v7->_dataProtectionLevel = *(v6 + 8);
    v7->_hashValue = 0;
    v7->_hasValidHash = 0;
    v14 = [*(v6 + 6) copy];
    liveActivityDescriptors = v7->_liveActivityDescriptors;
    v7->_liveActivityDescriptors = v14;

    if (v4)
    {
      v16 = [v6 orderedWidgetDescriptors];
      v17 = [v16 copy];
      orderedWidgetDescriptors = v7->_orderedWidgetDescriptors;
      v7->_orderedWidgetDescriptors = v17;

      v19 = [v6 orderedControlDescriptors];
      v20 = [v19 copy];
      orderedControlDescriptors = v7->_orderedControlDescriptors;
      v7->_orderedControlDescriptors = v20;
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v22 = [v6 orderedWidgetDescriptors];
      v23 = [v22 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v23)
      {
        v24 = *v43;
        do
        {
          v25 = 0;
          do
          {
            if (*v43 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = [[CHSWidgetDescriptor alloc] initFromDescriptor:*(*(&v42 + 1) + 8 * v25) includeIntents:0];
            [v19 addObject:v26];

            ++v25;
          }

          while (v23 != v25);
          v23 = [v22 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v23);
      }

      v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
      v28 = v7->_orderedWidgetDescriptors;
      v7->_orderedWidgetDescriptors = v27;

      orderedControlDescriptors = objc_alloc_init(MEMORY[0x1E695DF70]);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v29 = [v6 orderedControlDescriptors];
      v30 = [v29 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v30)
      {
        v31 = *v39;
        do
        {
          v32 = 0;
          do
          {
            if (*v39 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = [[CHSControlDescriptor alloc] initFromDescriptor:*(*(&v38 + 1) + 8 * v32) includeIntents:0];
            [(NSArray *)orderedControlDescriptors addObject:v33];

            ++v32;
          }

          while (v30 != v32);
          v30 = [v29 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v30);
      }

      v34 = [MEMORY[0x1E695DEC8] arrayWithArray:orderedControlDescriptors];
      v35 = v7->_orderedControlDescriptors;
      v7->_orderedControlDescriptors = v34;
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)controlDescriptorForKind:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  orderedControlDescriptors = self->_orderedControlDescriptors;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__CHSWidgetExtension_controlDescriptorForKind___block_invoke;
  v24[3] = &unk_1E7453780;
  v19 = v4;
  v25 = v19;
  v6 = [(NSArray *)orderedControlDescriptors bs_firstObjectPassingTest:v24];
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_orderedControlDescriptors;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = MEMORY[0x1E696AEC0];
          v13 = [*(*(&v20 + 1) + 8 * i) kind];
          v14 = [v12 stringWithFormat:@"%@, ", v13];
          [v7 appendString:v14];
        }

        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
      }

      while (v9);
    }

    v15 = CHSLogChronoServices();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(CHSWidgetExtension *)self succinctDescription];
      *buf = 138543874;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v30 = 2114;
      v31 = v7;
      _os_log_error_impl(&dword_195EB2000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to find control descriptor of kind: %{public}@.  Available kinds: [%{public}@]", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __47__CHSWidgetExtension_controlDescriptorForKind___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)widgetDescriptorForKind:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  orderedWidgetDescriptors = self->_orderedWidgetDescriptors;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __46__CHSWidgetExtension_widgetDescriptorForKind___block_invoke;
  v24[3] = &unk_1E7453138;
  v19 = v4;
  v25 = v19;
  v6 = [(NSArray *)orderedWidgetDescriptors bs_firstObjectPassingTest:v24];
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_orderedWidgetDescriptors;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = MEMORY[0x1E696AEC0];
          v13 = [*(*(&v20 + 1) + 8 * i) kind];
          v14 = [v12 stringWithFormat:@"%@, ", v13];
          [v7 appendString:v14];
        }

        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
      }

      while (v9);
    }

    v15 = CHSLogChronoServices();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(CHSWidgetExtension *)self succinctDescription];
      *buf = 138543874;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v30 = 2114;
      v31 = v7;
      _os_log_error_impl(&dword_195EB2000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to find widget descriptor of kind: %{public}@.  Available kinds: [%{public}@]", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __46__CHSWidgetExtension_widgetDescriptorForKind___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_dataProtectionLevel != v5->_dataProtectionLevel)
      {
        goto LABEL_13;
      }

      identity = self->_identity;
      v7 = v5->_identity;
      if (!BSEqualObjects())
      {
        goto LABEL_13;
      }

      entitlements = self->_entitlements;
      v9 = v5->_entitlements;
      if (!BSEqualObjects())
      {
        goto LABEL_13;
      }

      localizedDisplayName = self->_localizedDisplayName;
      v11 = v5->_localizedDisplayName;
      if (!BSEqualObjects())
      {
        goto LABEL_13;
      }

      containerBundleLocalizedDisplayName = self->_containerBundleLocalizedDisplayName;
      v13 = v5->_containerBundleLocalizedDisplayName;
      if (BSEqualObjects() && (orderedWidgetDescriptors = self->_orderedWidgetDescriptors, v15 = v5->_orderedWidgetDescriptors, BSEqualArrays()) && (orderedControlDescriptors = self->_orderedControlDescriptors, v17 = v5->_orderedControlDescriptors, BSEqualArrays()))
      {
        liveActivityDescriptors = self->_liveActivityDescriptors;
        v19 = v5->_liveActivityDescriptors;
        v20 = BSEqualSets();
      }

      else
      {
LABEL_13:
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHSMutableWidgetExtension alloc];

  return [(CHSWidgetExtension *)v4 initFromExtension:self];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_identity forKey:@"identity"];
  [v6 encodeObject:self->_localizedDisplayName forKey:@"dn"];
  [v6 encodeObject:self->_containerBundleLocalizedDisplayName forKey:@"cdn"];
  [v6 encodeObject:self->_orderedWidgetDescriptors forKey:@"desc"];
  [v6 encodeObject:self->_orderedControlDescriptors forKey:@"controls"];
  entitlements = self->_entitlements;
  if (entitlements)
  {
    [v6 encodeObject:entitlements forKey:@"entitlements"];
  }

  [v6 encodeInteger:self->_dataProtectionLevel forKey:@"dataProtectionLevel"];
  v5 = [(NSSet *)self->_liveActivityDescriptors allObjects];
  [v6 encodeObject:v5 forKey:@"activityDescriptors"];
}

- (CHSWidgetExtension)initWithCoder:(id)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CHSWidgetExtension;
  v5 = [(CHSWidgetExtension *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dn"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cdn"];
    containerBundleLocalizedDisplayName = v5->_containerBundleLocalizedDisplayName;
    v5->_containerBundleLocalizedDisplayName = v10;

    if ([v4 containsValueForKey:@"entitlements"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entitlements"];
      entitlements = v5->_entitlements;
      v5->_entitlements = v12;
    }

    if ([v4 containsValueForKey:@"controls"])
    {
      v14 = MEMORY[0x1E695DFD8];
      v35[0] = objc_opt_class();
      v35[1] = objc_opt_class();
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      v16 = [v14 setWithArray:v15];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"controls"];
      orderedControlDescriptors = v5->_orderedControlDescriptors;
      v5->_orderedControlDescriptors = v17;
    }

    else
    {
      v15 = v5->_orderedControlDescriptors;
      v5->_orderedControlDescriptors = 0;
    }

    if ([v4 containsValueForKey:@"activityDescriptors"])
    {
      v19 = MEMORY[0x1E695DFD8];
      v34[0] = objc_opt_class();
      v34[1] = objc_opt_class();
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
      v21 = [v19 setWithArray:v20];
      v22 = [v4 decodeObjectOfClasses:v21 forKey:@"activityDescriptors"];

      v23 = [v22 count];
      if (v23)
      {
        v23 = [MEMORY[0x1E695DFD8] setWithArray:v22];
      }

      liveActivityDescriptors = v5->_liveActivityDescriptors;
      v5->_liveActivityDescriptors = v23;
    }

    else
    {
      v22 = v5->_liveActivityDescriptors;
      v5->_liveActivityDescriptors = 0;
    }

    v25 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v27 = [v25 setWithArray:v26];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"desc"];
    orderedWidgetDescriptors = v5->_orderedWidgetDescriptors;
    v5->_orderedWidgetDescriptors = v28;

    v5->_dataProtectionLevel = [v4 decodeIntegerForKey:@"dataProtectionLevel"];
    v5->_hashValue = 0;
    v5->_hasValidHash = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isLinkedOnOrAfter:(unint64_t)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_orderedWidgetDescriptors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = *v27;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(v5);
      }

      if ([*(*(&v26 + 1) + 8 * v8) isLinkedOnOrAfter:a3])
      {
        goto LABEL_26;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_orderedControlDescriptors;
  v9 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v9)
  {
    v10 = *v23;
LABEL_11:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v5);
      }

      if ([*(*(&v22 + 1) + 8 * v11) isLinkedOnOrAfter:a3])
      {
        goto LABEL_26;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v31 count:16];
        if (v9)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_liveActivityDescriptors;
  v12 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v12)
  {
    v13 = *v19;
LABEL_19:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v5);
      }

      if ([*(*(&v18 + 1) + 8 * v14) isLinkedOnOrAfter:{a3, v18}])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v30 count:16];
        if (v12)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

LABEL_26:
    v15 = 1;
    goto LABEL_27;
  }

LABEL_25:
  v15 = 0;
LABEL_27:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)copyFilteredToOptions:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_orderedWidgetDescriptors;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if ([v4 matchesWidgetDescriptor:v11])
        {
          if (([v4 includeIntents] & 1) != 0 || !objc_msgSend(v11, "hasIntents"))
          {
            [v6 addObject:v11];
          }

          else
          {
            v12 = [v11 copyWithoutIntents];
            [v6 addObject:v12];
          }
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = self->_orderedControlDescriptors;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        if ([v4 matchesControlDescriptor:{v18, v26}])
        {
          if (([v4 includeIntents] & 1) != 0 || !objc_msgSend(v18, "hasIntents"))
          {
            [v13 addObject:v18];
          }

          else
          {
            v19 = [v18 copyWithoutIntents];
            [v13 addObject:v19];
          }
        }
      }

      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  v20 = [(CHSWidgetExtension *)self mutableCopy];
  [v20 setLiveActivityDescriptors:0];
  v21 = [v6 copy];
  [v20 setOrderedWidgetDescriptors:v21];

  v22 = [v13 copy];
  [v20 setOrderedControlDescriptors:v22];

  v23 = [v20 copy];
  objc_autoreleasePoolPop(v5);

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)succinctDescription
{
  v2 = [(CHSWidgetExtension *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionWithBundleIDWithoutFullIdentity
{
  v2 = [(CHSWidgetExtension *)self succinctDescriptionBuilderWithBundleIDInsteadOfFullIdentity:1];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilderWithBundleIDInsteadOfFullIdentity:(BOOL)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__CHSWidgetExtension_succinctDescriptionBuilderWithBundleIDInsteadOfFullIdentity___block_invoke;
  v9[3] = &unk_1E74537A8;
  v12 = a3;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendProem:self block:v9];
  v7 = v6;

  return v6;
}

id __82__CHSWidgetExtension_succinctDescriptionBuilderWithBundleIDInsteadOfFullIdentity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v3 = [*(*(a1 + 40) + 24) extensionBundleIdentifier];
    v4 = [v2 appendObject:v3 withName:@"bundleID"];
  }

  else
  {
    v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"identity"];
  }

  v6 = [*(a1 + 32) appendInteger:objc_msgSend(*(*(a1 + 40) + 32) withName:{"count"), @"widgets"}];
  return [*(a1 + 32) appendInteger:objc_msgSend(*(*(a1 + 40) + 40) withName:{"count"), @"controls"}];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSWidgetExtension *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CHSWidgetExtension_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  return v6;
}

id __60__CHSWidgetExtension_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"identity"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:@"localizedDisplayName"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 16) withName:@"localizedBundleDisplayName"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"entitlements"];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(*(a1 + 40) + 24) withName:"isRemote") ifEqualTo:{@"isRemote", 1}];
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 32) withName:@"widgets" skipIfEmpty:1];
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 40) withName:@"controls" skipIfEmpty:1];
  return [*(a1 + 32) appendInteger:*(*(a1 + 40) + 64) withName:@"dataProtectionLevel"];
}

@end
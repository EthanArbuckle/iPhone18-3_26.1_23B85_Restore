@interface DMFEffectivePolicy
+ (NSSet)downtimeCategoryIdentifiers;
+ (NSSet)systemCategoryIdentifiers;
+ (NSSet)unblockableBundleIdentifiers;
+ (NSSet)unblockableCategoryIdentifiers;
- (BOOL)hasRestrictivePolicies;
- (BOOL)isEqual:(id)a3;
- (DMFEffectivePolicy)initWithCoder:(id)a3;
- (DMFEffectivePolicy)initWithType:(id)a3 defaultPolicy:(int64_t)a4 currentPoliciesByIdentifier:(id)a5 defaultPriority:(unint64_t)a6 prioritiesByIdentifier:(id)a7 excludedIdentifiers:(id)a8 downtimeEnforced:(BOOL)a9;
- (id)_valueForMatchingHostName:(id)a3 inRegisteredHostNames:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)policyForHostName:(id)a3;
- (int64_t)policyForIdentifier:(id)a3 excludableIdentifiers:(id)a4;
- (int64_t)priorityForIdentifier:(id)a3;
- (unint64_t)hash;
- (unint64_t)priorityForHostName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFEffectivePolicy

- (DMFEffectivePolicy)initWithType:(id)a3 defaultPolicy:(int64_t)a4 currentPoliciesByIdentifier:(id)a5 defaultPriority:(unint64_t)a6 prioritiesByIdentifier:(id)a7 excludedIdentifiers:(id)a8 downtimeEnforced:(BOOL)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v29.receiver = self;
  v29.super_class = DMFEffectivePolicy;
  v19 = [(DMFEffectivePolicy *)&v29 init];
  if (v19)
  {
    v20 = [v15 copy];
    type = v19->_type;
    v19->_type = v20;

    v19->_defaultPolicy = a4;
    v22 = [v16 copy];
    currentPoliciesByIdentifier = v19->_currentPoliciesByIdentifier;
    v19->_currentPoliciesByIdentifier = v22;

    v19->_defaultPriority = a6;
    v24 = [v17 copy];
    prioritiesByIdentifier = v19->_prioritiesByIdentifier;
    v19->_prioritiesByIdentifier = v24;

    v26 = [v18 copy];
    excludedIdentifiers = v19->_excludedIdentifiers;
    v19->_excludedIdentifiers = v26;

    v19->_downtimeEnforced = a9;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOBYTE(v6) = self->_downtimeEnforced;
  return [v4 initWithType:self->_type defaultPolicy:self->_defaultPolicy currentPoliciesByIdentifier:self->_currentPoliciesByIdentifier defaultPriority:self->_defaultPriority prioritiesByIdentifier:self->_prioritiesByIdentifier excludedIdentifiers:self->_excludedIdentifiers downtimeEnforced:v6];
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeObject:type forKey:@"type"];
  [v5 encodeInteger:self->_defaultPolicy forKey:@"defaultPolicy"];
  [v5 encodeObject:self->_currentPoliciesByIdentifier forKey:@"currentPoliciesByIdentifier"];
  [v5 encodeInteger:self->_defaultPriority forKey:@"defaultPriority"];
  [v5 encodeObject:self->_prioritiesByIdentifier forKey:@"prioritiesByIdentifier"];
  [v5 encodeObject:self->_excludedIdentifiers forKey:@"excludedIdentifiers"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_downtimeEnforced];
  [v5 encodeObject:v6 forKey:@"downtimeEnforced"];
}

- (DMFEffectivePolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = DMFEffectivePolicy;
  v5 = [(DMFEffectivePolicy *)&v33 init];
  if (v5)
  {
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v32 = [v4 decodeIntegerForKey:@"defaultPolicy"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"currentPoliciesByIdentifier"];

    v11 = [v4 decodeIntegerForKey:@"defaultPriority"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"prioritiesByIdentifier"];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"excludedIdentifiers"];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downtimeEnforced"];
    v22 = [v31 copy];
    type = v5->_type;
    v5->_type = v22;

    v5->_defaultPolicy = v32;
    v24 = [v10 copy];
    currentPoliciesByIdentifier = v5->_currentPoliciesByIdentifier;
    v5->_currentPoliciesByIdentifier = v24;

    v5->_defaultPriority = v11;
    v26 = [v16 copy];
    prioritiesByIdentifier = v5->_prioritiesByIdentifier;
    v5->_prioritiesByIdentifier = v26;

    v28 = [v20 copy];
    excludedIdentifiers = v5->_excludedIdentifiers;
    v5->_excludedIdentifiers = v28;

    v5->_downtimeEnforced = [v21 BOOLValue];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(DMFEffectivePolicy *)self type];
      v9 = [(DMFEffectivePolicy *)v7 type];
      if (![v8 isEqual:v9] || (v10 = -[DMFEffectivePolicy defaultPolicy](self, "defaultPolicy"), v10 != -[DMFEffectivePolicy defaultPolicy](v7, "defaultPolicy")) || (v11 = -[DMFEffectivePolicy defaultPriority](self, "defaultPriority"), v11 != -[DMFEffectivePolicy defaultPriority](v7, "defaultPriority")))
      {
        LOBYTE(v15) = 0;
LABEL_13:

        goto LABEL_14;
      }

      v12 = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
      if (v12 || ([(DMFEffectivePolicy *)v7 currentPoliciesByIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
        v4 = [(DMFEffectivePolicy *)v7 currentPoliciesByIdentifier];
        if (![v13 isEqual:v4])
        {
          LOBYTE(v15) = 0;
LABEL_42:

          goto LABEL_43;
        }

        v28 = v4;
        v29 = v13;
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }

      v17 = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
      if (v17 || ([(DMFEffectivePolicy *)v7 prioritiesByIdentifier], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v4 = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
        v30 = [(DMFEffectivePolicy *)v7 prioritiesByIdentifier];
        if (![v4 isEqual:?])
        {
          LOBYTE(v15) = 0;
          goto LABEL_35;
        }

        v27 = v3;
        v24 = 1;
      }

      else
      {
        v27 = v3;
        v23 = 0;
        v24 = 0;
      }

      v25 = v4;
      v26 = v14;
      v18 = [(DMFEffectivePolicy *)self excludedIdentifiers];
      if (v18 || ([(DMFEffectivePolicy *)v7 excludedIdentifiers], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = [(DMFEffectivePolicy *)self excludedIdentifiers];
        v4 = [(DMFEffectivePolicy *)v7 excludedIdentifiers];
        if (![v14 isEqual:v4])
        {
          LOBYTE(v15) = 0;
LABEL_30:

LABEL_31:
          if (v18)
          {

            LODWORD(v14) = v26;
            v4 = v25;
            if (!v24)
            {
              v3 = v27;
              if (v17)
              {
LABEL_37:

                if (!v14)
                {
                  goto LABEL_43;
                }

LABEL_41:
                v4 = v28;
                v13 = v29;
                goto LABEL_42;
              }

LABEL_40:

              if ((v14 & 1) == 0)
              {
LABEL_43:
                if (!v12)
                {
                }

                goto LABEL_13;
              }

              goto LABEL_41;
            }

            v3 = v27;
          }

          else
          {

            v3 = v27;
            LODWORD(v14) = v26;
            v4 = v25;
            if ((v24 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

LABEL_35:

LABEL_36:
          if (v17)
          {
            goto LABEL_37;
          }

          goto LABEL_40;
        }

        v22 = 1;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      v19 = [(DMFEffectivePolicy *)self downtimeEnforced];
      v15 = v19 ^ [(DMFEffectivePolicy *)v7 downtimeEnforced]^ 1;
      if (!v22)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    LOBYTE(v15) = 0;
  }

LABEL_14:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(DMFEffectivePolicy *)self type];
  v4 = [v3 hash];
  v5 = [(DMFEffectivePolicy *)self defaultPolicy]^ v4;
  v6 = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(DMFEffectivePolicy *)self defaultPriority];
  v9 = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
  v10 = [v9 hash];
  v11 = [(DMFEffectivePolicy *)self excludedIdentifiers];
  v12 = v10 ^ [v11 hash];
  v13 = v12 ^ [(DMFEffectivePolicy *)self downtimeEnforced];

  return v8 ^ v13;
}

+ (NSSet)unblockableBundleIdentifiers
{
  v2 = [MEMORY[0x1E6993B90] systemHiddenBundleIdentifiersForDeviceFamily:101];
  v3 = [MEMORY[0x1E6993B90] systemUnblockableBundleIdentifiersForDeviceFamily:101];
  v4 = [v2 setByAddingObjectsFromSet:v3];

  return v4;
}

+ (NSSet)unblockableCategoryIdentifiers
{
  if (unblockableCategoryIdentifiers_onceToken != -1)
  {
    +[DMFEffectivePolicy unblockableCategoryIdentifiers];
  }

  v2 = [unblockableCategoryIdentifiers_unblockableCategoryIdentifiers copy];

  return v2;
}

void __52__DMFEffectivePolicy_unblockableCategoryIdentifiers__block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E6993B50];
  v6[0] = *MEMORY[0x1E6993B38];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = unblockableCategoryIdentifiers_unblockableCategoryIdentifiers;
  unblockableCategoryIdentifiers_unblockableCategoryIdentifiers = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (NSSet)systemCategoryIdentifiers
{
  if (systemCategoryIdentifiers_onceToken != -1)
  {
    +[DMFEffectivePolicy systemCategoryIdentifiers];
  }

  v2 = [systemCategoryIdentifiers_systemCategoryIdentifiers copy];

  return v2;
}

void __47__DMFEffectivePolicy_systemCategoryIdentifiers__block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E6993B28];
  v6[0] = *MEMORY[0x1E6993B38];
  v6[1] = v1;
  v6[2] = *MEMORY[0x1E6993B50];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = systemCategoryIdentifiers_systemCategoryIdentifiers;
  systemCategoryIdentifiers_systemCategoryIdentifiers = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (NSSet)downtimeCategoryIdentifiers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__DMFEffectivePolicy_downtimeCategoryIdentifiers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (downtimeCategoryIdentifiers_onceToken != -1)
  {
    dispatch_once(&downtimeCategoryIdentifiers_onceToken, block);
  }

  v2 = [downtimeCategoryIdentifiers_downtimeCategoryIdentifiers copy];

  return v2;
}

void __49__DMFEffectivePolicy_downtimeCategoryIdentifiers__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFA8];
  v3 = [MEMORY[0x1E6993B90] sharedCategories];
  v4 = [v3 availableCategoryIDs];
  v5 = [v2 setWithArray:v4];
  v6 = downtimeCategoryIdentifiers_downtimeCategoryIdentifiers;
  downtimeCategoryIdentifiers_downtimeCategoryIdentifiers = v5;

  v7 = downtimeCategoryIdentifiers_downtimeCategoryIdentifiers;
  v8 = *(a1 + 32);
  v9 = [objc_opt_class() systemCategoryIdentifiers];
  [v7 minusSet:v9];
}

- (int64_t)policyForIdentifier:(id)a3 excludableIdentifiers:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(DMFEffectivePolicy *)self defaultPolicy];
  if (v6)
  {
    v9 = [(DMFEffectivePolicy *)self excludedIdentifiers];
    v10 = [(DMFEffectivePolicy *)self type];
    v11 = [v10 isEqualToString:@"websitecategories"];

    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __64__DMFEffectivePolicy_policyForIdentifier_excludableIdentifiers___block_invoke;
      v29[3] = &unk_1E8616810;
      v13 = v12;
      v30 = v13;
      v31 = v8;
      v24 = v9;
      [v9 enumerateObjectsUsingBlock:v29];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v7;
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
LABEL_5:
        v18 = 0;
        while (1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(DMFEffectivePolicy *)self _valueForMatchingHostName:*(*(&v25 + 1) + 8 * v18) inRegisteredHostNames:v13];
          if (v19)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v25 objects:v32 count:16];
            if (v16)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:

        v14 = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
        v19 = [v14 objectForKeyedSubscript:v6];
      }

      v20 = v19;

      v9 = v24;
      if (!v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ([v9 intersectsSet:v7])
      {
        goto LABEL_17;
      }

      v21 = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
      v20 = [v21 objectForKeyedSubscript:v6];

      if (!v20)
      {
        goto LABEL_17;
      }
    }

    v8 = [v20 integerValue];

LABEL_17:
  }

  v22 = *MEMORY[0x1E69E9840];
  return v8;
}

void __64__DMFEffectivePolicy_policyForIdentifier_excludableIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 numberWithInteger:v4];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (int64_t)priorityForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DMFEffectivePolicy *)self defaultPriority];
  if (v4)
  {
    v6 = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (v7)
    {
      v5 = [v7 integerValue];
    }
  }

  return v5;
}

- (id)_valueForMatchingHostName:(id)a3 inRegisteredHostNames:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__DMFEffectivePolicy__valueForMatchingHostName_inRegisteredHostNames___block_invoke;
  v10[3] = &unk_1E8616838;
  v7 = v5;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __70__DMFEffectivePolicy__valueForMatchingHostName_inRegisteredHostNames___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  if (![*(a1 + 32) caseInsensitiveCompare:v11])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
    goto LABEL_10;
  }

  if (![v11 hasPrefix:@"*."])
  {
    goto LABEL_10;
  }

  v8 = [v11 substringFromIndex:2];
  if ([*(a1 + 32) caseInsensitiveCompare:v8])
  {
    v9 = [v11 substringFromIndex:1];

    [*(a1 + 32) rangeOfString:v9 options:13 range:{0, objc_msgSend(*(a1 + 32), "length")}];
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = v8;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
LABEL_9:

LABEL_10:
}

- (BOOL)hasRestrictivePolicies
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(DMFEffectivePolicy *)self downtimeEnforced]|| [(DMFEffectivePolicy *)self defaultPolicy])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
    v7 = [v6 allValues];

    v3 = [v7 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v8 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v10 + 1) + 8 * i) integerValue])
          {
            LOBYTE(v3) = 1;
            goto LABEL_15;
          }
        }

        v3 = [v7 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (int64_t)policyForHostName:(id)a3
{
  v4 = a3;
  v5 = [(DMFEffectivePolicy *)self defaultPolicy];
  if (v4)
  {
    v6 = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
    v7 = [(DMFEffectivePolicy *)self _valueForMatchingHostName:v4 inRegisteredHostNames:v6];
    v8 = v7;
    if (v7)
    {
      v5 = [v7 integerValue];
    }
  }

  return v5;
}

- (unint64_t)priorityForHostName:(id)a3
{
  v4 = a3;
  v5 = [(DMFEffectivePolicy *)self defaultPriority];
  if (v4)
  {
    v6 = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
    v7 = [(DMFEffectivePolicy *)self _valueForMatchingHostName:v4 inRegisteredHostNames:v6];
    v8 = v7;
    if (v7)
    {
      v5 = [v7 integerValue];
    }
  }

  return v5;
}

@end
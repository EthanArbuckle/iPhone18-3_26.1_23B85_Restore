@interface DMFEffectivePolicy
+ (NSSet)downtimeCategoryIdentifiers;
+ (NSSet)systemCategoryIdentifiers;
+ (NSSet)unblockableBundleIdentifiers;
+ (NSSet)unblockableCategoryIdentifiers;
- (BOOL)hasRestrictivePolicies;
- (BOOL)isEqual:(id)equal;
- (DMFEffectivePolicy)initWithCoder:(id)coder;
- (DMFEffectivePolicy)initWithType:(id)type defaultPolicy:(int64_t)policy currentPoliciesByIdentifier:(id)identifier defaultPriority:(unint64_t)priority prioritiesByIdentifier:(id)byIdentifier excludedIdentifiers:(id)identifiers downtimeEnforced:(BOOL)enforced;
- (id)_valueForMatchingHostName:(id)name inRegisteredHostNames:(id)names;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)policyForHostName:(id)name;
- (int64_t)policyForIdentifier:(id)identifier excludableIdentifiers:(id)identifiers;
- (int64_t)priorityForIdentifier:(id)identifier;
- (unint64_t)hash;
- (unint64_t)priorityForHostName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFEffectivePolicy

- (DMFEffectivePolicy)initWithType:(id)type defaultPolicy:(int64_t)policy currentPoliciesByIdentifier:(id)identifier defaultPriority:(unint64_t)priority prioritiesByIdentifier:(id)byIdentifier excludedIdentifiers:(id)identifiers downtimeEnforced:(BOOL)enforced
{
  typeCopy = type;
  identifierCopy = identifier;
  byIdentifierCopy = byIdentifier;
  identifiersCopy = identifiers;
  v29.receiver = self;
  v29.super_class = DMFEffectivePolicy;
  v19 = [(DMFEffectivePolicy *)&v29 init];
  if (v19)
  {
    v20 = [typeCopy copy];
    type = v19->_type;
    v19->_type = v20;

    v19->_defaultPolicy = policy;
    v22 = [identifierCopy copy];
    currentPoliciesByIdentifier = v19->_currentPoliciesByIdentifier;
    v19->_currentPoliciesByIdentifier = v22;

    v19->_defaultPriority = priority;
    v24 = [byIdentifierCopy copy];
    prioritiesByIdentifier = v19->_prioritiesByIdentifier;
    v19->_prioritiesByIdentifier = v24;

    v26 = [identifiersCopy copy];
    excludedIdentifiers = v19->_excludedIdentifiers;
    v19->_excludedIdentifiers = v26;

    v19->_downtimeEnforced = enforced;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOBYTE(v6) = self->_downtimeEnforced;
  return [v4 initWithType:self->_type defaultPolicy:self->_defaultPolicy currentPoliciesByIdentifier:self->_currentPoliciesByIdentifier defaultPriority:self->_defaultPriority prioritiesByIdentifier:self->_prioritiesByIdentifier excludedIdentifiers:self->_excludedIdentifiers downtimeEnforced:v6];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeObject:type forKey:@"type"];
  [coderCopy encodeInteger:self->_defaultPolicy forKey:@"defaultPolicy"];
  [coderCopy encodeObject:self->_currentPoliciesByIdentifier forKey:@"currentPoliciesByIdentifier"];
  [coderCopy encodeInteger:self->_defaultPriority forKey:@"defaultPriority"];
  [coderCopy encodeObject:self->_prioritiesByIdentifier forKey:@"prioritiesByIdentifier"];
  [coderCopy encodeObject:self->_excludedIdentifiers forKey:@"excludedIdentifiers"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_downtimeEnforced];
  [coderCopy encodeObject:v6 forKey:@"downtimeEnforced"];
}

- (DMFEffectivePolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = DMFEffectivePolicy;
  v5 = [(DMFEffectivePolicy *)&v33 init];
  if (v5)
  {
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v32 = [coderCopy decodeIntegerForKey:@"defaultPolicy"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"currentPoliciesByIdentifier"];

    v11 = [coderCopy decodeIntegerForKey:@"defaultPriority"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"prioritiesByIdentifier"];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"excludedIdentifiers"];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downtimeEnforced"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      type = [(DMFEffectivePolicy *)self type];
      type2 = [(DMFEffectivePolicy *)v7 type];
      if (![type isEqual:type2] || (v10 = -[DMFEffectivePolicy defaultPolicy](self, "defaultPolicy"), v10 != -[DMFEffectivePolicy defaultPolicy](v7, "defaultPolicy")) || (v11 = -[DMFEffectivePolicy defaultPriority](self, "defaultPriority"), v11 != -[DMFEffectivePolicy defaultPriority](v7, "defaultPriority")))
      {
        LOBYTE(v15) = 0;
LABEL_13:

        goto LABEL_14;
      }

      currentPoliciesByIdentifier = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
      if (currentPoliciesByIdentifier || ([(DMFEffectivePolicy *)v7 currentPoliciesByIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        currentPoliciesByIdentifier2 = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
        currentPoliciesByIdentifier3 = [(DMFEffectivePolicy *)v7 currentPoliciesByIdentifier];
        if (![currentPoliciesByIdentifier2 isEqual:currentPoliciesByIdentifier3])
        {
          LOBYTE(v15) = 0;
LABEL_42:

          goto LABEL_43;
        }

        v28 = currentPoliciesByIdentifier3;
        v29 = currentPoliciesByIdentifier2;
        excludedIdentifiers2 = 1;
      }

      else
      {
        excludedIdentifiers2 = 0;
      }

      prioritiesByIdentifier = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
      if (prioritiesByIdentifier || ([(DMFEffectivePolicy *)v7 prioritiesByIdentifier], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        currentPoliciesByIdentifier3 = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
        prioritiesByIdentifier2 = [(DMFEffectivePolicy *)v7 prioritiesByIdentifier];
        if (![currentPoliciesByIdentifier3 isEqual:?])
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

      v25 = currentPoliciesByIdentifier3;
      v26 = excludedIdentifiers2;
      excludedIdentifiers = [(DMFEffectivePolicy *)self excludedIdentifiers];
      if (excludedIdentifiers || ([(DMFEffectivePolicy *)v7 excludedIdentifiers], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        excludedIdentifiers2 = [(DMFEffectivePolicy *)self excludedIdentifiers];
        currentPoliciesByIdentifier3 = [(DMFEffectivePolicy *)v7 excludedIdentifiers];
        if (![excludedIdentifiers2 isEqual:currentPoliciesByIdentifier3])
        {
          LOBYTE(v15) = 0;
LABEL_30:

LABEL_31:
          if (excludedIdentifiers)
          {

            LODWORD(excludedIdentifiers2) = v26;
            currentPoliciesByIdentifier3 = v25;
            if (!v24)
            {
              v3 = v27;
              if (prioritiesByIdentifier)
              {
LABEL_37:

                if (!excludedIdentifiers2)
                {
                  goto LABEL_43;
                }

LABEL_41:
                currentPoliciesByIdentifier3 = v28;
                currentPoliciesByIdentifier2 = v29;
                goto LABEL_42;
              }

LABEL_40:

              if ((excludedIdentifiers2 & 1) == 0)
              {
LABEL_43:
                if (!currentPoliciesByIdentifier)
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
            LODWORD(excludedIdentifiers2) = v26;
            currentPoliciesByIdentifier3 = v25;
            if ((v24 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

LABEL_35:

LABEL_36:
          if (prioritiesByIdentifier)
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

      downtimeEnforced = [(DMFEffectivePolicy *)self downtimeEnforced];
      v15 = downtimeEnforced ^ [(DMFEffectivePolicy *)v7 downtimeEnforced]^ 1;
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
  type = [(DMFEffectivePolicy *)self type];
  v4 = [type hash];
  v5 = [(DMFEffectivePolicy *)self defaultPolicy]^ v4;
  currentPoliciesByIdentifier = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
  v7 = [currentPoliciesByIdentifier hash];
  v8 = v5 ^ v7 ^ [(DMFEffectivePolicy *)self defaultPriority];
  prioritiesByIdentifier = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
  v10 = [prioritiesByIdentifier hash];
  excludedIdentifiers = [(DMFEffectivePolicy *)self excludedIdentifiers];
  v12 = v10 ^ [excludedIdentifiers hash];
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
  block[4] = self;
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

- (int64_t)policyForIdentifier:(id)identifier excludableIdentifiers:(id)identifiers
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  defaultPolicy = [(DMFEffectivePolicy *)self defaultPolicy];
  if (identifierCopy)
  {
    excludedIdentifiers = [(DMFEffectivePolicy *)self excludedIdentifiers];
    type = [(DMFEffectivePolicy *)self type];
    v11 = [type isEqualToString:@"websitecategories"];

    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(excludedIdentifiers, "count")}];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __64__DMFEffectivePolicy_policyForIdentifier_excludableIdentifiers___block_invoke;
      v29[3] = &unk_1E8616810;
      v13 = v12;
      v30 = v13;
      v31 = defaultPolicy;
      v24 = excludedIdentifiers;
      [excludedIdentifiers enumerateObjectsUsingBlock:v29];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      currentPoliciesByIdentifier = identifiersCopy;
      v15 = [currentPoliciesByIdentifier countByEnumeratingWithState:&v25 objects:v32 count:16];
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
            objc_enumerationMutation(currentPoliciesByIdentifier);
          }

          v19 = [(DMFEffectivePolicy *)self _valueForMatchingHostName:*(*(&v25 + 1) + 8 * v18) inRegisteredHostNames:v13];
          if (v19)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [currentPoliciesByIdentifier countByEnumeratingWithState:&v25 objects:v32 count:16];
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

        currentPoliciesByIdentifier = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
        v19 = [currentPoliciesByIdentifier objectForKeyedSubscript:identifierCopy];
      }

      v20 = v19;

      excludedIdentifiers = v24;
      if (!v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ([excludedIdentifiers intersectsSet:identifiersCopy])
      {
        goto LABEL_17;
      }

      currentPoliciesByIdentifier2 = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
      v20 = [currentPoliciesByIdentifier2 objectForKeyedSubscript:identifierCopy];

      if (!v20)
      {
        goto LABEL_17;
      }
    }

    defaultPolicy = [v20 integerValue];

LABEL_17:
  }

  v22 = *MEMORY[0x1E69E9840];
  return defaultPolicy;
}

void __64__DMFEffectivePolicy_policyForIdentifier_excludableIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 numberWithInteger:v4];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (int64_t)priorityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  defaultPriority = [(DMFEffectivePolicy *)self defaultPriority];
  if (identifierCopy)
  {
    prioritiesByIdentifier = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
    v7 = [prioritiesByIdentifier objectForKeyedSubscript:identifierCopy];

    if (v7)
    {
      defaultPriority = [v7 integerValue];
    }
  }

  return defaultPriority;
}

- (id)_valueForMatchingHostName:(id)name inRegisteredHostNames:(id)names
{
  nameCopy = name;
  namesCopy = names;
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
  v7 = nameCopy;
  v11 = v7;
  v12 = &v13;
  [namesCopy enumerateKeysAndObjectsUsingBlock:v10];
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
    currentPoliciesByIdentifier = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
    allValues = [currentPoliciesByIdentifier allValues];

    v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v8 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          if ([*(*(&v10 + 1) + 8 * i) integerValue])
          {
            LOBYTE(v3) = 1;
            goto LABEL_15;
          }
        }

        v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (int64_t)policyForHostName:(id)name
{
  nameCopy = name;
  defaultPolicy = [(DMFEffectivePolicy *)self defaultPolicy];
  if (nameCopy)
  {
    currentPoliciesByIdentifier = [(DMFEffectivePolicy *)self currentPoliciesByIdentifier];
    v7 = [(DMFEffectivePolicy *)self _valueForMatchingHostName:nameCopy inRegisteredHostNames:currentPoliciesByIdentifier];
    v8 = v7;
    if (v7)
    {
      defaultPolicy = [v7 integerValue];
    }
  }

  return defaultPolicy;
}

- (unint64_t)priorityForHostName:(id)name
{
  nameCopy = name;
  defaultPriority = [(DMFEffectivePolicy *)self defaultPriority];
  if (nameCopy)
  {
    prioritiesByIdentifier = [(DMFEffectivePolicy *)self prioritiesByIdentifier];
    v7 = [(DMFEffectivePolicy *)self _valueForMatchingHostName:nameCopy inRegisteredHostNames:prioritiesByIdentifier];
    v8 = v7;
    if (v7)
    {
      defaultPriority = [v7 integerValue];
    }
  }

  return defaultPriority;
}

@end
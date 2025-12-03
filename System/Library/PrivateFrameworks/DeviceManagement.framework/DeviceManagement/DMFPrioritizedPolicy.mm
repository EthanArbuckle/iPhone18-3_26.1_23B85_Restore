@interface DMFPrioritizedPolicy
+ (id)prioritizedPoliciesForAppPolicy:(id)policy appCategoryPolicy:(id)categoryPolicy bundleIdentifiers:(id)identifiers categoryPolicy:(id)a6 categoryIdentifiers:(id)categoryIdentifiers webPolicy:(id)webPolicy webCategoryPolicy:(id)webCategoryPolicy webDomains:(id)self0;
+ (int64_t)arbitratePolicyForPrioritizedPolicies:(id)policies;
- (BOOL)isEqual:(id)equal;
- (DMFPrioritizedPolicy)initWithEffectivePolicy:(id)policy identifier:(id)identifier excludableIdentifiers:(id)identifiers;
- (int64_t)compare:(id)compare;
@end

@implementation DMFPrioritizedPolicy

- (DMFPrioritizedPolicy)initWithEffectivePolicy:(id)policy identifier:(id)identifier excludableIdentifiers:(id)identifiers
{
  policyCopy = policy;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v16.receiver = self;
  v16.super_class = DMFPrioritizedPolicy;
  v11 = [(DMFPrioritizedPolicy *)&v16 init];
  if (v11)
  {
    type = [policyCopy type];
    v13 = [type isEqualToString:@"websites"];

    if (v13)
    {
      v11->_policy = [policyCopy policyForHostName:identifierCopy];
      v14 = [policyCopy priorityForHostName:identifierCopy];
    }

    else
    {
      v11->_policy = [policyCopy policyForIdentifier:identifierCopy excludableIdentifiers:identifiersCopy];
      v14 = [policyCopy priorityForIdentifier:identifierCopy];
    }

    v11->_priority = v14;
  }

  return v11;
}

+ (int64_t)arbitratePolicyForPrioritizedPolicies:(id)policies
{
  v3 = [policies sortedArrayUsingSelector:sel_compare_];
  firstObject = [v3 firstObject];
  policy = [firstObject policy];

  return policy;
}

+ (id)prioritizedPoliciesForAppPolicy:(id)policy appCategoryPolicy:(id)categoryPolicy bundleIdentifiers:(id)identifiers categoryPolicy:(id)a6 categoryIdentifiers:(id)categoryIdentifiers webPolicy:(id)webPolicy webCategoryPolicy:(id)webCategoryPolicy webDomains:(id)self0
{
  v84 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  categoryPolicyCopy = categoryPolicy;
  identifiersCopy = identifiers;
  v17 = a6;
  categoryIdentifiersCopy = categoryIdentifiers;
  webPolicyCopy = webPolicy;
  webCategoryPolicyCopy = webCategoryPolicy;
  domainsCopy = domains;
  v21 = objc_opt_new();
  v22 = policyCopy;
  v23 = identifiersCopy;
  v24 = v23;
  v78 = v22;
  obj = v23;
  if (v22)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v25 = [v23 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v80;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v80 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = [[DMFPrioritizedPolicy alloc] initWithEffectivePolicy:v78 identifier:*(*(&v79 + 1) + 8 * i) excludableIdentifiers:0];
          [v21 addObject:v29];
        }

        v24 = obj;
        v26 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v26);
    }
  }

  v30 = v21;
  v31 = v17;
  v32 = categoryIdentifiersCopy;
  v33 = v32;
  v77 = v31;
  if (v31)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v34 = [v32 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v80;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v80 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [[DMFPrioritizedPolicy alloc] initWithEffectivePolicy:v77 identifier:*(*(&v79 + 1) + 8 * j) excludableIdentifiers:0];
          [v30 addObject:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v35);
    }
  }

  v39 = v30;
  v40 = webPolicyCopy;
  v41 = domainsCopy;
  v42 = v41;
  if (v40)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v43 = [v41 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v80;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v80 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [[DMFPrioritizedPolicy alloc] initWithEffectivePolicy:v40 identifier:*(*(&v79 + 1) + 8 * k) excludableIdentifiers:0];
          [v39 addObject:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v44);
    }
  }

  v75 = v42;
  v73 = v40;
  if (v24)
  {
    v48 = [MEMORY[0x1E695DFD8] setWithArray:v24];
  }

  else
  {
    v48 = 0;
  }

  v49 = v39;
  v50 = categoryPolicyCopy;
  v51 = v33;
  v52 = v48;
  if (v50)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v53 = [v51 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v80;
      do
      {
        for (m = 0; m != v54; ++m)
        {
          if (*v80 != v55)
          {
            objc_enumerationMutation(v51);
          }

          v57 = [[DMFPrioritizedPolicy alloc] initWithEffectivePolicy:v50 identifier:*(*(&v79 + 1) + 8 * m) excludableIdentifiers:v52];
          [v49 addObject:v57];
        }

        v54 = [v51 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v54);
    }
  }

  v72 = v50;
  if (v75)
  {
    v58 = [MEMORY[0x1E695DFD8] setWithArray:?];
  }

  else
  {
    v58 = 0;
  }

  v59 = v49;
  v60 = webCategoryPolicyCopy;
  v61 = v51;
  v62 = v58;
  if (v60)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v63 = [v61 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v80;
      do
      {
        for (n = 0; n != v64; ++n)
        {
          if (*v80 != v65)
          {
            objc_enumerationMutation(v61);
          }

          v67 = [[DMFPrioritizedPolicy alloc] initWithEffectivePolicy:v60 identifier:*(*(&v79 + 1) + 8 * n) excludableIdentifiers:v62];
          [v59 addObject:v67];
        }

        v64 = [v61 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v64);
    }
  }

  v68 = [v59 copy];
  v69 = *MEMORY[0x1E69E9840];

  return v68;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DMFPrioritizedPolicy *)self isEqualToPrioritizedPolicy:equalCopy];
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  priority = [(DMFPrioritizedPolicy *)self priority];
  if (priority >= [compareCopy priority])
  {
    priority2 = [(DMFPrioritizedPolicy *)self priority];
    if (priority2 > [compareCopy priority])
    {
      v6 = 1;
      goto LABEL_7;
    }

    policy = [(DMFPrioritizedPolicy *)self policy];
    if (policy <= [compareCopy policy])
    {
      policy2 = [(DMFPrioritizedPolicy *)self policy];
      v6 = policy2 < [compareCopy policy];
      goto LABEL_7;
    }
  }

  v6 = -1;
LABEL_7:

  return v6;
}

@end
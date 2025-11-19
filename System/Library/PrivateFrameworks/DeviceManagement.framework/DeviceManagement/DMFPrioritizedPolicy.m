@interface DMFPrioritizedPolicy
+ (id)prioritizedPoliciesForAppPolicy:(id)a3 appCategoryPolicy:(id)a4 bundleIdentifiers:(id)a5 categoryPolicy:(id)a6 categoryIdentifiers:(id)a7 webPolicy:(id)a8 webCategoryPolicy:(id)a9 webDomains:(id)a10;
+ (int64_t)arbitratePolicyForPrioritizedPolicies:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DMFPrioritizedPolicy)initWithEffectivePolicy:(id)a3 identifier:(id)a4 excludableIdentifiers:(id)a5;
- (int64_t)compare:(id)a3;
@end

@implementation DMFPrioritizedPolicy

- (DMFPrioritizedPolicy)initWithEffectivePolicy:(id)a3 identifier:(id)a4 excludableIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = DMFPrioritizedPolicy;
  v11 = [(DMFPrioritizedPolicy *)&v16 init];
  if (v11)
  {
    v12 = [v8 type];
    v13 = [v12 isEqualToString:@"websites"];

    if (v13)
    {
      v11->_policy = [v8 policyForHostName:v9];
      v14 = [v8 priorityForHostName:v9];
    }

    else
    {
      v11->_policy = [v8 policyForIdentifier:v9 excludableIdentifiers:v10];
      v14 = [v8 priorityForIdentifier:v9];
    }

    v11->_priority = v14;
  }

  return v11;
}

+ (int64_t)arbitratePolicyForPrioritizedPolicies:(id)a3
{
  v3 = [a3 sortedArrayUsingSelector:sel_compare_];
  v4 = [v3 firstObject];
  v5 = [v4 policy];

  return v5;
}

+ (id)prioritizedPoliciesForAppPolicy:(id)a3 appCategoryPolicy:(id)a4 bundleIdentifiers:(id)a5 categoryPolicy:(id)a6 categoryIdentifiers:(id)a7 webPolicy:(id)a8 webCategoryPolicy:(id)a9 webDomains:(id)a10
{
  v84 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v71 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v74 = a9;
  v20 = a10;
  v21 = objc_opt_new();
  v22 = v15;
  v23 = v16;
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
  v32 = v18;
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
  v40 = v19;
  v41 = v20;
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
  v50 = v71;
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
  v60 = v74;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DMFPrioritizedPolicy *)self isEqualToPrioritizedPolicy:v4];
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(DMFPrioritizedPolicy *)self priority];
  if (v5 >= [v4 priority])
  {
    v7 = [(DMFPrioritizedPolicy *)self priority];
    if (v7 > [v4 priority])
    {
      v6 = 1;
      goto LABEL_7;
    }

    v8 = [(DMFPrioritizedPolicy *)self policy];
    if (v8 <= [v4 policy])
    {
      v9 = [(DMFPrioritizedPolicy *)self policy];
      v6 = v9 < [v4 policy];
      goto LABEL_7;
    }
  }

  v6 = -1;
LABEL_7:

  return v6;
}

@end
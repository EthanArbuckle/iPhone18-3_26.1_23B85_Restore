@interface BSServiceDomainSpecification
- (BSServiceDomainSpecification)init;
- (id)_domainWithAdditionalServices:(id *)a1;
- (id)_initWithIdentifier:(void *)a3 machName:(void *)a4 multiplexingType:(void *)a5 xpcSubserviceName:(void *)a6 start:(void *)a7 launchIdentifiers:(void *)a8 servicesByIdentifier:(void *)a9 derivedServiceRestrictions:(void *)a10 enableIfFeatureFlags:(void *)a11 disableIfFeatureFlags:;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)serviceForIdentifier:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_appendBodySectionToBuilder:(void *)a3 withName:(void *)a4 multilinePrefix:(char)a5 includeServices:;
- (void)_appendManagerDumpBodyToBuilder:(void *)a3 withMultilinePrefix:;
@end

@implementation BSServiceDomainSpecification

- (BSServiceDomainSpecification)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on BSServiceDomainSpecification"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"BSServiceDomainSpecification.m";
    v18 = 1024;
    v19 = 46;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)serviceForIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_servicesByIdentifier objectForKey:a3];

  return v3;
}

- (id)_initWithIdentifier:(void *)a3 machName:(void *)a4 multiplexingType:(void *)a5 xpcSubserviceName:(void *)a6 start:(void *)a7 launchIdentifiers:(void *)a8 servicesByIdentifier:(void *)a9 derivedServiceRestrictions:(void *)a10 enableIfFeatureFlags:(void *)a11 disableIfFeatureFlags:
{
  v47 = a2;
  v46 = a3;
  v45 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  if (a1)
  {
    v48.receiver = a1;
    v48.super_class = BSServiceDomainSpecification;
    a1 = objc_msgSendSuper2(&v48, sel_init);
    if (a1)
    {
      v23 = [v47 copy];
      v24 = a1[5];
      a1[5] = v23;

      v25 = [v46 copy];
      v26 = a1[6];
      a1[6] = v25;

      a1[7] = a4;
      v27 = [v45 copy];
      v28 = a1[10];
      a1[10] = v27;

      a1[9] = a6;
      v29 = [v18 copy];
      v30 = a1[4];
      a1[4] = v29;

      v31 = [v19 copy];
      v32 = a1[1];
      a1[1] = v31;

      v33 = [v21 copy];
      v34 = a1[2];
      a1[2] = v33;

      v35 = [v22 copy];
      v36 = a1[3];
      a1[3] = v35;

      v37 = MEMORY[0x1E695DFB8];
      v38 = [a1[1] allValues];
      v39 = [v38 sortedArrayUsingComparator:&__block_literal_global_3];
      v40 = [v37 orderedSetWithArray:v39];
      v41 = a1[8];
      a1[8] = v40;

      v42 = [v20 copy];
      v43 = a1[11];
      a1[11] = v42;
    }
  }

  return a1;
}

uint64_t __211__BSServiceDomainSpecification__initWithIdentifier_machName_multiplexingType_xpcSubserviceName_start_launchIdentifiers_servicesByIdentifier_derivedServiceRestrictions_enableIfFeatureFlags_disableIfFeatureFlags___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];
  v7 = [v5 compare:v6];

  return v7;
}

- (id)_domainWithAdditionalServices:(id *)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (![v3 count])
    {
LABEL_14:
      a1 = a1;
      goto LABEL_16;
    }

    v5 = [a1[1] mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 identifier];
          v12 = [v5 objectForKey:v11];
          v13 = v12 == 0;

          if (v13)
          {
            v14 = [v10 identifier];
            [v5 setObject:v10 forKey:v14];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    if ([a1[1] isEqualToDictionary:v5])
    {

      goto LABEL_14;
    }

    a1 = [[BSServiceDomainSpecification alloc] _initWithIdentifier:a1[6] machName:a1[7] multiplexingType:a1[10] xpcSubserviceName:a1[9] start:a1[4] launchIdentifiers:v5 servicesByIdentifier:a1[11] derivedServiceRestrictions:a1[2] enableIfFeatureFlags:a1[3] disableIfFeatureFlags:?];
  }

LABEL_16:

  v15 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)_appendManagerDumpBodyToBuilder:(void *)a3 withMultilinePrefix:
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    [(BSServiceDomainSpecification *)a1 _appendBodySectionToBuilder:v6 withName:@"specification" multilinePrefix:v5 includeServices:0];
  }
}

- (void)_appendBodySectionToBuilder:(void *)a3 withName:(void *)a4 multilinePrefix:(char)a5 includeServices:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __101__BSServiceDomainSpecification__appendBodySectionToBuilder_withName_multilinePrefix_includeServices___block_invoke;
    v12[3] = &unk_1E7520920;
    v13 = v9;
    v14 = a1;
    v15 = a5;
    [v13 appendBodySectionWithName:v10 multilinePrefix:v11 block:v12];
  }
}

- (id)succinctDescription
{
  v2 = [(BSServiceDomainSpecification *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_identifier withName:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSServiceDomainSpecification *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceDomainSpecification *)self succinctDescriptionBuilder];
  [(BSServiceDomainSpecification *)self _appendBodySectionToBuilder:v5 withName:0 multilinePrefix:v4 includeServices:1];

  return v5;
}

void __101__BSServiceDomainSpecification__appendBodySectionToBuilder_withName_multilinePrefix_includeServices___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 48) withName:@"MachName" skipIfEmpty:1];
  v2 = *(a1 + 32);
  v5 = NSStringFromBSServiceDomainStartType(*(*(a1 + 40) + 72));
  [v2 appendString:? withName:?];

  v3 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 88) allObjects];
  [v3 appendArraySection:? withName:? skipIfEmpty:?];

  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 16) withName:@"EnableIfFeatureFlags" skipIfEmpty:1];
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 24) withName:@"DisableIfFeatureFlags" skipIfEmpty:1];
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);
    v7 = [*(*(a1 + 40) + 64) array];
    [v4 appendArraySection:? withName:? skipIfEmpty:?];
  }
}

@end
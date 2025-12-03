@interface BSServiceDomainSpecification
- (BSServiceDomainSpecification)init;
- (id)_domainWithAdditionalServices:(id *)services;
- (id)_initWithIdentifier:(void *)identifier machName:(void *)name multiplexingType:(void *)type xpcSubserviceName:(void *)subserviceName start:(void *)start launchIdentifiers:(void *)identifiers servicesByIdentifier:(void *)byIdentifier derivedServiceRestrictions:(void *)self0 enableIfFeatureFlags:(void *)self1 disableIfFeatureFlags:;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)serviceForIdentifier:(id)identifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_appendBodySectionToBuilder:(void *)builder withName:(void *)name multilinePrefix:(char)prefix includeServices:;
- (void)_appendManagerDumpBodyToBuilder:(void *)builder withMultilinePrefix:;
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
    selfCopy = self;
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

- (id)serviceForIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_servicesByIdentifier objectForKey:identifier];

  return v3;
}

- (id)_initWithIdentifier:(void *)identifier machName:(void *)name multiplexingType:(void *)type xpcSubserviceName:(void *)subserviceName start:(void *)start launchIdentifiers:(void *)identifiers servicesByIdentifier:(void *)byIdentifier derivedServiceRestrictions:(void *)self0 enableIfFeatureFlags:(void *)self1 disableIfFeatureFlags:
{
  v47 = a2;
  identifierCopy = identifier;
  typeCopy = type;
  startCopy = start;
  identifiersCopy = identifiers;
  byIdentifierCopy = byIdentifier;
  restrictionsCopy = restrictions;
  flagsCopy = flags;
  if (self)
  {
    v48.receiver = self;
    v48.super_class = BSServiceDomainSpecification;
    self = objc_msgSendSuper2(&v48, sel_init);
    if (self)
    {
      v23 = [v47 copy];
      v24 = self[5];
      self[5] = v23;

      v25 = [identifierCopy copy];
      v26 = self[6];
      self[6] = v25;

      self[7] = name;
      v27 = [typeCopy copy];
      v28 = self[10];
      self[10] = v27;

      self[9] = subserviceName;
      v29 = [startCopy copy];
      v30 = self[4];
      self[4] = v29;

      v31 = [identifiersCopy copy];
      v32 = self[1];
      self[1] = v31;

      v33 = [restrictionsCopy copy];
      v34 = self[2];
      self[2] = v33;

      v35 = [flagsCopy copy];
      v36 = self[3];
      self[3] = v35;

      v37 = MEMORY[0x1E695DFB8];
      allValues = [self[1] allValues];
      v39 = [allValues sortedArrayUsingComparator:&__block_literal_global_3];
      v40 = [v37 orderedSetWithArray:v39];
      v41 = self[8];
      self[8] = v40;

      v42 = [byIdentifierCopy copy];
      v43 = self[11];
      self[11] = v42;
    }
  }

  return self;
}

uint64_t __211__BSServiceDomainSpecification__initWithIdentifier_machName_multiplexingType_xpcSubserviceName_start_launchIdentifiers_servicesByIdentifier_derivedServiceRestrictions_enableIfFeatureFlags_disableIfFeatureFlags___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];
  v7 = [v5 compare:v6];

  return v7;
}

- (id)_domainWithAdditionalServices:(id *)services
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (services)
  {
    if (![v3 count])
    {
LABEL_14:
      services = services;
      goto LABEL_16;
    }

    v5 = [services[1] mutableCopy];
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
          identifier = [v10 identifier];
          v12 = [v5 objectForKey:identifier];
          v13 = v12 == 0;

          if (v13)
          {
            identifier2 = [v10 identifier];
            [v5 setObject:v10 forKey:identifier2];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    if ([services[1] isEqualToDictionary:v5])
    {

      goto LABEL_14;
    }

    services = [[BSServiceDomainSpecification alloc] _initWithIdentifier:services[6] machName:services[7] multiplexingType:services[10] xpcSubserviceName:services[9] start:services[4] launchIdentifiers:v5 servicesByIdentifier:services[11] derivedServiceRestrictions:services[2] enableIfFeatureFlags:services[3] disableIfFeatureFlags:?];
  }

LABEL_16:

  v15 = *MEMORY[0x1E69E9840];

  return services;
}

- (void)_appendManagerDumpBodyToBuilder:(void *)builder withMultilinePrefix:
{
  v6 = a2;
  builderCopy = builder;
  if (self)
  {
    [(BSServiceDomainSpecification *)self _appendBodySectionToBuilder:v6 withName:@"specification" multilinePrefix:builderCopy includeServices:0];
  }
}

- (void)_appendBodySectionToBuilder:(void *)builder withName:(void *)name multilinePrefix:(char)prefix includeServices:
{
  v9 = a2;
  builderCopy = builder;
  nameCopy = name;
  if (self)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __101__BSServiceDomainSpecification__appendBodySectionToBuilder_withName_multilinePrefix_includeServices___block_invoke;
    v12[3] = &unk_1E7520920;
    v13 = v9;
    selfCopy = self;
    prefixCopy = prefix;
    [v13 appendBodySectionWithName:builderCopy multilinePrefix:nameCopy block:v12];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSServiceDomainSpecification *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_identifier withName:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSServiceDomainSpecification *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BSServiceDomainSpecification *)self succinctDescriptionBuilder];
  [(BSServiceDomainSpecification *)self _appendBodySectionToBuilder:succinctDescriptionBuilder withName:0 multilinePrefix:prefixCopy includeServices:1];

  return succinctDescriptionBuilder;
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
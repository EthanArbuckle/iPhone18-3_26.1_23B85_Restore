@interface CHSWidgetConfiguration
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (CHSWidgetConfiguration)init;
- (CHSWidgetConfiguration)initWithCoder:(id)coder;
- (CHSWidgetConfiguration)initWithConfiguration:(id)configuration;
- (CHSWidgetConfiguration)initWithContainerDescriptors:(id)descriptors metricsSpecification:(id)specification;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetConfiguration

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetConfiguration.m" lineNumber:30 description:@"use initWithContainerDescriptors:metricsSpecification:"];

  return 0;
}

- (CHSWidgetConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetConfiguration.m" lineNumber:35 description:@"use initWithContainerDescriptors:metricsSpecification:"];

  return 0;
}

- (CHSWidgetConfiguration)initWithContainerDescriptors:(id)descriptors metricsSpecification:(id)specification
{
  descriptorsCopy = descriptors;
  specificationCopy = specification;
  v16.receiver = self;
  v16.super_class = CHSWidgetConfiguration;
  v8 = [(CHSWidgetConfiguration *)&v16 init];
  if (v8)
  {
    v9 = [descriptorsCopy copy];
    containerDescriptors = v8->_containerDescriptors;
    v8->_containerDescriptors = v9;

    v11 = [specificationCopy copy];
    metricsSpecification = v8->_metricsSpecification;
    v8->_metricsSpecification = v11;

    defaultRemoteDevicePredicate = [objc_opt_class() defaultRemoteDevicePredicate];
    replicationPredicate = v8->_replicationPredicate;
    v8->_replicationPredicate = defaultRemoteDevicePredicate;

    v8->_automaticallyOrphaned = 1;
    v8->_expirationTimeout = 1800.0;
  }

  return v8;
}

- (CHSWidgetConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = CHSWidgetConfiguration;
  v5 = [(CHSWidgetConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [configurationCopy[1] copy];
    containerDescriptors = v5->_containerDescriptors;
    v5->_containerDescriptors = v6;

    v8 = [configurationCopy[2] copy];
    metricsSpecification = v5->_metricsSpecification;
    v5->_metricsSpecification = v8;

    v10 = [configurationCopy[3] copy];
    rateLimitPolicies = v5->_rateLimitPolicies;
    v5->_rateLimitPolicies = v10;

    v12 = [configurationCopy[4] copy];
    replicationPredicate = v5->_replicationPredicate;
    v5->_replicationPredicate = v12;

    v5->_automaticallyOrphaned = *(configurationCopy + 40);
    *&v5->_expirationTimeout = configurationCopy[6];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = equalCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  containerDescriptors = self->_containerDescriptors;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __34__CHSWidgetConfiguration_isEqual___block_invoke;
  v42[3] = &unk_1E7453028;
  v11 = v9;
  v43 = v11;
  v12 = [v5 appendObject:containerDescriptors counterpart:v42];
  metricsSpecification = self->_metricsSpecification;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __34__CHSWidgetConfiguration_isEqual___block_invoke_2;
  v40[3] = &unk_1E7453050;
  v14 = v11;
  v41 = v14;
  v15 = [v5 appendObject:metricsSpecification counterpart:v40];
  rateLimitPolicies = self->_rateLimitPolicies;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __34__CHSWidgetConfiguration_isEqual___block_invoke_3;
  v38[3] = &unk_1E7453078;
  v17 = v14;
  v39 = v17;
  v18 = [v5 appendObject:rateLimitPolicies counterpart:v38];
  replicationPredicate = self->_replicationPredicate;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __34__CHSWidgetConfiguration_isEqual___block_invoke_4;
  v36[3] = &unk_1E7453078;
  v20 = v17;
  v37 = v20;
  v21 = [v5 appendObject:replicationPredicate counterpart:v36];
  automaticallyOrphaned = self->_automaticallyOrphaned;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __34__CHSWidgetConfiguration_isEqual___block_invoke_5;
  v34[3] = &unk_1E7452FB0;
  v23 = v20;
  v35 = v23;
  v24 = [v5 appendBool:automaticallyOrphaned counterpart:v34];
  expirationTimeout = self->_expirationTimeout;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __34__CHSWidgetConfiguration_isEqual___block_invoke_6;
  v32 = &unk_1E74530A0;
  v26 = v23;
  v33 = v26;
  v27 = [v5 appendDouble:&v29 counterpart:expirationTimeout];
  LOBYTE(v23) = [v5 isEqual];

  return v23;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_containerDescriptors];
  v5 = [builder appendObject:self->_metricsSpecification];
  v6 = [builder appendObject:self->_rateLimitPolicies];
  v7 = [builder appendObject:self->_replicationPredicate];
  v8 = [builder appendBool:self->_automaticallyOrphaned];
  v9 = [builder appendDouble:self->_expirationTimeout];
  v10 = [builder hash];

  return v10;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CHSWidgetConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CHSWidgetConfiguration_succinctDescriptionBuilder__block_invoke;
  v8[3] = &unk_1E7453000;
  v4 = v3;
  v9 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:v8];
  v6 = v4;

  return v4;
}

id __52__CHSWidgetConfiguration_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1 + 40;
  v3 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 8) withName:{"count"), @"containerCount"}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(*v2 + 8);
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v22 + 1) + 8 * i) widgets];
        v10 = [v9 count];

        v5 += v10;
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v11 = [*(a1 + 32) appendUnsignedInteger:v5 withName:@"widgets"];
  v12 = *(a1 + 32);
  v13 = [*(*(a1 + 40) + 16) succinctDescription];
  v14 = [v12 appendObject:v13 withName:@"metrics"];

  v16 = *(a1 + 32);
  v15 = a1 + 32;
  v17 = [v16 appendUnsignedInteger:objc_msgSend(*(*(v15 + 8) + 24) withName:{"count"), @"rateLimitCount"}];
  v18 = [*v15 appendObject:*(*(v15 + 8) + 32) withName:@"replicationPredicate"];
  v19 = *v15;
  if (*(*(v15 + 8) + 40))
  {
    result = [v19 appendTimeInterval:@"expirationTimeout" withName:0 decomposeUnits:*(*(v15 + 8) + 48)];
  }

  else
  {
    result = [v19 appendBool:0 withName:@"automaticallyOrphaned"];
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CHSWidgetConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CHSWidgetConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  v7 = v6;

  return v6;
}

id __64__CHSWidgetConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = a1 + 40;
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"metricsSpecification"];
  v5 = [*v2 appendUnsignedInteger:objc_msgSend(*(*v3 + 8) withName:{"count"), @"containerCount"}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(*v3 + 8);
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v22 + 1) + 8 * i) widgets];
        v12 = [v11 count];

        v7 += v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v13 = (a1 + 32);
  v14 = [*(a1 + 32) appendUnsignedInteger:v7 withName:@"widgets"];
  v16 = *(a1 + 40);
  v15 = a1 + 40;
  v17 = [*v13 appendObject:*(v16 + 24) withName:@"rateLimits"];
  v18 = [*v13 appendObject:*(*v15 + 32) withName:@"replicationPredicate"];
  v19 = *v13;
  if (*(*v15 + 40))
  {
    result = [v19 appendTimeInterval:@"expirationTimeout" withName:0 decomposeUnits:*(*v15 + 48)];
  }

  else
  {
    result = [v19 appendBool:0 withName:@"automaticallyOrphaned"];
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableWidgetConfiguration allocWithZone:zone];

  return [(CHSWidgetConfiguration *)v4 initWithConfiguration:self];
}

- (void)encodeWithCoder:(id)coder
{
  v57 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v37 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  selfCopy = self;
  v4 = self->_rateLimitPolicies;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v5)
  {
    v6 = *v47;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        identifier = [v8 identifier];
        [v37 setObject:v8 forKeyedSubscript:identifier];
      }

      v5 = [(NSSet *)v4 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v5);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = selfCopy->_containerDescriptors;
  v33 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v33)
  {
    v32 = *v43;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * j);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        widgets = [v10 widgets];
        v12 = [widgets countByEnumeratingWithState:&v38 objects:v54 count:16];
        if (v12)
        {
          v13 = *v39;
          do
          {
            for (k = 0; k != v12; ++k)
            {
              if (*v39 != v13)
              {
                objc_enumerationMutation(widgets);
              }

              v15 = *(*(&v38 + 1) + 8 * k);
              refreshStrategy = [v15 refreshStrategy];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = refreshStrategy;
                rateLimitIdentifier = [v17 rateLimitIdentifier];
                v19 = rateLimitIdentifier == 0;

                if (!v19)
                {
                  rateLimitIdentifier2 = [v17 rateLimitIdentifier];
                  v21 = [v37 objectForKeyedSubscript:rateLimitIdentifier2];
                  v22 = v21 == 0;

                  if (v22)
                  {
                    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                    rateLimitIdentifier3 = [v17 rateLimitIdentifier];

                    v25 = CHSLogChronoServices();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
                    {
                      rateLimitIdentifier4 = [v17 rateLimitIdentifier];
                      *buf = 138543618;
                      v51 = v15;
                      v52 = 2114;
                      v53 = rateLimitIdentifier4;
                    }
                  }
                }
              }
            }

            v12 = [widgets countByEnumeratingWithState:&v38 objects:v54 count:16];
          }

          while (v12);
        }
      }

      v33 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v33);
  }

  [coderCopy encodeObject:selfCopy->_containerDescriptors forKey:@"_containerDescriptors"];
  [coderCopy encodeObject:selfCopy->_metricsSpecification forKey:@"_metricsSpecification"];
  allObjects = [(NSSet *)selfCopy->_rateLimitPolicies allObjects];
  [coderCopy encodeObject:allObjects forKey:@"rateLimits2"];

  [coderCopy encodeObject:selfCopy->_replicationPredicate forKey:@"replicationPredicate"];
  [coderCopy encodeBool:selfCopy->_automaticallyOrphaned forKey:@"automaticallyOrphaned"];
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:selfCopy->_expirationTimeout];
  [coderCopy encodeObject:v28 forKey:@"expirationTimeout"];

  v29 = *MEMORY[0x1E69E9840];
}

- (CHSWidgetConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_containerDescriptors"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_metricsSpecification"];
  if ([coderCopy containsValueForKey:@"rateLimits2"])
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    allObjects = [coderCopy decodeObjectOfClasses:v12 forKey:@"rateLimits2"];
  }

  else
  {
    if (![coderCopy containsValueForKey:@"rateLimits"])
    {
      allObjects = 0;
      goto LABEL_7;
    }

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v12 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v12 forKey:@"rateLimits"];
    allObjects = [v16 allObjects];
  }

LABEL_7:
  selfCopy = 0;
  if (v8 && v9)
  {
    v18 = [(CHSWidgetConfiguration *)self initWithContainerDescriptors:v8 metricsSpecification:v9];
    if (v18)
    {
      if ([coderCopy containsValueForKey:@"replicationPredicate"])
      {
        [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replicationPredicate"];
      }

      else
      {
        [objc_opt_class() defaultRemoteDevicePredicate];
      }
      v19 = ;
      replicationPredicate = v18->_replicationPredicate;
      v18->_replicationPredicate = v19;

      if (allObjects)
      {
        v21 = [MEMORY[0x1E695DFD8] setWithArray:allObjects];
      }

      else
      {
        v21 = 0;
      }

      rateLimitPolicies = v18->_rateLimitPolicies;
      v18->_rateLimitPolicies = v21;

      if ([coderCopy containsValueForKey:@"automaticallyOrphaned"])
      {
        v18->_automaticallyOrphaned = [coderCopy decodeBoolForKey:@"automaticallyOrphaned"];
      }

      else
      {
        v18->_automaticallyOrphaned = 1;
      }

      if ([coderCopy containsValueForKey:@"expirationTimeout"])
      {
        v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationTimeout"];
        [v23 doubleValue];
        v25 = v24;
      }

      else
      {
        v25 = 0x409C200000000000;
      }

      *&v18->_expirationTimeout = v25;
    }

    self = v18;
    selfCopy = self;
  }

  return selfCopy;
}

@end
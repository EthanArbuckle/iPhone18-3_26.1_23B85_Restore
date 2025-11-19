@interface CHSConfiguredWidgetDescriptor
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (CHSConfiguredWidgetContainerDescriptor)container;
- (CHSConfiguredWidgetDescriptor)init;
- (CHSConfiguredWidgetDescriptor)initWithCoder:(id)a3;
- (CHSConfiguredWidgetDescriptor)initWithUniqueIdentifier:(id)a3 widget:(id)a4 metrics:(id)a5 isSuggestion:(BOOL)a6 isSystemConfigured:(BOOL)a7;
- (id)_initWithDescriptor:(id)a3;
- (id)_initWithUniqueIdentifier:(id)a3 widget:(id)a4 metrics:(id)a5 displayProperties:(id)a6 fallbackToDefaultDisplayIfNecessary:(BOOL)a7;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)extensionBundleIdentifier;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (unint64_t)supportedRenderingModes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSConfiguredWidgetDescriptor

- (id)extensionBundleIdentifier
{
  v2 = [(CHSWidget *)self->_widget extensionIdentity];
  v3 = [v2 extensionBundleIdentifier];

  return v3;
}

- (CHSConfiguredWidgetContainerDescriptor)container
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_container);

  return WeakRetained;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CHSConfiguredWidgetDescriptor.m" lineNumber:47 description:@"use designated initializer"];

  return 0;
}

- (CHSConfiguredWidgetDescriptor)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CHSConfiguredWidgetDescriptor.m" lineNumber:52 description:@"use designated initializer"];

  return 0;
}

- (id)_initWithUniqueIdentifier:(id)a3 widget:(id)a4 metrics:(id)a5 displayProperties:(id)a6 fallbackToDefaultDisplayIfNecessary:(BOOL)a7
{
  v7 = a7;
  v43[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v37.receiver = self;
  v37.super_class = CHSConfiguredWidgetDescriptor;
  v16 = [(CHSConfiguredWidgetDescriptor *)&v37 init];
  if (v16)
  {
    v17 = [v13 copy];
    widget = v16->_widget;
    v16->_widget = v17;

    v19 = [v12 copy];
    uniqueIdentifier = v16->_uniqueIdentifier;
    v16->_uniqueIdentifier = v19;

    v21 = [v14 copy];
    metrics = v16->_metrics;
    v16->_metrics = v21;

    *&v16->_suggestion = 0;
    v23 = +[CHSWidgetRefreshStrategyFactory defaultStrategy];
    refreshStrategy = v16->_refreshStrategy;
    v16->_refreshStrategy = v23;

    v16->_supportedColorSchemes = 3;
    v25 = [[CHSWidgetRenderScheme alloc] initWithRenderingMode:0 backgroundViewPolicy:0];
    v43[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    supportedRenderSchemes = v16->_supportedRenderSchemes;
    v16->_supportedRenderSchemes = v26;

    if (v15)
    {
      v28 = v15;
      displayProperties = v16->_displayProperties;
      v16->_displayProperties = v28;
    }

    else if (v7)
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2050000000;
      v30 = getFBDisplayManagerClass_softClass;
      v42 = getFBDisplayManagerClass_softClass;
      if (!getFBDisplayManagerClass_softClass)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __getFBDisplayManagerClass_block_invoke;
        v38[3] = &unk_1E74534C8;
        v38[4] = &v39;
        __getFBDisplayManagerClass_block_invoke(v38);
        v30 = v40[3];
      }

      v31 = v30;
      _Block_object_dispose(&v39, 8);
      v32 = [CHSWidgetDisplayProperties alloc];
      displayProperties = [v30 mainConfiguration];
      v33 = [(CHSWidgetDisplayProperties *)v32 initWithDisplayConfiguration:displayProperties];
      v34 = v16->_displayProperties;
      v16->_displayProperties = v33;
    }

    else
    {
      displayProperties = v16->_displayProperties;
      v16->_displayProperties = 0;
    }

    *&v16->_supportsLowLuminance = 0;
    v16->_supportedProximities = 1;
    v16->_idealizedDateComponents = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v16;
}

- (CHSConfiguredWidgetDescriptor)initWithUniqueIdentifier:(id)a3 widget:(id)a4 metrics:(id)a5 isSuggestion:(BOOL)a6 isSystemConfigured:(BOOL)a7
{
  result = [(CHSConfiguredWidgetDescriptor *)self initWithUniqueIdentifier:a3 widget:a4 metrics:a5];
  if (result)
  {
    result->_suggestion = a6;
    result->_systemConfigured = a7;
  }

  return result;
}

- (id)_initWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(CHSConfiguredWidgetDescriptor *)self _initWithUniqueIdentifier:*(v4 + 10) widget:*(v4 + 11) metrics:*(v4 + 12) displayProperties:*(v4 + 6) fallbackToDefaultDisplayIfNecessary:0];
  v6 = v5;
  if (v5)
  {
    v5[16] = *(v4 + 16);
    v5[17] = *(v4 + 17);
    *(v5 + 3) = *(v4 + 3);
    v7 = [*(v4 + 4) copy];
    v8 = *(v6 + 4);
    *(v6 + 4) = v7;

    *(v6 + 40) = *(v4 + 40);
    *(v6 + 41) = *(v4 + 41);
    objc_storeStrong(v6 + 7, *(v4 + 7));
    *(v6 + 8) = *(v4 + 8);
    *(v6 + 9) = *(v4 + 9);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [MEMORY[0x1E698E6A0] builderWithObject:v6 ofExpectedClass:objc_opt_class()];
    uniqueIdentifier = self->_uniqueIdentifier;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke;
    v77[3] = &unk_1E7452FD8;
    v11 = v8;
    v78 = v11;
    v12 = [v9 appendString:uniqueIdentifier counterpart:v77];
    widget = self->_widget;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_2;
    v75[3] = &unk_1E7453078;
    v14 = v11;
    v76 = v14;
    v15 = [v9 appendObject:widget counterpart:v75];
    metrics = self->_metrics;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_3;
    v73[3] = &unk_1E7453078;
    v17 = v14;
    v74 = v17;
    v18 = [v9 appendObject:metrics counterpart:v73];
    suggestion = self->_suggestion;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_4;
    v71[3] = &unk_1E7452FB0;
    v20 = v17;
    v72 = v20;
    v21 = [v9 appendBool:suggestion counterpart:v71];
    systemConfigured = self->_systemConfigured;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_5;
    v69[3] = &unk_1E7452FB0;
    v23 = v20;
    v70 = v23;
    v24 = [v9 appendBool:systemConfigured counterpart:v69];
    supportedColorSchemes = self->_supportedColorSchemes;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_6;
    v67[3] = &unk_1E7453318;
    v26 = v23;
    v68 = v26;
    v27 = [v9 appendUnsignedInteger:supportedColorSchemes counterpart:v67];
    supportedRenderSchemes = self->_supportedRenderSchemes;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_7;
    v65[3] = &unk_1E7453078;
    v29 = v26;
    v66 = v29;
    v30 = [v9 appendObject:supportedRenderSchemes counterpart:v65];
    supportsLowLuminance = self->_supportsLowLuminance;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_8;
    v63[3] = &unk_1E7452FB0;
    v32 = v29;
    v64 = v32;
    v33 = [v9 appendBool:supportsLowLuminance counterpart:v63];
    showsWidgetLabel = self->_showsWidgetLabel;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_9;
    v61[3] = &unk_1E7452FB0;
    v35 = v32;
    v62 = v35;
    v36 = [v9 appendBool:showsWidgetLabel counterpart:v61];
    displayProperties = self->_displayProperties;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_10;
    v59[3] = &unk_1E7453078;
    v38 = v35;
    v60 = v38;
    v39 = [v9 appendObject:displayProperties counterpart:v59];
    refreshStrategy = self->_refreshStrategy;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_11;
    v57[3] = &unk_1E7453078;
    v41 = v38;
    v58 = v41;
    v42 = [v9 appendObject:refreshStrategy counterpart:v57];
    supportedProximities = self->_supportedProximities;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_12;
    v55[3] = &unk_1E7453318;
    v44 = v41;
    v56 = v44;
    v45 = [v9 appendUnsignedInteger:supportedProximities counterpart:v55];
    idealizedDateComponents = self->_idealizedDateComponents;
    v50 = MEMORY[0x1E69E9820];
    v51 = 3221225472;
    v52 = __41__CHSConfiguredWidgetDescriptor_isEqual___block_invoke_13;
    v53 = &unk_1E7453078;
    v54 = v44;
    v47 = [v9 appendObject:idealizedDateComponents counterpart:&v50];
    v48 = [v9 isEqual];
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_uniqueIdentifier];
  v5 = [v3 appendObject:self->_widget];
  v6 = [v3 appendObject:self->_metrics];
  v7 = [v3 appendBool:self->_suggestion];
  v8 = [v3 appendBool:self->_systemConfigured];
  v9 = [v3 appendUnsignedInteger:self->_supportedColorSchemes];
  v10 = [v3 appendObject:self->_supportedRenderSchemes];
  v11 = [v3 appendBool:self->_supportsLowLuminance];
  v12 = [v3 appendBool:self->_showsWidgetLabel];
  v13 = [v3 appendObject:self->_displayProperties];
  v14 = [v3 appendObject:self->_refreshStrategy];
  v15 = [v3 appendUnsignedInteger:self->_supportedProximities];
  v16 = [v3 appendObject:self->_idealizedDateComponents];
  v17 = [v3 hash];

  return v17;
}

- (id)succinctDescription
{
  v2 = [(CHSConfiguredWidgetDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSConfiguredWidgetDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(CHSConfiguredWidgetDescriptor *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CHSConfiguredWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  return v6;
}

id __71__CHSConfiguredWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 80) withName:@"uniqueIdentifier"];
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 88) withName:@"widget"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 96) withName:@"metrics"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"isSuggestion"];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 17) withName:@"isSystemConfigured"];
  v6 = *(a1 + 32);
  v7 = NSStringFromCHSWidgetColorSchemes(*(*(a1 + 40) + 24));
  [v6 appendString:v7 withName:@"supportedColorSchemes"];

  v8 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"supportedRenderSchemes"];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 40) withName:@"supportsLowLuminance"];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 41) withName:@"showsWidgetLabel"];
  v11 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"displayProperties"];
  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"refreshStrategy"];
  v13 = *(a1 + 32);
  v14 = NSStringFromCHSWidgetProximities(*(*(a1 + 40) + 64));
  [v13 appendString:v14 withName:@"supportedProximities"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"idealizedDateComponents" skipIfNil:1];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHSMutableConfiguredWidgetDescriptor alloc];

  return [(CHSConfiguredWidgetDescriptor *)v4 _initWithDescriptor:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_widget forKey:@"widget"];
  [v4 encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v4 encodeObject:self->_metrics forKey:@"metrics"];
  [v4 encodeBool:self->_suggestion forKey:@"isSuggestion"];
  [v4 encodeBool:self->_systemConfigured forKey:@"isSystemConfigured"];
  [v4 encodeInt32:LODWORD(self->_supportedColorSchemes) forKey:@"supportedColorSchemes"];
  [v4 encodeObject:self->_supportedRenderSchemes forKey:@"supportedRenderSchemes2"];
  [v4 encodeBool:self->_supportsLowLuminance forKey:@"supportsLowLuminance"];
  [v4 encodeBool:self->_showsWidgetLabel forKey:@"showsWidgetLabel"];
  [v4 encodeObject:self->_displayProperties forKey:@"displayProperties"];
  [v4 encodeObject:self->_refreshStrategy forKey:@"refreshStrategy"];
  [v4 encodeInt32:LODWORD(self->_supportedProximities) forKey:@"supportedProximities"];
  [v4 encodeObject:self->_idealizedDateComponents forKey:@"idealizedDateComponents"];
}

- (CHSConfiguredWidgetDescriptor)initWithCoder:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41 = self;
  v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
  v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];
  v5 = [v4 decodeBoolForKey:@"isSystemConfigured"];
  v6 = [v4 decodeBoolForKey:@"isSuggestion"];
  v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayProperties"];
  if ([v4 containsValueForKey:@"supportedColorSchemes"])
  {
    v7 = [v4 decodeInt32ForKey:@"supportedColorSchemes"];
    IsValid = CHSWidgetColorSchemesIsValid(v7);
  }

  else
  {
    v9 = CHSLogChronoServices();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v48 = v44;
      _os_log_impl(&dword_195EB2000, v9, OS_LOG_TYPE_DEFAULT, "Cannot find color schemes encoded; using all as a fallback for %{public}@", buf, 0xCu);
    }

    IsValid = 1;
    v7 = 0xFFFFFFFFLL;
  }

  if ([v4 containsValueForKey:@"supportedRenderSchemes2"])
  {
    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedRenderSchemes2"];
    goto LABEL_21;
  }

  if ([v4 containsValueForKey:@"supportedRenderSchemes"])
  {
    v11 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedRenderSchemes"];
    v12 = [MEMORY[0x1E695DF70] array];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __47__CHSConfiguredWidgetDescriptor_initWithCoder___block_invoke;
    v45[3] = &unk_1E74541E8;
    v13 = v12;
    v46 = v13;
    [v11 enumerateObjectsUsingBlock:v45];
    v14 = v13;

    v15 = v46;
    v10 = v14;
LABEL_19:

    goto LABEL_21;
  }

  if ([v4 containsValueForKey:@"supportedRenderingModes"])
  {
    v16 = [v4 decodeInt32ForKey:@"supportedRenderingModes"];
    if (CHSWidgetRenderingModesIsValid(v16))
    {
      v17 = v16 & 6;
      if ((v16 & 1) == 0)
      {
        v10 = MEMORY[0x1E695E0F0];
LABEL_17:
        if (!v17)
        {
          goto LABEL_21;
        }

        v14 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:v17 backgroundViewPolicy:1];
        v15 = [(CHSWidgetRenderScheme *)v14 _compatibilityRenderSchemesFromDeprecatedRenderingModes];
        v20 = [v10 arrayByAddingObjectsFromArray:v15];

        v10 = v20;
        goto LABEL_19;
      }

LABEL_16:
      v18 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:1 backgroundViewPolicy:0];
      v19 = [(CHSWidgetRenderScheme *)v18 _compatibilityRenderSchemesFromDeprecatedRenderingModes];
      v10 = [MEMORY[0x1E695E0F0] arrayByAddingObjectsFromArray:v19];

      goto LABEL_17;
    }
  }

  else if ([v4 decodeBoolForKey:@"supportsTinting"])
  {
    v17 = 6;
    goto LABEL_16;
  }

  v10 = MEMORY[0x1E695E0F0];
LABEL_21:
  v39 = v10;
  v21 = [v10 count];
  v22 = +[CHSWidgetRefreshStrategyFactory defaultStrategy];
  if ([v4 containsValueForKey:@"refreshStrategy"])
  {
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"refreshStrategy"];

    v22 = v23;
  }

  v24 = [v4 decodeBoolForKey:@"supportsLowLuminance"];
  v38 = [v4 decodeBoolForKey:@"showsWidgetLabel"];
  v25 = v24;
  v26 = v5;
  if ([v4 containsValueForKey:@"supportedProximities"])
  {
    v27 = [v4 decodeInt32ForKey:@"supportedProximities"];
  }

  else
  {
    v27 = 3;
  }

  v37 = v27;
  if ([v4 containsValueForKey:@"idealizedDateComponents"])
  {
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idealizedDateComponents"];
  }

  else
  {
    v28 = 0;
  }

  v29 = 0;
  if (v44 && v43 && v42 && ((IsValid ^ 1) & 1) == 0 && v21)
  {
    v30 = [(CHSConfiguredWidgetDescriptor *)v41 _initWithUniqueIdentifier:v43 widget:v44 metrics:v42 displayProperties:v40 fallbackToDefaultDisplayIfNecessary:0];
    v31 = v30;
    if (v30)
    {
      *(v30 + 16) = v6;
      *(v30 + 17) = v26;
      *(v30 + 24) = v7;
      v32 = [v39 copy];
      v33 = *(v31 + 32);
      *(v31 + 32) = v32;

      *(v31 + 40) = v25;
      *(v31 + 41) = v38;
      objc_storeStrong((v31 + 56), v22);
      *(v31 + 64) = v37;
      *(v31 + 72) = v28;
    }

    v34 = v31;
    v29 = v34;
  }

  else
  {
    v34 = v41;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v29;
}

void __47__CHSConfiguredWidgetDescriptor_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _compatibilityRenderSchemesFromDeprecatedRenderingModes];
  if ([v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }
}

- (unint64_t)supportedRenderingModes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  supportedRenderSchemes = self->_supportedRenderSchemes;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__CHSConfiguredWidgetDescriptor_supportedRenderingModes__block_invoke;
  v5[3] = &unk_1E7454210;
  v5[4] = &v6;
  [(NSArray *)supportedRenderSchemes enumerateObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

unint64_t __56__CHSConfiguredWidgetDescriptor_supportedRenderingModes__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 renderingMode];
  if (result <= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) |= qword_195FAAD40[result];
  }

  return result;
}

@end
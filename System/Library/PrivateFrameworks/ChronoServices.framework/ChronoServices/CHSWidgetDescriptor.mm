@interface CHSWidgetDescriptor
- (BOOL)hasIntents;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTransparent;
- (BOOL)matches:(id)matches;
- (BOOL)matchesPersonality:(id)personality;
- (CHSWidgetDescriptor)initWithCoder:(id)coder;
- (CHSWidgetDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind displayName:(id)name intentType:(id)type supportedSizeClasses:(unint64_t)classes widgetDescription:(id)description widgetVisibility:(int64_t)self0;
- (CHSWidgetDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind supportedFamilies:(unint64_t)families intentType:(id)type;
- (CHSWidgetDescriptor)initWithExtensionIdentity:(id)identity kind:(id)kind supportedFamilies:(unint64_t)families intentType:(id)type;
- (id)_intentDescription;
- (id)copyAsCHSAvocadoDescriptor;
- (id)copyWithoutIntents;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initFromDescriptor:(id)descriptor includeIntents:(BOOL)intents;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)widgetForFamily:(int64_t)family intent:(id)intent;
- (unint64_t)disfavoredFamiliesForLocation:(unint64_t)location;
- (unint64_t)hash;
- (unint64_t)locationsDisfavoredByFamily:(int64_t)family;
- (void)_evaluateSupportsAccentedContent;
- (void)encodeWithCoder:(id)coder;
- (void)loadDefaultIntent:(id)intent;
- (void)setDefaultIntent:(id)intent;
- (void)setDefaultIntentReference:(id)reference;
@end

@implementation CHSWidgetDescriptor

- (BOOL)hasIntents
{
  if (self->_defaultIntentReference)
  {
    return 1;
  }

  recommendations = [(CHSIntentRecommendationsContainer *)self->_intentRecommendationsContainer recommendations];
  v2 = [recommendations count] != 0;

  return v2;
}

- (id)copyWithoutIntents
{
  v3 = [CHSWidgetDescriptor alloc];

  return [(CHSWidgetDescriptor *)v3 initFromDescriptor:self includeIntents:0];
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v25.receiver = self;
  v25.super_class = CHSWidgetDescriptor;
  v4 = [builder appendUnsignedInteger:{-[CHSBaseDescriptor hash](&v25, sel_hash)}];
  v5 = [builder appendString:self->_kind];
  v6 = [builder appendInteger:self->_supportedFamilies];
  v7 = [builder appendString:self->_intentType];
  v8 = [builder appendObject:self->_defaultIntentReference];
  v9 = [builder appendObject:self->_intentRecommendationsContainer];
  v10 = [builder appendInteger:self->_widgetVisibility];
  v11 = [builder appendObject:self->_disfavoredLocations];
  v12 = [builder appendBool:self->_enablesMultipleTapTargets];
  v13 = [builder appendBool:self->_backgroundRemovable];
  v14 = [builder appendBool:self->_supportsAccentedContent];
  v15 = [builder appendBool:self->_relevanceBacked];
  v16 = [builder appendBool:self->_supportsPush];
  v17 = [builder appendObject:self->_associatedKind];
  v18 = [builder appendBool:self->_supportsInteraction];
  v19 = [builder appendObject:self->_targetLiveSceneBundleIdentifier];
  v20 = [builder appendUnsignedInteger:self->_spatialSurface];
  v21 = [builder appendUnsignedInteger:self->_spatialChromeStyles];
  v22 = [builder appendBool:self->_wantsLiveScene];
  v23 = [builder hash];

  return v23;
}

- (CHSWidgetDescriptor)initWithExtensionIdentity:(id)identity kind:(id)kind supportedFamilies:(unint64_t)families intentType:(id)type
{
  identityCopy = identity;
  kindCopy = kind;
  typeCopy = type;
  v23.receiver = self;
  v23.super_class = CHSWidgetDescriptor;
  v13 = [(CHSBaseDescriptor *)&v23 initWithExtensionIdentity:identityCopy];
  v14 = v13;
  if (v13)
  {
    v13->_supportedFamilies = families;
    v15 = [kindCopy copy];
    kind = v14->_kind;
    v14->_kind = v15;

    v17 = [typeCopy copy];
    intentType = v14->_intentType;
    v14->_intentType = v17;

    v14->_widgetVisibility = 0;
    v14->_supportsInteraction = 1;
    v14->_backgroundRemovable = 1;
    v14->_supportsAccentedContent = 0;
    v14->_relevanceBacked = 0;
    v14->_supportsPush = 0;
    v19 = objc_alloc_init(MEMORY[0x1E695DF20]);
    disfavoredLocations = v14->_disfavoredLocations;
    v14->_disfavoredLocations = v19;

    targetLiveSceneBundleIdentifier = v14->_targetLiveSceneBundleIdentifier;
    v14->_targetLiveSceneBundleIdentifier = 0;

    v14->_spatialSurface = 2;
    v14->_spatialChromeStyles = 5;
    v14->_wantsLiveScene = 0;
  }

  return v14;
}

- (id)initFromDescriptor:(id)descriptor includeIntents:(BOOL)intents
{
  intentsCopy = intents;
  descriptorCopy = descriptor;
  v18.receiver = self;
  v18.super_class = CHSWidgetDescriptor;
  v7 = [(CHSBaseDescriptor *)&v18 _initWithDescriptor:descriptorCopy];
  v8 = v7;
  if (v7)
  {
    v7[19] = *(descriptorCopy + 19);
    objc_storeStrong(v7 + 20, *(descriptorCopy + 20));
    objc_storeStrong(v8 + 22, *(descriptorCopy + 22));
    v8[24] = *(descriptorCopy + 24);
    *(v8 + 235) = *(descriptorCopy + 235);
    *(v8 + 236) = *(descriptorCopy + 236);
    *(v8 + 237) = *(descriptorCopy + 237);
    v9 = [*(descriptorCopy + 21) copy];
    v10 = v8[21];
    v8[21] = v9;

    *(v8 + 232) = *(descriptorCopy + 232);
    *(v8 + 233) = *(descriptorCopy + 233);
    *(v8 + 234) = *(descriptorCopy + 234);
    v11 = [*(descriptorCopy + 28) copy];
    v12 = v8[28];
    v8[28] = v11;

    if (intentsCopy)
    {
      v13 = [*(descriptorCopy + 23) copy];
      v14 = v8[23];
      v8[23] = v13;

      v15 = *(descriptorCopy + 27);
    }

    else
    {
      v16 = v8[23];
      v8[23] = 0;

      v15 = 0;
    }

    objc_storeStrong(v8 + 27, v15);
    objc_storeStrong(v8 + 30, *(descriptorCopy + 30));
    v8[31] = *(descriptorCopy + 31);
    v8[32] = *(descriptorCopy + 32);
    *(v8 + 264) = *(descriptorCopy + 264);
  }

  return v8;
}

- (id)widgetForFamily:(int64_t)family intent:(id)intent
{
  intentCopy = intent;
  if (family)
  {
    if (((1 << family) & ~[(CHSWidgetDescriptor *)self supportedFamilies]) != 0)
    {
      family = 0;
    }

    else
    {
      v7 = [CHSWidget alloc];
      extensionIdentity = [(CHSBaseDescriptor *)self extensionIdentity];
      kind = [(CHSWidgetDescriptor *)self kind];
      family = [(CHSWidget *)v7 initWithExtensionIdentity:extensionIdentity kind:kind family:family intent:intentCopy activityIdentifier:0];
    }
  }

  return family;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  extensionIdentity = [(CHSBaseDescriptor *)self extensionIdentity];
  extensionIdentity2 = [matchesCopy extensionIdentity];
  if (BSEqualObjects())
  {
    kind = [(CHSWidgetDescriptor *)self kind];
    kind2 = [matchesCopy kind];
    v9 = BSEqualStrings();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v36.receiver = self;
  v36.super_class = CHSWidgetDescriptor;
  if (![(CHSBaseDescriptor *)&v36 isEqual:equalCopy])
  {
    goto LABEL_22;
  }

  if (self == equalCopy)
  {
    v34 = 1;
    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self->_supportedFamilies != v5->_supportedFamilies)
    {
      goto LABEL_24;
    }

    kind = self->_kind;
    v7 = v5->_kind;
    if (!BSEqualObjects())
    {
      goto LABEL_24;
    }

    intentType = self->_intentType;
    v9 = v5->_intentType;
    if (!BSEqualObjects())
    {
      goto LABEL_24;
    }

    defaultIntentReference = self->_defaultIntentReference;
    v11 = v5->_defaultIntentReference;
    if (!BSEqualObjects())
    {
      goto LABEL_24;
    }

    intentRecommendationsContainer = self->_intentRecommendationsContainer;
    v13 = v5->_intentRecommendationsContainer;
    if (!BSEqualObjects())
    {
      goto LABEL_24;
    }

    disfavoredLocations = self->_disfavoredLocations;
    v15 = v5->_disfavoredLocations;
    if (!BSEqualObjects())
    {
      goto LABEL_24;
    }

    if (self->_widgetVisibility != v5->_widgetVisibility)
    {
      goto LABEL_24;
    }

    enablesMultipleTapTargets = self->_enablesMultipleTapTargets;
    v17 = v5->_enablesMultipleTapTargets;
    if (!BSEqualBools())
    {
      goto LABEL_24;
    }

    backgroundRemovable = self->_backgroundRemovable;
    v19 = v5->_backgroundRemovable;
    if (!BSEqualBools())
    {
      goto LABEL_24;
    }

    supportsAccentedContent = self->_supportsAccentedContent;
    v21 = v5->_supportsAccentedContent;
    if (!BSEqualBools())
    {
      goto LABEL_24;
    }

    relevanceBacked = self->_relevanceBacked;
    v23 = v5->_relevanceBacked;
    if (!BSEqualBools())
    {
      goto LABEL_24;
    }

    supportsPush = self->_supportsPush;
    v25 = v5->_supportsPush;
    if (!BSEqualBools())
    {
      goto LABEL_24;
    }

    associatedKind = self->_associatedKind;
    v27 = v5->_associatedKind;
    if (BSEqualObjects() && (supportsInteraction = self->_supportsInteraction, v29 = v5->_supportsInteraction, BSEqualBools()) && (targetLiveSceneBundleIdentifier = self->_targetLiveSceneBundleIdentifier, v31 = v5->_targetLiveSceneBundleIdentifier, BSEqualObjects()) && self->_spatialSurface == v5->_spatialSurface && self->_spatialChromeStyles == v5->_spatialChromeStyles)
    {
      wantsLiveScene = self->_wantsLiveScene;
      v33 = v5->_wantsLiveScene;
      v34 = BSEqualBools();
    }

    else
    {
LABEL_24:
      v34 = 0;
    }
  }

  else
  {
LABEL_22:
    v34 = 0;
  }

LABEL_26:

  return v34;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CHSWidgetDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CHSWidgetDescriptor_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_1E7453000;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  [v4 appendProem:self block:v7];
  v5 = v4;

  return v4;
}

id __49__CHSWidgetDescriptor_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 160) withName:@"kind"];
  v2 = *(a1 + 32);
  v3 = CHSWidgetFamilyMaskDescription(*(*(a1 + 40) + 152));
  [v2 appendString:v3 withName:@"supportedFamilies"];

  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 216) != 0 withName:@"hasDefaultIntent"];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CHSWidgetDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CHSWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  v7 = v6;

  return v6;
}

void __61__CHSWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"extensionIdentity"];
  v3 = [*(*(a1 + 40) + 8) containerBundleIdentifier];
  v4 = [*(a1 + 40) nativeContainerBundleIdentifier];
  v5 = [v3 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"nativeContainerBundleIdentifier"];
  }

  [*(a1 + 32) appendString:*(*(a1 + 40) + 160) withName:@"kind"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 24) withName:@"displayName"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 176) withName:@"intentType"];
  v7 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isEnabled"), @"enabled"}];
  v8 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 104) withName:@"enablement"];
  v9 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 72) withName:@"version"];
  v10 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 56) withName:@"preferredBackgroundStyle"];
  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 64) withName:@"supportsVibrantContent"];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 235) withName:@"supportsAccentedContent"];
  v13 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 236) withName:@"relevanceBacked" ifEqualTo:1];
  v14 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 237) withName:@"supportsPush" ifEqualTo:1];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 168) withName:@"associatedKind" skipIfEmpty:1];
  v15 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 233) withName:@"enablesMultipleTapTargets" ifEqualTo:1];
  v16 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 234) withName:@"backgroundRemovable"];
  v17 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 232) withName:@"supportsInteraction" ifEqualTo:0];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 80) withName:@"sdkVersion"];
  v18 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 88) withName:@"platform"];
  v19 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 216) != 0 withName:@"hasDefaultIntent"];
  v20 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 97) withName:@"promptsForUserConfiguration" ifEqualTo:1];
  v21 = *(a1 + 32);
  v22 = CHSWidgetFamilyMaskDescription(*(*(a1 + 40) + 152));
  [v21 appendString:v22 withName:@"supportedFamilies"];

  v23 = *(a1 + 40);
  v24 = *(v23 + 192);
  if (v24)
  {
    v25 = *(a1 + 32);
    v26 = CHSDescriptionForWidgetVisibility(v24);
    [v25 appendString:v26 withName:@"widgetVisibility"];

    v23 = *(a1 + 40);
  }

  v27 = *(a1 + 32);
  v28 = [*(v23 + 48) base64EncodedStringWithOptions:0];
  [v27 appendString:v28 withName:@"localeToken"];

  v29 = *(a1 + 32);
  v30 = [*(*(a1 + 40) + 40) description];
  [v29 appendString:v30 withName:@"eventMachServiceName" skipIfEmpty:1];

  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 112) withName:@"requiredFeatureFlags" skipIfEmpty:1];
  v31 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 184) withName:@"intentRecommendations" skipIfNil:1];
  v32 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 240) withName:@"targetLiveSceneBundleIdentifier" skipIfNil:1];
  v33 = *(a1 + 32);
  v34 = NSStringFromCHSWidgetSpatialChromeStyles(*(*(a1 + 40) + 256));
  [v33 appendString:v34 withName:@"spatialChromeStyles"];

  v35 = *(a1 + 32);
  v36 = NSStringFromCHSWidgetSpatialSurface(*(*(a1 + 40) + 248));
  [v35 appendString:v36 withName:@"spatialSurface"];

  v37 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 264) withName:@"wantsLiveScene"];
  v38 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 120) withName:@"requestedDataProtection"];
  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v40 = *(*(a1 + 40) + 224);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __61__CHSWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v49[3] = &unk_1E7453200;
  v41 = v39;
  v50 = v41;
  [v40 enumerateKeysAndObjectsUsingBlock:v49];
  v44 = MEMORY[0x1E69E9820];
  v45 = 3221225472;
  v46 = __61__CHSWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v47 = &unk_1E7453200;
  v48 = *(a1 + 32);
  [v41 enumerateKeysAndObjectsUsingBlock:&v44];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 32) withName:{@"widgetDescription", v44, v45, v46, v47}];
  v42 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"configurationBackgroundColor"];
  v43 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 136) withName:@"configurationAccentColor"];
}

void __61__CHSWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v7 = CHSWidgetFamilyMaskFromWidgetFamily([v10 integerValue]);
  v8 = [v6 integerValue];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8 | v7];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
}

void __61__CHSWidgetDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = [a3 integerValue];
  v6 = [v12 unsignedIntegerValue];
  v7 = *(a1 + 32);
  v8 = CHSWidgetFamilyMaskDescription(v5);
  v9 = MEMORY[0x1E696AEC0];
  v10 = NSStringFromCHSWidgetLocationStyleMask(v6);
  v11 = [v9 stringWithFormat:@"disfavoredLocations %@", v10];
  [v7 appendString:v8 withName:v11];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHSMutableWidgetDescriptor alloc];

  return [(CHSWidgetDescriptor *)v4 initFromDescriptor:self includeIntents:1];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = CHSWidgetDescriptor;
  [(CHSBaseDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_intentType forKey:@"intentType"];
  [coderCopy encodeObject:self->_intentRecommendationsContainer forKey:@"intentRecommendationsContainer"];
  [coderCopy encodeInteger:self->_supportedFamilies forKey:@"supportedSizeClasses"];
  [coderCopy encodeInteger:self->_widgetVisibility forKey:@"widgetVisibility"];
  [coderCopy encodeObject:self->_disfavoredLocations forKey:@"unsupLoca"];
  [coderCopy encodeBool:self->_supportsInteraction forKey:@"supportsInteraction"];
  [coderCopy encodeBool:self->_enablesMultipleTapTargets forKey:@"enablesMultipleTapTargets"];
  [coderCopy encodeBool:self->_backgroundRemovable forKey:@"backgroundRemovable"];
  [coderCopy encodeBool:self->_supportsAccentedContent forKey:@"supportsAccentedContent"];
  [coderCopy encodeBool:self->_relevanceBacked forKey:@"relevanceBacked"];
  [coderCopy encodeBool:self->_supportsPush forKey:@"supportsPush"];
  [coderCopy encodeObject:self->_associatedKind forKey:@"associatedKind"];
  [coderCopy encodeObject:self->_defaultIntentReference forKey:@"defaultIntent2"];
  [coderCopy encodeObject:self->_targetLiveSceneBundleIdentifier forKey:@"targetLiveSceneBundleID"];
  [coderCopy encodeInteger:self->_spatialSurface forKey:@"spatialSurface"];
  [coderCopy encodeInteger:self->_spatialChromeStyles forKey:@"spatialChromeStyles"];
  [coderCopy encodeBool:self->_wantsLiveScene forKey:@"wantsLiveScene"];
}

- (CHSWidgetDescriptor)initWithCoder:(id)coder
{
  v65[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v61.receiver = self;
  v61.super_class = CHSWidgetDescriptor;
  v5 = [(CHSBaseDescriptor *)&v61 initWithCoder:coderCopy];
  if (!v5)
  {
LABEL_58:
    v5 = v5;
    v13 = v5;
    goto LABEL_59;
  }

  v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentType"];
  v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v6 = [coderCopy decodeIntegerForKey:@"supportedSizeClasses"];
  if (v6)
  {
    if ([coderCopy containsValueForKey:@"intentRecommendationsContainer"])
    {
      obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentRecommendationsContainer"];
    }

    else
    {
      v14 = MEMORY[0x1E695DFD8];
      v63[0] = objc_opt_class();
      v63[1] = objc_opt_class();
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
      v16 = [v14 setWithArray:v15];
      v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"intentRecommendations"];

      if ([v17 count])
      {
        firstObject = [v17 firstObject];
        intentReference = [firstObject intentReference];
        intent = [intentReference intent];

        obj = [[CHSIntentRecommendationsContainer alloc] initWithSchemaIntent:intent recommendations:v17];
        v5->_didMigrateToRecommendationsContainer = 1;
      }

      else
      {
        obj = 0;
      }
    }

    v21 = [coderCopy decodeIntegerForKey:@"widgetVisibility"];
    v22 = MEMORY[0x1E695DFD8];
    v62[0] = objc_opt_class();
    v62[1] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    v56 = v21;
    v24 = [v22 setWithArray:v23];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"unsupLoca"];

    if (!v25)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF20]);
    }

    v26 = [coderCopy decodeBoolForKey:@"enablesMultipleTapTargets"];
    v27 = [(CHSBaseDescriptor *)v5 isLinkedOnOrAfter:0];
    if ([coderCopy containsValueForKey:@"backgroundRemovable"])
    {
      v27 = [coderCopy decodeBoolForKey:@"backgroundRemovable"];
    }

    v28 = [coderCopy containsValueForKey:@"supportsAccentedContent"];
    if (v28)
    {
      v29 = [coderCopy decodeBoolForKey:@"supportsAccentedContent"];
    }

    else
    {
      v29 = 0;
    }

    if ([coderCopy containsValueForKey:@"supportsInteraction"])
    {
      v55 = [coderCopy decodeBoolForKey:@"supportsInteraction"];
    }

    else
    {
      v55 = 1;
    }

    if ([coderCopy containsValueForKey:@"relevanceBacked"])
    {
      v54 = [coderCopy decodeBoolForKey:@"relevanceBacked"];
    }

    else
    {
      v54 = 0;
    }

    if ([coderCopy containsValueForKey:@"supportsPush"])
    {
      v53 = [coderCopy decodeBoolForKey:@"supportsPush"];
    }

    else
    {
      v53 = 0;
    }

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedKind"];
    v50 = v28;
    v51 = v29;
    v52 = v26;
    if ([coderCopy containsValueForKey:@"defaultIntent2"])
    {
      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultIntent2"];
LABEL_37:
      if ([coderCopy containsValueForKey:@"wantsLiveScene"])
      {
        v37 = [coderCopy decodeBoolForKey:@"wantsLiveScene"];
      }

      else
      {
        v37 = 0;
      }

      if ([coderCopy containsValueForKey:@"targetLiveSceneBundleID"])
      {
        v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetLiveSceneBundleID"];
        if (v38)
        {
          v37 = 1;
        }

        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v5->_spatialChromeStyles = [coderCopy decodeIntegerForKey:@"spatialChromeStyles"];
      v5->_spatialSurface = [coderCopy decodeIntegerForKey:@"spatialSurface"];
      v5->_supportedFamilies = v6;
      if (!v5->super._version)
      {
        extensionBundleIdentifier = [(CHSExtensionIdentity *)v5->super._extensionIdentity extensionBundleIdentifier];
        if ([extensionBundleIdentifier isEqualToString:@"com.apple.news.widget"] && (objc_msgSend(v60, "isEqualToString:", @"today") & 1) != 0)
        {
          v41 = (v5->_supportedFamilies & 0x10) == 0;

          if (!v41)
          {
            v5->_supportedFamilies = v5->_supportedFamilies & 0xFFFFFFFFFFFFFFAFLL | 0x40;
          }
        }

        else
        {
        }
      }

      if (v5->super._extensionIdentity && v60 && v5->_supportedFamilies)
      {
        v42 = [v59 copy];
        intentType = v5->_intentType;
        v5->_intentType = v42;

        v44 = [v60 copy];
        kind = v5->_kind;
        v5->_kind = v44;

        v5->_widgetVisibility = v56;
        objc_storeStrong(&v5->_disfavoredLocations, v25);
        v5->_enablesMultipleTapTargets = v52;
        v5->_backgroundRemovable = v27;
        v5->_supportsAccentedContent = v51;
        v5->_supportsInteraction = v55;
        v5->_relevanceBacked = v54;
        v5->_supportsPush = v53;
        v46 = [v57 copy];
        associatedKind = v5->_associatedKind;
        v5->_associatedKind = v46;

        objc_storeStrong(&v5->_defaultIntentReference, v30);
        objc_storeStrong(&v5->_intentRecommendationsContainer, obj);
        objc_storeStrong(&v5->_targetLiveSceneBundleIdentifier, v39);
        v5->_wantsLiveScene = v37;
        if ((v50 & 1) == 0)
        {
          [(CHSWidgetDescriptor *)v5 _evaluateSupportsAccentedContent];
        }
      }

      else
      {

        v5 = 0;
      }

      goto LABEL_58;
    }

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"defaultIntent"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v34 error:0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v36 = 0;
        goto LABEL_35;
      }

      v35 = v34;
    }

    v36 = v35;
    if (v35)
    {
      v30 = [[CHSIntentReference alloc] initWithIntent:v35];
LABEL_36:

      goto LABEL_37;
    }

LABEL_35:
    v30 = 0;
    goto LABEL_36;
  }

  v7 = MEMORY[0x1E696ABC0];
  v64 = *MEMORY[0x1E696A578];
  v8 = MEMORY[0x1E696AEC0];
  extensionIdentity = [(CHSBaseDescriptor *)v5 extensionIdentity];
  v10 = [v8 stringWithFormat:@"Unable to decode widget descriptor: %@", extensionIdentity];
  v65[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
  v12 = [v7 errorWithDomain:@"com.apple.chronoservices.descriptor" code:1 userInfo:v11];
  [coderCopy failWithError:v12];

  v13 = 0;
LABEL_59:

  v48 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_intentDescription
{
  v3 = MEMORY[0x1E696AEC0];
  extensionBundleIdentifier = [(CHSExtensionIdentity *)self->super._extensionIdentity extensionBundleIdentifier];
  v5 = [v3 stringWithFormat:@"[%@ - %@]", extensionBundleIdentifier, self->_intentType];

  return v5;
}

- (void)_evaluateSupportsAccentedContent
{
  if ([(CHSBaseDescriptor *)self isLinkedOnOrAfter:1])
  {
    v3 = self->_supportsAccentedContent || self->_backgroundRemovable;
  }

  else
  {
    v3 = 0;
  }

  self->_supportsAccentedContent = v3;
}

- (BOOL)isTransparent
{
  v3 = CHSLogChronoServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CHSWidgetDescriptor *)v3 isTransparent];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  supportedFamilies = self->_supportedFamilies;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CHSWidgetDescriptor_isTransparent__block_invoke;
  v7[3] = &unk_1E7453228;
  v7[4] = self;
  v7[5] = &v8;
  CHSWidgetFamilyMaskEnumerateFamilies(supportedFamilies, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __36__CHSWidgetDescriptor_isTransparent__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) isTransparentForFamily:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (unint64_t)locationsDisfavoredByFamily:(int64_t)family
{
  disfavoredLocations = self->_disfavoredLocations;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:family];
  v5 = [(NSDictionary *)disfavoredLocations objectForKeyedSubscript:v4];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)disfavoredFamiliesForLocation:(unint64_t)location
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = CHSWidgetLocationStyleMaskFromStyle(location);
  disfavoredLocations = self->_disfavoredLocations;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CHSWidgetDescriptor_disfavoredFamiliesForLocation___block_invoke;
  v8[3] = &unk_1E7453250;
  v8[4] = &v9;
  v8[5] = v4;
  [(NSDictionary *)disfavoredLocations enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __53__CHSWidgetDescriptor_disfavoredFamiliesForLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 integerValue];
  if ((*(a1 + 40) & ~[v5 unsignedIntegerValue]) == 0)
  {
    v7 = *(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 32) + 8) + 24) = CHSWidgetFamilyMaskFromWidgetFamily(v6) | v7;
  }
}

- (void)setDefaultIntent:(id)intent
{
  intentCopy = intent;
  if (intentCopy)
  {
    v4 = [[CHSIntentReference alloc] initWithIntent:intentCopy];
    [(CHSWidgetDescriptor *)self setDefaultIntentReference:v4];
  }

  else
  {
    [(CHSWidgetDescriptor *)self setDefaultIntentReference:0];
  }
}

- (void)setDefaultIntentReference:(id)reference
{
  referenceCopy = reference;
  if (self->_defaultIntentReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->_defaultIntentReference, reference);
    referenceCopy = v6;
  }
}

- (CHSWidgetDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind supportedFamilies:(unint64_t)families intentType:(id)type
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  typeCopy = type;
  v16 = [[CHSExtensionIdentity alloc] initWithExtensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy deviceIdentifier:0];
  v17 = [(CHSWidgetDescriptor *)self initWithExtensionIdentity:v16 kind:kindCopy supportedFamilies:families intentType:typeCopy];

  return v17;
}

- (CHSWidgetDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind displayName:(id)name intentType:(id)type supportedSizeClasses:(unint64_t)classes widgetDescription:(id)description widgetVisibility:(int64_t)self0
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  nameCopy = name;
  typeCopy = type;
  descriptionCopy = description;
  v22 = [(CHSWidgetDescriptor *)self initWithExtensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy kind:kindCopy supportedFamilies:classes intentType:typeCopy];
  if (v22)
  {
    v23 = [nameCopy copy];
    displayName = v22->super._displayName;
    v22->super._displayName = v23;

    v25 = [descriptionCopy copy];
    widgetDescription = v22->super._widgetDescription;
    v22->super._widgetDescription = v25;

    v22->_widgetVisibility = visibility;
    v27 = objc_alloc_init(MEMORY[0x1E695DF20]);
    disfavoredLocations = v22->_disfavoredLocations;
    v22->_disfavoredLocations = v27;

    v22->_supportsInteraction = 1;
  }

  return v22;
}

- (void)loadDefaultIntent:(id)intent
{
  v24 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  defaultIntent = [(CHSWidgetDescriptor *)self defaultIntent];
  if (defaultIntent)
  {
    intentCopy[2](intentCopy, defaultIntent);
  }

  else
  {
    intentType = [(CHSWidgetDescriptor *)self intentType];
    if (intentType)
    {
      fetchDefaultIntentCompletions = self->_fetchDefaultIntentCompletions;
      if (fetchDefaultIntentCompletions)
      {
        v8 = [intentCopy copy];
        v9 = _Block_copy(v8);
        [(NSMutableArray *)fetchDefaultIntentCompletions addObject:v9];
      }

      else
      {
        v10 = CHSLogChronoServices();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          _intentDescription = [(CHSWidgetDescriptor *)self _intentDescription];
          *buf = 138543362;
          v23 = _intentDescription;
          _os_log_impl(&dword_195EB2000, v10, OS_LOG_TYPE_DEFAULT, "Begin loading default intent for %{public}@", buf, 0xCu);
        }

        v12 = objc_alloc_init(MEMORY[0x1E69AA898]);
        extensionBundleIdentifier = [(CHSBaseDescriptor *)self extensionBundleIdentifier];
        [v12 setExtensionBundleIdentifier:extensionBundleIdentifier];

        [v12 setIntentType:intentType];
        v14 = objc_alloc_init(MEMORY[0x1E69AA890]);
        objc_storeStrong(&self->_defaultIntentProvider, v14);
        v15 = MEMORY[0x1E695DF70];
        v16 = [intentCopy copy];
        v17 = [v15 arrayWithObject:v16];

        v18 = self->_fetchDefaultIntentCompletions;
        self->_fetchDefaultIntentCompletions = v17;
        v19 = v17;

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __53__CHSWidgetDescriptor_Deprecated__loadDefaultIntent___block_invoke;
        v21[3] = &unk_1E74532A0;
        v21[4] = self;
        [v14 provideIntentWithOptions:v12 completionHandler:v21];
      }
    }

    else
    {
      intentCopy[2](intentCopy, 0);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __53__CHSWidgetDescriptor_Deprecated__loadDefaultIntent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CHSWidgetDescriptor_Deprecated__loadDefaultIntent___block_invoke_2;
  block[3] = &unk_1E7453278;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __53__CHSWidgetDescriptor_Deprecated__loadDefaultIntent___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) _intentDescription];
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error: %@", *(a1 + 40)];
    }

    else
    {
      v5 = @"success";
    }

    *buf = 138543618;
    v22 = v3;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "Completed loading default intent for %{public}@: %{public}@", buf, 0x16u);
    if (v4)
    {
    }
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 208);
  *(v6 + 208) = 0;

  [*(a1 + 32) setDefaultIntent:*(a1 + 48)];
  v8 = [*(*(a1 + 32) + 200) copy];
  v9 = *(*(a1 + 32) + 200);
  *(*(a1 + 32) + 200) = 0;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(a1 + 48);
        (*(*(*(&v16 + 1) + 8 * v13++) + 16))();
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)matchesPersonality:(id)personality
{
  personalityCopy = personality;
  extensionIdentity = [(CHSBaseDescriptor *)self extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
  extensionBundleIdentifier2 = [personalityCopy extensionBundleIdentifier];
  if (BSEqualStrings())
  {
    kind = [(CHSWidgetDescriptor *)self kind];
    kind2 = [personalityCopy kind];
    v10 = BSEqualStrings();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyAsCHSAvocadoDescriptor
{
  v3 = [CHSAvocadoDescriptor alloc];

  return [(CHSWidgetDescriptor *)v3 _initWithDescriptor:self];
}

@end
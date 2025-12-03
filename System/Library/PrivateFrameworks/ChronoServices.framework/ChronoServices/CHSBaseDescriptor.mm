@interface CHSBaseDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isLinkedOnOrAfter:(unint64_t)after;
- (CHSBaseDescriptor)initWithCoder:(id)coder;
- (CHSBaseDescriptor)initWithExtensionIdentity:(id)identity;
- (NSString)effectiveContainerBundleIdentifier;
- (id)_initWithDescriptor:(id)descriptor;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSBaseDescriptor

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_extensionIdentity];
  v5 = [builder appendString:self->_nativeContainerBundleIdentifier];
  v6 = [builder appendString:self->_displayName];
  v7 = [builder appendString:self->_widgetDescription];
  v8 = [builder appendObject:self->_localeToken];
  v9 = [builder appendObject:self->_eventMachServiceName];
  v10 = [builder appendInteger:self->_preferredBackgroundStyle];
  v11 = [builder appendBool:self->_supportsVibrantContent];
  v12 = [builder appendString:self->_sdkVersion];
  v13 = [builder appendUnsignedInteger:self->_platform];
  v14 = [builder appendBool:self->_version != 0];
  v15 = [builder appendBool:self->_hiddenBySensitiveUI];
  v16 = [builder appendBool:self->_promptsForUserConfiguration];
  v17 = [builder appendUnsignedInteger:self->_enablement];
  v18 = [builder appendObject:self->_requiredFeatureFlags];
  v19 = [builder appendInteger:self->_requestedDataProtection];
  v20 = [builder appendObject:self->_configurationBackgroundColor];
  v21 = [builder appendObject:self->_configurationAccentColor];
  v22 = [builder hash];

  return v22;
}

- (CHSBaseDescriptor)initWithExtensionIdentity:(id)identity
{
  identityCopy = identity;
  v18.receiver = self;
  v18.super_class = CHSBaseDescriptor;
  v5 = [(CHSBaseDescriptor *)&v18 init];
  if (v5)
  {
    v6 = [identityCopy copy];
    extensionIdentity = v5->_extensionIdentity;
    v5->_extensionIdentity = v6;

    nativeContainerBundleIdentifier = v5->_nativeContainerBundleIdentifier;
    v5->_nativeContainerBundleIdentifier = 0;

    sdkVersion = v5->_sdkVersion;
    v5->_sdkVersion = @"Unknown";

    v5->_platform = CHSCurrentPlatform();
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v10 = getNSLocaleClass_softClass;
    v23 = getNSLocaleClass_softClass;
    if (!getNSLocaleClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getNSLocaleClass_block_invoke;
      v19[3] = &unk_1E74534C8;
      v19[4] = &v20;
      __getNSLocaleClass_block_invoke(v19);
      v10 = v21[3];
    }

    v11 = v10;
    _Block_object_dispose(&v20, 8);
    v17 = 0;
    v12 = [v10 archivedPreferencesWithHash:&v17];
    v13 = v17;
    v14 = [v13 copy];
    localeToken = v5->_localeToken;
    v5->_localeToken = v14;

    v5->_version = 2;
    *&v5->_hiddenBySensitiveUI = 0;
    v5->_enablement = 0;
    v5->_requestedDataProtection = 2;
  }

  return v5;
}

- (id)_initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [(CHSBaseDescriptor *)self initWithExtensionIdentity:*(descriptorCopy + 1)];
  if (v5)
  {
    v6 = [*(descriptorCopy + 3) copy];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [*(descriptorCopy + 4) copy];
    widgetDescription = v5->_widgetDescription;
    v5->_widgetDescription = v8;

    v10 = [*(descriptorCopy + 6) copy];
    localeToken = v5->_localeToken;
    v5->_localeToken = v10;

    v12 = [*(descriptorCopy + 5) copy];
    eventMachServiceName = v5->_eventMachServiceName;
    v5->_eventMachServiceName = v12;

    v5->_preferredBackgroundStyle = *(descriptorCopy + 7);
    v5->_supportsVibrantContent = *(descriptorCopy + 64);
    objc_storeStrong(&v5->_sdkVersion, *(descriptorCopy + 10));
    v5->_platform = *(descriptorCopy + 11);
    v5->_version = *(descriptorCopy + 9);
    v14 = [*(descriptorCopy + 2) copy];
    nativeContainerBundleIdentifier = v5->_nativeContainerBundleIdentifier;
    v5->_nativeContainerBundleIdentifier = v14;

    v5->_hiddenBySensitiveUI = *(descriptorCopy + 96);
    v5->_promptsForUserConfiguration = *(descriptorCopy + 97);
    v5->_enablement = *(descriptorCopy + 13);
    v5->_requestedDataProtection = *(descriptorCopy + 15);
    objc_storeStrong(&v5->_configurationBackgroundColor, *(descriptorCopy + 16));
    objc_storeStrong(&v5->_configurationAccentColor, *(descriptorCopy + 17));
    objc_storeStrong(&v5->_requiredFeatureFlags, *(descriptorCopy + 14));
  }

  return v5;
}

- (BOOL)isLinkedOnOrAfter:(unint64_t)after
{
  sdkVersion = self->_sdkVersion;
  if (sdkVersion && ![(NSString *)sdkVersion isEqualToString:@"Unknown"])
  {
    platform = self->_platform;
    if (platform)
    {
      v10 = _CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform(after, platform);
      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      v7 = [defaultWorkspace isVersion:self->_sdkVersion greaterThanOrEqualToVersion:v10];

      return v7;
    }

    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CHSBaseDescriptor isLinkedOnOrAfter:v6];
    }
  }

  else
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CHSBaseDescriptor isLinkedOnOrAfter:v6];
    }
  }

  return 0;
}

- (NSString)effectiveContainerBundleIdentifier
{
  nativeContainerBundleIdentifier = self->_nativeContainerBundleIdentifier;
  if (nativeContainerBundleIdentifier)
  {
    v4 = [(NSString *)nativeContainerBundleIdentifier copy];
  }

  else
  {
    containerBundleIdentifier = [(CHSExtensionIdentity *)self->_extensionIdentity containerBundleIdentifier];
    v4 = [containerBundleIdentifier copy];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v32 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      supportsVibrantContent = self->_supportsVibrantContent;
      v7 = v5->_supportsVibrantContent;
      if (!BSEqualBools())
      {
        goto LABEL_23;
      }

      if (self->_platform != v5->_platform)
      {
        goto LABEL_23;
      }

      if (self->_version != v5->_version)
      {
        goto LABEL_23;
      }

      extensionIdentity = self->_extensionIdentity;
      v9 = v5->_extensionIdentity;
      if (!BSEqualObjects())
      {
        goto LABEL_23;
      }

      nativeContainerBundleIdentifier = self->_nativeContainerBundleIdentifier;
      v11 = v5->_nativeContainerBundleIdentifier;
      if (!BSEqualObjects())
      {
        goto LABEL_23;
      }

      displayName = self->_displayName;
      v13 = v5->_displayName;
      if (!BSEqualObjects())
      {
        goto LABEL_23;
      }

      widgetDescription = self->_widgetDescription;
      v15 = v5->_widgetDescription;
      if (!BSEqualObjects())
      {
        goto LABEL_23;
      }

      localeToken = self->_localeToken;
      v17 = v5->_localeToken;
      if (!BSEqualObjects())
      {
        goto LABEL_23;
      }

      eventMachServiceName = self->_eventMachServiceName;
      v19 = v5->_eventMachServiceName;
      if (!BSEqualObjects())
      {
        goto LABEL_23;
      }

      sdkVersion = self->_sdkVersion;
      v21 = v5->_sdkVersion;
      if (!BSEqualObjects())
      {
        goto LABEL_23;
      }

      requiredFeatureFlags = self->_requiredFeatureFlags;
      v23 = v5->_requiredFeatureFlags;
      if (!BSEqualObjects())
      {
        goto LABEL_23;
      }

      configurationBackgroundColor = self->_configurationBackgroundColor;
      v25 = v5->_configurationBackgroundColor;
      if (!BSEqualObjects())
      {
        goto LABEL_23;
      }

      configurationAccentColor = self->_configurationAccentColor;
      v27 = v5->_configurationAccentColor;
      if (BSEqualObjects() && (promptsForUserConfiguration = self->_promptsForUserConfiguration, v29 = v5->_promptsForUserConfiguration, BSEqualBools()) && (hiddenBySensitiveUI = self->_hiddenBySensitiveUI, v31 = v5->_hiddenBySensitiveUI, BSEqualBools()) && self->_preferredBackgroundStyle == v5->_preferredBackgroundStyle && self->_enablement == v5->_enablement)
      {
        v32 = self->_requestedDataProtection == v5->_requestedDataProtection;
      }

      else
      {
LABEL_23:
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  return v32;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CHSBaseDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CHSBaseDescriptor_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_1E7453000;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  [v4 appendProem:self block:v7];
  v5 = v4;

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CHSBaseDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__CHSBaseDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];
  v7 = v6;

  return v6;
}

id __59__CHSBaseDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"extensionIdentity"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 16) withName:@"nativeContainerBundleIdentifier" skipIfEmpty:1];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 24) withName:@"displayName"];
  v3 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 72) withName:@"version"];
  v4 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 56) withName:@"preferredBackgroundStyle"];
  v5 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 64) withName:@"supportsVibrantContent"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 80) withName:@"sdkVersion"];
  v6 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 88) withName:@"platform"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 32) withName:@"widgetDescription"];
  v7 = *(a1 + 32);
  v8 = [*(*(a1 + 40) + 48) base64EncodedStringWithOptions:0];
  [v7 appendString:v8 withName:@"localeToken"];

  v9 = *(a1 + 32);
  v10 = [*(*(a1 + 40) + 40) description];
  [v9 appendString:v10 withName:@"eventMachServiceName"];

  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 96) withName:@"hiddenBySensitiveUI" ifEqualTo:1];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 97) withName:@"promptsForUserConfiguration"];
  v13 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isEnabled"), @"enabled"}];
  v14 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 104) withName:@"enablement"];
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 112) withName:@"requiredFeatureFlags" skipIfEmpty:1];
  v15 = *(*(a1 + 40) + 120) - 1;
  if (v15 > 3)
  {
    v16 = @"ClassA";
  }

  else
  {
    v16 = off_1E74545D8[v15];
  }

  [*(a1 + 32) appendString:v16 withName:@"requestedDataProtection"];
  v17 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"configurationBackgroundColor"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 136) withName:@"configurationAccentColor"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSBaseDescriptor.m" lineNumber:336 description:@"Not implemented - for subclasses to provide."];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_extensionIdentity forKey:@"extensionIdentity"];
  [coderCopy encodeObject:self->_nativeContainerBundleIdentifier forKey:@"nativeCBI"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_widgetDescription forKey:@"widgetDescription"];
  [coderCopy encodeObject:self->_localeToken forKey:@"localeToken"];
  [coderCopy encodeObject:self->_eventMachServiceName forKey:@"eventMachServiceName"];
  [coderCopy encodeInteger:self->_preferredBackgroundStyle forKey:@"backgroundStyle"];
  [coderCopy encodeBool:self->_supportsVibrantContent forKey:@"supportsVibrantContent"];
  [coderCopy encodeObject:self->_sdkVersion forKey:@"sdkVersion"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_platform];
  [coderCopy encodeObject:v4 forKey:@"platform"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];
  [coderCopy encodeObject:v5 forKey:@"version"];

  [coderCopy encodeBool:self->_hiddenBySensitiveUI forKey:@"hiddenBySensitiveUI"];
  [coderCopy encodeBool:self->_promptsForUserConfiguration forKey:@"promptsForUserConfiguration"];
  [coderCopy encodeInt32:LODWORD(self->_enablement) forKey:@"enablement"];
  [coderCopy encodeObject:self->_requiredFeatureFlags forKey:@"requiredFeatureFlags"];
  [coderCopy encodeInteger:self->_requestedDataProtection forKey:@"requestedDataProtection"];
  [coderCopy encodeObject:self->_configurationBackgroundColor forKey:@"configurationBackgroundColor"];
  [coderCopy encodeObject:self->_configurationAccentColor forKey:@"configurationAccentColor"];
}

- (CHSBaseDescriptor)initWithCoder:(id)coder
{
  v61[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"extensionIdentity"])
  {
    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionIdentity"];
  }

  else
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleIdentifier"];
    v7 = v6;
    v59 = 0;
    if (v5 && v6)
    {
      v8 = [CHSExtensionIdentity alloc];
      v9 = getDeviceIDFromBundleID(v5);
      v59 = [(CHSExtensionIdentity *)v8 initWithExtensionBundleIdentifier:v5 containerBundleIdentifier:v7 deviceIdentifier:v9];
    }
  }

  if (v59)
  {
    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nativeCBI"];
    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetDescription"];
    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeToken"];
    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventMachServiceName"];
    v10 = [coderCopy decodeBoolForKey:@"transparent"];
    v11 = [coderCopy decodeIntegerForKey:@"backgroundStyle"];
    v51 = [coderCopy decodeBoolForKey:@"supportsVibrantContent"];
    if ([coderCopy containsValueForKey:@"promptsForUserConfiguration"])
    {
      v50 = [coderCopy decodeBoolForKey:@"promptsForUserConfiguration"];
    }

    else
    {
      v50 = 0;
    }

    if ([coderCopy containsValueForKey:@"sdkVersion"])
    {
      obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sdkVersion"];
    }

    else
    {
      obj = @"Unknown";
    }

    if ([coderCopy containsValueForKey:@"platform"])
    {
      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
      unsignedIntegerValue = [v17 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v18 = v10 & (v11 == 0);
    if (v18)
    {
      v19 = 2;
    }

    else
    {
      v19 = v11;
    }

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    unsignedIntegerValue2 = [v20 unsignedIntegerValue];

    v22 = [coderCopy decodeBoolForKey:@"hiddenBySensitiveUI"];
    if ([coderCopy containsValueForKey:@"enablement"])
    {
      v23 = [coderCopy decodeInt32ForKey:@"enablement"];
      if (v23 >= 3)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if ([coderCopy containsValueForKey:@"requestedDataProtection"])
    {
      v26 = [coderCopy decodeIntegerForKey:@"requestedDataProtection"];
      if (v26 >= 5)
      {
        v27 = 2;
      }

      else
      {
        v27 = v26;
      }
    }

    else
    {
      v27 = 2;
    }

    if ([coderCopy containsValueForKey:@"configurationBackgroundColor"])
    {
      v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationBackgroundColor"];
    }

    else
    {
      v52 = 0;
    }

    v48 = v27;
    if ([coderCopy containsValueForKey:@"configurationAccentColor"])
    {
      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationAccentColor"];
      v29 = unsignedIntegerValue2;
      v30 = v19;
    }

    else
    {
      v29 = unsignedIntegerValue2;
      v30 = v19;
      v28 = 0;
    }

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"requiredFeatureFlags"];

    v35 = [(CHSBaseDescriptor *)self initWithExtensionIdentity:v59];
    if (v35)
    {
      v36 = [v57 copy];
      displayName = v35->_displayName;
      v35->_displayName = v36;

      v38 = [v56 copy];
      widgetDescription = v35->_widgetDescription;
      v35->_widgetDescription = v38;

      v40 = [v55 copy];
      localeToken = v35->_localeToken;
      v35->_localeToken = v40;

      v42 = [v54 copy];
      eventMachServiceName = v35->_eventMachServiceName;
      v35->_eventMachServiceName = v42;

      v35->_preferredBackgroundStyle = v30;
      v35->_supportsVibrantContent = (v18 | v51) & 1;
      objc_storeStrong(&v35->_sdkVersion, obj);
      v35->_platform = unsignedIntegerValue;
      v35->_version = v29;
      v44 = [v58 copy];
      nativeContainerBundleIdentifier = v35->_nativeContainerBundleIdentifier;
      v35->_nativeContainerBundleIdentifier = v44;

      v35->_hiddenBySensitiveUI = v22;
      v35->_promptsForUserConfiguration = v50;
      v35->_enablement = v25;
      objc_storeStrong(&v35->_requiredFeatureFlags, v34);
      v35->_requestedDataProtection = v48;
      objc_storeStrong(&v35->_configurationBackgroundColor, v52);
      objc_storeStrong(&v35->_configurationAccentColor, v28);
    }

    self = v35;

    selfCopy = self;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v60 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to decode base descriptor: %@", 0];
    v61[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v15 = [v12 errorWithDomain:@"com.apple.chronoservices.descriptor" code:1 userInfo:v14];
    [coderCopy failWithError:v15];

    selfCopy = 0;
  }

  v46 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end
@interface CHSControlDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3;
- (CHSControlActionMetadata)actionMetadata;
- (CHSControlDescriptor)initWithCoder:(id)a3;
- (CHSControlDescriptor)initWithExtensionIdentity:(id)a3 kind:(id)a4 controlType:(unint64_t)a5 intentType:(id)a6;
- (id)_intentDescription;
- (id)copyWithoutIntents;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initFromDescriptor:(id)a3 includeIntents:(BOOL)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSControlDescriptor

- (id)succinctDescription
{
  v2 = [(CHSControlDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CHSControlDescriptor_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_1E7453000;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [v4 appendProem:self block:v7];
  v5 = v4;

  return v4;
}

id __50__CHSControlDescriptor_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 152) withName:@"kind"];
  v2 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 168) withName:@"type"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 160) withName:@"intentType"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 216) != 0 withName:@"hasDefaultIntent"];
  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 224) succinctDescription];
  [v4 appendString:v5 withName:@"action"];

  return [*(a1 + 32) appendInteger:*(*(a1 + 40) + 120) withName:@"requestedDataProtection"];
}

- (CHSControlDescriptor)initWithExtensionIdentity:(id)a3 kind:(id)a4 controlType:(unint64_t)a5 intentType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = CHSControlDescriptor;
  v13 = [(CHSBaseDescriptor *)&v20 initWithExtensionIdentity:v10];
  v14 = v13;
  if (v13)
  {
    v13->_controlType = a5;
    v15 = [v11 copy];
    kind = v14->_kind;
    v14->_kind = v15;

    v17 = [v12 copy];
    intentType = v14->_intentType;
    v14->_intentType = v17;

    v14->_visibility = 0;
    v14->_controlVersion = 1;
    v14->_disfavoredLocations = 0;
  }

  return v14;
}

- (id)initFromDescriptor:(id)a3 includeIntents:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CHSBaseDescriptor *)self _initWithDescriptor:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 19, v6[19]);
    v8[21] = v6[21];
    objc_storeStrong(v8 + 20, v6[20]);
    v8[24] = v6[24];
    v9 = [v6[28] copy];
    v10 = v8[28];
    v8[28] = v9;

    *(v8 + 200) = *(v6 + 200);
    *(v8 + 201) = *(v6 + 201);
    *(v8 + 202) = *(v6 + 202);
    *(v8 + 203) = *(v6 + 203);
    v8[29] = v6[29];
    if (v4)
    {
      v11 = v6[27];
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(v8 + 27, v11);
    v8[22] = v6[22];
    *(v8 + 184) = *(v6 + 184);
    v8[26] = v6[26];
  }

  return v8;
}

- (CHSControlActionMetadata)actionMetadata
{
  actionMetadata = self->_actionMetadata;
  if (!actionMetadata)
  {
    v4 = [[CHSControlActionMetadata alloc] initWithIntentType:0];
    v5 = self->_actionMetadata;
    self->_actionMetadata = v4;

    actionMetadata = self->_actionMetadata;
  }

  return actionMetadata;
}

- (BOOL)matches:(id)a3
{
  v4 = a3;
  v5 = [(CHSBaseDescriptor *)self extensionIdentity];
  v6 = [v4 extensionIdentity];
  if (BSEqualObjects())
  {
    v7 = [(CHSControlDescriptor *)self kind];
    v8 = [v4 kind];
    v9 = BSEqualStrings();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CHSControlDescriptor;
  if (![(CHSBaseDescriptor *)&v16 isEqual:v4])
  {
    goto LABEL_18;
  }

  if (self == v4)
  {
    v14 = 1;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    kind = self->_kind;
    v7 = v5->_kind;
    if (BSEqualObjects() && self->_controlType == v5->_controlType && self->_preferredControlSize == v5->_preferredControlSize && self->_supportsPush == v5->_supportsPush && self->_controlVersion == v5->_controlVersion && self->_disfavoredLocations == v5->_disfavoredLocations && (intentType = self->_intentType, v9 = v5->_intentType, BSEqualObjects()) && (defaultIntentReference = self->_defaultIntentReference, v11 = v5->_defaultIntentReference, BSEqualObjects()) && self->_hiddenControl == v5->_hiddenControl && self->_supportsForwardingToRemoteDevices == v5->_supportsForwardingToRemoteDevices && self->_showsContextualMenu == v5->_showsContextualMenu && self->_disablesControlStateCaching == v5->_disablesControlStateCaching && self->_visibility == v5->_visibility)
    {
      actionMetadata = self->_actionMetadata;
      v13 = v5->_actionMetadata;
      v14 = BSEqualObjects();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
LABEL_18:
    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v21.receiver = self;
  v21.super_class = CHSControlDescriptor;
  v4 = [v3 appendUnsignedInteger:{-[CHSBaseDescriptor hash](&v21, sel_hash)}];
  v5 = [v3 appendUnsignedInteger:self->_controlType];
  v6 = [v3 appendUnsignedInteger:self->_preferredControlSize];
  v7 = [v3 appendBool:self->_supportsPush];
  v8 = [v3 appendString:self->_kind];
  v9 = [v3 appendString:self->_intentType];
  v10 = [v3 appendObject:self->_defaultIntentReference];
  v11 = [v3 appendInt64:self->_controlVersion];
  v12 = [v3 appendUnsignedInteger:self->_disfavoredLocations];
  v13 = [v3 appendInteger:self->_visibility];
  v14 = [v3 appendBool:self->_hiddenControl];
  v15 = [v3 appendBool:self->_supportsForwardingToRemoteDevices];
  v16 = [v3 appendBool:self->_showsContextualMenu];
  v17 = [v3 appendBool:self->_disablesControlStateCaching];
  v18 = [v3 appendObject:self->_actionMetadata];
  v19 = [v3 hash];

  return v19;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CHSControlDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__CHSControlDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E7453000;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];
  v7 = v6;

  return v6;
}

id __62__CHSControlDescriptor_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 72) withName:@"baseVersion"];
  v3 = [*(a1 + 32) appendInt64:*(*(a1 + 40) + 208) withName:@"controlVersion"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"extensionIdentity"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 152) withName:@"kind"];
  v5 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 168) withName:@"type"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 24) withName:@"displayName"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 160) withName:@"intentType"];
  v6 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isEnabled"), @"enabled"}];
  v7 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 104) withName:@"enablement"];
  v8 = *(a1 + 32);
  v9 = NSStringFromCHSControlSize(*(*(a1 + 40) + 176));
  [v8 appendString:v9 withName:@"preferredControlSize"];

  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 184) withName:@"supportsPush"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 80) withName:@"sdkVersion"];
  v11 = *(a1 + 40);
  v12 = *(v11 + 232);
  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = NSStringFromCHSWidgetLocationStyleMask(v12);
    [v13 appendString:v14 withName:@"disfavoredLocations"];

    v11 = *(a1 + 40);
  }

  v15 = [*(a1 + 32) appendBool:*(v11 + 200) withName:@"isHidden"];
  v16 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 201) withName:@"supportsForwardingToRemoteDevices"];
  v17 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 202) withName:@"showsContextMenu" ifEqualTo:1];
  v18 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 203) withName:@"cachingDisabled"];
  v19 = *(a1 + 32);
  v20 = [*(*(a1 + 40) + 224) succinctDescription];
  v21 = [v19 appendObject:v20 withName:@"actionMetadata"];

  v22 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 88) withName:@"platform"];
  v23 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 216) != 0 withName:@"hasDefaultIntent"];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 32) withName:@"widgetDescription"];
  v24 = *(a1 + 32);
  v25 = CHSDescriptionForWidgetVisibility(*(*(a1 + 40) + 192));
  [v24 appendString:v25 withName:@"widgetVisibility"];

  v26 = *(a1 + 32);
  v27 = [*(*(a1 + 40) + 48) base64EncodedStringWithOptions:0];
  [v26 appendString:v27 withName:@"localeToken"];

  v28 = *(a1 + 32);
  v29 = [*(*(a1 + 40) + 40) description];
  [v28 appendString:v29 withName:@"eventMachServiceName" skipIfEmpty:1];

  v30 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 97) withName:@"promptsForUserConfiguration"];
  v31 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) != 0 withName:@"isApple"];
  [*(a1 + 32) appendArraySection:*(*(a1 + 40) + 112) withName:@"requiredFeatureFlags" skipIfEmpty:1];
  v32 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"configurationBackgroundColor"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 136) withName:@"configurationAccentColor"];
}

- (id)copyWithoutIntents
{
  v3 = [CHSControlDescriptor alloc];

  return [(CHSControlDescriptor *)v3 initFromDescriptor:self includeIntents:0];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHSMutableControlDescriptor alloc];

  return [(CHSControlDescriptor *)v4 initFromDescriptor:self includeIntents:1];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = CHSControlDescriptor;
  [(CHSBaseDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_kind forKey:@"kind"];
  [v4 encodeInteger:self->_controlType forKey:@"type"];
  [v4 encodeInteger:self->_preferredControlSize forKey:@"size"];
  [v4 encodeBool:self->_supportsPush forKey:@"supportsPush"];
  [v4 encodeObject:self->_intentType forKey:@"intentType"];
  [v4 encodeInteger:self->_visibility forKey:@"widgetVisibility"];
  [v4 encodeObject:self->_defaultIntentReference forKey:@"defaultIntentRef"];
  [v4 encodeBool:self->_hiddenControl forKey:@"hiddenControl"];
  [v4 encodeBool:self->_supportsForwardingToRemoteDevices forKey:@"supportsForwardingToRemoteDevices"];
  [v4 encodeBool:self->_showsContextualMenu forKey:@"showContextualMenu"];
  [v4 encodeBool:self->_disablesControlStateCaching forKey:@"disablesControlStateCaching"];
  [v4 encodeObject:self->_actionMetadata forKey:@"actionMetadata"];
  [v4 encodeInt64:self->_controlVersion forKey:@"controlVersion"];
  [v4 encodeInteger:self->_disfavoredLocations forKey:@"unsupControlLoca"];
}

- (CHSControlDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CHSControlDescriptor;
  v5 = [(CHSBaseDescriptor *)&v29 initWithCoder:v4];
  if (v5)
  {
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
    v27 = [v4 decodeIntegerForKey:@"type"];
    v26 = [v4 decodeIntegerForKey:@"size"];
    v25 = [v4 decodeBoolForKey:@"supportsPush"];
    v24 = [v4 decodeIntegerForKey:@"widgetVisibility"];
    v23 = [v4 decodeBoolForKey:@"hiddenControl"];
    if ([v4 containsValueForKey:@"supportsForwardingToRemoteDevices"])
    {
      v7 = [v4 decodeBoolForKey:@"supportsForwardingToRemoteDevices"];
    }

    else
    {
      v7 = v5->super._nativeContainerBundleIdentifier == 0;
    }

    v8 = [v4 decodeBoolForKey:@"showContextualMenu"];
    v9 = [v4 decodeBoolForKey:@"disablesControlStateCaching"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionMetadata"];
    if (!v10)
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIntentType"];
      if (v11)
      {
        v12 = [(CHSControlActionMetadata *)[CHSMutableControlActionMetadata alloc] initWithIntentType:v11];
        v10 = [(CHSMutableControlActionMetadata *)v12 copy];
      }

      else
      {
        v10 = 0;
      }
    }

    if ([v4 containsValueForKey:@"controlVersion"])
    {
      v13 = [v4 decodeInt64ForKey:@"controlVersion"];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v4 decodeIntegerForKey:@"unsupControlLoca"];
    if ([v4 containsValueForKey:@"defaultIntentRef"])
    {
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultIntentRef"];
    }

    else
    {
      v15 = 0;
    }

    if (v5->super._extensionIdentity && v6)
    {
      v16 = [v28 copy];
      intentType = v5->_intentType;
      v5->_intentType = v16;

      v18 = [v6 copy];
      kind = v5->_kind;
      v5->_kind = v18;

      v5->_controlType = v27;
      v5->_preferredControlSize = v26;
      v5->_supportsPush = v25;
      v5->_visibility = v24;
      objc_storeStrong(&v5->_defaultIntentReference, v15);
      v5->_hiddenControl = v23;
      v5->_supportsForwardingToRemoteDevices = v7;
      v5->_showsContextualMenu = v8;
      v5->_disablesControlStateCaching = v9;
      v20 = [v10 copy];
      actionMetadata = v5->_actionMetadata;
      v5->_actionMetadata = v20;

      v5->_controlVersion = v13;
      v5->_disfavoredLocations = v14;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)_intentDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CHSExtensionIdentity *)self->super._extensionIdentity extensionBundleIdentifier];
  v5 = [v3 stringWithFormat:@"[%@ - %@]", v4, self->_intentType];

  return v5;
}

- (void)initWithCoder:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = @"actionMetadata";
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "CHSControlDescriptor: failed to decode %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end
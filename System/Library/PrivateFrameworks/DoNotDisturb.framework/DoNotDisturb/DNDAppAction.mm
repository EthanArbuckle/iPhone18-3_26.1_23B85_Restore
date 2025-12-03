@interface DNDAppAction
+ (BOOL)archivingIsSupported:(id *)supported;
+ (BOOL)runtimeIsSupported:(id *)supported;
+ (id)appActionFromDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (DNDAppAction)initWithCoder:(id)coder;
- (LNAction)action;
- (NSData)encodedAction;
- (NSString)identifier;
- (id)_initWithAction:(id)action bundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier encodedAction:(id)encodedAction enabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)action;
- (void)encodeWithCoder:(id)coder;
- (void)encodedAction;
@end

@implementation DNDAppAction

+ (BOOL)runtimeIsSupported:(id *)supported
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = NSClassFromString(&cfstr_Lnaction.isa);
  if (!v4)
  {
    if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
    {
      +[DNDAppAction runtimeIsSupported:];
      if (!supported)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (supported)
    {
LABEL_4:
      v5 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA450];
      v10[0] = @"Failed to encode/decode app action: LinkServices framework is not loaded.";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *supported = [v5 errorWithDomain:@"DNDErrorDomain" code:1006 userInfo:v6];
    }
  }

LABEL_5:
  result = v4 != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)archivingIsSupported:(id *)supported
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!NSClassFromString(&cfstr_Wfappintentarc.isa) || !NSClassFromString(&cfstr_Lnfullyqualifi.isa))
  {
    if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
    {
      +[DNDAppAction archivingIsSupported:];
      if (!supported)
      {
        goto LABEL_7;
      }
    }

    else if (!supported)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    v5 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = @"Failed to (un)archive action: VoiceShortcut or LinkServices framework is not loaded.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *supported = [v5 errorWithDomain:@"DNDErrorDomain" code:1006 userInfo:v6];

    goto LABEL_7;
  }

  result = 1;
LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_initWithAction:(id)action bundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier encodedAction:(id)encodedAction enabled:(BOOL)enabled
{
  actionCopy = action;
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  encodedActionCopy = encodedAction;
  if (([objc_opt_class() runtimeIsSupported:0] & 1) != 0 || objc_msgSend(objc_opt_class(), "archivingIsSupported:", 0))
  {
    v29.receiver = self;
    v29.super_class = DNDAppAction;
    v16 = [(DNDAppAction *)&v29 init];
    if (v16)
    {
      v17 = [actionCopy copy];
      rawAction = v16->_rawAction;
      v16->_rawAction = v17;

      identifier = [actionCopy identifier];
      identifier = v16->_identifier;
      v16->_identifier = identifier;

      v21 = [actionIdentifierCopy copy];
      v22 = v16->_identifier;
      v16->_identifier = v21;

      v23 = [encodedActionCopy copy];
      encodedAction = v16->_encodedAction;
      v16->_encodedAction = v23;

      v25 = [identifierCopy copy];
      bundleIdentifier = v16->_bundleIdentifier;
      v16->_bundleIdentifier = v25;

      v16->_enabled = enabled;
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    identifier = identifier;
  }

  else
  {
    identifier = [(LNAction *)self->_rawAction identifier];
  }

  return identifier;
}

- (LNAction)action
{
  v26 = *MEMORY[0x277D85DE8];
  rawAction = self->_rawAction;
  if (!rawAction)
  {
    if ([objc_opt_class() archivingIsSupported:0])
    {
      effectiveBundleIdentifier = [(DNDAppAction *)self effectiveBundleIdentifier];
      if (effectiveBundleIdentifier)
      {
        v5 = effectiveBundleIdentifier;
        v6 = [objc_alloc(NSClassFromString(&cfstr_Lnfullyqualifi.isa)) initWithActionIdentifier:self->_identifier bundleIdentifier:effectiveBundleIdentifier];
        v7 = [objc_alloc(NSClassFromString(&cfstr_Wfappintentarc.isa)) initWithIdentifier:v6 actionMetadata:0];
        encodedAction = self->_encodedAction;
        v23 = 0;
        v9 = [v7 unarchiveActionFromData:encodedAction error:&v23];
        v10 = v23;
        v11 = v10;
        v12 = DNDLogAppConfiguration;
        if (!v9 || v10)
        {
          if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
          {
            [DNDAppAction action];
          }

          v15 = MEMORY[0x277CCAAC8];
          v16 = NSClassFromString(&cfstr_Lnaction.isa);
          v17 = self->_encodedAction;
          v22 = 0;
          v14 = [v15 unarchivedObjectOfClass:v16 fromData:v17 error:&v22];
          v13 = v22;

          v18 = DNDLogAppConfiguration;
          if (!v14 || v13)
          {
            if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
            {
              [DNDAppAction action];
            }
          }

          else
          {
            if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v25 = v14;
              _os_log_impl(&dword_22002F000, v18, OS_LOG_TYPE_DEFAULT, "Unarchived settings using fallback. %@", buf, 0xCu);
            }

            v13 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v9;
            _os_log_impl(&dword_22002F000, v12, OS_LOG_TYPE_DEFAULT, "Unarchived settings. %@", buf, 0xCu);
          }

          v13 = 0;
          v14 = v9;
        }

        v19 = self->_rawAction;
        self->_rawAction = v14;
      }
    }

    rawAction = self->_rawAction;
  }

  v20 = *MEMORY[0x277D85DE8];

  return rawAction;
}

- (NSData)encodedAction
{
  encodedAction = self->_encodedAction;
  if (encodedAction)
  {
LABEL_2:
    effectiveBundleIdentifier = encodedAction;
    goto LABEL_11;
  }

  if ([objc_opt_class() archivingIsSupported:0])
  {
    effectiveBundleIdentifier = [(DNDAppAction *)self effectiveBundleIdentifier];
    if (effectiveBundleIdentifier)
    {
      v5 = effectiveBundleIdentifier;
      v6 = objc_alloc(NSClassFromString(&cfstr_Lnfullyqualifi.isa));
      identifier = [(DNDAppAction *)self identifier];
      v8 = [v6 initWithActionIdentifier:identifier bundleIdentifier:v5];

      v9 = [objc_alloc(NSClassFromString(&cfstr_Wfappintentarc.isa)) initWithIdentifier:v8 actionMetadata:0];
      rawAction = [(DNDAppAction *)self rawAction];
      v15 = 0;
      v11 = [v9 archiveAction:rawAction error:&v15];
      v12 = v15;

      if ((!v11 || v12) && os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
      {
        [DNDAppAction encodedAction];
      }

      v13 = self->_encodedAction;
      self->_encodedAction = v11;

      encodedAction = self->_encodedAction;
      goto LABEL_2;
    }
  }

  else
  {
    effectiveBundleIdentifier = 0;
  }

LABEL_11:

  return effectiveBundleIdentifier;
}

- (DNDAppAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([objc_opt_class() runtimeIsSupported:0])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionEnabled"];
    bOOLValue = [v5 BOOLValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionEncodedAction"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionActionIdentifier"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionBundleIdentifierKey"];
    v10 = [coderCopy decodeObjectOfClass:NSClassFromString(&cfstr_Lnaction.isa) forKey:@"DNDActionAction"];
    self = [(DNDAppAction *)self _initWithAction:v10 bundleIdentifier:v9 actionIdentifier:v8 encodedAction:v7 enabled:bOOLValue];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  enabled = self->_enabled;
  coderCopy = coder;
  v6 = [v4 numberWithBool:enabled];
  [coderCopy encodeObject:v6 forKey:@"DNDActionEnabled"];

  [coderCopy encodeObject:self->_rawAction forKey:@"DNDActionAction"];
  [coderCopy encodeObject:self->_encodedAction forKey:@"DNDActionEncodedAction"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"DNDActionBundleIdentifierKey"];
  [coderCopy encodeObject:self->_identifier forKey:@"DNDActionActionIdentifier"];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabled];
  [dictionary setObject:v4 forKeyedSubscript:@"DNDActionEnabled"];

  encodedAction = [(DNDAppAction *)self encodedAction];
  [dictionary setObject:encodedAction forKeyedSubscript:@"DNDActionEncodedAction"];

  bundleIdentifier = [(DNDAppAction *)self bundleIdentifier];
  [dictionary setObject:bundleIdentifier forKeyedSubscript:@"DNDActionBundleIdentifierKey"];

  identifier = [(DNDAppAction *)self identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"DNDActionActionIdentifier"];

  v8 = MEMORY[0x277CCAAB0];
  action = [(DNDAppAction *)self action];
  v14 = 0;
  v10 = [v8 archivedDataWithRootObject:action requiringSecureCoding:1 error:&v14];
  v11 = v14;

  if (v11 && os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDAppAction encodedAction];
  }

  [dictionary setObject:v10 forKeyedSubscript:@"AppConfigurationActionPayload"];
  v12 = [dictionary copy];

  return v12;
}

+ (id)appActionFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKeyedSubscript:@"DNDActionEnabled"];
  bOOLValue = [v4 BOOLValue];

  v6 = [DNDAppAction alloc];
  v7 = [representationCopy objectForKeyedSubscript:@"DNDActionEncodedAction"];
  v8 = [representationCopy objectForKeyedSubscript:@"DNDActionActionIdentifier"];
  v9 = [representationCopy objectForKeyedSubscript:@"DNDActionBundleIdentifierKey"];

  v10 = [(DNDAppAction *)v6 initWithEncodedAction:v7 actionIdentifier:v8 bundleIdentifier:v9 enabled:bOOLValue];

  return v10;
}

- (unint64_t)hash
{
  rawAction = [(DNDAppAction *)self rawAction];
  v4 = [rawAction hash];
  encodedAction = [(DNDAppAction *)self encodedAction];
  v6 = [encodedAction hash] ^ v4;
  bundleIdentifier = [(DNDAppAction *)self bundleIdentifier];
  v8 = [bundleIdentifier hash];
  identifier = [(DNDAppAction *)self identifier];
  v10 = v6 ^ v8 ^ [identifier hash];
  isEnabled = [(DNDAppAction *)self isEnabled];

  return v10 ^ isEnabled;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      rawAction = [(DNDAppAction *)self rawAction];
      rawAction2 = [(DNDAppAction *)v6 rawAction];
      if (rawAction != rawAction2)
      {
        rawAction3 = [(DNDAppAction *)self rawAction];
        if (!rawAction3)
        {
          LOBYTE(v13) = 0;
          goto LABEL_54;
        }

        v10 = rawAction3;
        rawAction4 = [(DNDAppAction *)v6 rawAction];
        if (!rawAction4)
        {
          LOBYTE(v13) = 0;
LABEL_53:

          goto LABEL_54;
        }

        rawAction5 = [(DNDAppAction *)self rawAction];
        rawAction6 = [(DNDAppAction *)v6 rawAction];
        if (![rawAction5 isEqual:rawAction6])
        {
          LOBYTE(v13) = 0;
LABEL_52:

          goto LABEL_53;
        }

        v47 = v10;
        v48 = rawAction6;
        v49 = rawAction5;
        v50 = rawAction4;
      }

      encodedAction = [(DNDAppAction *)self encodedAction];
      encodedAction2 = [(DNDAppAction *)v6 encodedAction];
      if (encodedAction != encodedAction2)
      {
        encodedAction3 = [(DNDAppAction *)self encodedAction];
        if (encodedAction3)
        {
          v17 = encodedAction3;
          encodedAction4 = [(DNDAppAction *)v6 encodedAction];
          if (encodedAction4)
          {
            v45 = encodedAction4;
            rawAction5 = [(DNDAppAction *)self encodedAction];
            encodedAction5 = [(DNDAppAction *)v6 encodedAction];
            if ([rawAction5 isEqual:encodedAction5])
            {
              v41 = encodedAction5;
              v42 = v17;
              goto LABEL_16;
            }
          }
        }

        LOBYTE(v13) = 0;
        goto LABEL_51;
      }

LABEL_16:
      bundleIdentifier = [(DNDAppAction *)self bundleIdentifier];
      bundleIdentifier2 = [(DNDAppAction *)v6 bundleIdentifier];
      v46 = bundleIdentifier;
      if (bundleIdentifier == bundleIdentifier2)
      {
        v44 = rawAction5;
      }

      else
      {
        bundleIdentifier3 = [(DNDAppAction *)self bundleIdentifier];
        if (!bundleIdentifier3)
        {

          LOBYTE(v13) = 0;
LABEL_48:
          if (encodedAction != encodedAction2)
          {
          }

LABEL_51:
          rawAction5 = v49;
          rawAction4 = v50;
          rawAction6 = v48;
          v10 = v47;
          if (rawAction != rawAction2)
          {
            goto LABEL_52;
          }

LABEL_54:

          goto LABEL_55;
        }

        v43 = bundleIdentifier3;
        bundleIdentifier4 = [(DNDAppAction *)v6 bundleIdentifier];
        if (!bundleIdentifier4)
        {
          LOBYTE(v13) = 0;
LABEL_39:

          goto LABEL_48;
        }

        v40 = bundleIdentifier4;
        bundleIdentifier5 = [(DNDAppAction *)self bundleIdentifier];
        bundleIdentifier6 = [(DNDAppAction *)v6 bundleIdentifier];
        v39 = bundleIdentifier5;
        if (![bundleIdentifier5 isEqual:?])
        {
          LOBYTE(v13) = 0;
LABEL_38:

          goto LABEL_39;
        }

        v44 = rawAction5;
      }

      identifier = [(DNDAppAction *)self identifier];
      identifier2 = [(DNDAppAction *)self identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(DNDAppAction *)self identifier];
        if (!identifier3)
        {

          LOBYTE(v13) = 0;
          goto LABEL_45;
        }

        v37 = identifier3;
        identifier4 = [(DNDAppAction *)self identifier];
        if (!identifier4)
        {
          LOBYTE(v13) = 0;
LABEL_44:

LABEL_45:
          v31 = v46;
          rawAction5 = v44;
          if (v46 != bundleIdentifier2)
          {
          }

          goto LABEL_47;
        }

        v33 = identifier;
        v36 = identifier4;
        identifier5 = [(DNDAppAction *)self identifier];
        identifier6 = [(DNDAppAction *)self identifier];
        v35 = identifier5;
        if (![identifier5 isEqual:?])
        {
          LOBYTE(v13) = 0;
          identifier = v33;
LABEL_43:

          goto LABEL_44;
        }

        identifier = v33;
      }

      isEnabled = [(DNDAppAction *)self isEnabled];
      v13 = isEnabled ^ [(DNDAppAction *)v6 isEnabled]^ 1;
      if (identifier == identifier2)
      {

        v31 = v46;
        rawAction5 = v44;
        if (v46 == bundleIdentifier2)
        {
LABEL_47:

          goto LABEL_48;
        }

        goto LABEL_38;
      }

      goto LABEL_43;
    }

    LOBYTE(v13) = 0;
  }

LABEL_55:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(DNDAppAction *)self identifier];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDAppAction isEnabled](self, "isEnabled")}];
  rawAction = [(DNDAppAction *)self rawAction];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_encodedAction != 0];
  bundleIdentifier = [(DNDAppAction *)self bundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p identifier: %@; enabled: %@; action: %@; hasEncoded: %@; bundleIdentifier: %@>", v4, self, identifier, v6, rawAction, v8, bundleIdentifier];;

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  rawAction = self->_rawAction;
  identifier = self->_identifier;
  bundleIdentifier = self->_bundleIdentifier;
  encodedAction = self->_encodedAction;
  enabled = self->_enabled;

  return [v4 _initWithAction:rawAction bundleIdentifier:bundleIdentifier actionIdentifier:identifier encodedAction:encodedAction enabled:enabled];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableAppAction allocWithZone:zone];
  rawAction = self->_rawAction;
  identifier = self->_identifier;
  bundleIdentifier = self->_bundleIdentifier;
  encodedAction = self->_encodedAction;
  enabled = self->_enabled;

  return [(DNDAppAction *)v4 _initWithAction:rawAction bundleIdentifier:bundleIdentifier actionIdentifier:identifier encodedAction:encodedAction enabled:enabled];
}

- (void)action
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)encodedAction
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
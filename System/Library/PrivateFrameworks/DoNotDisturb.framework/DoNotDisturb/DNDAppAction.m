@interface DNDAppAction
+ (BOOL)archivingIsSupported:(id *)a3;
+ (BOOL)runtimeIsSupported:(id *)a3;
+ (id)appActionFromDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DNDAppAction)initWithCoder:(id)a3;
- (LNAction)action;
- (NSData)encodedAction;
- (NSString)identifier;
- (id)_initWithAction:(id)a3 bundleIdentifier:(id)a4 actionIdentifier:(id)a5 encodedAction:(id)a6 enabled:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)action;
- (void)encodeWithCoder:(id)a3;
- (void)encodedAction;
@end

@implementation DNDAppAction

+ (BOOL)runtimeIsSupported:(id *)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = NSClassFromString(&cfstr_Lnaction.isa);
  if (!v4)
  {
    if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
    {
      +[DNDAppAction runtimeIsSupported:];
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (a3)
    {
LABEL_4:
      v5 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA450];
      v10[0] = @"Failed to encode/decode app action: LinkServices framework is not loaded.";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      *a3 = [v5 errorWithDomain:@"DNDErrorDomain" code:1006 userInfo:v6];
    }
  }

LABEL_5:
  result = v4 != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)archivingIsSupported:(id *)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!NSClassFromString(&cfstr_Wfappintentarc.isa) || !NSClassFromString(&cfstr_Lnfullyqualifi.isa))
  {
    if (os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
    {
      +[DNDAppAction archivingIsSupported:];
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    else if (!a3)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    v5 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = @"Failed to (un)archive action: VoiceShortcut or LinkServices framework is not loaded.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *a3 = [v5 errorWithDomain:@"DNDErrorDomain" code:1006 userInfo:v6];

    goto LABEL_7;
  }

  result = 1;
LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_initWithAction:(id)a3 bundleIdentifier:(id)a4 actionIdentifier:(id)a5 encodedAction:(id)a6 enabled:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (([objc_opt_class() runtimeIsSupported:0] & 1) != 0 || objc_msgSend(objc_opt_class(), "archivingIsSupported:", 0))
  {
    v29.receiver = self;
    v29.super_class = DNDAppAction;
    v16 = [(DNDAppAction *)&v29 init];
    if (v16)
    {
      v17 = [v12 copy];
      rawAction = v16->_rawAction;
      v16->_rawAction = v17;

      v19 = [v12 identifier];
      identifier = v16->_identifier;
      v16->_identifier = v19;

      v21 = [v14 copy];
      v22 = v16->_identifier;
      v16->_identifier = v21;

      v23 = [v15 copy];
      encodedAction = v16->_encodedAction;
      v16->_encodedAction = v23;

      v25 = [v13 copy];
      bundleIdentifier = v16->_bundleIdentifier;
      v16->_bundleIdentifier = v25;

      v16->_enabled = a7;
    }

    self = v16;
    v27 = self;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    v3 = identifier;
  }

  else
  {
    v3 = [(LNAction *)self->_rawAction identifier];
  }

  return v3;
}

- (LNAction)action
{
  v26 = *MEMORY[0x277D85DE8];
  rawAction = self->_rawAction;
  if (!rawAction)
  {
    if ([objc_opt_class() archivingIsSupported:0])
    {
      v4 = [(DNDAppAction *)self effectiveBundleIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = [objc_alloc(NSClassFromString(&cfstr_Lnfullyqualifi.isa)) initWithActionIdentifier:self->_identifier bundleIdentifier:v4];
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
    v3 = encodedAction;
    goto LABEL_11;
  }

  if ([objc_opt_class() archivingIsSupported:0])
  {
    v3 = [(DNDAppAction *)self effectiveBundleIdentifier];
    if (v3)
    {
      v5 = v3;
      v6 = objc_alloc(NSClassFromString(&cfstr_Lnfullyqualifi.isa));
      v7 = [(DNDAppAction *)self identifier];
      v8 = [v6 initWithActionIdentifier:v7 bundleIdentifier:v5];

      v9 = [objc_alloc(NSClassFromString(&cfstr_Wfappintentarc.isa)) initWithIdentifier:v8 actionMetadata:0];
      v10 = [(DNDAppAction *)self rawAction];
      v15 = 0;
      v11 = [v9 archiveAction:v10 error:&v15];
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
    v3 = 0;
  }

LABEL_11:

  return v3;
}

- (DNDAppAction)initWithCoder:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() runtimeIsSupported:0])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionEnabled"];
    v6 = [v5 BOOLValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionEncodedAction"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionActionIdentifier"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNDActionBundleIdentifierKey"];
    v10 = [v4 decodeObjectOfClass:NSClassFromString(&cfstr_Lnaction.isa) forKey:@"DNDActionAction"];
    self = [(DNDAppAction *)self _initWithAction:v10 bundleIdentifier:v9 actionIdentifier:v8 encodedAction:v7 enabled:v6];

    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  enabled = self->_enabled;
  v7 = a3;
  v6 = [v4 numberWithBool:enabled];
  [v7 encodeObject:v6 forKey:@"DNDActionEnabled"];

  [v7 encodeObject:self->_rawAction forKey:@"DNDActionAction"];
  [v7 encodeObject:self->_encodedAction forKey:@"DNDActionEncodedAction"];
  [v7 encodeObject:self->_bundleIdentifier forKey:@"DNDActionBundleIdentifierKey"];
  [v7 encodeObject:self->_identifier forKey:@"DNDActionActionIdentifier"];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabled];
  [v3 setObject:v4 forKeyedSubscript:@"DNDActionEnabled"];

  v5 = [(DNDAppAction *)self encodedAction];
  [v3 setObject:v5 forKeyedSubscript:@"DNDActionEncodedAction"];

  v6 = [(DNDAppAction *)self bundleIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"DNDActionBundleIdentifierKey"];

  v7 = [(DNDAppAction *)self identifier];
  [v3 setObject:v7 forKeyedSubscript:@"DNDActionActionIdentifier"];

  v8 = MEMORY[0x277CCAAB0];
  v9 = [(DNDAppAction *)self action];
  v14 = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v14];
  v11 = v14;

  if (v11 && os_log_type_enabled(DNDLogAppConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDAppAction encodedAction];
  }

  [v3 setObject:v10 forKeyedSubscript:@"AppConfigurationActionPayload"];
  v12 = [v3 copy];

  return v12;
}

+ (id)appActionFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"DNDActionEnabled"];
  v5 = [v4 BOOLValue];

  v6 = [DNDAppAction alloc];
  v7 = [v3 objectForKeyedSubscript:@"DNDActionEncodedAction"];
  v8 = [v3 objectForKeyedSubscript:@"DNDActionActionIdentifier"];
  v9 = [v3 objectForKeyedSubscript:@"DNDActionBundleIdentifierKey"];

  v10 = [(DNDAppAction *)v6 initWithEncodedAction:v7 actionIdentifier:v8 bundleIdentifier:v9 enabled:v5];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(DNDAppAction *)self rawAction];
  v4 = [v3 hash];
  v5 = [(DNDAppAction *)self encodedAction];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDAppAction *)self bundleIdentifier];
  v8 = [v7 hash];
  v9 = [(DNDAppAction *)self identifier];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDAppAction *)self isEnabled];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDAppAction *)self rawAction];
      v8 = [(DNDAppAction *)v6 rawAction];
      if (v7 != v8)
      {
        v9 = [(DNDAppAction *)self rawAction];
        if (!v9)
        {
          LOBYTE(v13) = 0;
          goto LABEL_54;
        }

        v10 = v9;
        v11 = [(DNDAppAction *)v6 rawAction];
        if (!v11)
        {
          LOBYTE(v13) = 0;
LABEL_53:

          goto LABEL_54;
        }

        v3 = [(DNDAppAction *)self rawAction];
        v12 = [(DNDAppAction *)v6 rawAction];
        if (![v3 isEqual:v12])
        {
          LOBYTE(v13) = 0;
LABEL_52:

          goto LABEL_53;
        }

        v47 = v10;
        v48 = v12;
        v49 = v3;
        v50 = v11;
      }

      v14 = [(DNDAppAction *)self encodedAction];
      v15 = [(DNDAppAction *)v6 encodedAction];
      if (v14 != v15)
      {
        v16 = [(DNDAppAction *)self encodedAction];
        if (v16)
        {
          v17 = v16;
          v18 = [(DNDAppAction *)v6 encodedAction];
          if (v18)
          {
            v45 = v18;
            v3 = [(DNDAppAction *)self encodedAction];
            v19 = [(DNDAppAction *)v6 encodedAction];
            if ([v3 isEqual:v19])
            {
              v41 = v19;
              v42 = v17;
              goto LABEL_16;
            }
          }
        }

        LOBYTE(v13) = 0;
        goto LABEL_51;
      }

LABEL_16:
      v20 = [(DNDAppAction *)self bundleIdentifier];
      v21 = [(DNDAppAction *)v6 bundleIdentifier];
      v46 = v20;
      if (v20 == v21)
      {
        v44 = v3;
      }

      else
      {
        v22 = [(DNDAppAction *)self bundleIdentifier];
        if (!v22)
        {

          LOBYTE(v13) = 0;
LABEL_48:
          if (v14 != v15)
          {
          }

LABEL_51:
          v3 = v49;
          v11 = v50;
          v12 = v48;
          v10 = v47;
          if (v7 != v8)
          {
            goto LABEL_52;
          }

LABEL_54:

          goto LABEL_55;
        }

        v43 = v22;
        v23 = [(DNDAppAction *)v6 bundleIdentifier];
        if (!v23)
        {
          LOBYTE(v13) = 0;
LABEL_39:

          goto LABEL_48;
        }

        v40 = v23;
        v24 = [(DNDAppAction *)self bundleIdentifier];
        v38 = [(DNDAppAction *)v6 bundleIdentifier];
        v39 = v24;
        if (![v24 isEqual:?])
        {
          LOBYTE(v13) = 0;
LABEL_38:

          goto LABEL_39;
        }

        v44 = v3;
      }

      v25 = [(DNDAppAction *)self identifier];
      v26 = [(DNDAppAction *)self identifier];
      if (v25 != v26)
      {
        v27 = [(DNDAppAction *)self identifier];
        if (!v27)
        {

          LOBYTE(v13) = 0;
          goto LABEL_45;
        }

        v37 = v27;
        v28 = [(DNDAppAction *)self identifier];
        if (!v28)
        {
          LOBYTE(v13) = 0;
LABEL_44:

LABEL_45:
          v31 = v46;
          v3 = v44;
          if (v46 != v21)
          {
          }

          goto LABEL_47;
        }

        v33 = v25;
        v36 = v28;
        v29 = [(DNDAppAction *)self identifier];
        v34 = [(DNDAppAction *)self identifier];
        v35 = v29;
        if (![v29 isEqual:?])
        {
          LOBYTE(v13) = 0;
          v25 = v33;
LABEL_43:

          goto LABEL_44;
        }

        v25 = v33;
      }

      v30 = [(DNDAppAction *)self isEnabled];
      v13 = v30 ^ [(DNDAppAction *)v6 isEnabled]^ 1;
      if (v25 == v26)
      {

        v31 = v46;
        v3 = v44;
        if (v46 == v21)
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
  v5 = [(DNDAppAction *)self identifier];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDAppAction isEnabled](self, "isEnabled")}];
  v7 = [(DNDAppAction *)self rawAction];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_encodedAction != 0];
  v9 = [(DNDAppAction *)self bundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p identifier: %@; enabled: %@; action: %@; hasEncoded: %@; bundleIdentifier: %@>", v4, self, v5, v6, v7, v8, v9];;

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  rawAction = self->_rawAction;
  identifier = self->_identifier;
  bundleIdentifier = self->_bundleIdentifier;
  encodedAction = self->_encodedAction;
  enabled = self->_enabled;

  return [v4 _initWithAction:rawAction bundleIdentifier:bundleIdentifier actionIdentifier:identifier encodedAction:encodedAction enabled:enabled];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableAppAction allocWithZone:a3];
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
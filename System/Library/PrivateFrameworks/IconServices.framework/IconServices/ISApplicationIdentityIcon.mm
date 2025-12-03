@interface ISApplicationIdentityIcon
- (ISApplicationIdentityIcon)initWithApplicationIdentity:(id)identity;
- (ISApplicationIdentityIcon)initWithCoder:(id)coder;
- (id)_makeResourceProviderAllowIconResourceFallback:(BOOL)fallback;
- (id)_resourceForPersona:(unint64_t)persona;
- (id)description;
- (unint64_t)_personaType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISApplicationIdentityIcon

- (ISApplicationIdentityIcon)initWithApplicationIdentity:(id)identity
{
  v38 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  identityString = [identityCopy identityString];
  v8 = [v6 stringByAppendingPathComponent:identityString];

  v33 = 0;
  v9 = [identityCopy findApplicationRecordWithError:&v33];
  v10 = v33;
  if (!v9)
  {
    alternateIconName = _ISDefaultLog();
    if (!os_log_type_enabled(alternateIconName, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    identityString2 = [identityCopy identityString];
    localizedDescription = [v10 localizedDescription];
    *buf = 138412546;
    v35 = identityString2;
    v36 = 2112;
    v37 = localizedDescription;
    _os_log_impl(&dword_1A77B8000, alternateIconName, OS_LOG_TYPE_DEFAULT, "No record for identity: %@. Error: %@", buf, 0x16u);

    goto LABEL_15;
  }

  if ([v9 isPlaceholder])
  {
    v11 = [v9 URL];
    __is__contentModifiedDate = [v11 __is__contentModifiedDate];

    v13 = MEMORY[0x1E696AEC0];
    [__is__contentModifiedDate timeIntervalSinceReferenceDate];
    v15 = [v13 stringWithFormat:@"%f", v14];
    v16 = [v8 stringByAppendingPathComponent:v15];

    v17 = _ISDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ISApplicationIdentityIcon initWithApplicationIdentity:];
    }

LABEL_11:
    goto LABEL_12;
  }

  persistentIdentifier = [v9 persistentIdentifier];

  if (persistentIdentifier)
  {
    v22 = MEMORY[0x1E696AFB0];
    persistentIdentifier2 = [v9 persistentIdentifier];
    v24 = [v22 _IF_UUIDWithData:persistentIdentifier2];
    uUIDString = [v24 UUIDString];
    v16 = [v8 stringByAppendingPathComponent:uUIDString];

    __is__contentModifiedDate = _ISDefaultLog();
    if (os_log_type_enabled(__is__contentModifiedDate, OS_LOG_TYPE_DEBUG))
    {
      [ISApplicationIdentityIcon initWithApplicationIdentity:];
    }

    goto LABEL_11;
  }

  v16 = v8;
LABEL_12:
  alternateIconName = [v9 alternateIconName];
  if (alternateIconName)
  {
    v8 = [v16 stringByAppendingPathComponent:alternateIconName];

    identityString2 = _ISDefaultLog();
    if (os_log_type_enabled(identityString2, OS_LOG_TYPE_DEBUG))
    {
      [ISApplicationIdentityIcon initWithApplicationIdentity:];
    }

LABEL_15:

    goto LABEL_17;
  }

  v8 = v16;
LABEL_17:

  v26 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v8];
  v32.receiver = self;
  v32.super_class = ISApplicationIdentityIcon;
  v27 = [(ISConcreteIcon *)&v32 initWithDigest:v26];
  if (v27)
  {
    identityString3 = [identityCopy identityString];
    identityString = v27->_identityString;
    v27->_identityString = identityString3;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v27;
}

- (ISApplicationIdentityIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ISApplicationIdentityIcon;
  v5 = [(ISConcreteIcon *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identityString"];
    identityString = v5->_identityString;
    v5->_identityString = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISApplicationIdentityIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identityString forKey:{@"identityString", v5.receiver, v5.super_class}];
}

- (id)_resourceForPersona:(unint64_t)persona
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:10];
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v3 setSymbolColors:v5];

  v6 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:4];
  v11 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v3 setEnclosureColors:v7];

  [v3 setRenderingMode:3];
  v8 = [ISGraphicSymbolResource graphicSymbolResourceWithConfiguration:v3 symbolName:@"frying.pan" url:0];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unint64_t)_personaType
{
  v3 = objc_alloc(MEMORY[0x1E69635D8]);
  identityString = [(ISApplicationIdentityIcon *)self identityString];
  v5 = [v3 initWithIdentityString:identityString];

  personaType = [v5 personaType];
  return personaType;
}

- (id)_makeResourceProviderAllowIconResourceFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E69635D8]);
  identityString = [(ISApplicationIdentityIcon *)self identityString];
  v7 = [v5 initWithIdentityString:identityString];

  [(ISApplicationIdentityIcon *)self _personaType];
  v24 = 0;
  v8 = [v7 findApplicationRecordWithError:&v24];
  v9 = v24;
  if (v8)
  {
    v10 = v8;
    v11 = 1;
  }

  else
  {
    v12 = _ISDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 138412546;
      selfCopy = self;
      v27 = 2112;
      v28 = localizedDescription;
      _os_log_impl(&dword_1A77B8000, v12, OS_LOG_TYPE_DEFAULT, "Unable to create resource provider for %@ - unable to find record. Error: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x1E69636B0];
    identifier = [*MEMORY[0x1E6982CB0] identifier];
    v10 = [v14 typeRecordWithIdentifier:identifier];

    if (v10)
    {
      v16 = v10;
    }

    v11 = 0;
  }

  v17 = [[ISRecordResourceProvider alloc] initWithRecord:v10 options:0];
  v18 = v17;
  if (fallbackCopy)
  {
    iconResource = [(ISRecordResourceProvider *)v17 iconResource];

    if (!iconResource)
    {
      v20 = _ISDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ISApplicationIdentityIcon _makeResourceProviderAllowIconResourceFallback:];
      }

      v21 = +[ISResourceProvider defaultAppIconResourceProvider];

      [(ISResourceProvider *)v21 setPlaceholder:1];
      v18 = v21;
    }
  }

  [(ISResourceProvider *)v18 setResourceType:v11];

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  identityString = [(ISApplicationIdentityIcon *)self identityString];
  digest = [(ISConcreteIcon *)self digest];
  v8 = [v3 initWithFormat:@"<%s %p> identity: %@ digest: %@", Name, self, identityString, digest];

  return v8;
}

- (void)initWithApplicationIdentity:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Suffixed identity bundle ID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithApplicationIdentity:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Placeholder identity bundle suffixed bundle ID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithApplicationIdentity:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, v0, v1, "Custom icon suffixed identity bundle ID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_makeResourceProviderAllowIconResourceFallback:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1A77B8000, v1, OS_LOG_TYPE_ERROR, "Failed to find icon resources for application identity %@ - %@. Creating placeholder provider", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end
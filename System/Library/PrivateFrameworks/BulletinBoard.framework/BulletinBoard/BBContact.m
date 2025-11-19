@interface BBContact
+ (BBContact)contactWithHandle:(id)a3 handleType:(int64_t)a4 serviceName:(id)a5 displayName:(id)a6 cnContactIdentifier:(id)a7 cnContactFullname:(id)a8 cnContactIdentifierSuggested:(BOOL)a9;
+ (BBContact)contactWithHandle:(id)a3 handleType:(int64_t)a4 serviceName:(id)a5 displayName:(id)a6 customIdentifier:(id)a7 cnContactIdentifier:(id)a8 cnContactFullname:(id)a9 cnContactIdentifierSuggested:(BOOL)a10;
- (BBContact)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithHandle:(id)a3 handleType:(int64_t)a4 serviceName:(id)a5 displayName:(id)a6 displayNameSuggested:(BOOL)a7 customIdentifier:(id)a8 cnContactIdentifier:(id)a9 cnContactFullname:(id)a10 cnContactIdentifierSuggested:(BOOL)a11;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBContact

+ (BBContact)contactWithHandle:(id)a3 handleType:(int64_t)a4 serviceName:(id)a5 displayName:(id)a6 cnContactIdentifier:(id)a7 cnContactFullname:(id)a8 cnContactIdentifierSuggested:(BOOL)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  LOBYTE(v21) = a9;
  v19 = [[BBContact alloc] _initWithHandle:v18 handleType:a4 serviceName:v17 displayName:v16 displayNameSuggested:0 customIdentifier:0 cnContactIdentifier:v15 cnContactFullname:v14 cnContactIdentifierSuggested:v21];

  return v19;
}

+ (BBContact)contactWithHandle:(id)a3 handleType:(int64_t)a4 serviceName:(id)a5 displayName:(id)a6 customIdentifier:(id)a7 cnContactIdentifier:(id)a8 cnContactFullname:(id)a9 cnContactIdentifierSuggested:(BOOL)a10
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  LOBYTE(v24) = a10;
  v22 = [[BBContact alloc] _initWithHandle:v21 handleType:a4 serviceName:v20 displayName:v19 displayNameSuggested:0 customIdentifier:v18 cnContactIdentifier:v17 cnContactFullname:v16 cnContactIdentifierSuggested:v24];

  return v22;
}

- (id)_initWithHandle:(id)a3 handleType:(int64_t)a4 serviceName:(id)a5 displayName:(id)a6 displayNameSuggested:(BOOL)a7 customIdentifier:(id)a8 cnContactIdentifier:(id)a9 cnContactFullname:(id)a10 cnContactIdentifierSuggested:(BOOL)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v37.receiver = self;
  v37.super_class = BBContact;
  v23 = [(BBContact *)&v37 init];
  if (v23)
  {
    v24 = [v17 copy];
    handle = v23->_handle;
    v23->_handle = v24;

    v23->_handleType = a4;
    v26 = [v18 copy];
    serviceName = v23->_serviceName;
    v23->_serviceName = v26;

    v28 = [v19 copy];
    displayName = v23->_displayName;
    v23->_displayName = v28;

    v23->_displayNameSuggested = a7;
    v30 = [v20 copy];
    customIdentifier = v23->_customIdentifier;
    v23->_customIdentifier = v30;

    v32 = [v21 copy];
    cnContactIdentifier = v23->_cnContactIdentifier;
    v23->_cnContactIdentifier = v32;

    v34 = [v22 copy];
    cnContactFullname = v23->_cnContactFullname;
    v23->_cnContactFullname = v34;

    v23->_cnContactIdentifierSuggested = a11;
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = self->_handleType ^ [(NSString *)self->_handle hash];
  v4 = [(NSString *)self->_serviceName hash];
  v5 = v3 ^ v4 ^ [(NSString *)self->_displayName hash];
  displayNameSuggested = self->_displayNameSuggested;
  v7 = displayNameSuggested ^ [(NSString *)self->_customIdentifier hash];
  v8 = v5 ^ v7 ^ [(NSString *)self->_cnContactIdentifier hash];
  return v8 ^ [(NSString *)self->_cnContactFullname hash]^ self->_cnContactIdentifierSuggested;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
LABEL_14:
      v22 = 0;
      goto LABEL_15;
    }
  }

  v5 = v4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  handle = self->_handle;
  v8 = [v5 handle];
  LODWORD(handle) = BSEqualStrings();

  if (!handle)
  {
    goto LABEL_14;
  }

  handleType = self->_handleType;
  if (handleType != [v6 handleType])
  {
    goto LABEL_14;
  }

  serviceName = self->_serviceName;
  v11 = [v6 serviceName];
  LODWORD(serviceName) = BSEqualStrings();

  if (!serviceName)
  {
    goto LABEL_14;
  }

  displayName = self->_displayName;
  v13 = [v6 displayName];
  LODWORD(displayName) = BSEqualStrings();

  if (!displayName)
  {
    goto LABEL_14;
  }

  displayNameSuggested = self->_displayNameSuggested;
  if (displayNameSuggested != [v6 isDisplayNameSuggested])
  {
    goto LABEL_14;
  }

  customIdentifier = self->_customIdentifier;
  v16 = [v6 customIdentifier];
  LODWORD(customIdentifier) = BSEqualStrings();

  if (!customIdentifier)
  {
    goto LABEL_14;
  }

  cnContactIdentifier = self->_cnContactIdentifier;
  v18 = [v6 cnContactIdentifier];
  LODWORD(cnContactIdentifier) = BSEqualStrings();

  if (!cnContactIdentifier)
  {
    goto LABEL_14;
  }

  cnContactFullname = self->_cnContactFullname;
  v20 = [v6 cnContactFullname];
  LODWORD(cnContactFullname) = BSEqualStrings();

  if (!cnContactFullname)
  {
    goto LABEL_14;
  }

  cnContactIdentifierSuggested = self->_cnContactIdentifierSuggested;
  v22 = cnContactIdentifierSuggested == [v6 isCNContactIdentifierSuggested];
LABEL_15:

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  [v5 encodeObject:handle forKey:@"handle"];
  [v5 encodeInteger:self->_handleType forKey:@"handleType"];
  [v5 encodeObject:self->_serviceName forKey:@"serviceName"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeBool:self->_displayNameSuggested forKey:@"displayNameSuggested"];
  [v5 encodeObject:self->_customIdentifier forKey:@"customIdentifier"];
  [v5 encodeObject:self->_cnContactIdentifier forKey:@"cnContactIdentifier"];
  [v5 encodeObject:self->_cnContactFullname forKey:@"cnContactFullname"];
  [v5 encodeBool:self->_cnContactIdentifierSuggested forKey:@"suggestedContactIdentifier"];
}

- (BBContact)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  v5 = [v3 decodeIntegerForKey:@"handleType"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [v3 decodeBoolForKey:@"displayNameSuggested"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"customIdentifier"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cnContactIdentifier"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cnContactFullname"];
  v12 = [v3 decodeBoolForKey:@"suggestedContactIdentifier"];

  LOBYTE(v15) = v12;
  v13 = [(BBContact *)self _initWithHandle:v4 handleType:v5 serviceName:v6 displayName:v7 displayNameSuggested:v8 customIdentifier:v9 cnContactIdentifier:v10 cnContactFullname:v11 cnContactIdentifierSuggested:v15];

  return v13;
}

@end
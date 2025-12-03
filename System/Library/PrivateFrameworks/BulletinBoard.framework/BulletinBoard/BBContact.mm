@interface BBContact
+ (BBContact)contactWithHandle:(id)handle handleType:(int64_t)type serviceName:(id)name displayName:(id)displayName cnContactIdentifier:(id)identifier cnContactFullname:(id)fullname cnContactIdentifierSuggested:(BOOL)suggested;
+ (BBContact)contactWithHandle:(id)handle handleType:(int64_t)type serviceName:(id)name displayName:(id)displayName customIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier cnContactFullname:(id)fullname cnContactIdentifierSuggested:(BOOL)self0;
- (BBContact)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithHandle:(id)handle handleType:(int64_t)type serviceName:(id)name displayName:(id)displayName displayNameSuggested:(BOOL)suggested customIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier cnContactFullname:(id)self0 cnContactIdentifierSuggested:(BOOL)self1;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBContact

+ (BBContact)contactWithHandle:(id)handle handleType:(int64_t)type serviceName:(id)name displayName:(id)displayName cnContactIdentifier:(id)identifier cnContactFullname:(id)fullname cnContactIdentifierSuggested:(BOOL)suggested
{
  fullnameCopy = fullname;
  identifierCopy = identifier;
  displayNameCopy = displayName;
  nameCopy = name;
  handleCopy = handle;
  LOBYTE(v21) = suggested;
  v19 = [[BBContact alloc] _initWithHandle:handleCopy handleType:type serviceName:nameCopy displayName:displayNameCopy displayNameSuggested:0 customIdentifier:0 cnContactIdentifier:identifierCopy cnContactFullname:fullnameCopy cnContactIdentifierSuggested:v21];

  return v19;
}

+ (BBContact)contactWithHandle:(id)handle handleType:(int64_t)type serviceName:(id)name displayName:(id)displayName customIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier cnContactFullname:(id)fullname cnContactIdentifierSuggested:(BOOL)self0
{
  fullnameCopy = fullname;
  contactIdentifierCopy = contactIdentifier;
  identifierCopy = identifier;
  displayNameCopy = displayName;
  nameCopy = name;
  handleCopy = handle;
  LOBYTE(v24) = suggested;
  v22 = [[BBContact alloc] _initWithHandle:handleCopy handleType:type serviceName:nameCopy displayName:displayNameCopy displayNameSuggested:0 customIdentifier:identifierCopy cnContactIdentifier:contactIdentifierCopy cnContactFullname:fullnameCopy cnContactIdentifierSuggested:v24];

  return v22;
}

- (id)_initWithHandle:(id)handle handleType:(int64_t)type serviceName:(id)name displayName:(id)displayName displayNameSuggested:(BOOL)suggested customIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier cnContactFullname:(id)self0 cnContactIdentifierSuggested:(BOOL)self1
{
  handleCopy = handle;
  nameCopy = name;
  displayNameCopy = displayName;
  identifierCopy = identifier;
  contactIdentifierCopy = contactIdentifier;
  fullnameCopy = fullname;
  v37.receiver = self;
  v37.super_class = BBContact;
  v23 = [(BBContact *)&v37 init];
  if (v23)
  {
    v24 = [handleCopy copy];
    handle = v23->_handle;
    v23->_handle = v24;

    v23->_handleType = type;
    v26 = [nameCopy copy];
    serviceName = v23->_serviceName;
    v23->_serviceName = v26;

    v28 = [displayNameCopy copy];
    displayName = v23->_displayName;
    v23->_displayName = v28;

    v23->_displayNameSuggested = suggested;
    v30 = [identifierCopy copy];
    customIdentifier = v23->_customIdentifier;
    v23->_customIdentifier = v30;

    v32 = [contactIdentifierCopy copy];
    cnContactIdentifier = v23->_cnContactIdentifier;
    v23->_cnContactIdentifier = v32;

    v34 = [fullnameCopy copy];
    cnContactFullname = v23->_cnContactFullname;
    v23->_cnContactFullname = v34;

    v23->_cnContactIdentifierSuggested = identifierSuggested;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v5 = equalCopy;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  handle = self->_handle;
  handle = [v5 handle];
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
  serviceName = [v6 serviceName];
  LODWORD(serviceName) = BSEqualStrings();

  if (!serviceName)
  {
    goto LABEL_14;
  }

  displayName = self->_displayName;
  displayName = [v6 displayName];
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
  customIdentifier = [v6 customIdentifier];
  LODWORD(customIdentifier) = BSEqualStrings();

  if (!customIdentifier)
  {
    goto LABEL_14;
  }

  cnContactIdentifier = self->_cnContactIdentifier;
  cnContactIdentifier = [v6 cnContactIdentifier];
  LODWORD(cnContactIdentifier) = BSEqualStrings();

  if (!cnContactIdentifier)
  {
    goto LABEL_14;
  }

  cnContactFullname = self->_cnContactFullname;
  cnContactFullname = [v6 cnContactFullname];
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

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"handle"];
  [coderCopy encodeInteger:self->_handleType forKey:@"handleType"];
  [coderCopy encodeObject:self->_serviceName forKey:@"serviceName"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeBool:self->_displayNameSuggested forKey:@"displayNameSuggested"];
  [coderCopy encodeObject:self->_customIdentifier forKey:@"customIdentifier"];
  [coderCopy encodeObject:self->_cnContactIdentifier forKey:@"cnContactIdentifier"];
  [coderCopy encodeObject:self->_cnContactFullname forKey:@"cnContactFullname"];
  [coderCopy encodeBool:self->_cnContactIdentifierSuggested forKey:@"suggestedContactIdentifier"];
}

- (BBContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  v5 = [coderCopy decodeIntegerForKey:@"handleType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [coderCopy decodeBoolForKey:@"displayNameSuggested"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cnContactIdentifier"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cnContactFullname"];
  v12 = [coderCopy decodeBoolForKey:@"suggestedContactIdentifier"];

  LOBYTE(v15) = v12;
  v13 = [(BBContact *)self _initWithHandle:v4 handleType:v5 serviceName:v6 displayName:v7 displayNameSuggested:v8 customIdentifier:v9 cnContactIdentifier:v10 cnContactFullname:v11 cnContactIdentifierSuggested:v15];

  return v13;
}

@end
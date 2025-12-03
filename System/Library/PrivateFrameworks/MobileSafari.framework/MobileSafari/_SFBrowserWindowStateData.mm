@interface _SFBrowserWindowStateData
- (BOOL)isEqual:(id)equal;
- (NSUUID)UUID;
- (_SFBrowserWindowStateData)initWithDictionaryRepresentation:(id)representation;
- (_SFBrowserWindowStateData)initWithSQLiteRow:(id)row;
- (_SFBrowserWindowStateData)initWithUUIDString:(id)string sceneID:(id)d profileIdentifier:(id)identifier;
- (id)dictionaryRepresentation;
- (void)setUUID:(id)d;
@end

@implementation _SFBrowserWindowStateData

- (_SFBrowserWindowStateData)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v21.receiver = self;
  v21.super_class = _SFBrowserWindowStateData;
  v5 = [(_SFBrowserWindowStateData *)&v21 init];
  if (v5)
  {
    v6 = [representationCopy safari_numberForKey:@"SafariStateBrowserWindowDatabaseID"];
    v7 = v6;
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_databaseID = integerValue;
    v9 = [representationCopy safari_stringForKey:@"SafariStateBrowserWindowUUID"];
    UUIDString = v5->_UUIDString;
    v5->_UUIDString = v9;

    v11 = [representationCopy safari_numberForKey:@"SafariStateActiveDocumentIndex"];
    v5->_activeDocumentIndex = [v11 integerValue];

    v12 = [representationCopy safari_numberForKey:@"SafariStatePrivateActiveDocumentIndex"];
    v5->_activePrivateDocumentIndex = [v12 integerValue];

    v13 = [representationCopy safari_numberForKey:@"SafariStateFileVersion"];
    v5->_legacyPlistFileVersion = [v13 integerValue];

    v14 = [representationCopy safari_stringForKey:@"SafariStateBrowserSceneIDKey"];
    sceneID = v5->_sceneID;
    v5->_sceneID = v14;

    v16 = [representationCopy safari_stringForKey:@"SafariStateBrowserWindowActiveProfileUUID"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = *MEMORY[0x1E69C8B58];
    }

    objc_storeStrong(&v5->_activeProfileIdentifier, v18);

    v19 = v5;
  }

  return v5;
}

- (_SFBrowserWindowStateData)initWithSQLiteRow:(id)row
{
  rowCopy = row;
  v15.receiver = self;
  v15.super_class = _SFBrowserWindowStateData;
  v5 = [(_SFBrowserWindowStateData *)&v15 init];
  if (v5)
  {
    v5->_databaseID = [rowCopy intAtIndex:0];
    v6 = [rowCopy stringAtIndex:1];
    UUIDString = v5->_UUIDString;
    v5->_UUIDString = v6;

    v8 = [rowCopy stringAtIndex:8];
    sceneID = v5->_sceneID;
    v5->_sceneID = v8;

    v5->_type = [rowCopy intAtIndex:2];
    v5->_activeDocumentIndex = [rowCopy intAtIndex:3];
    v5->_activePrivateDocumentIndex = [rowCopy intAtIndex:4];
    v5->_isActiveDocumentValid = [rowCopy BOOLAtIndex:5];
    v5->_isTabStateSuccessfullyLoaded = [rowCopy BOOLAtIndex:6];
    v5->_legacyPlistFileVersion = [rowCopy intAtIndex:7];
    v10 = [rowCopy stringAtIndex:9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = *MEMORY[0x1E69C8B58];
    }

    objc_storeStrong(&v5->_activeProfileIdentifier, v12);

    v13 = v5;
  }

  return v5;
}

- (_SFBrowserWindowStateData)initWithUUIDString:(id)string sceneID:(id)d profileIdentifier:(id)identifier
{
  stringCopy = string;
  dCopy = d;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = _SFBrowserWindowStateData;
  v12 = [(_SFBrowserWindowStateData *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_UUIDString, string);
    v14 = [dCopy copy];
    sceneID = v13->_sceneID;
    v13->_sceneID = v14;

    objc_storeStrong(&v13->_activeProfileIdentifier, identifier);
    v16 = v13;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_databaseID == v5->_databaseID && WBSIsEqual() && WBSIsEqual() && WBSIsEqual() && self->_type == v5->_type && self->_activeDocumentIndex == v5->_activeDocumentIndex && self->_activePrivateDocumentIndex == v5->_activePrivateDocumentIndex && self->_isActiveDocumentValid == v5->_isActiveDocumentValid && self->_isTabStateSuccessfullyLoaded == v5->_isTabStateSuccessfullyLoaded && self->_legacyPlistFileVersion == v5->_legacyPlistFileVersion && self->_needsQuickUpdate == v5->_needsQuickUpdate;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSUUID)UUID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_UUIDString];

  return v2;
}

- (void)setUUID:(id)d
{
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  UUIDString = self->_UUIDString;
  self->_UUIDString = uUIDString;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_UUIDString forKeyedSubscript:@"SafariStateBrowserWindowUUID"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activeDocumentIndex];
  [dictionary setObject:v4 forKeyedSubscript:@"SafariStateActiveDocumentIndex"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activePrivateDocumentIndex];
  [dictionary setObject:v5 forKeyedSubscript:@"SafariStatePrivateActiveDocumentIndex"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_legacyPlistFileVersion];
  [dictionary setObject:v6 forKeyedSubscript:@"SafariStateFileVersion"];

  [dictionary setObject:self->_sceneID forKeyedSubscript:@"SafariStateBrowserSceneIDKey"];
  [dictionary setObject:self->_activeProfileIdentifier forKeyedSubscript:@"SafariStateBrowserWindowActiveProfileUUID"];
  v7 = [dictionary copy];

  return v7;
}

@end
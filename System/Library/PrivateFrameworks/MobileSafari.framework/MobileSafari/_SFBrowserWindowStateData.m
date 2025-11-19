@interface _SFBrowserWindowStateData
- (BOOL)isEqual:(id)a3;
- (NSUUID)UUID;
- (_SFBrowserWindowStateData)initWithDictionaryRepresentation:(id)a3;
- (_SFBrowserWindowStateData)initWithSQLiteRow:(id)a3;
- (_SFBrowserWindowStateData)initWithUUIDString:(id)a3 sceneID:(id)a4 profileIdentifier:(id)a5;
- (id)dictionaryRepresentation;
- (void)setUUID:(id)a3;
@end

@implementation _SFBrowserWindowStateData

- (_SFBrowserWindowStateData)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _SFBrowserWindowStateData;
  v5 = [(_SFBrowserWindowStateData *)&v21 init];
  if (v5)
  {
    v6 = [v4 safari_numberForKey:@"SafariStateBrowserWindowDatabaseID"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 integerValue];
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_databaseID = v8;
    v9 = [v4 safari_stringForKey:@"SafariStateBrowserWindowUUID"];
    UUIDString = v5->_UUIDString;
    v5->_UUIDString = v9;

    v11 = [v4 safari_numberForKey:@"SafariStateActiveDocumentIndex"];
    v5->_activeDocumentIndex = [v11 integerValue];

    v12 = [v4 safari_numberForKey:@"SafariStatePrivateActiveDocumentIndex"];
    v5->_activePrivateDocumentIndex = [v12 integerValue];

    v13 = [v4 safari_numberForKey:@"SafariStateFileVersion"];
    v5->_legacyPlistFileVersion = [v13 integerValue];

    v14 = [v4 safari_stringForKey:@"SafariStateBrowserSceneIDKey"];
    sceneID = v5->_sceneID;
    v5->_sceneID = v14;

    v16 = [v4 safari_stringForKey:@"SafariStateBrowserWindowActiveProfileUUID"];
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

- (_SFBrowserWindowStateData)initWithSQLiteRow:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFBrowserWindowStateData;
  v5 = [(_SFBrowserWindowStateData *)&v15 init];
  if (v5)
  {
    v5->_databaseID = [v4 intAtIndex:0];
    v6 = [v4 stringAtIndex:1];
    UUIDString = v5->_UUIDString;
    v5->_UUIDString = v6;

    v8 = [v4 stringAtIndex:8];
    sceneID = v5->_sceneID;
    v5->_sceneID = v8;

    v5->_type = [v4 intAtIndex:2];
    v5->_activeDocumentIndex = [v4 intAtIndex:3];
    v5->_activePrivateDocumentIndex = [v4 intAtIndex:4];
    v5->_isActiveDocumentValid = [v4 BOOLAtIndex:5];
    v5->_isTabStateSuccessfullyLoaded = [v4 BOOLAtIndex:6];
    v5->_legacyPlistFileVersion = [v4 intAtIndex:7];
    v10 = [v4 stringAtIndex:9];
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

- (_SFBrowserWindowStateData)initWithUUIDString:(id)a3 sceneID:(id)a4 profileIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = _SFBrowserWindowStateData;
  v12 = [(_SFBrowserWindowStateData *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_UUIDString, a3);
    v14 = [v10 copy];
    sceneID = v13->_sceneID;
    v13->_sceneID = v14;

    objc_storeStrong(&v13->_activeProfileIdentifier, a5);
    v16 = v13;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)setUUID:(id)a3
{
  v6 = a3;
  v4 = [v6 UUIDString];
  UUIDString = self->_UUIDString;
  self->_UUIDString = v4;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_UUIDString forKeyedSubscript:@"SafariStateBrowserWindowUUID"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activeDocumentIndex];
  [v3 setObject:v4 forKeyedSubscript:@"SafariStateActiveDocumentIndex"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activePrivateDocumentIndex];
  [v3 setObject:v5 forKeyedSubscript:@"SafariStatePrivateActiveDocumentIndex"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_legacyPlistFileVersion];
  [v3 setObject:v6 forKeyedSubscript:@"SafariStateFileVersion"];

  [v3 setObject:self->_sceneID forKeyedSubscript:@"SafariStateBrowserSceneIDKey"];
  [v3 setObject:self->_activeProfileIdentifier forKeyedSubscript:@"SafariStateBrowserWindowActiveProfileUUID"];
  v7 = [v3 copy];

  return v7;
}

@end
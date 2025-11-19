@interface FCTagSettingsEntry
- (CKRecord)asCKRecord;
- (FCTagSettingsEntry)initWithEntryID:(id)a3 tagID:(id)a4 fontMultiplier:(id)a5 fontMultiplierMacOS:(id)a6 contentScale:(id)a7 contentScaleMacOS:(id)a8 accessToken:(id)a9 webAccessOptIn:(BOOL)a10;
- (id)dictionaryRepresentation;
- (id)initWithEntryID:(void *)a1 dictionaryRepresentation:(void *)a2;
@end

@implementation FCTagSettingsEntry

- (FCTagSettingsEntry)initWithEntryID:(id)a3 tagID:(id)a4 fontMultiplier:(id)a5 fontMultiplierMacOS:(id)a6 contentScale:(id)a7 contentScaleMacOS:(id)a8 accessToken:(id)a9 webAccessOptIn:(BOOL)a10
{
  v52 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tag settings list entry must have an identifier"];
    *buf = 136315906;
    v45 = "[FCTagSettingsEntry initWithEntryID:tagID:fontMultiplier:fontMultiplierMacOS:contentScale:contentScaleMacOS:accessToken:webAccessOptIn:]";
    v46 = 2080;
    v47 = "FCTagSettingsEntry.m";
    v48 = 1024;
    v49 = 24;
    v50 = 2114;
    v51 = v41;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else if (v17)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tag settings list entry must have a tag identifier"];
    *buf = 136315906;
    v45 = "[FCTagSettingsEntry initWithEntryID:tagID:fontMultiplier:fontMultiplierMacOS:contentScale:contentScaleMacOS:accessToken:webAccessOptIn:]";
    v46 = 2080;
    v47 = "FCTagSettingsEntry.m";
    v48 = 1024;
    v49 = 25;
    v50 = 2114;
    v51 = v42;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v43.receiver = self;
  v43.super_class = FCTagSettingsEntry;
  v23 = [(FCTagSettingsEntry *)&v43 init];
  v24 = v23;
  if (v23)
  {
    if (v16 && v17)
    {
      v25 = [v16 copy];
      identifier = v24->_identifier;
      v24->_identifier = v25;

      v27 = [v17 copy];
      tagID = v24->_tagID;
      v24->_tagID = v27;

      v29 = [v18 copy];
      fontMultiplier = v24->_fontMultiplier;
      v24->_fontMultiplier = v29;

      v31 = [v19 copy];
      fontMultiplierMacOS = v24->_fontMultiplierMacOS;
      v24->_fontMultiplierMacOS = v31;

      v33 = [v20 copy];
      contentScale = v24->_contentScale;
      v24->_contentScale = v33;

      v35 = [v21 copy];
      contentScaleMacOS = v24->_contentScaleMacOS;
      v24->_contentScaleMacOS = v35;

      v37 = [v22 copy];
      accessToken = v24->_accessToken;
      v24->_accessToken = v37;

      v24->_webAccessOptIn = a10;
    }

    else
    {

      v24 = 0;
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return v24;
}

- (CKRecord)asCKRecord
{
  if (qword_1EDB26EB8 != -1)
  {
    dispatch_once(&qword_1EDB26EB8, &__block_literal_global_9);
  }

  v3 = objc_alloc(MEMORY[0x1E695BA70]);
  v4 = [(FCTagSettingsEntry *)self identifier];
  v5 = [v3 initWithRecordName:v4 zoneID:_MergedGlobals_132];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"TagSettings" recordID:v5];
  v7 = [(FCTagSettingsEntry *)self tagID];
  [v6 setValue:v7 forKey:@"tagID"];

  v8 = [(FCTagSettingsEntry *)self fontMultiplier];
  [v6 setValue:v8 forKey:@"fontMultiplier"];

  v9 = [(FCTagSettingsEntry *)self fontMultiplierMacOS];
  [v6 setValue:v9 forKey:@"fontMultiplierMacOS"];

  v10 = [(FCTagSettingsEntry *)self contentScale];
  [v6 setValue:v10 forKey:@"contentScale"];

  v11 = [(FCTagSettingsEntry *)self contentScaleMacOS];
  [v6 setValue:v11 forKey:@"contentScaleMacOS"];

  v12 = [(FCTagSettingsEntry *)self accessToken];
  [v6 setValue:v12 forKey:@"accessToken"];

  if ([(FCTagSettingsEntry *)self webAccessOptIn])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCTagSettingsEntry webAccessOptIn](self, "webAccessOptIn")}];
    [v6 setValue:v13 forKey:@"webAccessOptIn"];
  }

  return v6;
}

uint64_t __32__FCTagSettingsEntry_asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"UserInfo" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_132;
  _MergedGlobals_132 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)initWithEntryID:(void *)a1 dictionaryRepresentation:(void *)a2
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 objectForKeyedSubscript:@"tagID"];
    v5 = [v3 objectForKeyedSubscript:@"fontMultiplier"];
    v6 = [v3 objectForKeyedSubscript:@"fontMultiplierMacOS"];
    v7 = [v3 objectForKeyedSubscript:@"contentScale"];
    v8 = [v3 objectForKeyedSubscript:@"contentScaleMacOS"];
    v9 = [v3 objectForKeyedSubscript:@"accessToken"];
    v10 = [v3 objectForKeyedSubscript:@"webAccessOptIn"];

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", v4];
    LOBYTE(v13) = [v10 BOOLValue];
    v2 = [v2 initWithEntryID:v11 tagID:v4 fontMultiplier:v5 fontMultiplierMacOS:v6 contentScale:v7 contentScaleMacOS:v8 accessToken:v9 webAccessOptIn:v13];
  }

  return v2;
}

- (id)dictionaryRepresentation
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 tagID];
  [v2 setObject:v3 forKey:@"tagID"];

  v4 = [a1 fontMultiplier];

  if (v4)
  {
    v5 = [a1 fontMultiplier];
    [v2 setObject:v5 forKey:@"fontMultiplier"];
  }

  v6 = [a1 fontMultiplierMacOS];

  if (v6)
  {
    v7 = [a1 fontMultiplierMacOS];
    [v2 setObject:v7 forKey:@"fontMultiplierMacOS"];
  }

  v8 = [a1 contentScale];

  if (v8)
  {
    v9 = [a1 contentScale];
    [v2 setObject:v9 forKey:@"contentScale"];
  }

  v10 = [a1 contentScaleMacOS];

  if (v10)
  {
    v11 = [a1 contentScaleMacOS];
    [v2 setObject:v11 forKey:@"contentScaleMacOS"];
  }

  v12 = [a1 accessToken];

  if (v12)
  {
    v13 = [a1 accessToken];
    [v2 setObject:v13 forKey:@"accessToken"];
  }

  if ([a1 webAccessOptIn])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "webAccessOptIn")}];
    [v2 setObject:v14 forKey:@"webAccessOptIn"];
  }

  v15 = [v2 copy];

  return v15;
}

@end
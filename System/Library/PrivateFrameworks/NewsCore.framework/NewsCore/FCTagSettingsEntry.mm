@interface FCTagSettingsEntry
- (CKRecord)asCKRecord;
- (FCTagSettingsEntry)initWithEntryID:(id)d tagID:(id)iD fontMultiplier:(id)multiplier fontMultiplierMacOS:(id)s contentScale:(id)scale contentScaleMacOS:(id)oS accessToken:(id)token webAccessOptIn:(BOOL)self0;
- (id)dictionaryRepresentation;
- (id)initWithEntryID:(void *)d dictionaryRepresentation:(void *)representation;
@end

@implementation FCTagSettingsEntry

- (FCTagSettingsEntry)initWithEntryID:(id)d tagID:(id)iD fontMultiplier:(id)multiplier fontMultiplierMacOS:(id)s contentScale:(id)scale contentScaleMacOS:(id)oS accessToken:(id)token webAccessOptIn:(BOOL)self0
{
  v52 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  multiplierCopy = multiplier;
  sCopy = s;
  scaleCopy = scale;
  oSCopy = oS;
  tokenCopy = token;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (iDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDCopy)
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
    if (dCopy && iDCopy)
    {
      v25 = [dCopy copy];
      identifier = v24->_identifier;
      v24->_identifier = v25;

      v27 = [iDCopy copy];
      tagID = v24->_tagID;
      v24->_tagID = v27;

      v29 = [multiplierCopy copy];
      fontMultiplier = v24->_fontMultiplier;
      v24->_fontMultiplier = v29;

      v31 = [sCopy copy];
      fontMultiplierMacOS = v24->_fontMultiplierMacOS;
      v24->_fontMultiplierMacOS = v31;

      v33 = [scaleCopy copy];
      contentScale = v24->_contentScale;
      v24->_contentScale = v33;

      v35 = [oSCopy copy];
      contentScaleMacOS = v24->_contentScaleMacOS;
      v24->_contentScaleMacOS = v35;

      v37 = [tokenCopy copy];
      accessToken = v24->_accessToken;
      v24->_accessToken = v37;

      v24->_webAccessOptIn = in;
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
  identifier = [(FCTagSettingsEntry *)self identifier];
  v5 = [v3 initWithRecordName:identifier zoneID:_MergedGlobals_132];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"TagSettings" recordID:v5];
  tagID = [(FCTagSettingsEntry *)self tagID];
  [v6 setValue:tagID forKey:@"tagID"];

  fontMultiplier = [(FCTagSettingsEntry *)self fontMultiplier];
  [v6 setValue:fontMultiplier forKey:@"fontMultiplier"];

  fontMultiplierMacOS = [(FCTagSettingsEntry *)self fontMultiplierMacOS];
  [v6 setValue:fontMultiplierMacOS forKey:@"fontMultiplierMacOS"];

  contentScale = [(FCTagSettingsEntry *)self contentScale];
  [v6 setValue:contentScale forKey:@"contentScale"];

  contentScaleMacOS = [(FCTagSettingsEntry *)self contentScaleMacOS];
  [v6 setValue:contentScaleMacOS forKey:@"contentScaleMacOS"];

  accessToken = [(FCTagSettingsEntry *)self accessToken];
  [v6 setValue:accessToken forKey:@"accessToken"];

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

- (id)initWithEntryID:(void *)d dictionaryRepresentation:(void *)representation
{
  dCopy = d;
  if (d)
  {
    representationCopy = representation;
    v4 = [representationCopy objectForKeyedSubscript:@"tagID"];
    v5 = [representationCopy objectForKeyedSubscript:@"fontMultiplier"];
    v6 = [representationCopy objectForKeyedSubscript:@"fontMultiplierMacOS"];
    v7 = [representationCopy objectForKeyedSubscript:@"contentScale"];
    v8 = [representationCopy objectForKeyedSubscript:@"contentScaleMacOS"];
    v9 = [representationCopy objectForKeyedSubscript:@"accessToken"];
    v10 = [representationCopy objectForKeyedSubscript:@"webAccessOptIn"];

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", v4];
    LOBYTE(v13) = [v10 BOOLValue];
    dCopy = [dCopy initWithEntryID:v11 tagID:v4 fontMultiplier:v5 fontMultiplierMacOS:v6 contentScale:v7 contentScaleMacOS:v8 accessToken:v9 webAccessOptIn:v13];
  }

  return dCopy;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  tagID = [self tagID];
  [dictionary setObject:tagID forKey:@"tagID"];

  fontMultiplier = [self fontMultiplier];

  if (fontMultiplier)
  {
    fontMultiplier2 = [self fontMultiplier];
    [dictionary setObject:fontMultiplier2 forKey:@"fontMultiplier"];
  }

  fontMultiplierMacOS = [self fontMultiplierMacOS];

  if (fontMultiplierMacOS)
  {
    fontMultiplierMacOS2 = [self fontMultiplierMacOS];
    [dictionary setObject:fontMultiplierMacOS2 forKey:@"fontMultiplierMacOS"];
  }

  contentScale = [self contentScale];

  if (contentScale)
  {
    contentScale2 = [self contentScale];
    [dictionary setObject:contentScale2 forKey:@"contentScale"];
  }

  contentScaleMacOS = [self contentScaleMacOS];

  if (contentScaleMacOS)
  {
    contentScaleMacOS2 = [self contentScaleMacOS];
    [dictionary setObject:contentScaleMacOS2 forKey:@"contentScaleMacOS"];
  }

  accessToken = [self accessToken];

  if (accessToken)
  {
    accessToken2 = [self accessToken];
    [dictionary setObject:accessToken2 forKey:@"accessToken"];
  }

  if ([self webAccessOptIn])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "webAccessOptIn")}];
    [dictionary setObject:v14 forKey:@"webAccessOptIn"];
  }

  v15 = [dictionary copy];

  return v15;
}

@end
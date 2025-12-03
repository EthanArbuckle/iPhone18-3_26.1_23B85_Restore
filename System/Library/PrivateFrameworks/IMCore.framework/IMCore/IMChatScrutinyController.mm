@interface IMChatScrutinyController
+ (id)sharedController;
- (id)transcriptRenderingMetadataForChatIdentifier:(id)identifier;
- (void)markMessageAsCorrupt:(id)corrupt;
- (void)markMessageAsNotCorrupt:(id)corrupt;
- (void)setTranscriptRenderingMetadata:(id)metadata forChatIdentifier:(id)identifier;
@end

@implementation IMChatScrutinyController

+ (id)sharedController
{
  if (qword_1ED7677D0 != -1)
  {
    sub_1A84E4070();
  }

  v3 = qword_1ED7677E0;

  return v3;
}

- (void)markMessageAsCorrupt:(id)corrupt
{
  corruptCopy = corrupt;
  v10 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_remoteDaemon(v10, v6, v7);
  objc_msgSend_markMessageAsCorrupt_setCorrupt_(v8, v9, corruptCopy, 1);
}

- (void)markMessageAsNotCorrupt:(id)corrupt
{
  corruptCopy = corrupt;
  v10 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_remoteDaemon(v10, v6, v7);
  objc_msgSend_markMessageAsCorrupt_setCorrupt_(v8, v9, corruptCopy, 0);
}

- (id)transcriptRenderingMetadataForChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!objc_msgSend_length(identifierCopy, v5, v6))
  {
    v28 = 0;
    goto LABEL_11;
  }

  v9 = objc_msgSend_scrutinyInfo(self, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"cid");
  isEqualToString = objc_msgSend_isEqualToString_(v11, v12, identifierCopy);

  if (!isEqualToString)
  {
    goto LABEL_9;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(v9, v14, @"latime");
  objc_msgSend_doubleValue(v15, v16, v17);
  v19 = v18;

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v20, v21);
  if (v19 > 0.0)
  {
    v25 = v24;
    objc_msgSend__maxDurationForScrutinyMode(self, v22, v23);
    if (v25 < v19 || v25 - v19 > v27)
    {
      objc_msgSend_setTranscriptRenderingMetadata_forChatIdentifier_(self, v26, 0, identifierCopy);
LABEL_9:
      v28 = 0;
      goto LABEL_10;
    }
  }

  v28 = v9;
LABEL_10:

LABEL_11:

  return v28;
}

- (void)setTranscriptRenderingMetadata:(id)metadata forChatIdentifier:(id)identifier
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  if (identifierCopy && (objc_msgSend_allKeys(metadataCopy, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_count(v8, v9, v10), v8, v11))
  {
    v14 = objc_msgSend_mutableCopy(metadataCopy, v12, v13);
    objc_msgSend_setObject_forKeyedSubscript_(v14, v15, identifierCopy, @"cid");
    v16 = MEMORY[0x1E696AD98];
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v17, v18);
    v21 = objc_msgSend_numberWithDouble_(v16, v19, v20);
    objc_msgSend_setObject_forKeyedSubscript_(v14, v22, v21, @"latime");
  }

  else
  {
    v14 = 0;
  }

  IMSetDomainValueForKey();
}

@end
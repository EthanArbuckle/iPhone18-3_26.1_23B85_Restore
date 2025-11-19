@interface IMDIndexableAttachmentRecord
- (IMDIndexableAttachmentRecord)initWithAttachmentRecord:(id)a3;
- (IMDIndexableAttachmentRecord)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation IMDIndexableAttachmentRecord

- (IMDIndexableAttachmentRecord)initWithAttachmentRecord:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = IMDIndexableAttachmentRecord;
  v7 = [(IMDIndexableAttachmentRecord *)&v35 init];
  if (v7)
  {
    objc_msgSend__writeIfNeededForPreviewGenerationStateMigration(v4, v5, v6);
    v10 = objc_msgSend_guid(v4, v8, v9);
    guid = v7->_guid;
    v7->_guid = v10;

    v14 = objc_msgSend_path(v4, v12, v13);
    path = v7->_path;
    v7->_path = v14;

    v18 = objc_msgSend_transferName(v4, v16, v17);
    name = v7->_name;
    v7->_name = v18;

    v22 = objc_msgSend_attributionInfo(v4, v20, v21);
    attributionInfo = v7->_attributionInfo;
    v7->_attributionInfo = v22;

    v7->_commSafetySensitive = objc_msgSend_isCommSafetySensitive(v4, v24, v25);
    v7->_sticker = objc_msgSend_isSticker(v4, v26, v27);
    v30 = objc_msgSend_utiString(v4, v28, v29);
    uti = v7->_uti;
    v7->_uti = v30;

    v7->_previewGenerationState = objc_msgSend_previewGenerationState(v4, v32, v33);
  }

  return v7;
}

- (IMDIndexableAttachmentRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = IMDIndexableAttachmentRecord;
  v6 = [(IMDIndexableAttachmentRecord *)&v34 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"guid");
    guid = v6->_guid;
    v6->_guid = v7;

    v10 = objc_msgSend_objectForKeyedSubscript_(v4, v9, @"path");
    path = v6->_path;
    v6->_path = v10;

    v13 = objc_msgSend_objectForKeyedSubscript_(v4, v12, @"name");
    name = v6->_name;
    v6->_name = v13;

    v16 = objc_msgSend_objectForKeyedSubscript_(v4, v15, @"attributionInfo");
    attributionInfo = v6->_attributionInfo;
    v6->_attributionInfo = v16;

    v19 = objc_msgSend_objectForKeyedSubscript_(v4, v18, @"isCommSafetySensitive");
    v6->_commSafetySensitive = objc_msgSend_BOOLValue(v19, v20, v21);

    v23 = objc_msgSend_objectForKeyedSubscript_(v4, v22, @"isSticker");
    v6->_sticker = objc_msgSend_BOOLValue(v23, v24, v25);

    v27 = objc_msgSend_objectForKeyedSubscript_(v4, v26, @"uti");
    uti = v6->_uti;
    v6->_uti = v27;

    v30 = objc_msgSend_objectForKeyedSubscript_(v4, v29, @"previewGenerationState");
    v6->_previewGenerationState = objc_msgSend_integerValue(v30, v31, v32);
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_msgSend_guid(self, v4, v5);
  if (v6)
  {
    CFDictionarySetValue(v3, @"guid", v6);
  }

  v9 = objc_msgSend_path(self, v7, v8);
  if (v9)
  {
    CFDictionarySetValue(v3, @"path", v9);
  }

  v12 = objc_msgSend_name(self, v10, v11);
  if (v12)
  {
    CFDictionarySetValue(v3, @"name", v12);
  }

  v15 = objc_msgSend_attributionInfo(self, v13, v14);
  if (v15)
  {
    CFDictionarySetValue(v3, @"attributionInfo", v15);
  }

  v16 = MEMORY[0x1E696AD98];
  isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(self, v17, v18);
  v21 = objc_msgSend_numberWithBool_(v16, v20, isCommSafetySensitive);
  if (v21)
  {
    CFDictionarySetValue(v3, @"isCommSafetySensitive", v21);
  }

  v22 = MEMORY[0x1E696AD98];
  isSticker = objc_msgSend_isSticker(self, v23, v24);
  v27 = objc_msgSend_numberWithBool_(v22, v26, isSticker);
  if (v27)
  {
    CFDictionarySetValue(v3, @"isSticker", v27);
  }

  v30 = objc_msgSend_uti(self, v28, v29);
  if (v30)
  {
    CFDictionarySetValue(v3, @"uti", v30);
  }

  v31 = MEMORY[0x1E696AD98];
  v34 = objc_msgSend_previewGenerationState(self, v32, v33);
  v36 = objc_msgSend_numberWithInteger_(v31, v35, v34);
  if (v36)
  {
    CFDictionarySetValue(v3, @"previewGenerationState", v36);
  }

  return v3;
}

@end
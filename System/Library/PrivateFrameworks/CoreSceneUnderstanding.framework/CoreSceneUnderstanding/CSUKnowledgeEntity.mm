@interface CSUKnowledgeEntity
- (CSUKnowledgeEntity)initWithDictionary:(id)dictionary;
- (CSUKnowledgeEntity)initWithQID:(id)d withHumanReadableLabel:(id)label withHumanReadableSynonyms:(id)synonyms withVersion:(int)version;
- (NSDictionary)dictionary;
@end

@implementation CSUKnowledgeEntity

- (CSUKnowledgeEntity)initWithQID:(id)d withHumanReadableLabel:(id)label withHumanReadableSynonyms:(id)synonyms withVersion:(int)version
{
  dCopy = d;
  labelCopy = label;
  synonymsCopy = synonyms;
  v18.receiver = self;
  v18.super_class = CSUKnowledgeEntity;
  v14 = [(CSUKnowledgeEntity *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_QID, d);
    objc_storeStrong(&v15->_humanReadableLabel, label);
    objc_storeStrong(&v15->_humanReadableSynonyms, synonyms);
    v15->_version = version;
    v16 = v15;
  }

  return v15;
}

- (CSUKnowledgeEntity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"humanReadableSynonyms", v6, v7);
  v13 = objc_msgSend_null(MEMORY[0x1E695DFB0], v9, v10, v11, v12);
  isEqual = objc_msgSend_isEqual_(v8, v14, v13, v15, v16);

  if (isEqual)
  {
    v21 = 0;
  }

  else
  {
    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v18, @"humanReadableSynonyms", v19, v20);
    v21 = objc_msgSend_setWithArray_(v22, v24, v23, v25, v26);
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v18, @"QID", v19, v20);
  v31 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v28, @"humanReadableLabel", v29, v30);
  v35 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v32, @"version", v33, v34);
  v40 = objc_msgSend_integerValue(v35, v36, v37, v38, v39);
  v42 = objc_msgSend_initWithQID_withHumanReadableLabel_withHumanReadableSynonyms_withVersion_(self, v41, v27, v31, v21, v40);

  return v42;
}

- (NSDictionary)dictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"QID";
  v17[1] = @"humanReadableLabel";
  humanReadableLabel = self->_humanReadableLabel;
  v18[0] = self->_QID;
  v18[1] = humanReadableLabel;
  v17[2] = @"humanReadableSynonyms";
  humanReadableSynonyms = self->_humanReadableSynonyms;
  if (humanReadableSynonyms)
  {
    objc_msgSend_allObjects(humanReadableSynonyms, a2, v2, v3, v4);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x1E695DFB0], a2, v2, v3, v4);
  }
  v8 = ;
  v18[2] = v8;
  v17[3] = @"version";
  v12 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, self->_version, v10, v11);
  v18[3] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v18, v17, 4);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end
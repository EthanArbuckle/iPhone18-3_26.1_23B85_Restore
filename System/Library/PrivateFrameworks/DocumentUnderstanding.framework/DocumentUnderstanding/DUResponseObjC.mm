@interface DUResponseObjC
- (DUCategoryClassificationResponseObjC)documentCategories;
- (DUDebugInfoObjC)responseDebugInfo;
- (DUFoundInEventClassificationResultObjC)foundInEventClassification;
- (DUFoundInEventResultObjC)foundInEvent;
- (DULanguageTaggingResponseObjC)languageTags;
- (DUResponseObjC)init;
- (DUStructuredEntityResponseObjC)structuredEntities;
- (DUTopicDetectionResponseObjC)topics;
- (void)setDocumentCategories:(id)categories;
- (void)setFoundInEvent:(id)event;
- (void)setFoundInEventClassification:(id)classification;
- (void)setLanguageTags:(id)tags;
- (void)setResponseDebugInfo:(id)info;
- (void)setStructuredEntities:(id)entities;
- (void)setTopics:(id)topics;
@end

@implementation DUResponseObjC

- (void)setResponseDebugInfo:(id)info
{
  v9 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, a2, info, v3, v4);
  objc_msgSend_setResponseDebugInfo_(self->_underlying, v6, v9, v7, v8);
}

- (DUDebugInfoObjC)responseDebugInfo
{
  v5 = objc_msgSend_responseDebugInfo(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setFoundInEventClassification:(id)classification
{
  v9 = objc_msgSend_foundInEventClassificationResultForObjC_(DUObjCCompatibilityUtils, a2, classification, v3, v4);
  objc_msgSend_setFoundInEventClassificationResult_(self->_underlying, v6, v9, v7, v8);
}

- (DUFoundInEventClassificationResultObjC)foundInEventClassification
{
  v5 = objc_msgSend_foundInEventClassificationResult(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcForFoundInEventClassificationResult_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setFoundInEvent:(id)event
{
  v9 = objc_msgSend_foundInEventResultForObjC_(DUObjCCompatibilityUtils, a2, event, v3, v4);
  objc_msgSend_setFoundInEventResult_(self->_underlying, v6, v9, v7, v8);
}

- (DUFoundInEventResultObjC)foundInEvent
{
  v5 = objc_msgSend_foundInEventResult(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcForFoundInEventResult_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setDocumentCategories:(id)categories
{
  v9 = objc_msgSend_categoryClassificationResponseForObjC_(DUObjCCompatibilityUtils, a2, categories, v3, v4);
  objc_msgSend_setDocumentCategories_(self->_underlying, v6, v9, v7, v8);
}

- (DUCategoryClassificationResponseObjC)documentCategories
{
  v5 = objc_msgSend_documentCategories(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcForCategoryClassificationResponse_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setLanguageTags:(id)tags
{
  v9 = objc_msgSend_languageTaggingResponseForObjC_(DUObjCCompatibilityUtils, a2, tags, v3, v4);
  objc_msgSend_setLanguageTags_(self->_underlying, v6, v9, v7, v8);
}

- (DULanguageTaggingResponseObjC)languageTags
{
  v5 = objc_msgSend_languageTags(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcForLanguageTaggingResponse_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setStructuredEntities:(id)entities
{
  v9 = objc_msgSend_structuredEntityResponseForObjC_(DUObjCCompatibilityUtils, a2, entities, v3, v4);
  objc_msgSend_setStructuredEntities_(self->_underlying, v6, v9, v7, v8);
}

- (DUStructuredEntityResponseObjC)structuredEntities
{
  v5 = objc_msgSend_structuredEntities(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcForStructuredEntityResponse_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setTopics:(id)topics
{
  v9 = objc_msgSend_topicDetectionResponseForObjC_(DUObjCCompatibilityUtils, a2, topics, v3, v4);
  objc_msgSend_setTopics_(self->_underlying, v6, v9, v7, v8);
}

- (DUTopicDetectionResponseObjC)topics
{
  v5 = objc_msgSend_topics(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcForTopicDetectionResponse_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (DUResponseObjC)init
{
  v7.receiver = self;
  v7.super_class = DUResponseObjC;
  v2 = [(DUResponseObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding10DUResponse);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end
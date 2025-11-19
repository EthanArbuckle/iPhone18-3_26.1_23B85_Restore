@interface DUObjCCompatibilityUtils
+ (id)calendarEventForObjCCalendarEvent:(id)a3;
+ (id)categoryClassificationResponseForObjC:(id)a3;
+ (id)categoryResultForObjC:(id)a3;
+ (id)clientForObjCClient:(id)a3;
+ (id)debugInfoForObjCDebugInfo:(id)a3;
+ (id)displayInfoForObjC:(id)a3;
+ (id)documentForObjCDocument:(id)a3;
+ (id)emailDataForObjCEmailData:(id)a3;
+ (id)foundInEventClassificationResultForObjC:(id)a3;
+ (id)foundInEventResultForObjC:(id)a3;
+ (id)globalTopicSetIdentifierForObjCGlobalTopicSetIdentifier:(id)a3;
+ (id)htmlDataForObjCHTMLData:(id)a3;
+ (id)languageTaggingResponseForObjC:(id)a3;
+ (id)objCCalendarEventForCalendarEvent:(id)a3;
+ (id)objCEmailDataForEmailData:(id)a3;
+ (id)objCForCategoryResult:(id)a3;
+ (id)objCForDisplayInfo:(id)a3;
+ (id)objCForStructuredExtractionLabel:(id)a3;
+ (id)objCGlobalTopicSetIdentifierForGlobalTopicSetIdentifier:(id)a3;
+ (id)objCHTMLDataForHTMLData:(id)a3;
+ (id)objCStructuredEntityForStructuredEntity:(id)a3;
+ (id)objCTopicResultForTopicResult:(id)a3;
+ (id)objCUIElementForUIElement:(id)a3;
+ (id)objcDebugInfoForDebugInfo:(id)a3;
+ (id)objcForCategoryClassificationResponse:(id)a3;
+ (id)objcForFoundInEventClassificationResult:(id)a3;
+ (id)objcForFoundInEventResult:(id)a3;
+ (id)objcForLanguageTaggingResponse:(id)a3;
+ (id)objcForResponse:(id)a3;
+ (id)objcForStructuredEntityResponse:(id)a3;
+ (id)objcForTopicDetectionResponse:(id)a3;
+ (id)strategyForObjCStrategy:(id)a3;
+ (id)structuredEntityForObjCStructuredEntity:(id)a3;
+ (id)structuredEntityResponseForObjC:(id)a3;
+ (id)structuredExtractionLabelForObjC:(id)a3;
+ (id)topicDetectionResponseForObjC:(id)a3;
+ (id)topicResultForObjCTopicResult:(id)a3;
+ (id)typeForObjCType:(id)a3;
+ (id)uiElementForObjCUIElement:(id)a3;
@end

@implementation DUObjCCompatibilityUtils

+ (id)objcForResponse:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DUResponseObjC);
    v9 = objc_msgSend_topics(v3, v5, v6, v7, v8);
    v13 = objc_msgSend_objcForTopicDetectionResponse_(DUObjCCompatibilityUtils, v10, v9, v11, v12);
    objc_msgSend_setTopics_(v4, v14, v13, v15, v16);

    v21 = objc_msgSend_structuredEntities(v3, v17, v18, v19, v20);
    v25 = objc_msgSend_objcForStructuredEntityResponse_(DUObjCCompatibilityUtils, v22, v21, v23, v24);
    objc_msgSend_setStructuredEntities_(v4, v26, v25, v27, v28);

    v33 = objc_msgSend_languageTags(v3, v29, v30, v31, v32);
    v37 = objc_msgSend_objcForLanguageTaggingResponse_(DUObjCCompatibilityUtils, v34, v33, v35, v36);
    objc_msgSend_setLanguageTags_(v4, v38, v37, v39, v40);

    v45 = objc_msgSend_foundInEventResult(v3, v41, v42, v43, v44);
    v49 = objc_msgSend_objcForFoundInEventResult_(DUObjCCompatibilityUtils, v46, v45, v47, v48);
    objc_msgSend_setFoundInEvent_(v4, v50, v49, v51, v52);

    v57 = objc_msgSend_foundInEventClassificationResult(v3, v53, v54, v55, v56);
    v61 = objc_msgSend_objcForFoundInEventClassificationResult_(DUObjCCompatibilityUtils, v58, v57, v59, v60);
    objc_msgSend_setFoundInEventClassification_(v4, v62, v61, v63, v64);

    v69 = objc_msgSend_responseDebugInfo(v3, v65, v66, v67, v68);

    v73 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v70, v69, v71, v72);
    objc_msgSend_setResponseDebugInfo_(v4, v74, v73, v75, v76);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objcForFoundInEventClassificationResult:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DUFoundInEventClassificationResultObjC);
    v9 = objc_msgSend_isSupportedLocale(v3, v5, v6, v7, v8);
    objc_msgSend_setIsSupportedLocale_(v4, v10, v9, v11, v12);

    v17 = objc_msgSend_containsDataDetectors(v3, v13, v14, v15, v16);
    objc_msgSend_setContainsDataDetectors_(v4, v18, v17, v19, v20);

    v25 = objc_msgSend_isClassifiedAsEvent(v3, v21, v22, v23, v24);
    objc_msgSend_setIsClassifiedAsEvent_(v4, v26, v25, v27, v28);

    v33 = objc_msgSend_isEventCandidate(v3, v29, v30, v31, v32);

    objc_msgSend_setIsEventCandidate_(v4, v34, v33, v35, v36);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objcForFoundInEventResult:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [DUFoundInEventResultObjC alloc];
    v8 = objc_msgSend_initWithDUFoundInEventResult_(v4, v5, v3, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)objcForCategoryClassificationResponse:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(DUCategoryClassificationResponseObjC);
    v5 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = objc_msgSend_categories(v3, v6, v7, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v40, v44, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = objc_msgSend_objCForCategoryResult_(DUObjCCompatibilityUtils, v13, *(*(&v40 + 1) + 8 * i), v14, v15);
          objc_msgSend_addObject_(v5, v20, v19, v21, v22);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v40, v44, 16);
      }

      while (v16);
    }

    objc_msgSend_setCategories_(v4, v23, v5, v24, v25);
    v30 = objc_msgSend_responseDebugInfo(v3, v26, v27, v28, v29);
    v34 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v31, v30, v32, v33);
    objc_msgSend_setResponseDebugInfo_(v4, v35, v34, v36, v37);
  }

  else
  {
    v4 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)categoryClassificationResponseForObjC:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding32DUCategoryClassificationResponse);
    v5 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = objc_msgSend_categories(v3, v6, v7, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v40, v44, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = objc_msgSend_categoryResultForObjC_(DUObjCCompatibilityUtils, v13, *(*(&v40 + 1) + 8 * i), v14, v15);
          objc_msgSend_addObject_(v5, v20, v19, v21, v22);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v40, v44, 16);
      }

      while (v16);
    }

    objc_msgSend_setCategories_(v4, v23, v5, v24, v25);
    v30 = objc_msgSend_responseDebugInfo(v3, v26, v27, v28, v29);
    v34 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, v31, v30, v32, v33);
    objc_msgSend_setResponseDebugInfo_(v4, v35, v34, v36, v37);
  }

  else
  {
    v4 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)foundInEventClassificationResultForObjC:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding34DUFoundInEventClassificationResult);
    v9 = objc_msgSend_isSupportedLocale(v3, v5, v6, v7, v8);
    objc_msgSend_setIsSupportedLocale_(v4, v10, v9, v11, v12);

    v17 = objc_msgSend_containsDataDetectors(v3, v13, v14, v15, v16);
    objc_msgSend_setContainsDataDetectors_(v4, v18, v17, v19, v20);

    v25 = objc_msgSend_isClassifiedAsEvent(v3, v21, v22, v23, v24);
    objc_msgSend_setIsClassifiedAsEvent_(v4, v26, v25, v27, v28);

    v33 = objc_msgSend_isEventCandidate(v3, v29, v30, v31, v32);

    objc_msgSend_setIsEventCandidate_(v4, v34, v33, v35, v36);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)foundInEventResultForObjC:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [_TtC21DocumentUnderstanding20DUFoundInEventResult alloc];
    v8 = objc_msgSend_initWithFoundInEventResult_(v4, v5, v3, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)objCForCategoryResult:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DUCategoryResultObjC);
    v9 = objc_msgSend_categoryIdentifier(v3, v5, v6, v7, v8);
    objc_msgSend_setCategoryIdentifier_(v4, v10, v9, v11, v12);

    objc_msgSend_categoryConfidence(v3, v13, v14, v15, v16);
    v18 = v17;

    objc_msgSend_setCategoryConfidence_(v4, v19, v20, v21, v22, v18);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)categoryResultForObjC:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding16DUCategoryResult);
    v9 = objc_msgSend_categoryIdentifier(v3, v5, v6, v7, v8);
    objc_msgSend_setCategoryIdentifier_(v4, v10, v9, v11, v12);

    objc_msgSend_categoryConfidence(v3, v13, v14, v15, v16);
    v18 = v17;

    objc_msgSend_setCategoryConfidence_(v4, v19, v20, v21, v22, v18);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objcForLanguageTaggingResponse:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DULanguageTaggingResponseObjC);
    v9 = objc_msgSend_languageTags(v3, v5, v6, v7, v8);
    objc_msgSend_setLanguageTags_(v4, v10, v9, v11, v12);

    v17 = objc_msgSend_responseDebugInfo(v3, v13, v14, v15, v16);

    v21 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v18, v17, v19, v20);
    objc_msgSend_setResponseDebugInfo_(v4, v22, v21, v23, v24);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)languageTaggingResponseForObjC:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding25DULanguageTaggingResponse);
    v9 = objc_msgSend_languageTags(v3, v5, v6, v7, v8);
    objc_msgSend_setLanguageTags_(v4, v10, v9, v11, v12);

    v17 = objc_msgSend_responseDebugInfo(v3, v13, v14, v15, v16);

    v21 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, v18, v17, v19, v20);
    objc_msgSend_setResponseDebugInfo_(v4, v22, v21, v23, v24);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objcForTopicDetectionResponse:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(DUTopicDetectionResponseObjC);
    v5 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v10 = objc_msgSend_globalTopics(v3, v6, v7, v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v65, v70, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v66;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v66 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = objc_msgSend_objCTopicResultForTopicResult_(DUObjCCompatibilityUtils, v13, *(*(&v65 + 1) + 8 * i), v14, v15);
          objc_msgSend_addObject_(v5, v20, v19, v21, v22);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v65, v70, 16);
      }

      while (v16);
    }

    v23 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v28 = objc_msgSend_personalTopics(v3, v24, v25, v26, v27, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v61, v69, 16);
    if (v30)
    {
      v34 = v30;
      v35 = *v62;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v62 != v35)
          {
            objc_enumerationMutation(v28);
          }

          v37 = objc_msgSend_objCTopicResultForTopicResult_(DUObjCCompatibilityUtils, v31, *(*(&v61 + 1) + 8 * j), v32, v33);
          objc_msgSend_addObject_(v23, v38, v37, v39, v40);
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v61, v69, 16);
      }

      while (v34);
    }

    objc_msgSend_setGlobalTopics_(v4, v41, v5, v42, v43);
    objc_msgSend_setPersonalTopics_(v4, v44, v23, v45, v46);
    v51 = objc_msgSend_responseDebugInfo(v3, v47, v48, v49, v50);
    v55 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v52, v51, v53, v54);
    objc_msgSend_setResponseDebugInfo_(v4, v56, v55, v57, v58);
  }

  else
  {
    v4 = 0;
  }

  v59 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)topicDetectionResponseForObjC:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding24DUTopicDetectionResponse);
    v5 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v10 = objc_msgSend_globalTopics(v3, v6, v7, v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v65, v70, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v66;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v66 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = objc_msgSend_topicResultForObjCTopicResult_(DUObjCCompatibilityUtils, v13, *(*(&v65 + 1) + 8 * i), v14, v15);
          objc_msgSend_addObject_(v5, v20, v19, v21, v22);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v65, v70, 16);
      }

      while (v16);
    }

    v23 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v28 = objc_msgSend_personalTopics(v3, v24, v25, v26, v27, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v61, v69, 16);
    if (v30)
    {
      v34 = v30;
      v35 = *v62;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v62 != v35)
          {
            objc_enumerationMutation(v28);
          }

          v37 = objc_msgSend_topicResultForObjCTopicResult_(DUObjCCompatibilityUtils, v31, *(*(&v61 + 1) + 8 * j), v32, v33);
          objc_msgSend_addObject_(v23, v38, v37, v39, v40);
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v61, v69, 16);
      }

      while (v34);
    }

    objc_msgSend_setGlobalTopics_(v4, v41, v5, v42, v43);
    objc_msgSend_setPersonalTopics_(v4, v44, v23, v45, v46);
    v51 = objc_msgSend_responseDebugInfo(v3, v47, v48, v49, v50);
    v55 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, v52, v51, v53, v54);
    objc_msgSend_setResponseDebugInfo_(v4, v56, v55, v57, v58);
  }

  else
  {
    v4 = 0;
  }

  v59 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)objcForStructuredEntityResponse:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(DUStructuredEntityResponseObjC);
    v5 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = objc_msgSend_structuredEntities(v3, v6, v7, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v40, v44, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = objc_msgSend_objCStructuredEntityForStructuredEntity_(DUObjCCompatibilityUtils, v13, *(*(&v40 + 1) + 8 * i), v14, v15);
          objc_msgSend_addObject_(v5, v20, v19, v21, v22);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v40, v44, 16);
      }

      while (v16);
    }

    objc_msgSend_setStructuredEntities_(v4, v23, v5, v24, v25);
    v30 = objc_msgSend_responseDebugInfo(v3, v26, v27, v28, v29);
    v34 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v31, v30, v32, v33);
    objc_msgSend_setResponseDebugInfo_(v4, v35, v34, v36, v37);
  }

  else
  {
    v4 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)structuredEntityResponseForObjC:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding26DUStructuredEntityResponse);
    v5 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = objc_msgSend_structuredEntities(v3, v6, v7, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v40, v44, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v41;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = objc_msgSend_structuredEntityForObjCStructuredEntity_(DUObjCCompatibilityUtils, v13, *(*(&v40 + 1) + 8 * i), v14, v15);
          objc_msgSend_addObject_(v5, v20, v19, v21, v22);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v40, v44, 16);
      }

      while (v16);
    }

    objc_msgSend_setStructuredEntities_(v4, v23, v5, v24, v25);
    v30 = objc_msgSend_responseDebugInfo(v3, v26, v27, v28, v29);
    v34 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, v31, v30, v32, v33);
    objc_msgSend_setResponseDebugInfo_(v4, v35, v34, v36, v37);
  }

  else
  {
    v4 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)objCTopicResultForTopicResult:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DUTopicResultObjC);
    v9 = objc_msgSend_topicSet(v3, v5, v6, v7, v8);
    v13 = objc_msgSend_objCGlobalTopicSetIdentifierForGlobalTopicSetIdentifier_(DUObjCCompatibilityUtils, v10, v9, v11, v12);
    objc_msgSend_setTopicSet_(v4, v14, v13, v15, v16);

    v21 = objc_msgSend_topicIdentifier(v3, v17, v18, v19, v20);
    objc_msgSend_setTopicIdentifier_(v4, v22, v21, v23, v24);

    objc_msgSend_topicConfidence(v3, v25, v26, v27, v28);
    v30 = v29;

    objc_msgSend_setTopicConfidence_(v4, v31, v32, v33, v34, v30);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)topicResultForObjCTopicResult:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding13DUTopicResult);
    v9 = objc_msgSend_topicSet(v3, v5, v6, v7, v8);
    v13 = objc_msgSend_globalTopicSetIdentifierForObjCGlobalTopicSetIdentifier_(DUObjCCompatibilityUtils, v10, v9, v11, v12);
    objc_msgSend_setTopicSet_(v4, v14, v13, v15, v16);

    v21 = objc_msgSend_topicIdentifier(v3, v17, v18, v19, v20);
    objc_msgSend_setTopicIdentifier_(v4, v22, v21, v23, v24);

    objc_msgSend_topicConfidence(v3, v25, v26, v27, v28);
    v30 = v29;

    objc_msgSend_setTopicConfidence_(v4, v31, v32, v33, v34, v30);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objCGlobalTopicSetIdentifierForGlobalTopicSetIdentifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DUGlobalTopicSetIdentifierObjC);
    v9 = objc_msgSend_topicSetName(v3, v5, v6, v7, v8);
    objc_msgSend_setTopicSetName_(v4, v10, v9, v11, v12);
    v17 = objc_msgSend_topicSetVersion(v3, v13, v14, v15, v16);

    objc_msgSend_setTopicSetVersion_(v4, v18, v17, v19, v20);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)globalTopicSetIdentifierForObjCGlobalTopicSetIdentifier:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding26DUGlobalTopicSetIdentifier);
    v9 = objc_msgSend_topicSetName(v3, v5, v6, v7, v8);
    objc_msgSend_setTopicSetName_(v4, v10, v9, v11, v12);
    v17 = objc_msgSend_topicSetVersion(v3, v13, v14, v15, v16);

    objc_msgSend_setTopicSetVersion_(v4, v18, v17, v19, v20);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objCStructuredEntityForStructuredEntity:(id)a3
{
  v125 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(DUStructuredEntityObjC);
    v9 = objc_msgSend_title(v3, v5, v6, v7, v8);
    objc_msgSend_setTitle_(v4, v10, v9, v11, v12);

    v17 = objc_msgSend_type(v3, v13, v14, v15, v16);
    objc_msgSend_setType_(v4, v18, v17, v19, v20);

    v21 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v26 = objc_msgSend_labels(v3, v22, v23, v24, v25, 0);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v120, v124, 16);
    if (v28)
    {
      v32 = v28;
      v33 = *v121;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v121 != v33)
          {
            objc_enumerationMutation(v26);
          }

          v35 = objc_msgSend_objCForStructuredExtractionLabel_(DUObjCCompatibilityUtils, v29, *(*(&v120 + 1) + 8 * i), v30, v31);
          objc_msgSend_addObject_(v21, v36, v35, v37, v38);
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v120, v124, 16);
      }

      while (v32);
    }

    objc_msgSend_setLabels_(v4, v39, v21, v40, v41);
    v46 = objc_msgSend_phoneNumber(v3, v42, v43, v44, v45);
    objc_msgSend_setPhoneNumber_(v4, v47, v46, v48, v49);

    v54 = objc_msgSend_email(v3, v50, v51, v52, v53);
    objc_msgSend_setEmail_(v4, v55, v54, v56, v57);

    v62 = objc_msgSend_url(v3, v58, v59, v60, v61);
    objc_msgSend_setUrl_(v4, v63, v62, v64, v65);

    v70 = objc_msgSend_addressComponents(v3, v66, v67, v68, v69);
    objc_msgSend_setAddressComponents_(v4, v71, v70, v72, v73);

    v78 = objc_msgSend_calendarEvent(v3, v74, v75, v76, v77);
    v82 = objc_msgSend_objCCalendarEventForCalendarEvent_(DUObjCCompatibilityUtils, v79, v78, v80, v81);
    objc_msgSend_setCalendarEvent_(v4, v83, v82, v84, v85);

    v90 = objc_msgSend_homeAutomationID(v3, v86, v87, v88, v89);
    objc_msgSend_setHomeAutomationID_(v4, v91, v90, v92, v93);

    v98 = objc_msgSend_displayInfo(v3, v94, v95, v96, v97);
    v102 = objc_msgSend_objCForDisplayInfo_(DUObjCCompatibilityUtils, v99, v98, v100, v101);
    objc_msgSend_setDisplayInfo_(v4, v103, v102, v104, v105);

    v110 = objc_msgSend_responseDebugInfo(v3, v106, v107, v108, v109);
    v114 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v111, v110, v112, v113);
    objc_msgSend_setResponseDebugInfo_(v4, v115, v114, v116, v117);
  }

  else
  {
    v4 = 0;
  }

  v118 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)structuredEntityForObjCStructuredEntity:(id)a3
{
  v125 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding18DUStructuredEntity);
    v9 = objc_msgSend_title(v3, v5, v6, v7, v8);
    objc_msgSend_setTitle_(v4, v10, v9, v11, v12);

    v17 = objc_msgSend_type(v3, v13, v14, v15, v16);
    objc_msgSend_setType_(v4, v18, v17, v19, v20);

    v21 = objc_opt_new();
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v26 = objc_msgSend_labels(v3, v22, v23, v24, v25, 0);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v120, v124, 16);
    if (v28)
    {
      v32 = v28;
      v33 = *v121;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v121 != v33)
          {
            objc_enumerationMutation(v26);
          }

          v35 = objc_msgSend_structuredExtractionLabelForObjC_(DUObjCCompatibilityUtils, v29, *(*(&v120 + 1) + 8 * i), v30, v31);
          objc_msgSend_addObject_(v21, v36, v35, v37, v38);
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v120, v124, 16);
      }

      while (v32);
    }

    objc_msgSend_setLabels_(v4, v39, v21, v40, v41);
    v46 = objc_msgSend_phoneNumber(v3, v42, v43, v44, v45);
    objc_msgSend_setPhoneNumber_(v4, v47, v46, v48, v49);

    v54 = objc_msgSend_email(v3, v50, v51, v52, v53);
    objc_msgSend_setEmail_(v4, v55, v54, v56, v57);

    v62 = objc_msgSend_url(v3, v58, v59, v60, v61);
    objc_msgSend_setUrl_(v4, v63, v62, v64, v65);

    v70 = objc_msgSend_addressComponents(v3, v66, v67, v68, v69);
    objc_msgSend_setAddressComponents_(v4, v71, v70, v72, v73);

    v78 = objc_msgSend_calendarEvent(v3, v74, v75, v76, v77);
    v82 = objc_msgSend_calendarEventForObjCCalendarEvent_(DUObjCCompatibilityUtils, v79, v78, v80, v81);
    objc_msgSend_setCalendarEvent_(v4, v83, v82, v84, v85);

    v90 = objc_msgSend_homeAutomationID(v3, v86, v87, v88, v89);
    objc_msgSend_setHomeAutomationID_(v4, v91, v90, v92, v93);

    v98 = objc_msgSend_displayInfo(v3, v94, v95, v96, v97);
    v102 = objc_msgSend_displayInfoForObjC_(DUObjCCompatibilityUtils, v99, v98, v100, v101);
    objc_msgSend_setDisplayInfo_(v4, v103, v102, v104, v105);

    v110 = objc_msgSend_responseDebugInfo(v3, v106, v107, v108, v109);
    v114 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, v111, v110, v112, v113);
    objc_msgSend_setResponseDebugInfo_(v4, v115, v114, v116, v117);
  }

  else
  {
    v4 = 0;
  }

  v118 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)objCForDisplayInfo:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DUDisplayInfoObjC);
    objc_msgSend_frameInWindow(v3, v5, v6, v7, v8);
    objc_msgSend_setFrameInWindow_(v4, v9, v10, v11, v12);
    objc_msgSend_absoluteOriginOnScreen(v3, v13, v14, v15, v16);
    objc_msgSend_setAbsoluteOriginOnScreen_(v4, v17, v18, v19, v20);
    v25 = objc_msgSend_isOnScreen(v3, v21, v22, v23, v24);

    objc_msgSend_setIsOnScreen_(v4, v26, v25, v27, v28);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)displayInfoForObjC:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding13DUDisplayInfo);
    objc_msgSend_frameInWindow(v3, v5, v6, v7, v8);
    objc_msgSend_setFrameInWindow_(v4, v9, v10, v11, v12);
    objc_msgSend_absoluteOriginOnScreen(v3, v13, v14, v15, v16);
    objc_msgSend_setAbsoluteOriginOnScreen_(v4, v17, v18, v19, v20);
    v25 = objc_msgSend_isOnScreen(v3, v21, v22, v23, v24);

    objc_msgSend_setIsOnScreen_(v4, v26, v25, v27, v28);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objCCalendarEventForCalendarEvent:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DUCalendarEventObjC);
    isAllDay = objc_msgSend_isAllDay(v3, v5, v6, v7, v8);
    objc_msgSend_setIsAllDay_(v4, v10, isAllDay, v11, v12);
    v17 = objc_msgSend_startDateComponents(v3, v13, v14, v15, v16);
    v22 = objc_msgSend_copy(v17, v18, v19, v20, v21);
    objc_msgSend_setStartDateComponents_(v4, v23, v22, v24, v25);

    v30 = objc_msgSend_startTimezone(v3, v26, v27, v28, v29);
    v35 = objc_msgSend_copy(v30, v31, v32, v33, v34);
    objc_msgSend_setStartTimezone_(v4, v36, v35, v37, v38);

    v43 = objc_msgSend_endDateComponents(v3, v39, v40, v41, v42);
    v48 = objc_msgSend_copy(v43, v44, v45, v46, v47);
    objc_msgSend_setEndDateComponents_(v4, v49, v48, v50, v51);

    v56 = objc_msgSend_endTimezone(v3, v52, v53, v54, v55);

    v61 = objc_msgSend_copy(v56, v57, v58, v59, v60);
    objc_msgSend_setEndTimezone_(v4, v62, v61, v63, v64);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objCForStructuredExtractionLabel:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DUStructuredEntityLabelObjC);
    v9 = objc_msgSend_labelName(v3, v5, v6, v7, v8);
    objc_msgSend_setLabelName_(v4, v10, v9, v11, v12);

    objc_msgSend_confidenceScore(v3, v13, v14, v15, v16);
    v18 = v17;

    objc_msgSend_setConfidenceScore_(v4, v19, v20, v21, v22, v18);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)structuredExtractionLabelForObjC:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding27DUStructuredExtractionLabel);
    v9 = objc_msgSend_labelName(v3, v5, v6, v7, v8);
    objc_msgSend_setLabelName_(v4, v10, v9, v11, v12);

    objc_msgSend_confidenceScore(v3, v13, v14, v15, v16);
    v18 = v17;

    objc_msgSend_setConfidenceScore_(v4, v19, v20, v21, v22, v18);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)calendarEventForObjCCalendarEvent:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding15DUCalendarEvent);
    isAllDay = objc_msgSend_isAllDay(v3, v5, v6, v7, v8);
    objc_msgSend_setIsAllDay_(v4, v10, isAllDay, v11, v12);
    v17 = objc_msgSend_startDateComponents(v3, v13, v14, v15, v16);
    v22 = objc_msgSend_copy(v17, v18, v19, v20, v21);
    objc_msgSend_setStartDateComponents_(v4, v23, v22, v24, v25);

    v30 = objc_msgSend_startTimezone(v3, v26, v27, v28, v29);
    v35 = objc_msgSend_copy(v30, v31, v32, v33, v34);
    objc_msgSend_setStartTimezone_(v4, v36, v35, v37, v38);

    v43 = objc_msgSend_endDateComponents(v3, v39, v40, v41, v42);
    v48 = objc_msgSend_copy(v43, v44, v45, v46, v47);
    objc_msgSend_setEndDateComponents_(v4, v49, v48, v50, v51);

    v56 = objc_msgSend_endTimezone(v3, v52, v53, v54, v55);

    v61 = objc_msgSend_copy(v56, v57, v58, v59, v60);
    objc_msgSend_setEndTimezone_(v4, v62, v61, v63, v64);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objcDebugInfoForDebugInfo:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(DUDebugInfoObjC);
    v9 = objc_msgSend_debugString(v3, v5, v6, v7, v8);

    objc_msgSend_setDebugString_(v4, v10, v9, v11, v12);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)debugInfoForObjCDebugInfo:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(_TtC21DocumentUnderstanding11DUDebugInfo);
    v9 = objc_msgSend_debugString(v3, v5, v6, v7, v8);

    objc_msgSend_setDebugString_(v4, v10, v9, v11, v12);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)objCUIElementForUIElement:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(DUDocumentUIElementObjC);
  v9 = objc_msgSend_text(v3, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(v9, v10, v11, v12, v13);
  objc_msgSend_setText_(v4, v15, v14, v16, v17);

  v22 = objc_msgSend_version(v3, v18, v19, v20, v21);
  v27 = objc_msgSend_copy(v22, v23, v24, v25, v26);
  objc_msgSend_setVersion_(v4, v28, v27, v29, v30);

  v35 = objc_msgSend_classDescriptor(v3, v31, v32, v33, v34);
  v40 = objc_msgSend_copy(v35, v36, v37, v38, v39);
  objc_msgSend_setClassDescriptor_(v4, v41, v40, v42, v43);

  objc_msgSend_fontSize(v3, v44, v45, v46, v47);
  objc_msgSend_setFontSize_(v4, v48, v49, v50, v51);
  v56 = objc_msgSend_superviewClassNames(v3, v52, v53, v54, v55);
  v61 = objc_msgSend_copy(v56, v57, v58, v59, v60);
  objc_msgSend_setSuperviewClassNames_(v4, v62, v61, v63, v64);

  objc_msgSend_frameInWindow(v3, v65, v66, v67, v68);
  objc_msgSend_setFrameInWindow_(v4, v69, v70, v71, v72);
  objc_msgSend_absoluteOriginOnScreen(v3, v73, v74, v75, v76);
  objc_msgSend_setAbsoluteOriginOnScreen_(v4, v77, v78, v79, v80);
  v85 = objc_msgSend_isOnScreen(v3, v81, v82, v83, v84);
  objc_msgSend_setIsOnScreen_(v4, v86, v85, v87, v88);
  isValidForContentExtraction = objc_msgSend_isValidForContentExtraction(v3, v89, v90, v91, v92);

  objc_msgSend_setIsValidForContentExtraction_(v4, v94, isValidForContentExtraction, v95, v96);

  return v4;
}

+ (id)uiElementForObjCUIElement:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_TtC21DocumentUnderstanding19DUDocumentUIElement);
  v9 = objc_msgSend_text(v3, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(v9, v10, v11, v12, v13);
  objc_msgSend_setText_(v4, v15, v14, v16, v17);

  v22 = objc_msgSend_version(v3, v18, v19, v20, v21);
  v27 = objc_msgSend_copy(v22, v23, v24, v25, v26);
  objc_msgSend_setVersion_(v4, v28, v27, v29, v30);

  v35 = objc_msgSend_classDescriptor(v3, v31, v32, v33, v34);
  v40 = objc_msgSend_copy(v35, v36, v37, v38, v39);
  objc_msgSend_setClassDescriptor_(v4, v41, v40, v42, v43);

  objc_msgSend_fontSize(v3, v44, v45, v46, v47);
  objc_msgSend_setFontSize_(v4, v48, v49, v50, v51);
  v56 = objc_msgSend_superviewClassNames(v3, v52, v53, v54, v55);
  v61 = objc_msgSend_copy(v56, v57, v58, v59, v60);
  objc_msgSend_setSuperviewClassNames_(v4, v62, v61, v63, v64);

  objc_msgSend_frameInWindow(v3, v65, v66, v67, v68);
  objc_msgSend_setFrameInWindow_(v4, v69, v70, v71, v72);
  objc_msgSend_absoluteOriginOnScreen(v3, v73, v74, v75, v76);
  objc_msgSend_setAbsoluteOriginOnScreen_(v4, v77, v78, v79, v80);
  v85 = objc_msgSend_isOnScreen(v3, v81, v82, v83, v84);
  objc_msgSend_setIsOnScreen_(v4, v86, v85, v87, v88);
  isValidForContentExtraction = objc_msgSend_isValidForContentExtraction(v3, v89, v90, v91, v92);

  objc_msgSend_setIsValidForContentExtraction_(v4, v94, isValidForContentExtraction, v95, v96);

  return v4;
}

+ (id)objCEmailDataForEmailData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(DUDocumentEmailDataObjC);
  v9 = objc_msgSend_subject(v3, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(v9, v10, v11, v12, v13);
  objc_msgSend_setSubject_(v4, v15, v14, v16, v17);

  v22 = objc_msgSend_senderName(v3, v18, v19, v20, v21);
  v27 = objc_msgSend_copy(v22, v23, v24, v25, v26);
  objc_msgSend_setSenderName_(v4, v28, v27, v29, v30);

  v35 = objc_msgSend_senderEmail(v3, v31, v32, v33, v34);
  v40 = objc_msgSend_copy(v35, v36, v37, v38, v39);
  objc_msgSend_setSenderEmail_(v4, v41, v40, v42, v43);

  v48 = objc_msgSend_senderDomain(v3, v44, v45, v46, v47);
  v53 = objc_msgSend_copy(v48, v49, v50, v51, v52);
  objc_msgSend_setSenderDomain_(v4, v54, v53, v55, v56);

  v61 = objc_msgSend_recipientNames(v3, v57, v58, v59, v60);
  v66 = objc_msgSend_copy(v61, v62, v63, v64, v65);
  objc_msgSend_setRecipientNames_(v4, v67, v66, v68, v69);

  v74 = objc_msgSend_recipientEmails(v3, v70, v71, v72, v73);
  v79 = objc_msgSend_copy(v74, v75, v76, v77, v78);
  objc_msgSend_setRecipientEmails_(v4, v80, v79, v81, v82);

  v87 = objc_msgSend_ccNames(v3, v83, v84, v85, v86);
  v92 = objc_msgSend_copy(v87, v88, v89, v90, v91);
  objc_msgSend_setCcNames_(v4, v93, v92, v94, v95);

  v100 = objc_msgSend_ccEmails(v3, v96, v97, v98, v99);
  v105 = objc_msgSend_copy(v100, v101, v102, v103, v104);
  objc_msgSend_setCcEmails_(v4, v106, v105, v107, v108);

  v113 = objc_msgSend_bccNames(v3, v109, v110, v111, v112);
  v118 = objc_msgSend_copy(v113, v114, v115, v116, v117);
  objc_msgSend_setBccNames_(v4, v119, v118, v120, v121);

  v126 = objc_msgSend_bccEmails(v3, v122, v123, v124, v125);
  v131 = objc_msgSend_copy(v126, v127, v128, v129, v130);
  objc_msgSend_setBccEmails_(v4, v132, v131, v133, v134);

  v139 = objc_msgSend_dateReceived(v3, v135, v136, v137, v138);
  v144 = objc_msgSend_copy(v139, v140, v141, v142, v143);
  objc_msgSend_setDateReceived_(v4, v145, v144, v146, v147);

  v152 = objc_msgSend_headers(v3, v148, v149, v150, v151);
  v157 = objc_msgSend_copy(v152, v153, v154, v155, v156);
  objc_msgSend_setHeaders_(v4, v158, v157, v159, v160);

  v165 = objc_msgSend_text(v3, v161, v162, v163, v164);

  v170 = objc_msgSend_copy(v165, v166, v167, v168, v169);
  objc_msgSend_setText_(v4, v171, v170, v172, v173);

  return v4;
}

+ (id)emailDataForObjCEmailData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_TtC21DocumentUnderstanding19DUDocumentEmailData);
  v9 = objc_msgSend_subject(v3, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(v9, v10, v11, v12, v13);
  objc_msgSend_setSubject_(v4, v15, v14, v16, v17);

  v22 = objc_msgSend_senderName(v3, v18, v19, v20, v21);
  v27 = objc_msgSend_copy(v22, v23, v24, v25, v26);
  objc_msgSend_setSenderName_(v4, v28, v27, v29, v30);

  v35 = objc_msgSend_senderEmail(v3, v31, v32, v33, v34);
  v40 = objc_msgSend_copy(v35, v36, v37, v38, v39);
  objc_msgSend_setSenderEmail_(v4, v41, v40, v42, v43);

  v48 = objc_msgSend_senderDomain(v3, v44, v45, v46, v47);
  v53 = objc_msgSend_copy(v48, v49, v50, v51, v52);
  objc_msgSend_setSenderDomain_(v4, v54, v53, v55, v56);

  v61 = objc_msgSend_recipientNames(v3, v57, v58, v59, v60);
  v66 = objc_msgSend_copy(v61, v62, v63, v64, v65);
  objc_msgSend_setRecipientNames_(v4, v67, v66, v68, v69);

  v74 = objc_msgSend_recipientEmails(v3, v70, v71, v72, v73);
  v79 = objc_msgSend_copy(v74, v75, v76, v77, v78);
  objc_msgSend_setRecipientEmails_(v4, v80, v79, v81, v82);

  v87 = objc_msgSend_ccNames(v3, v83, v84, v85, v86);
  v92 = objc_msgSend_copy(v87, v88, v89, v90, v91);
  objc_msgSend_setCcNames_(v4, v93, v92, v94, v95);

  v100 = objc_msgSend_ccEmails(v3, v96, v97, v98, v99);
  v105 = objc_msgSend_copy(v100, v101, v102, v103, v104);
  objc_msgSend_setCcEmails_(v4, v106, v105, v107, v108);

  v113 = objc_msgSend_bccNames(v3, v109, v110, v111, v112);
  v118 = objc_msgSend_copy(v113, v114, v115, v116, v117);
  objc_msgSend_setBccNames_(v4, v119, v118, v120, v121);

  v126 = objc_msgSend_bccEmails(v3, v122, v123, v124, v125);
  v131 = objc_msgSend_copy(v126, v127, v128, v129, v130);
  objc_msgSend_setBccEmails_(v4, v132, v131, v133, v134);

  v139 = objc_msgSend_dateReceived(v3, v135, v136, v137, v138);
  v144 = objc_msgSend_copy(v139, v140, v141, v142, v143);
  objc_msgSend_setDateReceived_(v4, v145, v144, v146, v147);

  v152 = objc_msgSend_headers(v3, v148, v149, v150, v151);
  v157 = objc_msgSend_copy(v152, v153, v154, v155, v156);
  objc_msgSend_setHeaders_(v4, v158, v157, v159, v160);

  v165 = objc_msgSend_text(v3, v161, v162, v163, v164);

  v170 = objc_msgSend_copy(v165, v166, v167, v168, v169);
  objc_msgSend_setText_(v4, v171, v170, v172, v173);

  return v4;
}

+ (id)objCHTMLDataForHTMLData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DUDocumentHTMLDataObjC);
  v10 = objc_msgSend_documentEmailData(v4, v6, v7, v8, v9);
  v14 = objc_msgSend_objCEmailDataForEmailData_(a1, v11, v10, v12, v13);

  v19 = objc_msgSend_htmlString(v4, v15, v16, v17, v18);

  v24 = objc_msgSend_copy(v19, v20, v21, v22, v23);
  objc_msgSend_setHtmlString_(v5, v25, v24, v26, v27);

  objc_msgSend_setDocumentEmailData_(v5, v28, v14, v29, v30);

  return v5;
}

+ (id)htmlDataForObjCHTMLData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_TtC21DocumentUnderstanding18DUDocumentHTMLData);
  v5 = objc_alloc_init(_TtC21DocumentUnderstanding19DUDocumentEmailData);
  v10 = objc_msgSend_htmlString(v3, v6, v7, v8, v9);
  v15 = objc_msgSend_copy(v10, v11, v12, v13, v14);
  objc_msgSend_setHtmlString_(v4, v16, v15, v17, v18);

  v23 = objc_msgSend_documentEmailData(v3, v19, v20, v21, v22);
  v28 = objc_msgSend_subject(v23, v24, v25, v26, v27);
  v33 = objc_msgSend_copy(v28, v29, v30, v31, v32);
  objc_msgSend_setSubject_(v5, v34, v33, v35, v36);

  v41 = objc_msgSend_documentEmailData(v3, v37, v38, v39, v40);
  v46 = objc_msgSend_senderName(v41, v42, v43, v44, v45);
  v51 = objc_msgSend_copy(v46, v47, v48, v49, v50);
  objc_msgSend_setSenderName_(v5, v52, v51, v53, v54);

  v59 = objc_msgSend_documentEmailData(v3, v55, v56, v57, v58);
  v64 = objc_msgSend_senderEmail(v59, v60, v61, v62, v63);
  v69 = objc_msgSend_copy(v64, v65, v66, v67, v68);
  objc_msgSend_setSenderEmail_(v5, v70, v69, v71, v72);

  v77 = objc_msgSend_documentEmailData(v3, v73, v74, v75, v76);
  v82 = objc_msgSend_senderDomain(v77, v78, v79, v80, v81);
  v87 = objc_msgSend_copy(v82, v83, v84, v85, v86);
  objc_msgSend_setSenderDomain_(v5, v88, v87, v89, v90);

  v95 = objc_msgSend_documentEmailData(v3, v91, v92, v93, v94);
  v100 = objc_msgSend_recipientNames(v95, v96, v97, v98, v99);
  v105 = objc_msgSend_copy(v100, v101, v102, v103, v104);
  objc_msgSend_setRecipientNames_(v5, v106, v105, v107, v108);

  v113 = objc_msgSend_documentEmailData(v3, v109, v110, v111, v112);
  v118 = objc_msgSend_recipientEmails(v113, v114, v115, v116, v117);
  v123 = objc_msgSend_copy(v118, v119, v120, v121, v122);
  objc_msgSend_setRecipientEmails_(v5, v124, v123, v125, v126);

  v131 = objc_msgSend_documentEmailData(v3, v127, v128, v129, v130);
  v136 = objc_msgSend_ccNames(v131, v132, v133, v134, v135);
  v141 = objc_msgSend_copy(v136, v137, v138, v139, v140);
  objc_msgSend_setCcNames_(v5, v142, v141, v143, v144);

  v149 = objc_msgSend_documentEmailData(v3, v145, v146, v147, v148);
  v154 = objc_msgSend_ccEmails(v149, v150, v151, v152, v153);
  v159 = objc_msgSend_copy(v154, v155, v156, v157, v158);
  objc_msgSend_setCcEmails_(v5, v160, v159, v161, v162);

  v167 = objc_msgSend_documentEmailData(v3, v163, v164, v165, v166);
  v172 = objc_msgSend_bccNames(v167, v168, v169, v170, v171);
  v177 = objc_msgSend_copy(v172, v173, v174, v175, v176);
  objc_msgSend_setBccNames_(v5, v178, v177, v179, v180);

  v185 = objc_msgSend_documentEmailData(v3, v181, v182, v183, v184);
  v190 = objc_msgSend_bccEmails(v185, v186, v187, v188, v189);
  v195 = objc_msgSend_copy(v190, v191, v192, v193, v194);
  objc_msgSend_setBccEmails_(v5, v196, v195, v197, v198);

  v203 = objc_msgSend_documentEmailData(v3, v199, v200, v201, v202);
  v208 = objc_msgSend_dateReceived(v203, v204, v205, v206, v207);
  v213 = objc_msgSend_copy(v208, v209, v210, v211, v212);
  objc_msgSend_setDateReceived_(v5, v214, v213, v215, v216);

  v221 = objc_msgSend_documentEmailData(v3, v217, v218, v219, v220);
  v226 = objc_msgSend_headers(v221, v222, v223, v224, v225);
  v231 = objc_msgSend_copy(v226, v227, v228, v229, v230);
  objc_msgSend_setHeaders_(v5, v232, v231, v233, v234);

  v239 = objc_msgSend_documentEmailData(v3, v235, v236, v237, v238);

  v244 = objc_msgSend_text(v239, v240, v241, v242, v243);
  v249 = objc_msgSend_copy(v244, v245, v246, v247, v248);
  objc_msgSend_setText_(v5, v250, v249, v251, v252);

  v257 = objc_msgSend_copy(v5, v253, v254, v255, v256);
  objc_msgSend_setDocumentEmailData_(v4, v258, v257, v259, v260);

  return v4;
}

+ (id)documentForObjCDocument:(id)a3
{
  v245 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(_TtC21DocumentUnderstanding13DURawDocument);
  v9 = objc_msgSend_headline(v3, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(v9, v10, v11, v12, v13);
  objc_msgSend_setHeadline_(v4, v15, v14, v16, v17);

  v22 = objc_msgSend_subHeadline(v3, v18, v19, v20, v21);
  v27 = objc_msgSend_copy(v22, v23, v24, v25, v26);
  objc_msgSend_setSubHeadline_(v4, v28, v27, v29, v30);

  v35 = objc_msgSend_version(v3, v31, v32, v33, v34);
  v40 = objc_msgSend_copy(v35, v36, v37, v38, v39);
  objc_msgSend_setVersion_(v4, v41, v40, v42, v43);

  v48 = objc_msgSend_creator(v3, v44, v45, v46, v47);
  v53 = objc_msgSend_copy(v48, v49, v50, v51, v52);
  objc_msgSend_setCreator_(v4, v54, v53, v55, v56);

  v61 = objc_msgSend_abstract(v3, v57, v58, v59, v60);
  v66 = objc_msgSend_copy(v61, v62, v63, v64, v65);
  objc_msgSend_setAbstract_(v4, v67, v66, v68, v69);

  v74 = objc_msgSend_comment(v3, v70, v71, v72, v73);
  v79 = objc_msgSend_copy(v74, v75, v76, v77, v78);
  objc_msgSend_setComment_(v4, v80, v79, v81, v82);

  v87 = objc_msgSend_text(v3, v83, v84, v85, v86);
  v92 = objc_msgSend_copy(v87, v88, v89, v90, v91);
  objc_msgSend_setText_(v4, v93, v92, v94, v95);

  v100 = objc_msgSend_inLanguage(v3, v96, v97, v98, v99);
  v105 = objc_msgSend_copy(v100, v101, v102, v103, v104);
  objc_msgSend_setInLanguage_(v4, v106, v105, v107, v108);

  v113 = objc_msgSend_keywords(v3, v109, v110, v111, v112);
  v118 = objc_msgSend_copy(v113, v114, v115, v116, v117);
  objc_msgSend_setKeywords_(v4, v119, v118, v120, v121);

  v126 = objc_msgSend_identifier(v3, v122, v123, v124, v125);
  v131 = objc_msgSend_copy(v126, v127, v128, v129, v130);
  objc_msgSend_setIdentifier_(v4, v132, v131, v133, v134);

  v139 = objc_msgSend_url(v3, v135, v136, v137, v138);
  v144 = objc_msgSend_copy(v139, v140, v141, v142, v143);
  objc_msgSend_setUrl_(v4, v145, v144, v146, v147);

  v152 = objc_msgSend_thumbnailUrl(v3, v148, v149, v150, v151);
  v157 = objc_msgSend_copy(v152, v153, v154, v155, v156);
  objc_msgSend_setThumbnailUrl_(v4, v158, v157, v159, v160);

  v165 = objc_msgSend_significantLink(v3, v161, v162, v163, v164);
  v170 = objc_msgSend_copy(v165, v166, v167, v168, v169);
  objc_msgSend_setSignificantLink_(v4, v171, v170, v172, v173);

  v178 = objc_msgSend_dateCreated(v3, v174, v175, v176, v177);
  objc_msgSend_setDateCreated_(v4, v179, v178, v180, v181);

  v186 = objc_msgSend_dateModified(v3, v182, v183, v184, v185);
  objc_msgSend_setDateModified_(v4, v187, v186, v188, v189);

  v194 = objc_msgSend_documentHTMLData(v3, v190, v191, v192, v193);
  v198 = objc_msgSend_htmlDataForObjCHTMLData_(DUObjCCompatibilityUtils, v195, v194, v196, v197);

  objc_msgSend_setDocumentHTMLData_(v4, v199, v198, v200, v201);
  v206 = objc_msgSend_documentUIElements(v3, v202, v203, v204, v205);
  v207 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v208 = v206;
  v210 = objc_msgSend_countByEnumeratingWithState_objects_count_(v208, v209, &v240, v244, 16);
  if (v210)
  {
    v214 = v210;
    v215 = *v241;
    do
    {
      for (i = 0; i != v214; ++i)
      {
        if (*v241 != v215)
        {
          objc_enumerationMutation(v208);
        }

        v220 = objc_msgSend_uiElementForObjCUIElement_(DUObjCCompatibilityUtils, v211, *(*(&v240 + 1) + 8 * i), v212, v213, v240);
        if (v220)
        {
          objc_msgSend_addObject_(v207, v217, v220, v218, v219);
        }
      }

      v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(v208, v211, &v240, v244, 16);
    }

    while (v214);
  }

  v225 = objc_msgSend_copy(v207, v221, v222, v223, v224);
  objc_msgSend_setDocumentUIElements_(v4, v226, v225, v227, v228);

  v229 = [_TtC21DocumentUnderstanding10DUDocument alloc];
  v234 = objc_msgSend_noMaxLength(_TtC21DocumentUnderstanding17DUDocumentGlobals, v230, v231, v232, v233);
  v237 = objc_msgSend_initWithRawDocument_maxLength_(v229, v235, v4, v234, v236);

  v238 = *MEMORY[0x277D85DE8];

  return v237;
}

+ (id)strategyForObjCStrategy:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_contentType(v3, v4, v5, v6, v7);
  v12 = objc_msgSend_typeForObjCType_(DUObjCCompatibilityUtils, v9, v8, v10, v11);

  v13 = [_TtC21DocumentUnderstanding17DURequestStrategy alloc];
  v18 = objc_msgSend_modelIdentifier(v3, v14, v15, v16, v17);
  v23 = objc_msgSend_preprocess(v3, v19, v20, v21, v22);

  v25 = objc_msgSend_initWithContentType_preferredModelIdentifier_preprocess_(v13, v24, v12, v18, v23);

  return v25;
}

+ (id)typeForObjCType:(id)a3
{
  v5 = objc_msgSend_options(a3, a2, a3, v3, v4);
  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7, v8, v9);
  if (v5)
  {
    v25 = objc_msgSend_languageTag(_TtC21DocumentUnderstanding20DURequestContentType, v10, v11, v12, v13);
    objc_msgSend_addObject_(v14, v26, v25, v27, v28);

    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v29 = objc_msgSend_wikiDataTopic(_TtC21DocumentUnderstanding20DURequestContentType, v10, v11, v12, v13);
  objc_msgSend_addObject_(v14, v30, v29, v31, v32);

  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v33 = objc_msgSend_date(_TtC21DocumentUnderstanding20DURequestContentType, v10, v11, v12, v13);
  objc_msgSend_addObject_(v14, v34, v33, v35, v36);

  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v37 = objc_msgSend_address(_TtC21DocumentUnderstanding20DURequestContentType, v10, v11, v12, v13);
  objc_msgSend_addObject_(v14, v38, v37, v39, v40);

  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v41 = objc_msgSend_link(_TtC21DocumentUnderstanding20DURequestContentType, v10, v11, v12, v13);
  objc_msgSend_addObject_(v14, v42, v41, v43, v44);

  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v45 = objc_msgSend_phoneNumber(_TtC21DocumentUnderstanding20DURequestContentType, v10, v11, v12, v13);
  objc_msgSend_addObject_(v14, v46, v45, v47, v48);

  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v49 = objc_msgSend_foundInEvent(_TtC21DocumentUnderstanding20DURequestContentType, v10, v11, v12, v13);
  objc_msgSend_addObject_(v14, v50, v49, v51, v52);

  if ((v5 & 0x1000) != 0)
  {
LABEL_9:
    v15 = objc_msgSend_foundInEventClassification(_TtC21DocumentUnderstanding20DURequestContentType, v10, v11, v12, v13);
    objc_msgSend_addObject_(v14, v16, v15, v17, v18);
  }

LABEL_10:
  v19 = [_TtC21DocumentUnderstanding20DURequestContentType alloc];
  v23 = objc_msgSend_initWithAbilitiesToUnion_(v19, v20, v14, v21, v22);

  return v23;
}

+ (id)clientForObjCClient:(id)a3
{
  v3 = a3;
  v4 = [_TtC21DocumentUnderstanding8DUClient alloc];
  v9 = objc_msgSend_identifier(v3, v5, v6, v7, v8);

  v13 = objc_msgSend_initWithIdentifier_(v4, v10, v9, v11, v12);

  return v13;
}

@end
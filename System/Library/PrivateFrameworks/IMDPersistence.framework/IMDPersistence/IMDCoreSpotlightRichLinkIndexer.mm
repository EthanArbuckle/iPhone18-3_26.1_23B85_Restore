@interface IMDCoreSpotlightRichLinkIndexer
+ (CSCustomAttributeKey)lpDescriptionCustomKey;
+ (CSCustomAttributeKey)lpHasRichMediaCustomKey;
+ (CSCustomAttributeKey)lpPluginPathsCustomKey;
+ (CSCustomAttributeKey)lpTitleCustomKey;
+ (IMDCoreSpotlightRichLinkIndexer)defaultIndexer;
+ (id)_indexerForClassName:(id)a3;
+ (id)indexerForMetadata:(id)a3;
+ (void)insertLinkType:(id)a3 toAttributes:(id)a4;
- (IMDCoreSpotlightRichLinkIndexer)initWithClass:(Class)a3 linkType:(id)a4 linkSubtype:(id)a5 prefix:(id)a6;
- (id)_cleanedUpURLFromTransformer:(id)a3;
- (id)_linkSubtypeForMetadata:(id)a3;
- (id)_linkTypeForMetadata:(id)a3;
- (id)_prefixFromMetadata:(id)a3;
- (id)_transformerForMetadata:(id)a3 originalURL:(id)a4;
- (void)_insertLinkName:(id)a3 prefix:(id)a4 toAttributes:(id)a5;
- (void)_insertLinkName:(id)a3 toAttributes:(id)a4;
- (void)_insertTypeInfoToSearchableAttributes:(id)a3 fromMetadata:(id)a4;
- (void)_mapPropertiesFromMetadata:(id)a3 toAttributes:(id)a4;
- (void)mapPropertiesFromMetadata:(id)a3 text:(id)a4 originalURL:(id)a5 attachmentPaths:(id)a6 toAttributes:(id)a7;
@end

@implementation IMDCoreSpotlightRichLinkIndexer

+ (IMDCoreSpotlightRichLinkIndexer)defaultIndexer
{
  if (qword_1EBA541F8 != -1)
  {
    sub_1B7CFA7FC();
  }

  v3 = qword_1EBA541F0;

  return v3;
}

+ (id)indexerForMetadata:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_specialization(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_specialization(v4, v8, v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v14 = objc_msgSend__indexerForClassName_(a1, v13, v12);

    if (v14 && (objc_msgSend_specialization(v4, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_opt_class(), v19 = objc_opt_class(), LOBYTE(v18) = objc_msgSend_isEqual_(v18, v20, v19), v17, (v18 & 1) != 0))
    {
      v21 = v14;
    }

    else
    {
      v21 = objc_msgSend_defaultIndexer(a1, v15, v16);
    }

    v22 = v21;
  }

  else
  {
    v22 = objc_msgSend_defaultIndexer(a1, v8, v9);
  }

  return v22;
}

+ (id)_indexerForClassName:(id)a3
{
  v3 = qword_1EBA54208;
  v5 = a3;
  if (v3 != -1)
  {
    sub_1B7CFA810();
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_1EBA54200, v4, v5);

  return v6;
}

- (IMDCoreSpotlightRichLinkIndexer)initWithClass:(Class)a3 linkType:(id)a4 linkSubtype:(id)a5 prefix:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = IMDCoreSpotlightRichLinkIndexer;
  v14 = [(IMDCoreSpotlightRichLinkIndexer *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_class, a3);
    v16 = NSStringFromClass(a3);
    specializationClassName = v15->_specializationClassName;
    v15->_specializationClassName = v16;

    objc_storeStrong(&v15->_linkType, a4);
    objc_storeStrong(&v15->_linkSubtype, a5);
    objc_storeStrong(&v15->_prefix, a6);
  }

  return v15;
}

+ (void)insertLinkType:(id)a3 toAttributes:(id)a4
{
  v37 = a3;
  v5 = a4;
  v8 = objc_msgSend_detectedEventTypes(v5, v6, v7);
  v11 = objc_msgSend_mutableCopy(v8, v9, v10);
  v13 = v11;
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v12, 1);
  }

  v15 = v14;

  objc_msgSend_addObject_(v15, v16, v37);
  v19 = objc_msgSend_copy(v15, v17, v18);
  objc_msgSend_setDetectedEventTypes_(v5, v20, v19);

  v23 = objc_msgSend_mediaTypes(v5, v21, v22);
  v26 = objc_msgSend_mutableCopy(v23, v24, v25);
  v28 = v26;
  if (v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v27, 1);
  }

  v30 = v29;

  objc_msgSend_addObject_(v30, v31, v37);
  v34 = objc_msgSend_copy(v30, v32, v33);
  objc_msgSend_setMediaTypes_(v5, v35, v34);

  objc_msgSend_setLinkType_(v5, v36, v37);
}

- (id)_linkTypeForMetadata:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_linkType(self, v5, v6);
  v10 = objc_msgSend_length(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_linkType(self, v11, v12);
  }

  else
  {
    v14 = objc_msgSend_infoForLinkMetadata_(_IMDOpenGraphSpotlightMappingInfo, v11, v4);
    v17 = objc_msgSend_linkType(v14, v15, v16);
    v20 = objc_msgSend_length(v17, v18, v19);

    if (v20)
    {
      v23 = objc_msgSend_linkType(v14, v21, v22);
    }

    else
    {
      v23 = *MEMORY[0x1E6963B38];
    }

    v13 = v23;
  }

  return v13;
}

- (id)_linkSubtypeForMetadata:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_linkSubtype(self, v5, v6);
  v9 = v7;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v11 = objc_msgSend_infoForLinkMetadata_(_IMDOpenGraphSpotlightMappingInfo, v8, v4);
    v10 = objc_msgSend_linkSubType(v11, v12, v13);
  }

  return v10;
}

- (id)_prefixFromMetadata:(id)a3
{
  v3 = objc_msgSend_infoForLinkMetadata_(_IMDOpenGraphSpotlightMappingInfo, a2, a3);
  v6 = objc_msgSend_prefix(v3, v4, v5);

  return v6;
}

- (void)_insertTypeInfoToSearchableAttributes:(id)a3 fromMetadata:(id)a4
{
  v12 = a3;
  v6 = a4;
  v9 = objc_msgSend__linkTypeForMetadata_(self, v7, v6);
  if (v9)
  {
    objc_msgSend_insertLinkType_toAttributes_(IMDCoreSpotlightRichLinkIndexer, v8, v9, v12);
  }

  v11 = objc_msgSend__linkSubtypeForMetadata_(self, v8, v6);
  if (v11)
  {
    objc_msgSend_setLinkSubType_(v12, v10, v11);
  }
}

- (id)_transformerForMetadata:(id)a3 originalURL:(id)a4
{
  v5 = a3;
  v8 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v9 = qword_1EBA542E0;
  v31 = qword_1EBA542E0;
  if (!qword_1EBA542E0)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1B7BC0480;
    v27[3] = &unk_1E7CB6EA8;
    v27[4] = &v28;
    sub_1B7BC0480(v27, v6, v7);
    v9 = v29[3];
  }

  v10 = v9;
  _Block_object_dispose(&v28, 8);
  v11 = objc_alloc_init(v9);
  objc_msgSend_setMetadata_(v11, v12, v5);
  objc_msgSend_setComplete_(v11, v13, 1);
  objc_msgSend_setPreferredSizeClass_(v11, v14, 5);
  v17 = objc_msgSend_URL(v5, v15, v16);
  v20 = v17;
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v22 = objc_msgSend_originalURL(v5, v18, v19);
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v8;
    }

    v21 = v24;
  }

  objc_msgSend_setURL_(v11, v25, v21);

  return v11;
}

- (id)_cleanedUpURLFromTransformer:(id)a3
{
  v3 = objc_msgSend_originalURL(a3, a2, a3);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_scheme(v3, v4, v5);
    v10 = objc_msgSend_length(v7, v8, v9);

    if (!v10)
    {
      v13 = MEMORY[0x1E695DFF8];
      v14 = objc_msgSend_absoluteString(v6, v11, v12);
      v16 = objc_msgSend_stringByAppendingString_(@"https://", v15, v14);
      v18 = objc_msgSend_URLWithString_(v13, v17, v16);

      v6 = v18;
    }
  }

  return v6;
}

- (void)mapPropertiesFromMetadata:(id)a3 text:(id)a4 originalURL:(id)a5 attachmentPaths:(id)a6 toAttributes:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  objc_msgSend__insertTypeInfoToSearchableAttributes_fromMetadata_(self, v17, v16, v12);
  v21 = objc_msgSend_summary(v12, v18, v19);
  if (v21)
  {
    objc_msgSend_setTextContent_(v16, v20, v21);
    goto LABEL_10;
  }

  if (v13)
  {
    objc_msgSend_setTextContent_(v16, v20, v13);
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_10;
    }

    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Link metadata summary was nil, using payload text as text content.", buf, 2u);
    }
  }

  else
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA824(v24);
    }
  }

LABEL_10:
  v25 = objc_msgSend_lpDescriptionCustomKey(IMDCoreSpotlightRichLinkIndexer, v22, v23);
  v50 = v13;
  objc_msgSend_setValue_forCustomKey_(v16, v26, v13, v25);

  objc_msgSend_setMessageType_(v16, v27, @"lnk");
  v28 = v14;
  v30 = objc_msgSend__transformerForMetadata_originalURL_(self, v29, v12, v14);
  if (objc_msgSend_hasMedia(v30, v31, v32))
  {
    v35 = objc_msgSend_lpHasRichMediaCustomKey(IMDCoreSpotlightRichLinkIndexer, v33, v34);
    objc_msgSend_setValue_forCustomKey_(v16, v36, MEMORY[0x1E695E118], v35);

    v39 = objc_msgSend_lpPluginPathsCustomKey(IMDCoreSpotlightRichLinkIndexer, v37, v38);
    objc_msgSend_setValue_forCustomKey_(v16, v40, v15, v39);
  }

  v41 = v15;
  v44 = objc_msgSend__cleanedUpURLFromTransformer_(self, v33, v30);
  if (v44)
  {
    objc_msgSend_setURL_(v16, v42, v44);
  }

  v47 = objc_msgSend_title(v12, v42, v43);
  if (v47)
  {
    v48 = objc_msgSend_lpTitleCustomKey(IMDCoreSpotlightRichLinkIndexer, v45, v46);
    objc_msgSend_setValue_forCustomKey_(v16, v49, v47, v48);
  }

  if (v12)
  {
    objc_msgSend__mapPropertiesFromMetadata_toAttributes_(self, v45, v12, v16);
  }
}

- (void)_mapPropertiesFromMetadata:(id)a3 toAttributes:(id)a4
{
  v24 = a3;
  v6 = a4;
  objc_msgSend_setMessageType_(v6, v7, @"lnk");
  v10 = objc_msgSend_title(v24, v8, v9);
  objc_msgSend_setUrlDescription_(v6, v11, v10);

  v14 = objc_msgSend_summary(v24, v12, v13);
  objc_msgSend_setContentDescription_(v6, v15, v14);

  v20 = objc_msgSend_title(v24, v16, v17);
  v21 = v20;
  if (!v20)
  {
    v21 = objc_msgSend_siteName(v24, v18, v19);
  }

  v22 = objc_msgSend__prefixFromMetadata_(self, v18, v24);
  objc_msgSend__insertLinkName_prefix_toAttributes_(self, v23, v21, v22, v6);

  if (!v20)
  {
  }
}

- (void)_insertLinkName:(id)a3 prefix:(id)a4 toAttributes:(id)a5
{
  v16 = a3;
  v7 = a4;
  v8 = a5;
  if (objc_msgSend_length(v16, v9, v10))
  {
    if (objc_msgSend_length(v7, v11, v12))
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"%@ : %@", v7, v16);

      v15 = v14;
    }

    else
    {
      v15 = v16;
    }

    v16 = v15;
    objc_msgSend_setLinkName_(v8, v13, v15);
  }
}

- (void)_insertLinkName:(id)a3 toAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_prefix(self, v8, v9);
  objc_msgSend__insertLinkName_prefix_toAttributes_(self, v10, v7, v11, v6);
}

+ (CSCustomAttributeKey)lpTitleCustomKey
{
  if (qword_1EBA54218 != -1)
  {
    sub_1B7CFA868();
  }

  v3 = qword_1EBA54210;

  return v3;
}

+ (CSCustomAttributeKey)lpHasRichMediaCustomKey
{
  if (qword_1EBA54228 != -1)
  {
    sub_1B7CFA87C();
  }

  v3 = qword_1EBA54220;

  return v3;
}

+ (CSCustomAttributeKey)lpPluginPathsCustomKey
{
  if (qword_1EBA54238 != -1)
  {
    sub_1B7CFA890();
  }

  v3 = qword_1EBA54230;

  return v3;
}

+ (CSCustomAttributeKey)lpDescriptionCustomKey
{
  if (qword_1EBA54248 != -1)
  {
    sub_1B7CFA8A4();
  }

  v3 = qword_1EBA54240;

  return v3;
}

@end
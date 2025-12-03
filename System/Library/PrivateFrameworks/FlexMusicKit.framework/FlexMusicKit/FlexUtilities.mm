@interface FlexUtilities
+ (id)_decodeItem:(id)item asClass:(Class)class;
+ (id)_songFormatForBundleAtPath:(id)path;
+ (id)backendForSongBundleURL:(id)l;
+ (id)decodeItemsInArray:(id)array asClass:(Class)class;
+ (id)decodeItemsInDict:(id)dict asClass:(Class)class;
+ (id)encodeItemsInArray:(id)array;
+ (id)encodeItemsInDict:(id)dict;
+ (id)pathToBundledResourceWithName:(id)name;
+ (id)songsFoundInDeepScanOfDirectory:(id)directory;
@end

@implementation FlexUtilities

+ (id)_decodeItem:(id)item asClass:(Class)class
{
  itemCopy = item;
  if (itemCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_msgSend_allKeys(itemCopy, v6, v7, v8, v9);
      v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

      if (v15)
      {
        v16 = [class alloc];
        v20 = objc_msgSend_initWithDictionary_(v16, v17, itemCopy, v18, v19);
LABEL_12:
        v25 = v20;
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_decodeItemsInDict_asClass_(FlexUtilities, v21, itemCopy, class, v22);
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_decodeItemsInArray_asClass_(FlexUtilities, v23, itemCopy, class, v24);
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v20 = itemCopy;
        goto LABEL_12;
      }
    }
  }

  v25 = 0;
LABEL_14:

  return v25;
}

+ (id)decodeItemsInArray:(id)array asClass:(Class)class
{
  v39 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (arrayCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7, v8, v9);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = arrayCopy;
    v11 = arrayCopy;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v34, v38, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v22 = objc_msgSend__decodeItem_asClass_(FlexUtilities, v14, *(*(&v34 + 1) + 8 * i), class, v15);
          if (v22)
          {
            objc_msgSend_addObject_(v10, v19, v22, v20, v21);
          }

          else
          {
            v23 = objc_opt_new();
            objc_msgSend_addObject_(v10, v24, v23, v25, v26);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v34, v38, 16);
      }

      while (v16);
    }

    v30 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v27, v10, v28, v29);

    arrayCopy = v33;
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)decodeItemsInDict:(id)dict asClass:(Class)class
{
  v42 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  if (dictCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v36 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = objc_msgSend_allKeys(dictCopy, v10, v11, v12, v13);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v37, v41, 16);
    if (v16)
    {
      v20 = v16;
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v37 + 1) + 8 * i);
          v24 = objc_msgSend_objectForKey_(dictCopy, v17, v23, v18, v19);
          v29 = objc_msgSend__decodeItem_asClass_(FlexUtilities, v25, v24, class, v26);
          if (v29)
          {
            objc_msgSend_setObject_forKey_(v36, v27, v29, v23, v28);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v37, v41, 16);
      }

      while (v20);
    }

    v33 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v30, v36, v31, v32);
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)encodeItemsInArray:(id)array
{
  v53 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = arrayCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v48, v52, 16);
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = v11;
  v13 = *v49;
  do
  {
    v14 = 0;
    do
    {
      if (*v49 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v48 + 1) + 8 * v14);
      if (objc_opt_respondsToSelector())
      {
        v20 = objc_msgSend_encodeAsDictionary(v15, v16, v17, v18, v19);
LABEL_12:
        v30 = v20;
        if (v20)
        {
          objc_msgSend_addObject_(v8, v21, v20, v22, v23);
        }

        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_encodeItemsInDict_(FlexUtilities, v24, v15, v25, v26);
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_msgSend_encodeItemsInArray_(FlexUtilities, v27, v15, v28, v29);
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_addObject_(v8, v32, MEMORY[0x277CBEC10], v33, v34, v48);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          objc_msgSend_addObject_(v8, v31, v15, v35, v36, v48);
        }
      }

LABEL_15:
      ++v14;
    }

    while (v12 != v14);
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v31, &v48, v52, 16);
    v12 = v37;
  }

  while (v37);
LABEL_24:

  if (objc_msgSend_count(v8, v38, v39, v40, v41))
  {
    v45 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v42, v8, v43, v44);
  }

  else
  {
    v45 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

+ (id)encodeItemsInDict:(id)dict
{
  v56 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5, v6, v7);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = objc_msgSend_allKeys(dictCopy, v9, v10, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v51, v55, 16);
  if (!v15)
  {
    goto LABEL_21;
  }

  v19 = v15;
  v20 = *v52;
  do
  {
    v21 = 0;
    do
    {
      if (*v52 != v20)
      {
        objc_enumerationMutation(v13);
      }

      v22 = *(*(&v51 + 1) + 8 * v21);
      v23 = objc_msgSend_objectForKey_(dictCopy, v16, v22, v17, v18);
      if (objc_opt_respondsToSelector())
      {
        v28 = objc_msgSend_encodeAsDictionary(v23, v24, v25, v26, v27);
LABEL_12:
        v37 = v28;
        if (v28)
        {
          objc_msgSend_setObject_forKey_(v8, v29, v28, v22, v30);
        }

        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = objc_msgSend_encodeItemsInDict_(FlexUtilities, v31, v23, v32, v33);
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = objc_msgSend_encodeItemsInArray_(FlexUtilities, v34, v23, v35, v36);
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        objc_msgSend_setObject_forKey_(v8, v38, v23, v22, v39);
      }

LABEL_15:

      ++v21;
    }

    while (v19 != v21);
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v51, v55, 16);
    v19 = v40;
  }

  while (v40);
LABEL_21:

  if (objc_msgSend_count(v8, v41, v42, v43, v44))
  {
    v48 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v45, v8, v46, v47);
  }

  else
  {
    v48 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

+ (id)pathToBundledResourceWithName:(id)name
{
  nameCopy = name;
  v4 = MEMORY[0x277CCA8D8];
  v5 = objc_opt_class();
  v9 = objc_msgSend_bundleForClass_(v4, v6, v5, v7, v8);
  v12 = objc_msgSend_pathForResource_ofType_(v9, v10, nameCopy, 0, v11);

  if (!v12)
  {
    v17 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v13, v14, v15, v16);
    v12 = objc_msgSend_pathForResource_ofType_(v17, v18, nameCopy, 0, v19);

    if (!v12)
    {
      v23 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], v20, @"com.apple.Memories", v21, v22);
      v12 = objc_msgSend_pathForResource_ofType_(v23, v24, nameCopy, 0, v25);

      if (!v12)
      {
        v26 = MEMORY[0x277CCA8D8];
        v27 = objc_opt_class();
        v31 = objc_msgSend_bundleForClass_(v26, v28, v27, v29, v30);
        v35 = objc_msgSend_stringByAppendingPathComponent_(@"Assets", v32, nameCopy, v33, v34);
        v12 = objc_msgSend_pathForResource_ofType_(v31, v36, v35, 0, v37);
      }
    }
  }

  return v12;
}

+ (id)songsFoundInDeepScanOfDirectory:(id)directory
{
  v56 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5, v6, v7);
  v9 = *MEMORY[0x277CBE8E8];
  v10 = *MEMORY[0x277CBE868];
  v14 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v11, *MEMORY[0x277CBE8E8], v12, v13, *MEMORY[0x277CBE868], 0);
  v46 = directoryCopy;
  v16 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v8, v15, directoryCopy, v14, 4, 0);

  v47 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v16;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v51, v55, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v52;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v51 + 1) + 8 * i);
        v50 = 0;
        objc_msgSend_getResourceValue_forKey_error_(v23, v19, &v50, v9, 0);
        v24 = v50;
        v49 = 0;
        objc_msgSend_getResourceValue_forKey_error_(v23, v25, &v49, v10, 0);
        v26 = v49;
        if (objc_msgSend_BOOLValue(v26, v27, v28, v29, v30))
        {
          v35 = objc_msgSend_pathExtension(v23, v31, v32, v33, v34);
          isEqualToString = objc_msgSend_isEqualToString_(v35, v36, @"smsbundle", v37, v38);

          if (isEqualToString)
          {
            v43 = v47;
            if (!v47)
            {
              v43 = objc_opt_new();
            }

            v47 = v43;
            objc_msgSend_addObject_(v43, v40, v23, v41, v42);
          }
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v51, v55, 16);
    }

    while (v20);
  }

  v44 = *MEMORY[0x277D85DE8];

  return v47;
}

+ (id)backendForSongBundleURL:(id)l
{
  v5 = objc_msgSend_path(l, a2, l, v3, v4);
  v9 = objc_msgSend__songFormatForBundleAtPath_(FlexUtilities, v6, v5, v7, v8);
  if (objc_msgSend_isEqualToString_(v9, v10, @"LG", v11, v12))
  {
    v16 = objc_msgSend_loadSongInFolderWithPath_(FlexSong, v13, v5, v14, v15);
LABEL_5:
    v20 = v16;
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(v9, v13, @"ML", v14, v15))
  {
    v16 = objc_msgSend_loadSongAtPath_(FlexMLSong, v17, v5, v18, v19);
    goto LABEL_5;
  }

  v20 = 0;
LABEL_7:

  return v20;
}

+ (id)_songFormatForBundleAtPath:(id)path
{
  v61 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = objc_msgSend_stringByAppendingPathComponent_(pathCopy, v4, @"metadata.smm", v5, v6);
  v12 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9, v10, v11);
  v16 = objc_msgSend_fileExistsAtPath_(v12, v13, v7, v14, v15);

  if (v16)
  {
    v21 = @"LG";
  }

  else
  {
    v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v17, v18, v19, v20);
    v59 = 0;
    v25 = objc_msgSend_contentsOfDirectoryAtPath_error_(v22, v23, pathCopy, &v59, v24);
    v26 = v59;

    if (objc_msgSend_count(v25, v27, v28, v29, v30))
    {
      v31 = v26 == 0;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v32 = v25;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v55, v60, 16);
      if (v34)
      {
        v39 = v34;
        v53 = v26;
        v54 = v25;
        v40 = *v56;
        v21 = @"?";
        while (2)
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v56 != v40)
            {
              objc_enumerationMutation(v32);
            }

            v42 = objc_msgSend_pathExtension(*(*(&v55 + 1) + 8 * i), v35, v36, v37, v38, v53, v54, v55);
            v47 = objc_msgSend_lowercaseString(v42, v43, v44, v45, v46);

            if (objc_msgSend_isEqualToString_(v47, v48, @"metadata", v49, v50))
            {
              v21 = @"ML";

              goto LABEL_18;
            }
          }

          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v55, v60, 16);
          if (v39)
          {
            continue;
          }

          break;
        }

LABEL_18:
        v26 = v53;
        v25 = v54;
      }

      else
      {
        v21 = @"?";
      }
    }

    else
    {
      v21 = @"?";
    }
  }

  v51 = *MEMORY[0x277D85DE8];

  return v21;
}

@end
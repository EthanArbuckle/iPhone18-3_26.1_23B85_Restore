@interface CSUSearchableKnowledgeObject
+ (BOOL)labelDictionaryFromString:(id)string directoryWriteBack:(id *)back error:(id *)error;
+ (BOOL)synonymsDictionaryFromLocaleString:(id)string directoryWriteBack:(id *)back error:(id *)error;
+ (id)searchDictionary:(id)dictionary withLocale:(id)locale;
+ (id)stringFromLabelDictionary:(id)dictionary;
+ (id)stringFromSynonymsDictionary:(id)dictionary;
- (CSUSearchableKnowledgeObject)initWithQID:(unint64_t)d idType:(signed __int16)type localizedLabelDictionary:(id)dictionary confidence:(double)confidence sensitiveLocation:(BOOL)location category:(id)category vertical:(id)vertical localizedSynonymsDictionary:(id)self0 longitude:(double)self1 latitude:(double)self2 version:(int)self3;
- (id)localizedLabelWithLocale:(id)locale;
- (id)localizedSynonymsWithLocale:(id)locale;
- (void)setLocalizedLabel:(id)label forLocale:(id)locale;
- (void)setLocalizedSynonyms:(id)synonyms forLocale:(id)locale;
@end

@implementation CSUSearchableKnowledgeObject

- (CSUSearchableKnowledgeObject)initWithQID:(unint64_t)d idType:(signed __int16)type localizedLabelDictionary:(id)dictionary confidence:(double)confidence sensitiveLocation:(BOOL)location category:(id)category vertical:(id)vertical localizedSynonymsDictionary:(id)self0 longitude:(double)self1 latitude:(double)self2 version:(int)self3
{
  dictionaryCopy = dictionary;
  categoryCopy = category;
  verticalCopy = vertical;
  synonymsDictionaryCopy = synonymsDictionary;
  v44.receiver = self;
  v44.super_class = CSUSearchableKnowledgeObject;
  v25 = [(CSUSearchableKnowledgeObject *)&v44 init];
  v26 = v25;
  if (v25)
  {
    v25->_idType = type;
    localizedLabel = v25->_localizedLabel;
    v25->_qid = d;
    v25->_localizedLabel = 0;

    v32 = objc_msgSend_copy(dictionaryCopy, v28, v29, v30, v31);
    localizedLabelDictionary = v26->_localizedLabelDictionary;
    v26->_localizedLabelDictionary = v32;

    v26->_confidenceValue = confidence;
    v26->_sensitiveLocation = location;
    objc_storeStrong(&v26->_category, category);
    objc_storeStrong(&v26->_vertical, vertical);
    localizedSynonyms = v26->_localizedSynonyms;
    v26->_localizedSynonyms = 0;

    v39 = objc_msgSend_copy(synonymsDictionaryCopy, v35, v36, v37, v38);
    localizedSynonymsDictionary = v26->_localizedSynonymsDictionary;
    v26->_localizedSynonymsDictionary = v39;

    v26->_longitude = longitude;
    v26->_latitude = latitude;
    v26->_version = version;
    v41 = v26;
  }

  return v26;
}

+ (BOOL)labelDictionaryFromString:(id)string directoryWriteBack:(id *)back error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (back)
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9);
    backCopy = back;
    objc_msgSend_componentsSeparatedByString_(stringCopy, v11, @";", v12, v13);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v14 = v51 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v50, v54, 16);
    if (v19)
    {
      v20 = *v51;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_componentsSeparatedByString_(*(*(&v50 + 1) + 8 * i), v16, @":", v17, v18);
          if (objc_msgSend_count(v22, v23, v24, v25, v26) != 2)
          {
            v44 = objc_msgSend_errorForDictionaryDeserialization_(CSUError, v27, @"Corrupted dictionary", v28, v29);
            if (error)
            {
              v44 = v44;
              *error = v44;
            }

            v43 = 0;
            goto LABEL_14;
          }

          v30 = MEMORY[0x1E695DF58];
          v31 = objc_msgSend_objectAtIndexedSubscript_(v22, v27, 0, v28, v29);
          v35 = objc_msgSend_localeWithLocaleIdentifier_(v30, v32, v31, v33, v34);

          v39 = objc_msgSend_objectAtIndexedSubscript_(v22, v36, 1, v37, v38);
          objc_msgSend_setObject_forKeyedSubscript_(v10, v40, v39, v35, v41);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v50, v54, 16);
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v42 = v10;
    *backCopy = v10;
    v43 = 1;
LABEL_14:
  }

  else
  {
    v43 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v43;
}

+ (id)stringFromLabelDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = dictionaryCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v37, v41, 16);
  if (v14)
  {
    v15 = *v38;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = objc_msgSend_localeIdentifier(v17, v10, v11, v12, v13);
        v22 = objc_msgSend_objectForKeyedSubscript_(v8, v19, v17, v20, v21);
        v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"%@%@%@", v24, v25, v18, @":", v22);
        objc_msgSend_addObject_(v7, v27, v26, v28, v29);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v37, v41, 16);
    }

    while (v14);
  }

  v33 = objc_msgSend_componentsJoinedByString_(v7, v30, @"", v31, v32);;

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

+ (BOOL)synonymsDictionaryFromLocaleString:(id)string directoryWriteBack:(id *)back error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  backCopy = back;
  if (back)
  {
    v60 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9);
    objc_msgSend_componentsSeparatedByString_(stringCopy, v10, @";", v11, v12);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    obj = v62 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v61, v65, 16);
    if (v17)
    {
      v18 = *v62;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v62 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = objc_msgSend_componentsSeparatedByString_(*(*(&v61 + 1) + 8 * i), v14, @":", v15, v16);
          if (objc_msgSend_count(v20, v21, v22, v23, v24) != 2)
          {
            v53 = objc_msgSend_errorForDictionaryDeserialization_(CSUError, v25, @"Corrupted dictionary", v26, v27);
            if (error)
            {
              v53 = v53;
              *error = v53;
            }

            LOBYTE(back) = 0;
            goto LABEL_14;
          }

          v28 = objc_alloc(MEMORY[0x1E695DF58]);
          v32 = objc_msgSend_objectAtIndexedSubscript_(v20, v29, 0, v30, v31);
          v36 = objc_msgSend_initWithLocaleIdentifier_(v28, v33, v32, v34, v35);

          v37 = MEMORY[0x1E695DFD8];
          v41 = objc_msgSend_objectAtIndexedSubscript_(v20, v38, 1, v39, v40);
          v45 = objc_msgSend_componentsSeparatedByString_(v41, v42, @", ", v43, v44);
          v49 = objc_msgSend_setWithArray_(v37, v46, v45, v47, v48);

          objc_msgSend_setObject_forKeyedSubscript_(v60, v50, v49, v36, v51);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v61, v65, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v52 = v60;
    *backCopy = v60;
    LOBYTE(back) = 1;
LABEL_14:
  }

  v54 = *MEMORY[0x1E69E9840];
  return back;
}

+ (id)stringFromSynonymsDictionary:(id)dictionary
{
  v55 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v49 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6);
  objc_msgSend_allKeys(dictionaryCopy, v7, v8, v9, v10);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v50, v54, 16);
  if (v16)
  {
    v17 = *v51;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v50 + 1) + 8 * i);
        v20 = objc_msgSend_localeIdentifier(v19, v12, v13, v14, v15);
        v24 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v21, v19, v22, v23);
        v29 = objc_msgSend_allObjects(v24, v25, v26, v27, v28);
        v33 = objc_msgSend_componentsJoinedByString_(v29, v30, @", ", v31, v32);

        v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v34, @"%@%@%@", v35, v36, v20, @":", v33);
        objc_msgSend_addObject_(v49, v38, v37, v39, v40);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v50, v54, 16);
    }

    while (v16);
  }

  v44 = objc_msgSend_componentsJoinedByString_(v49, v41, @"", v42, v43);;

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

+ (id)searchDictionary:(id)dictionary withLocale:(id)locale
{
  v129 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  localeCopy = locale;
  v8 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, localeCopy, v6, v7);
  v12 = v8;
  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v14 = *MEMORY[0x1E695D9B0];
    v15 = objc_msgSend_objectForKey_(localeCopy, v9, *MEMORY[0x1E695D9B0], v10, v11);
    v16 = *MEMORY[0x1E695D978];
    v112 = objc_msgSend_objectForKey_(localeCopy, v17, *MEMORY[0x1E695D978], v18, v19);
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = dictionaryCopy;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v122, v128, 16);
    if (v24)
    {
      v25 = *v123;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v123 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v122 + 1) + 8 * i);
          v28 = objc_msgSend_objectForKey_(v27, v21, v14, v22, v23);
          if (objc_msgSend_isEqualToString_(v28, v29, v15, v30, v31))
          {
            v35 = objc_msgSend_objectForKey_(v27, v32, v16, v33, v34);
            isEqualToString = objc_msgSend_isEqualToString_(v35, v36, v112, v37, v38);

            if (isEqualToString)
            {
              v90 = objc_msgSend_objectForKeyedSubscript_(obj, v21, v27, v22, v23);
LABEL_35:
              v13 = v90;

              goto LABEL_36;
            }
          }

          else
          {
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v122, v128, 16);
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = obj;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v118, v127, 16);
    if (v44)
    {
      v45 = *v119;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v119 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v118 + 1) + 8 * j);
          v48 = objc_msgSend_objectForKey_(v47, v41, v14, v42, v43);
          if (objc_msgSend_isEqualToString_(v48, v49, v15, v50, v51))
          {
            v55 = objc_msgSend_objectForKey_(v47, v52, v16, v53, v54);
            v56 = v55 == 0;

            if (v56)
            {
              v90 = objc_msgSend_objectForKeyedSubscript_(obj, v41, v47, v42, v43);
              goto LABEL_35;
            }
          }

          else
          {
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v118, v127, 16);
      }

      while (v44);
    }

    v61 = objc_msgSend_allKeys(obj, v57, v58, v59, v60);
    v65 = objc_msgSend_sortedArrayUsingComparator_(v61, v62, &unk_1F20CFFF0, v63, v64);

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v66 = v65;
    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v114, v126, 16);
    if (v71)
    {
      v72 = *v115;
      while (2)
      {
        for (k = 0; k != v71; ++k)
        {
          if (*v115 != v72)
          {
            objc_enumerationMutation(v66);
          }

          v74 = *(*(&v114 + 1) + 8 * k);
          v75 = objc_msgSend_objectForKey_(v74, v68, v14, v69, v70);
          v79 = objc_msgSend_isEqualToString_(v75, v76, v15, v77, v78);

          if (v79)
          {
            v13 = objc_msgSend_objectForKeyedSubscript_(obj, v68, v74, v69, v70);
            v84 = v66;
            goto LABEL_46;
          }
        }

        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v68, &v114, v126, 16);
        if (v71)
        {
          continue;
        }

        break;
      }
    }

    v80 = objc_alloc(MEMORY[0x1E695DF58]);
    v84 = objc_msgSend_initWithLocaleIdentifier_(v80, v81, @"en", v82, v83);
    v88 = objc_msgSend_objectForKeyedSubscript_(obj, v85, v84, v86, v87);
    v89 = v88;
    if (v88)
    {
      v13 = v88;
    }

    else
    {
      v93 = objc_alloc(MEMORY[0x1E695DF58]);
      v97 = objc_msgSend_initWithLocaleIdentifier_(v93, v94, @"en_US", v95, v96);
      v101 = objc_msgSend_objectForKeyedSubscript_(obj, v98, v97, v99, v100);
      if (v101)
      {
        v102 = v97;
      }

      else
      {
        v103 = objc_alloc(MEMORY[0x1E695DF58]);
        v102 = objc_msgSend_initWithLocaleIdentifier_(v103, v104, @"en-US", v105, v106);

        v101 = objc_msgSend_objectForKeyedSubscript_(obj, v107, v102, v108, v109);
      }

      v13 = v101;
    }

LABEL_46:
LABEL_36:

    v12 = 0;
  }

  v91 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)localizedLabelWithLocale:(id)locale
{
  localeCopy = locale;
  v9 = objc_msgSend_localizedLabelDictionary(self, v5, v6, v7, v8);
  v12 = objc_msgSend_searchDictionary_withLocale_(CSUSearchableKnowledgeObject, v10, v9, localeCopy, v11);

  return v12;
}

- (id)localizedSynonymsWithLocale:(id)locale
{
  localeCopy = locale;
  v9 = objc_msgSend_localizedSynonymsDictionary(self, v5, v6, v7, v8);
  v12 = objc_msgSend_searchDictionary_withLocale_(CSUSearchableKnowledgeObject, v10, v9, localeCopy, v11);

  return v12;
}

- (void)setLocalizedLabel:(id)label forLocale:(id)locale
{
  labelCopy = label;
  localeCopy = locale;
  v11 = objc_msgSend_localizedLabelDictionary(self, v7, v8, v9, v10);
  objc_msgSend_setObject_forKey_(v11, v12, labelCopy, localeCopy, v13);
}

- (void)setLocalizedSynonyms:(id)synonyms forLocale:(id)locale
{
  synonymsCopy = synonyms;
  localeCopy = locale;
  v11 = objc_msgSend_localizedSynonymsDictionary(self, v7, v8, v9, v10);
  objc_msgSend_setObject_forKey_(v11, v12, synonymsCopy, localeCopy, v13);
}

@end
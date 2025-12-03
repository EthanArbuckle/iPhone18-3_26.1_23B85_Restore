@interface CSUSearchableKnowledgeDBObject
- (BOOL)convertToEntity:(id *)entity error:(id *)error;
- (void)copyFromEntity:(id)entity;
@end

@implementation CSUSearchableKnowledgeDBObject

- (BOOL)convertToEntity:(id *)entity error:(id *)error
{
  v8 = objc_msgSend_localizedLabelDictionary(self, a2, entity, error, v4);
  v71 = 0;
  objc_msgSend_labelDictionaryFromString_directoryWriteBack_error_(CSUSearchableKnowledgeObject, v9, v8, &v71, error);
  v10 = v71;

  if (v10)
  {
    v15 = objc_msgSend_localizedSynonymsDictionary(self, v11, v12, v13, v14);
    v70 = 0;
    objc_msgSend_synonymsDictionaryFromLocaleString_directoryWriteBack_error_(CSUSearchableKnowledgeObject, v16, v15, &v70, error);
    v17 = v70;

    v18 = v17 != 0;
    if (entity && v17)
    {
      v69 = [CSUSearchableKnowledgeObject alloc];
      v23 = objc_msgSend_qid(self, v19, v20, v21, v22);
      v28 = objc_msgSend_idType(self, v24, v25, v26, v27);
      objc_msgSend_confidenceValue(self, v29, v30, v31, v32);
      v34 = v33;
      v39 = objc_msgSend_sensitiveLocation(self, v35, v36, v37, v38);
      v44 = objc_msgSend_category(self, v40, v41, v42, v43);
      v49 = objc_msgSend_vertical(self, v45, v46, v47, v48);
      objc_msgSend_longitude(self, v50, v51, v52, v53);
      v55 = v54;
      objc_msgSend_latitude(self, v56, v57, v58, v59);
      v61 = v60;
      v68 = objc_msgSend_version(self, v62, v63, v64, v65);
      *entity = objc_msgSend_initWithQID_idType_localizedLabelDictionary_confidence_sensitiveLocation_category_vertical_localizedSynonymsDictionary_longitude_latitude_version_(v69, v66, v23, v28, v10, v39, v44, v49, v34, v55, v61, v17, v68);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)copyFromEntity:(id)entity
{
  entityCopy = entity;
  v9 = objc_msgSend_qid(entityCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_idType(entityCopy, v10, v11, v12, v13);
  UniqueDbId_idType = objc_msgSend_getUniqueDbId_idType_(CSUSearchableKnowledgeDBObject, v15, v9, v14, v16);
  objc_msgSend_setDbUniqueId_(self, v18, UniqueDbId_idType, v19, v20);
  v25 = objc_msgSend_qid(entityCopy, v21, v22, v23, v24);
  objc_msgSend_setQid_(self, v26, v25, v27, v28);
  v33 = objc_msgSend_idType(entityCopy, v29, v30, v31, v32);
  objc_msgSend_setIdType_(self, v34, v33, v35, v36);
  objc_msgSend_confidenceValue(entityCopy, v37, v38, v39, v40);
  objc_msgSend_setConfidenceValue_(self, v41, v42, v43, v44);
  v49 = objc_msgSend_sensitiveLocation(entityCopy, v45, v46, v47, v48);
  objc_msgSend_setSensitiveLocation_(self, v50, v49, v51, v52);
  v57 = objc_msgSend_category(entityCopy, v53, v54, v55, v56);
  objc_msgSend_setCategory_(self, v58, v57, v59, v60);

  v65 = objc_msgSend_vertical(entityCopy, v61, v62, v63, v64);
  objc_msgSend_setVertical_(self, v66, v65, v67, v68);

  objc_msgSend_longitude(entityCopy, v69, v70, v71, v72);
  objc_msgSend_setLongitude_(self, v73, v74, v75, v76);
  objc_msgSend_latitude(entityCopy, v77, v78, v79, v80);
  objc_msgSend_setLatitude_(self, v81, v82, v83, v84);
  v89 = objc_msgSend_version(entityCopy, v85, v86, v87, v88);
  objc_msgSend_setVersion_(self, v90, v89, v91, v92);
  v97 = objc_msgSend_localizedLabelDictionary(entityCopy, v93, v94, v95, v96);
  v116 = objc_msgSend_stringFromLabelDictionary_(CSUSearchableKnowledgeObject, v98, v97, v99, v100);

  objc_msgSend_setLocalizedLabelDictionary_(self, v101, v116, v102, v103);
  v108 = objc_msgSend_localizedSynonymsDictionary(entityCopy, v104, v105, v106, v107);

  v112 = objc_msgSend_stringFromSynonymsDictionary_(CSUSearchableKnowledgeObject, v109, v108, v110, v111);

  objc_msgSend_setLocalizedSynonymsDictionary_(self, v113, v112, v114, v115);
}

@end
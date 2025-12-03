@interface CKDAssetHandle
+ (id)descriptionWithStatus:(int64_t)status;
- (BOOL)isEqualToAssetHandle:(id)handle keys:(id)keys optionalKeys:(id)optionalKeys differencesDescription:(id *)description;
- (BOOL)mayBeEvicted;
- (BOOL)mayHaveAssetCacheManagedFile;
- (CKDAssetHandle)initWithItemID:(id)d UUID:(id)iD path:(id)path;
- (CKDAssetHandle)initWithPropertyDictionary:(id)dictionary;
- (NSNumber)usesMMCSVersion2;
- (id)CKPropertiesDescription;
- (id)dictionaryPropertyEncoding;
- (id)statusDescription;
- (void)setBoundaryKeyHashUsingBoundaryKey:(id)key;
@end

@implementation CKDAssetHandle

- (id)dictionaryPropertyEncoding
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_UUID(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"UUID");

  v10 = objc_msgSend_itemID(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_itemID(self, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v14, v13, @"itemID");
  }

  v15 = objc_msgSend_path(self, v11, v12);

  if (v15)
  {
    v18 = objc_msgSend_path(self, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v19, v18, @"path");
  }

  v20 = objc_msgSend_volumeIndex(self, v16, v17);

  if (v20)
  {
    v23 = objc_msgSend_volumeIndex(self, v21, v22);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v24, v23, @"volumeIndex");
  }

  v25 = objc_msgSend_fileID(self, v21, v22);

  if (v25)
  {
    v28 = objc_msgSend_fileID(self, v26, v27);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v29, v28, @"fileID");
  }

  v30 = objc_msgSend_generationID(self, v26, v27);

  if (v30)
  {
    v33 = objc_msgSend_generationID(self, v31, v32);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v34, v33, @"generationID");
  }

  v35 = objc_msgSend_lastUsedTime(self, v31, v32);

  if (v35)
  {
    v38 = objc_msgSend_lastUsedTime(self, v36, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v39, v38, @"lastUsedTime");
  }

  v40 = objc_msgSend_fileSignature(self, v36, v37);

  if (v40)
  {
    v43 = objc_msgSend_fileSignature(self, v41, v42);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v44, v43, @"fileSignature");
  }

  v45 = objc_msgSend_status(self, v41, v42);

  if (v45)
  {
    v48 = objc_msgSend_status(self, v46, v47);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v49, v48, @"status");
  }

  v50 = objc_msgSend_modTime(self, v46, v47);

  if (v50)
  {
    v53 = objc_msgSend_modTime(self, v51, v52);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v54, v53, @"modTime");
  }

  v55 = objc_msgSend_fileSize(self, v51, v52);

  if (v55)
  {
    v58 = objc_msgSend_fileSize(self, v56, v57);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v59, v58, @"fileSize");
  }

  v60 = objc_msgSend_chunkCount(self, v56, v57);

  if (v60)
  {
    v63 = objc_msgSend_chunkCount(self, v61, v62);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v64, v63, @"chunkCount");
  }

  return v3;
}

- (CKDAssetHandle)initWithPropertyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = objc_msgSend_init(self, v5, v6);
  if (v8)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v7, @"UUID");
    objc_msgSend_setUUID_(v8, v10, v9);

    v12 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v11, @"itemID");
    objc_msgSend_setItemID_(v8, v13, v12);

    v15 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v14, @"path");
    objc_msgSend_setPath_(v8, v16, v15);

    v18 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v17, @"volumeIndex");
    objc_msgSend_setVolumeIndex_(v8, v19, v18);

    v21 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v20, @"fileID");
    objc_msgSend_setFileID_(v8, v22, v21);

    v24 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v23, @"generationID");
    objc_msgSend_setGenerationID_(v8, v25, v24);

    v27 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v26, @"lastUsedTime");
    objc_msgSend_setLastUsedTime_(v8, v28, v27);

    v30 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v29, @"fileSignature");
    objc_msgSend_setFileSignature_(v8, v31, v30);

    v33 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v32, @"status");
    objc_msgSend_setStatus_(v8, v34, v33);

    v36 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v35, @"modTime");
    objc_msgSend_setModTime_(v8, v37, v36);

    v39 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v38, @"fileSize");
    objc_msgSend_setFileSize_(v8, v40, v39);

    v42 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v41, @"chunkCount");
    objc_msgSend_setChunkCount_(v8, v43, v42);

    v46 = objc_msgSend_UUID(v8, v44, v45);

    if (!v46)
    {
      v49 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v47, v48);
      objc_msgSend_setUUID_(v8, v50, v49);
    }

    v51 = objc_msgSend_status(v8, v47, v48);

    if (!v51)
    {
      objc_msgSend_setStatus_(v8, v52, &unk_2838C81C0);
    }

    v54 = objc_msgSend_lastUsedTime(v8, v52, v53);

    if (!v54)
    {
      v57 = objc_msgSend_date(MEMORY[0x277CBEAA8], v55, v56);
      objc_msgSend_setLastUsedTime_(v8, v58, v57);
    }
  }

  return v8;
}

+ (id)descriptionWithStatus:(int64_t)status
{
  if (status > 8)
  {
    return @"UnDefInEd";
  }

  else
  {
    return off_278546218[status];
  }
}

- (BOOL)mayBeEvicted
{
  status = self->_status;
  if (status && (v4 = objc_msgSend_integerValue(status, a2, v2), v4 <= 6))
  {
    v5 = 0x29u >> v4;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5 & 1;
}

- (BOOL)mayHaveAssetCacheManagedFile
{
  status = self->_status;
  if (status)
  {
    v4 = objc_msgSend_integerValue(status, a2, v2);
    LOBYTE(status) = v4 == 3 || v4 == 8;
  }

  return status;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 9);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_UUID(self, v5, v6);
  v10 = objc_msgSend_UUIDString(v7, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"UUID=%@", v10);
  objc_msgSend_addObject_(v3, v13, v12);

  v16 = objc_msgSend_itemID(self, v14, v15);

  if (v16)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_msgSend_itemID(self, v17, v18);
    v23 = objc_msgSend_unsignedLongLongValue(v20, v21, v22);
    v25 = objc_msgSend_stringWithFormat_(v19, v24, @"itemID=%llu", v23);
    objc_msgSend_addObject_(v3, v26, v25);
  }

  v27 = objc_msgSend_path(self, v17, v18);

  if (v27)
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = objc_msgSend_path(self, v28, v29);
    v34 = objc_msgSend_CKSanitizedPath(v31, v32, v33);
    v36 = objc_msgSend_stringWithFormat_(v30, v35, @"path=%@", v34);
    objc_msgSend_addObject_(v3, v37, v36);
  }

  v38 = objc_msgSend_volumeIndex(self, v28, v29);

  if (v38)
  {
    v41 = MEMORY[0x277CCACA8];
    v42 = objc_msgSend_volumeIndex(self, v39, v40);
    v44 = objc_msgSend_stringWithFormat_(v41, v43, @"volumeIndex=%@", v42);
    objc_msgSend_addObject_(v3, v45, v44);
  }

  v46 = objc_msgSend_fileID(self, v39, v40);

  if (v46)
  {
    v49 = MEMORY[0x277CCACA8];
    v50 = objc_msgSend_fileID(self, v47, v48);
    v52 = objc_msgSend_stringWithFormat_(v49, v51, @"fileID=%@", v50);
    objc_msgSend_addObject_(v3, v53, v52);
  }

  v54 = objc_msgSend_generationID(self, v47, v48);

  if (v54)
  {
    v57 = MEMORY[0x277CCACA8];
    v58 = objc_msgSend_generationID(self, v55, v56);
    v60 = objc_msgSend_stringWithFormat_(v57, v59, @"generationID=%@", v58);
    objc_msgSend_addObject_(v3, v61, v60);
  }

  v62 = objc_msgSend_lastUsedTime(self, v55, v56);

  if (v62)
  {
    v65 = MEMORY[0x277CCACA8];
    v66 = objc_msgSend_lastUsedTime(self, v63, v64);
    v68 = objc_msgSend_stringWithFormat_(v65, v67, @"lastUsedTime=%@", v66);
    objc_msgSend_addObject_(v3, v69, v68);
  }

  v70 = objc_msgSend_fileSignature(self, v63, v64);

  if (v70)
  {
    v73 = MEMORY[0x277CCACA8];
    v74 = objc_msgSend_fileSignature(self, v71, v72);
    v77 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v74, v75, v76);
    v79 = objc_msgSend_stringWithFormat_(v73, v78, @"fileSignature=%@", v77);
    objc_msgSend_addObject_(v3, v80, v79);
  }

  v81 = objc_msgSend_status(self, v71, v72);

  if (v81)
  {
    v84 = MEMORY[0x277CCACA8];
    v85 = objc_msgSend_statusDescription(self, v82, v83);
    v87 = objc_msgSend_stringWithFormat_(v84, v86, @"status=%@", v85);
    objc_msgSend_addObject_(v3, v88, v87);
  }

  v89 = objc_msgSend_modTime(self, v82, v83);

  if (v89)
  {
    v92 = MEMORY[0x277CCACA8];
    v93 = objc_msgSend_modTime(self, v90, v91);
    v95 = objc_msgSend_stringWithFormat_(v92, v94, @"modTime=%@", v93);
    objc_msgSend_addObject_(v3, v96, v95);
  }

  v97 = objc_msgSend_fileSize(self, v90, v91);

  if (v97)
  {
    v100 = MEMORY[0x277CCACA8];
    v101 = objc_msgSend_fileSize(self, v98, v99);
    v104 = objc_msgSend_longLongValue(v101, v102, v103);
    v106 = objc_msgSend_stringWithFormat_(v100, v105, @"fileSize=%lld", v104);
    objc_msgSend_addObject_(v3, v107, v106);
  }

  v108 = objc_msgSend_chunkCount(self, v98, v99);

  if (v108)
  {
    v111 = MEMORY[0x277CCACA8];
    v112 = objc_msgSend_chunkCount(self, v109, v110);
    v115 = objc_msgSend_unsignedIntValue(v112, v113, v114);
    v117 = objc_msgSend_stringWithFormat_(v111, v116, @"chunkCount=%u", v115);
    objc_msgSend_addObject_(v3, v118, v117);
  }

  v119 = objc_msgSend_componentsJoinedByString_(v3, v109, @", ");

  return v119;
}

- (id)statusDescription
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_status(self, v4, v5);
  v9 = objc_msgSend_integerValue(v6, v7, v8);
  v11 = objc_msgSend_descriptionWithStatus_(v3, v10, v9);

  return v11;
}

- (CKDAssetHandle)initWithItemID:(id)d UUID:(id)iD path:(id)path
{
  dCopy = d;
  iDCopy = iD;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = CKDAssetHandle;
  v12 = [(CKDAssetHandle *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemID, d);
    v16 = iDCopy;
    if (!iDCopy)
    {
      v16 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v14, v15);
    }

    objc_storeStrong(&v13->_UUID, v16);
    if (!iDCopy)
    {
    }

    objc_storeStrong(&v13->_path, path);
    status = v13->_status;
    v13->_status = &unk_2838C81C0;

    v20 = objc_msgSend_date(MEMORY[0x277CBEAA8], v18, v19);
    lastUsedTime = v13->_lastUsedTime;
    v13->_lastUsedTime = v20;
  }

  return v13;
}

- (NSNumber)usesMMCSVersion2
{
  v6 = objc_msgSend_fileSignature(self, a2, v2);
  if (v6)
  {
    v7 = MEMORY[0x277CBC6A8];
    v8 = objc_msgSend_fileSignature(self, v4, v5);
    isValidV2Signature = objc_msgSend_isValidV2Signature_(v7, v9, v8);
    v11 = MEMORY[0x277CBEC28];
    if (isValidV2Signature)
    {
      v11 = MEMORY[0x277CBEC38];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqualToAssetHandle:(id)handle keys:(id)keys optionalKeys:(id)optionalKeys differencesDescription:(id *)description
{
  v72 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  keysCopy = keys;
  optionalKeysCopy = optionalKeys;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_225073E80;
  v64 = sub_2250734CC;
  v65 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225125370;
  aBlock[3] = &unk_2785461F8;
  aBlock[4] = &v60;
  aBlock[5] = &v66;
  v11 = _Block_copy(aBlock);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = keysCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v55, v71, 16);
  if (v14)
  {
    v15 = *v56;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v56 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v55 + 1) + 8 * i);
        v18 = objc_msgSend_valueForKey_(self, v13, v17);
        v20 = objc_msgSend_valueForKey_(handleCopy, v19, v17);
        v21 = v18;
        v22 = v20;
        v24 = v22;
        if (v21 | v22)
        {
          if (v21)
          {
            v25 = v22 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {

LABEL_14:
            v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%@: %@ != %@", v17, v21, v24);
            v11[2](v11, v28);

            goto LABEL_15;
          }

          isEqual = objc_msgSend_isEqual_(v21, v23, v22);

          if ((isEqual & 1) == 0)
          {
            goto LABEL_14;
          }
        }

LABEL_15:
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v55, v71, 16);
    }

    while (v14);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v29 = optionalKeysCopy;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v51, v70, 16);
  if (v32)
  {
    v33 = *v52;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v51 + 1) + 8 * j);
        v36 = objc_msgSend_valueForKey_(self, v31, v35);
        v38 = objc_msgSend_valueForKey_(handleCopy, v37, v35);
        v40 = v38;
        if (v36)
        {
          v41 = v38 == 0;
        }

        else
        {
          v41 = 1;
        }

        if (!v41 && (objc_msgSend_isEqual_(v36, v39, v38) & 1) == 0)
        {
          v43 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"%@: %@ != %@", v35, v36, v40);
          v11[2](v11, v43);
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v51, v70, 16);
    }

    while (v32);
  }

  v44 = v67;
  if (description)
  {
    if (v67[3])
    {
      *description = 0;
    }

    else
    {
      *description = v61[5];
      v44 = v67;
    }
  }

  v45 = *(v44 + 24);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v66, 8);

  v46 = *MEMORY[0x277D85DE8];
  return v45 & 1;
}

- (void)setBoundaryKeyHashUsingBoundaryKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy)
  {
    v6 = keyCopy;
    v9 = objc_msgSend_bytes(v6, v7, v8);
    v12 = objc_msgSend_length(v5, v10, v11);
    CC_SHA256(v9, v12, md);
    v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v13, md, 32);
    boundaryKeyHash = self->_boundaryKeyHash;
    self->_boundaryKeyHash = v14;
  }

  else
  {
    boundaryKeyHash = self->_boundaryKeyHash;
    self->_boundaryKeyHash = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
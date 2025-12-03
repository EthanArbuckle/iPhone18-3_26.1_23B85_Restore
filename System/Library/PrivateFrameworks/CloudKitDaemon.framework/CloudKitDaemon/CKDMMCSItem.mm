@interface CKDMMCSItem
- (id)CKPropertiesDescription;
- (id)_openInfo;
- (id)clonedFileURLInDestinationDirectory:(id)directory;
- (id)getFileMetadataWithContainer:(id)container fileHandle:(id)handle error:(id *)error;
- (id)getFileMetadataWithFileHandle:(id)handle error:(id *)error;
- (id)getFileSizeWithOperation:(id)operation error:(id *)error;
- (id)init:(BOOL)init;
- (id)openWithOperation:(id)operation error:(id *)error;
- (id)readBytesOfInMemoryAssetContentWithContainer:(id)container offset:(unint64_t)offset length:(unint64_t)length error:(id *)error;
- (unint64_t)MMCSEncoding;
- (void)setupForReReferenceWithAsset:(id)asset destinationDatabaseScope:(int64_t)scope;
@end

@implementation CKDMMCSItem

- (id)init:(BOOL)init
{
  v5.receiver = self;
  v5.super_class = CKDMMCSItem;
  result = [(CKDMMCSItem *)&v5 init];
  if (result)
  {
    *(result + 13) = init;
    *(result + 15) = -1;
  }

  return result;
}

- (unint64_t)MMCSEncoding
{
  v3 = MEMORY[0x277CBC6A8];
  v4 = objc_msgSend_signature(self, a2, v2);
  if (objc_msgSend_isValidV2Signature_(v3, v5, v4))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setupForReReferenceWithAsset:(id)asset destinationDatabaseScope:(int64_t)scope
{
  assetCopy = asset;
  v9 = objc_msgSend_assetRereferenceInfo(assetCopy, v7, v8);
  v12 = objc_msgSend_contentBaseURL(v9, v10, v11);
  contentBaseURL = self->_contentBaseURL;
  self->_contentBaseURL = v12;

  v16 = objc_msgSend_assetRereferenceInfo(assetCopy, v14, v15);
  v19 = objc_msgSend_requestor(v16, v17, v18);
  requestor = self->_requestor;
  self->_requestor = v19;

  v23 = objc_msgSend_assetRereferenceInfo(assetCopy, v21, v22);
  v26 = objc_msgSend_downloadToken(v23, v24, v25);
  authToken = self->_authToken;
  self->_authToken = v26;

  v30 = objc_msgSend_assetRereferenceInfo(assetCopy, v28, v29);
  self->_downloadTokenExpiration = objc_msgSend_downloadTokenExpiration(v30, v31, v32);

  v35 = objc_msgSend_useMMCSEncryptionV2(assetCopy, v33, v34);
  v59 = objc_msgSend_assetReference(assetCopy, v36, v37);

  v38 = [CKDAssetZoneKey alloc];
  v41 = objc_msgSend_zoneID(self->_recordID, v39, v40);
  v43 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v42, v35);
  v46 = objc_msgSend_recordID(v59, v44, v45);
  v49 = objc_msgSend_zoneID(v46, v47, v48);
  v52 = objc_msgSend_databaseScope(v59, v50, v51);
  isPackageMember = objc_msgSend_isPackageMember(v59, v53, v54);
  isPackageRereference = objc_msgSend_initWithDestinationZoneID_destinationDatabaseScope_usesMMCSEncryptionV2_sourceZoneID_sourceDatabaseScope_isPackageRereference_(v38, v56, v41, scope, v43, v49, v52, isPackageMember);
  assetZoneKey = self->_assetZoneKey;
  self->_assetZoneKey = isPackageRereference;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 17);
  if (objc_msgSend_itemID(self, v4, v5))
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_msgSend_itemID(self, v6, v7);
    v11 = objc_msgSend_stringWithFormat_(v8, v10, @"itemID=%llu", v9);
    objc_msgSend_addObject_(v3, v12, v11);
  }

  v13 = objc_msgSend_putPackageSectionIdentifier(self, v6, v7);

  if (v13)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = objc_msgSend_putPackageSectionIdentifier(self, v14, v15);
    v19 = objc_msgSend_stringWithFormat_(v16, v18, @"putPackageSectionIdentifier=%@", v17);
    objc_msgSend_addObject_(v3, v20, v19);
  }

  v21 = objc_msgSend_trackingUUID(self, v14, v15);

  if (v21)
  {
    v24 = MEMORY[0x277CCACA8];
    v25 = objc_msgSend_trackingUUID(self, v22, v23);
    v27 = objc_msgSend_stringWithFormat_(v24, v26, @"trackingUUID=%@", v25);
    objc_msgSend_addObject_(v3, v28, v27);
  }

  if (objc_msgSend_hasSize(self, v22, v23))
  {
    v31 = MEMORY[0x277CCACA8];
    v32 = objc_msgSend_fileSize(self, v29, v30);
    v34 = objc_msgSend_stringWithFormat_(v31, v33, @"size=%llu", v32);
    objc_msgSend_addObject_(v3, v35, v34);
  }

  if (objc_msgSend_paddedFileSize(self, v29, v30))
  {
    v38 = MEMORY[0x277CCACA8];
    v39 = objc_msgSend_paddedFileSize(self, v36, v37);
    v41 = objc_msgSend_stringWithFormat_(v38, v40, @"paddedSize=%llu", v39);
    objc_msgSend_addObject_(v3, v42, v41);
  }

  if (objc_msgSend_hasOffset(self, v36, v37))
  {
    v45 = MEMORY[0x277CCACA8];
    v46 = objc_msgSend_offset(self, v43, v44);
    v48 = objc_msgSend_stringWithFormat_(v45, v47, @"offset=%llu", v46);
    objc_msgSend_addObject_(v3, v49, v48);
  }

  v50 = objc_msgSend_recordKey(self, v43, v44);

  if (v50)
  {
    v53 = MEMORY[0x277CCACA8];
    v54 = objc_msgSend_recordKey(self, v51, v52);
    v56 = objc_msgSend_stringWithFormat_(v53, v55, @"recordKey=%@", v54);
    objc_msgSend_addObject_(v3, v57, v56);
  }

  v58 = objc_msgSend_fileURL(self, v51, v52);

  if (v58)
  {
    v61 = MEMORY[0x277CCACA8];
    v62 = objc_msgSend_fileURL(self, v59, v60);
    v65 = objc_msgSend_CKSanitizedPath(v62, v63, v64);
    v67 = objc_msgSend_stringWithFormat_(v61, v66, @"path=%@", v65);
    objc_msgSend_addObject_(v3, v68, v67);
  }

  v69 = objc_msgSend_signature(self, v59, v60);

  if (v69)
  {
    v72 = MEMORY[0x277CCACA8];
    v73 = objc_msgSend_signature(self, v70, v71);
    v75 = objc_msgSend_stringWithFormat_(v72, v74, @"signature=%@", v73);
    objc_msgSend_addObject_(v3, v76, v75);
  }

  v77 = objc_msgSend_deviceID(self, v70, v71);

  if (v77)
  {
    v80 = MEMORY[0x277CCACA8];
    v81 = objc_msgSend_deviceID(self, v78, v79);
    v83 = objc_msgSend_stringWithFormat_(v80, v82, @"deviceID=%@", v81);
    objc_msgSend_addObject_(v3, v84, v83);
  }

  v85 = objc_msgSend_fileID(self, v78, v79);

  if (v85)
  {
    v88 = MEMORY[0x277CCACA8];
    v89 = objc_msgSend_fileID(self, v86, v87);
    v91 = objc_msgSend_stringWithFormat_(v88, v90, @"fileID=%@", v89);
    objc_msgSend_addObject_(v3, v92, v91);
  }

  v93 = objc_msgSend_generationID(self, v86, v87);

  if (v93)
  {
    v96 = MEMORY[0x277CCACA8];
    v97 = objc_msgSend_generationID(self, v94, v95);
    v99 = objc_msgSend_stringWithFormat_(v96, v98, @"generationID=%@", v97);
    objc_msgSend_addObject_(v3, v100, v99);
  }

  v101 = objc_msgSend_fileHandle(self, v94, v95);

  if (v101)
  {
    v104 = MEMORY[0x277CCACA8];
    v105 = objc_msgSend_fileHandle(self, v102, v103);
    v107 = objc_msgSend_stringWithFormat_(v104, v106, @"fileHandle=%@", v105);
    objc_msgSend_addObject_(v3, v108, v107);
  }

  v109 = objc_msgSend_contentBaseURL(self, v102, v103);

  if (v109)
  {
    v112 = MEMORY[0x277CCACA8];
    v113 = objc_msgSend_contentBaseURL(self, v110, v111);
    v115 = objc_msgSend_stringWithFormat_(v112, v114, @"contentBaseURL=%@", v113);
    objc_msgSend_addObject_(v3, v116, v115);
  }

  v117 = objc_msgSend_owner(self, v110, v111);

  if (v117)
  {
    v120 = MEMORY[0x277CCACA8];
    v121 = objc_msgSend_owner(self, v118, v119);
    v123 = objc_msgSend_stringWithFormat_(v120, v122, @"owner=%@", v121);
    objc_msgSend_addObject_(v3, v124, v123);
  }

  v125 = objc_msgSend_requestor(self, v118, v119);
  if (v125)
  {
    v128 = v125;
    v129 = objc_msgSend_owner(self, v126, v127);
    if (v129)
    {
      v132 = v129;
      v133 = objc_msgSend_requestor(self, v130, v131);
      v136 = objc_msgSend_owner(self, v134, v135);
      isEqualToString = objc_msgSend_isEqualToString_(v133, v137, v136);

      if (isEqualToString)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }

    v139 = MEMORY[0x277CCACA8];
    v140 = objc_msgSend_requestor(self, v126, v127);
    v142 = objc_msgSend_stringWithFormat_(v139, v141, @"requestor=%@", v140);
    objc_msgSend_addObject_(v3, v143, v142);
  }

LABEL_37:
  v144 = objc_msgSend_authToken(self, v126, v127);

  if (v144)
  {
    v147 = MEMORY[0x277CCACA8];
    v148 = objc_msgSend_authToken(self, v145, v146);
    v150 = objc_msgSend_stringWithFormat_(v147, v149, @"authToken=%@", v148);
    objc_msgSend_addObject_(v3, v151, v150);
  }

  v152 = objc_msgSend_uploadReceipt(self, v145, v146);

  if (v152)
  {
    v155 = MEMORY[0x277CCACA8];
    v156 = objc_msgSend_uploadReceipt(self, v153, v154);
    v158 = objc_msgSend_stringWithFormat_(v155, v157, @"uploadReceipt=%@", v156);
    objc_msgSend_addObject_(v3, v159, v158);
  }

  objc_msgSend_uploadReceiptExpiration(self, v153, v154);
  if (v161 != 0.0)
  {
    v162 = MEMORY[0x277CCACA8];
    v163 = objc_alloc(MEMORY[0x277CBEAA8]);
    objc_msgSend_uploadReceiptExpiration(self, v164, v165);
    v168 = objc_msgSend_initWithTimeIntervalSince1970_(v163, v166, v167);
    v170 = objc_msgSend_stringWithFormat_(v162, v169, @"uploadReceiptExpiration=%@", v168);
    objc_msgSend_addObject_(v3, v171, v170);
  }

  v172 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v160, 5);
  if (objc_msgSend_finished(self, v173, v174))
  {
    objc_msgSend_addObject_(v172, v175, @"finished");
  }

  if (objc_msgSend_isTemporary(self, v175, v176))
  {
    objc_msgSend_addObject_(v172, v177, @"temporary");
  }

  if (objc_msgSend_shouldReadRawEncryptedData(self, v177, v178))
  {
    objc_msgSend_addObject_(v172, v179, @"read-encrypted");
  }

  if (objc_msgSend_shouldReadAssetContentUsingClientProxy(self, v179, v180))
  {
    objc_msgSend_addObject_(v172, v181, @"read-from-client-proxy");
  }

  v183 = objc_msgSend_downloadPreauthorization(self, v181, v182);

  if (v183)
  {
    objc_msgSend_addObject_(v172, v184, @"has-download-preauth");
  }

  if (objc_msgSend_count(v172, v184, v185))
  {
    v188 = MEMORY[0x277CCACA8];
    v189 = objc_msgSend_componentsJoinedByString_(v172, v186, @"|");
    v191 = objc_msgSend_stringWithFormat_(v188, v190, @"flags=%@", v189);
    objc_msgSend_addObject_(v3, v192, v191);
  }

  v193 = objc_msgSend_error(self, v186, v187);

  if (v193)
  {
    v196 = MEMORY[0x277CCACA8];
    v197 = objc_msgSend_error(self, v194, v195);
    v199 = objc_msgSend_stringWithFormat_(v196, v198, @"error=%@", v197);
    objc_msgSend_addObject_(v3, v200, v199);
  }

  v201 = objc_msgSend_componentsJoinedByString_(v3, v194, @", ");

  return v201;
}

- (id)_openInfo
{
  if (objc_msgSend_usesAssetDownloadStagingManager(self, a2, v2))
  {
    v4 = objc_alloc(MEMORY[0x277CBC1A0]);
    v5 = MEMORY[0x277CCABB0];
    v8 = objc_msgSend_itemID(self, v6, v7);
    v10 = objc_msgSend_numberWithUnsignedLongLong_(v5, v9, v8);
    v13 = objc_msgSend_trackingUUID(self, v11, v12);
    v16 = objc_msgSend_signature(self, v14, v15);
    v18 = objc_msgSend_initWithItemID_trackingUUID_signature_(v4, v17, v10, v13, v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_alloc(MEMORY[0x277CBC440]);
  v22 = objc_msgSend_trackingUUID(self, v20, v21);
  v25 = objc_msgSend_fileURL(self, v23, v24);
  v28 = objc_msgSend_path(v25, v26, v27);
  v31 = objc_msgSend_deviceID(self, v29, v30);
  v34 = objc_msgSend_fileID(self, v32, v33);
  v37 = objc_msgSend_generationID(self, v35, v36);
  RawEncryptedData = objc_msgSend_shouldReadRawEncryptedData(self, v38, v39);
  v43 = objc_msgSend_fileHandle(self, v41, v42);
  RawEncryptedData_fileHandle_assetDownloadStagingInfo = objc_msgSend_initWithUUID_path_deviceID_fileID_generationID_shouldReadRawEncryptedData_fileHandle_assetDownloadStagingInfo_(v19, v44, v22, v28, v31, v34, v37, RawEncryptedData, v43, v18);

  return RawEncryptedData_fileHandle_assetDownloadStagingInfo;
}

- (id)openWithOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  v9 = objc_msgSend__openInfo(self, v7, v8);
  v10 = objc_autoreleasePoolPush();
  if (objc_msgSend_isTemporary(self, v11, v12))
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_msgSend_path(v9, v13, v14);
    v19 = objc_msgSend_UUID(v9, v17, v18);
    if (v19)
    {
      v22 = v19;
      v23 = objc_msgSend_operationInfo(operationCopy, v20, v21);
      v26 = objc_msgSend_usesAssetDownloadStagingManager(v23, v24, v25);

      if (v26)
      {
        v40 = 0;
        v29 = objc_msgSend_openFileWithOpenInfo_error_(operationCopy, v27, v9, &v40);
        v15 = v40;
      }

      else
      {
        v30 = objc_msgSend_container(operationCopy, v27, v28);
        v39 = 0;
        v29 = objc_msgSend_openFileWithOpenInfo_error_(v30, v31, v9, &v39);
        v15 = v39;
      }

      if (v29)
      {
        objc_autoreleasePoolPop(v10);
        goto LABEL_18;
      }
    }

    else
    {
      v15 = objc_msgSend_errorWithDomain_code_path_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 3001, v16, @"nil UUID");
    }
  }

  isTemporary = objc_msgSend_isTemporary(self, v13, v14);
  if (!operationCopy || (isTemporary & 1) != 0 || objc_msgSend_isLongLived(operationCopy, v33, v34))
  {
    v38 = v15;
    v29 = objc_msgSend_openWithOpenInfo_error_(MEMORY[0x277CBC190], v33, v9, &v38);
    v35 = v38;

    v15 = v35;
  }

  else
  {
    v29 = 0;
  }

  objc_autoreleasePoolPop(v10);
  if (error && !v29)
  {
    v36 = v15;
    *error = v15;
  }

LABEL_18:

  return v29;
}

- (id)getFileSizeWithOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  if (objc_msgSend_shouldReadAssetContentUsingClientProxy(self, v7, v8))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = objc_msgSend_asset(self, v9, v10);
    v15 = objc_msgSend_size(v12, v13, v14);
    v17 = objc_msgSend_numberWithUnsignedLongLong_(v11, v16, v15);
  }

  else if ((objc_msgSend_isTemporary(self, v9, v10) & 1) != 0 || (objc_msgSend_openWithOperation_error_(self, v18, operationCopy, error), (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v21 = MEMORY[0x277CBC190];
    v12 = objc_msgSend__openInfo(self, v18, v19);
    v17 = objc_msgSend_getFileSizeWithOpenInfo_error_(v21, v22, v12, error);
  }

  else
  {
    v12 = v20;
    v17 = objc_msgSend_fileSize(v20, v18, v19);
  }

  v23 = v17;

  return v23;
}

- (id)getFileMetadataWithContainer:(id)container fileHandle:(id)handle error:(id *)error
{
  containerCopy = container;
  handleCopy = handle;
  v10 = objc_autoreleasePoolPush();
  if (objc_msgSend_isTemporary(self, v11, v12))
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_msgSend__openInfo(self, v13, v14);
    v26 = 0;
    v18 = objc_msgSend_getFileMetadataWithFileHandle_openInfo_error_(containerCopy, v17, handleCopy, v16, &v26);
    v15 = v26;

    if (v18)
    {
      objc_autoreleasePoolPop(v10);
      goto LABEL_8;
    }
  }

  v19 = v15;
  v20 = MEMORY[0x277CBC190];
  v21 = objc_msgSend__openInfo(self, v13, v14);
  v25 = v15;
  v18 = objc_msgSend_getFileMetadataWithFileHandle_openInfo_error_(v20, v22, handleCopy, v21, &v25);
  v15 = v25;

  objc_autoreleasePoolPop(v10);
  if (error && !v18)
  {
    v23 = v15;
    *error = v15;
  }

LABEL_8:

  return v18;
}

- (id)getFileMetadataWithFileHandle:(id)handle error:(id *)error
{
  v6 = MEMORY[0x277CBC190];
  handleCopy = handle;
  v10 = objc_msgSend__openInfo(self, v8, v9);
  v12 = objc_msgSend_getFileMetadataWithFileHandle_openInfo_error_(v6, v11, handleCopy, v10, error);

  return v12;
}

- (id)readBytesOfInMemoryAssetContentWithContainer:(id)container offset:(unint64_t)offset length:(unint64_t)length error:(id *)error
{
  containerCopy = container;
  v11 = objc_autoreleasePoolPush();
  if (objc_msgSend_shouldReadAssetContentUsingClientProxy(self, v12, v13))
  {
    v16 = objc_msgSend_trackingUUID(self, v14, v15);
    v22 = 0;
    v18 = objc_msgSend_readBytesOfInMemoryAssetContentWithUUID_offset_length_error_(containerCopy, v17, v16, offset, length, &v22);
    v19 = v22;
  }

  else
  {
    v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 3001, @"Requested to read bytes using client proxy when shouldReadAssetContentUsingClientProxy is NO");
    v18 = 0;
  }

  objc_autoreleasePoolPop(v11);
  if (error && !v18)
  {
    v20 = v19;
    *error = v19;
  }

  return v18;
}

- (id)clonedFileURLInDestinationDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_fileHandle(self, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = v5;
    v42 = 0;
    v13 = objc_msgSend_fileDescriptor(v8, v9, v10);
LABEL_5:
    v20 = v13;
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v22, v23);
    v27 = objc_msgSend_UUIDString(v24, v25, v26);
    v30 = objc_msgSend_signature(self, v28, v29);
    v31 = CKStringWithData();
    v33 = objc_msgSend_initWithFormat_(v21, v32, @"%@.%@", v27, v31);

    v35 = objc_msgSend_stringByAppendingPathComponent_(directoryCopy, v34, v33);
    v38 = objc_msgSend_fileSystemRepresentation(v35, v36, v37);
    if (fclonefileat(v20, -1, v38, 0))
    {
      v40 = 0;
    }

    else
    {
      v40 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v39, v35);
    }

    v5 = v12;

    v15 = v42;
    goto LABEL_9;
  }

  v43 = 0;
  v14 = objc_msgSend_openWithError_(self, v9, &v43);
  v15 = v43;
  v11 = objc_msgSend_fileHandle(v14, v16, v17);

  if (v11)
  {
    v42 = v15;
    v12 = v5;
    v13 = objc_msgSend_fileDescriptor(v11, v18, v19);
    goto LABEL_5;
  }

  v40 = 0;
LABEL_9:

  objc_autoreleasePoolPop(v5);

  return v40;
}

@end
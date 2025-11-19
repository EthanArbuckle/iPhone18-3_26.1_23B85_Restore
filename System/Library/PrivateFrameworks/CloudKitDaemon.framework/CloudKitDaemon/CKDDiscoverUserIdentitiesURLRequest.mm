@interface CKDDiscoverUserIdentitiesURLRequest
- (CKDDiscoverUserIdentitiesURLRequest)initWithOperation:(id)a3 lookupInfos:(id)a4 adopterProvidedLookupInfos:(BOOL)a5;
- (id)generateRequestOperations;
- (id)requestDidParseProtobufObject:(id)a3;
- (id)requestOperationClasses;
- (void)fillOutEquivalencyPropertiesBuilder:(id)a3;
- (void)requestDidParseNodeFailure:(id)a3;
@end

@implementation CKDDiscoverUserIdentitiesURLRequest

- (CKDDiscoverUserIdentitiesURLRequest)initWithOperation:(id)a3 lookupInfos:(id)a4 adopterProvidedLookupInfos:(BOOL)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = CKDDiscoverUserIdentitiesURLRequest;
  v10 = [(CKDURLRequest *)&v15 initWithOperation:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_infosToDiscover, a4);
    v12 = objc_opt_new();
    submittedInfos = v11->_submittedInfos;
    v11->_submittedInfos = v12;

    v11->_adopterProvidedLookupInfos = a5;
  }

  return v11;
}

- (void)fillOutEquivalencyPropertiesBuilder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CKDDiscoverUserIdentitiesURLRequest;
  [(CKDURLRequest *)&v17 fillOutEquivalencyPropertiesBuilder:v4];
  if (objc_msgSend_adopterProvidedLookupInfos(self, v5, v6))
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_msgSend_infosToDiscover(self, v7, v8);
    v13 = objc_msgSend_ckEquivalencyProperties(v10, v11, v12);
    v15 = objc_msgSend_setWithArray_(v9, v14, v13);

    objc_msgSend_setObject_forKeyedSubscript_(v4, v16, v15, @"lookupInfos");
  }
}

- (id)requestOperationClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)generateRequestOperations
{
  v4 = objc_msgSend_infosToDiscover(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253E563C;
  v8[3] = &unk_27854D700;
  v8[4] = self;
  v6 = objc_msgSend_CKMap_(v4, v5, v8);

  return v6;
}

- (id)requestDidParseProtobufObject:(id)a3
{
  v172 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_hasUserQueryResponse(v4, v5, v6) && (objc_msgSend_userQueryResponse(v4, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend_user(v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v9, v12))
  {
    if (objc_msgSend_hasIdentifier(v12, v7, v8))
    {
      v15 = objc_msgSend_identifier(v12, v13, v14);
      if (objc_msgSend_hasName(v15, v16, v17))
      {
        v20 = objc_msgSend_identifier(v12, v18, v19);
        v167 = objc_msgSend_name(v20, v21, v22);
      }

      else
      {
        v167 = 0;
      }
    }

    else
    {
      v167 = 0;
    }

    if (objc_msgSend_hasFirstName(v12, v13, v14))
    {
      v23 = objc_msgSend_firstName(v12, v27, v28);
    }

    else
    {
      v23 = 0;
    }

    if (objc_msgSend_hasLastName(v12, v27, v28))
    {
      v24 = objc_msgSend_lastName(v12, v7, v8);
    }

    else
    {
      v24 = 0;
    }

    p_wantsProtectionInfo = &self->_wantsProtectionInfo;
    if (self->_wantsProtectionInfo && objc_msgSend_hasProtectionInfo(v12, v7, v8))
    {
      v25 = objc_msgSend_protectionInfo(v12, v7, v8);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v167 = 0;
    v12 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    p_wantsProtectionInfo = &self->_wantsProtectionInfo;
  }

  submittedInfos = self->_submittedInfos;
  v30 = objc_msgSend_response(v4, v7, v8);
  v33 = objc_msgSend_operationUUID(v30, v31, v32);
  v35 = objc_msgSend_objectForKeyedSubscript_(submittedInfos, v34, v33);

  v38 = objc_msgSend_fakeResponseOperationResultByItemID(self, v36, v37);

  if (v38)
  {
    v41 = objc_msgSend_fakeResponseOperationResultByItemID(self, v39, v40);
    inited = objc_msgSend_objectForKeyedSubscript_(v41, v42, v35);

    if (inited)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v44 = v23;
      v45 = *MEMORY[0x277CBC860];
      if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
      {
        v154 = v45;
        v157 = objc_msgSend_requestUUID(self, v155, v156);
        *buf = 138543618;
        v169 = v157;
        v170 = 2112;
        v171 = v35;
        _os_log_error_impl(&dword_22506F000, v154, OS_LOG_TYPE_ERROR, "req: %{public}@, Inlining fake response operation result for item id %@", buf, 0x16u);
      }

      objc_msgSend_setResult_(v4, v46, inited);
      v49 = objc_msgSend_progressBlock(self, v47, v48);

      if (!v49)
      {
        goto LABEL_56;
      }

      v52 = objc_msgSend_progressBlock(self, v50, v51);
      v55 = objc_msgSend_result(v4, v53, v54);
      (v52)[2](v52, v35, 0, v55);
      goto LABEL_55;
    }
  }

  v56 = objc_msgSend_alias(v12, v39, v40);
  v59 = objc_msgSend_type(v56, v57, v58);

  if (v59 == 1)
  {
    v62 = v167;
    if (!v167)
    {
      goto LABEL_38;
    }

    v63 = 1;
    goto LABEL_37;
  }

  v64 = objc_msgSend_alias(v12, v60, v61);
  v67 = objc_msgSend_type(v64, v65, v66);

  if (v67 == 2)
  {
    v62 = v167;
    if (!v167)
    {
      goto LABEL_38;
    }

    v63 = 2;
    goto LABEL_37;
  }

  v68 = objc_msgSend_alias(v12, v60, v61);
  v71 = objc_msgSend_type(v68, v69, v70);

  v62 = 0;
  if (v71 == 3 && v167)
  {
    v63 = 3;
LABEL_37:
    v62 = objc_msgSend_lookupField(v35, v60, v61) == v63;
  }

LABEL_38:
  if (v25)
  {
    v44 = v23;
    if (v62)
    {
      v72 = objc_alloc(MEMORY[0x277CBC5D0]);
      v74 = objc_msgSend_initWithRecordName_(v72, v73, v167);
      v75 = objc_alloc(MEMORY[0x277CBC7C0]);
      inited = objc_msgSend_initWithUserRecordID_(v75, v76, v74);
    }

    else
    {
      v99 = objc_alloc(MEMORY[0x277CBC7C0]);
      inited = objc_msgSend_initInternal(v99, v100, v101);
    }

    objc_msgSend_setLookupInfo_(inited, v77, v35);
    v104 = objc_msgSend_nameComponents(inited, v102, v103);
    objc_msgSend_setGivenName_(v104, v105, v23);

    v108 = objc_msgSend_nameComponents(inited, v106, v107);
    objc_msgSend_setFamilyName_(v108, v109, v24);

    v112 = objc_msgSend_protectionInfo(v25, v110, v111);
    objc_msgSend_setPublicSharingKey_(inited, v113, v112);

LABEL_53:
    v114 = objc_msgSend_progressBlock(self, v97, v98);

    if (!v114)
    {
LABEL_56:

      goto LABEL_57;
    }

    v52 = objc_msgSend_progressBlock(self, v115, v116);
    v55 = objc_msgSend_result(v4, v117, v118);
    (v52)[2](v52, v35, inited, v55);
LABEL_55:

    goto LABEL_56;
  }

  if (*p_wantsProtectionInfo)
  {
    v78 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v79 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
    {
      v158 = v79;
      v161 = objc_msgSend_requestUUID(self, v159, v160);
      *buf = 138543362;
      v169 = v161;
      _os_log_debug_impl(&dword_22506F000, v158, OS_LOG_TYPE_DEBUG, "req: %{public}@, Received no public key when discovering user identity, though it was requested, this is an OON case", buf, 0xCu);
    }

    v80 = objc_alloc(MEMORY[0x277CBC7C0]);
    inited = objc_msgSend_initInternal(v80, v81, v82);
    objc_msgSend_setLookupInfo_(inited, v83, v35);
    v86 = objc_msgSend_nameComponents(inited, v84, v85);
    objc_msgSend_setGivenName_(v86, v87, v23);

    v90 = objc_msgSend_nameComponents(inited, v88, v89);
    objc_msgSend_setFamilyName_(v90, v91, v24);

    if (*v78 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v92 = *MEMORY[0x277CBC860];
    v44 = v23;
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
    {
      v162 = v92;
      v165 = objc_msgSend_requestUUID(self, v163, v164);
      *buf = 138543618;
      v169 = v165;
      v170 = 2112;
      v171 = inited;
      _os_log_debug_impl(&dword_22506F000, v162, OS_LOG_TYPE_DEBUG, "req: %{public}@, OON user identity detected: %@", buf, 0x16u);
    }

    v95 = objc_msgSend_isInNetwork(v12, v93, v94);
    objc_msgSend_setHasiCloudAccount_(inited, v96, v95);
    goto LABEL_53;
  }

  if (v62)
  {
    v121 = objc_alloc(MEMORY[0x277CBC5D0]);
    v123 = objc_msgSend_initWithRecordName_(v121, v122, v167);
    v124 = objc_alloc(MEMORY[0x277CBC7C0]);
    v166 = v123;
    v126 = objc_msgSend_initWithUserRecordID_(v124, v125, v123);
    objc_msgSend_setLookupInfo_(v126, v127, v35);
    v130 = objc_msgSend_nameComponents(v126, v128, v129);
    v44 = v23;
    objc_msgSend_setGivenName_(v130, v131, v23);

    v134 = objc_msgSend_nameComponents(v126, v132, v133);
    objc_msgSend_setFamilyName_(v134, v135, v24);

    v138 = objc_msgSend_progressBlock(self, v136, v137);

    if (v138)
    {
      v141 = objc_msgSend_progressBlock(self, v139, v140);
      v144 = objc_msgSend_result(v4, v142, v143);
      (v141)[2](v141, v35, v126, v144);
    }
  }

  else
  {
    v44 = v23;
    if (objc_msgSend_shouldReportMissingIdentity(v35, v60, v61))
    {
      v147 = objc_msgSend_progressBlock(self, v145, v146);

      if (v147)
      {
        v150 = objc_msgSend_progressBlock(self, v148, v149);
        v153 = objc_msgSend_result(v4, v151, v152);
        (v150)[2](v150, v35, 0, v153);
      }
    }
  }

LABEL_57:

  v119 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)requestDidParseNodeFailure:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  submittedInfos = self->_submittedInfos;
  v8 = objc_msgSend_response(v4, v6, v7);
  v11 = objc_msgSend_operationUUID(v8, v9, v10);
  v13 = objc_msgSend_objectForKeyedSubscript_(submittedInfos, v12, v11);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
  {
    v17 = v14;
    v20 = objc_msgSend_requestUUID(self, v18, v19);
    v23 = objc_msgSend_result(v4, v21, v22);
    v32 = 138543874;
    v33 = v20;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v23;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "req: %{public}@, Node level failure for info %@: %@", &v32, 0x20u);
  }

  v24 = objc_msgSend_progressBlock(self, v15, v16);

  if (v24)
  {
    v27 = objc_msgSend_progressBlock(self, v25, v26);
    v30 = objc_msgSend_result(v4, v28, v29);
    (v27)[2](v27, v13, 0, v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

@end
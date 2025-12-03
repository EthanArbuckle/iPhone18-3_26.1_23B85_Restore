@interface CSSESWrapper
- (BOOL)validatePassphrasePresentOrPending;
- (CSSESWrapper)initWithDSID:(id)d escrowRecordContents:(id)contents passcodeStashSecret:(id)secret recoveryPassphrase:(id)passphrase recordID:(id)iD recordLabel:(id)label useAppleIDPassword:(BOOL)password appleIDPasswordMetadata:(id)self0 reqVersion:(int)self1;
- (CSSESWrapper)initWithRequest:(id)request validate:(BOOL)validate reqVersion:(int)version;
- (id)derivePassword;
- (id)derivePasswordGuitarfish;
- (id)encodedEscrowRecordWithPublicKey:(__SecKey *)key certificateData:(id)data error:(id *)error;
- (id)encodedEscrowRecordWithPublicKeyBytes:(id)bytes certificateData:(id)data error:(id *)error;
- (id)recoveryResponseForBlob:(id)blob;
- (id)srpInitBlob;
- (id)srpRecoveryBlobFromData:(id)data error:(id *)error;
- (id)srpResponseForEscrowBlob:(id)blob withFullCCKey:(ccrsa_full_ctx *)key;
- (unint64_t)srpKeySize;
- (unint64_t)srpPublicKeySize;
- (void)dealloc;
- (void)setReqVersion:(int)version;
- (void)srpRecoveryUpdateDSID:(id)d recoveryPassphrase:(id)passphrase;
@end

@implementation CSSESWrapper

- (CSSESWrapper)initWithRequest:(id)request validate:(BOOL)validate reqVersion:(int)version
{
  validateCopy = validate;
  requestCopy = request;
  v11 = requestCopy;
  if (validateCopy && (objc_msgSend_validateInput(requestCopy, v9, v10), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F5208();
    }

    selfCopy = 0;
  }

  else
  {
    versionCopy = version;
    v16 = objc_msgSend_dsid(v11, v9, v10);
    v19 = objc_msgSend_escrowRecord(v11, v17, v18);
    v22 = objc_msgSend_passcodeStashSecret(v11, v20, v21);
    v25 = objc_msgSend_recoveryPassphrase(v11, v23, v24);
    v28 = objc_msgSend_recordID(v11, v26, v27);
    v31 = objc_msgSend_recordLabel(v11, v29, v30);
    if (objc_msgSend_guitarfish(v11, v32, v33))
    {
      v36 = objc_msgSend_guitarfishToken(v11, v34, v35) ^ 1;
    }

    else
    {
      v36 = 0;
    }

    v37 = objc_msgSend_appleIDPasswordMetadata(v11, v34, v35);
    v41 = versionCopy;
    v40 = v36;
    self = objc_msgSend_initWithDSID_escrowRecordContents_passcodeStashSecret_recoveryPassphrase_recordID_recordLabel_useAppleIDPassword_appleIDPasswordMetadata_reqVersion_(self, v38, v16, v19, v22, v25, v28, v31, v40, v37, v41);

    selfCopy = self;
  }

  return selfCopy;
}

- (CSSESWrapper)initWithDSID:(id)d escrowRecordContents:(id)contents passcodeStashSecret:(id)secret recoveryPassphrase:(id)passphrase recordID:(id)iD recordLabel:(id)label useAppleIDPassword:(BOOL)password appleIDPasswordMetadata:(id)self0 reqVersion:(int)self1
{
  dCopy = d;
  contentsCopy = contents;
  secretCopy = secret;
  passphraseCopy = passphrase;
  iDCopy = iD;
  obj = label;
  labelCopy = label;
  metadataCopy = metadata;
  if (((objc_msgSend_isEqualToString_(labelCopy, v22, @"com.apple.protectedcloudstorage.record") & 1) != 0 || objc_msgSend_isEqualToString_(labelCopy, v23, @"com.apple.protectedcloudstorage.record.double")) && (objc_msgSend_isEqualToString_(passphraseCopy, v23, dCopy) & 1) == 0)
  {
    sub_22E9F511C();
  }

  v34.receiver = self;
  v34.super_class = CSSESWrapper;
  v24 = [(CSSESWrapper *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_dsid, d);
    objc_storeStrong(&v25->_escrowRecord, contents);
    objc_storeStrong(&v25->_passcodeStashSecret, secret);
    objc_storeStrong(&v25->_recoveryPassphrase, passphrase);
    objc_storeStrong(&v25->_recordID, iD);
    objc_storeStrong(&v25->_label, obj);
    if (!v25->_dsid && !v25->_recoveryPassphrase)
    {
      v25->_recoveryPassphraseMutable = 1;
    }

    v25->_reqVersion = version;
    v26 = malloc_type_malloc(0x38uLL, 0x6004031944618uLL);
    v25->_ckvr = v26;
    sub_22E9E763C(v26);
    objc_msgSend_setReqVersion_(v25, v27, version);
    v25->_useAppleIDPassword = password;
    objc_storeStrong(&v25->_appleIDPasswordMetadata, metadata);
    v28 = v25;
  }

  return v25;
}

- (id)derivePasswordGuitarfish
{
  v4 = objc_msgSend_appleIDPasswordMetadata(self, a2, v2);

  if (v4)
  {
    ccsha256_di();
    v7 = objc_msgSend_appleIDPasswordMetadata(self, v5, v6);
    v10 = objc_msgSend_proto(v7, v8, v9);
    objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277CED198]);

    v14 = objc_msgSend_recoveryPassphrase(self, v12, v13);
    v17 = objc_msgSend_appleIDPasswordMetadata(self, v15, v16);
    v20 = objc_msgSend_salt(v17, v18, v19);
    v21 = MEMORY[0x277CCABB0];
    v24 = objc_msgSend_appleIDPasswordMetadata(self, v22, v23);
    v27 = objc_msgSend_iterations(v24, v25, v26);
    objc_msgSend_numberWithInt_(v21, v28, v27);
    v29 = AppleIDAuthSupportPBKDF2SRP();

    if (!v29)
    {
      v30 = CloudServicesLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_22E9F5278();
      }
    }
  }

  else
  {
    v31 = CloudServicesLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F52E8();
    }

    v29 = 0;
  }

  return v29;
}

- (id)derivePassword
{
  if (objc_msgSend_useAppleIDPassword(self, a2, v2))
  {
    v6 = objc_msgSend_derivePasswordGuitarfish(self, v4, v5);
  }

  else
  {
    v7 = objc_msgSend_recoveryPassphrase(self, v4, v5);
    v6 = objc_msgSend_dataUsingEncoding_(v7, v8, 4);
  }

  return v6;
}

- (void)setReqVersion:(int)version
{
  self->_reqVersion = version;
  p_reqVersion = &self->_reqVersion;
  if (version >= 3)
  {
    v5 = p_reqVersion;
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F5324(v5);
    }

    abort();
  }
}

- (id)srpInitBlob
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_ckvr(self, a2, v2);
  v7 = sub_22E9E77E8(v4);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = v15 - v8;
  if (v7)
  {
    memset(v15 - v8, 170, v7);
  }

  v10 = objc_msgSend_ckvr(self, v5, v6);
  sub_22E9E7818(v10, v9, v7);
  v12 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v11, v9, v7);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)srpKeySize
{
  v3 = objc_msgSend_ckvr(self, a2, v2);

  return sub_22E9E7888(v3);
}

- (unint64_t)srpPublicKeySize
{
  v3 = objc_msgSend_ckvr(self, a2, v2);

  return sub_22E9E77E8(v3);
}

- (void)srpRecoveryUpdateDSID:(id)d recoveryPassphrase:(id)passphrase
{
  dCopy = d;
  passphraseCopy = passphrase;
  if (!self->_recoveryPassphraseMutable)
  {
    abort();
  }

  v8 = passphraseCopy;
  self->_recoveryPassphraseMutable = 0;
  dsid = self->_dsid;
  self->_dsid = dCopy;
  v11 = dCopy;

  recoveryPassphrase = self->_recoveryPassphrase;
  self->_recoveryPassphrase = v8;
}

- (BOOL)validatePassphrasePresentOrPending
{
  if (objc_msgSend_recoveryPassphraseMutable(self, a2, v2))
  {
    return 1;
  }

  v7 = objc_msgSend_recoveryPassphrase(self, v4, v5);
  v6 = v7 != 0;

  return v6;
}

- (id)srpRecoveryBlobFromData:(id)data error:(id *)error
{
  v155 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  self->_recoveryPassphraseMutable = 0;
  if (objc_msgSend_length(dataCopy, v7, v8) >> 32)
  {
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F55D4(dataCopy, v11, v12);
    }

    if (error)
    {
      v15 = objc_msgSend_length(dataCopy, v13, v14);
      objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v16, @"EscrowServiceErrorDomain", 102, @"srp recovery blob too large: %lu bytes", v15);
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_72;
  }

  v18 = objc_msgSend_length(dataCopy, v9, v10);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v145 - v19;
  if (v18)
  {
    memset(&v145 - v19, 170, v18);
  }

  v21 = dataCopy;
  v24 = objc_msgSend_bytes(v21, v22, v23);
  v27 = objc_msgSend_length(dataCopy, v25, v26);
  memcpy(v20, v24, v27);
  v30 = objc_msgSend_length(dataCopy, v28, v29);
  if (sub_22E9EB7E4(v30, v20))
  {
    v33 = MEMORY[0x277CBEA90];
    v34 = objc_msgSend_length(dataCopy, v31, v32);
    v36 = objc_msgSend_dataWithBytes_length_(v33, v35, v20, v34);
    v39 = v36;
    if (v36)
    {
      v40 = objc_msgSend_length(v36, v37, v38);
      v41 = v39;
      v44 = objc_msgSend_bytes(v39, v42, v43);
      v153 = -1;
      v47 = objc_msgSend_ckvr(self, v45, v46);
      v153 = sub_22E9EB158(v47, v44);
      v148 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v48, v153);
      if (objc_msgSend_useAppleIDPassword(self, v49, v50))
      {
        v53 = &unk_22E9FB10B;
LABEL_21:
        v60 = objc_msgSend_recoveryPassphrase(self, v51, v52);
        v61 = v60 == 0;

        if (!v61)
        {
          if (objc_msgSend_useAppleIDPassword(self, v62, v63))
          {
            v66 = sub_22E9E7F1C(v40, v44);
            if ((v66 & 0x8000000000000000) != 0)
            {
              v83 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v67, @"EscrowServiceErrorDomain", 102, @"Failed to get salt from SRP response");
              v84 = CloudServicesLog();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                sub_22E9F5414();
              }

              if (error)
              {
                v85 = v83;
                *error = v83;
              }

              goto LABEL_49;
            }

            v150 = v66;
            v68 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v67, v66);
            v69 = v68;
            v72 = objc_msgSend_mutableBytes(v68, v70, v71);
            if (sub_22E9E7FA4(v40, v44, &v150, v72))
            {
              v74 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v73, @"EscrowServiceErrorDomain", 102, @"Failed to copy from SRP response");
              v75 = CloudServicesLog();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                sub_22E9F5414();
              }

              if (error)
              {
                v76 = v74;
                *error = v74;
              }

              goto LABEL_49;
            }

            v86 = [AppleIDPasswordMetadata alloc];
            v147 = objc_msgSend_appleIDPasswordMetadata(self, v87, v88);
            v146 = objc_msgSend_proto(v147, v89, v90);
            v93 = objc_msgSend_appleIDPasswordMetadata(self, v91, v92);
            v96 = objc_msgSend_iterations(v93, v94, v95);
            v98 = objc_msgSend_initWithProto_salt_iterations_(v86, v97, v146, v68, v96);

            objc_msgSend_setAppleIDPasswordMetadata_(self, v99, v98);
          }

          v100 = objc_msgSend_derivePassword(self, v64, v65);
          v103 = v100;
          if (v100)
          {
            v147 = objc_msgSend_length(v100, v101, v102);
            v104 = v103;
            v146 = objc_msgSend_bytes(v103, v105, v106);
            v150 = 0;
            v151[0] = &v150;
            v151[1] = 0x3032000000;
            v151[2] = sub_22E9F0430;
            v151[3] = sub_22E9F0440;
            v152 = 0;
            v149[0] = MEMORY[0x277D85DD0];
            v149[1] = 3221225472;
            v149[2] = sub_22E9F0448;
            v149[3] = &unk_27885A0D8;
            v149[4] = &v150;
            v107 = MEMORY[0x2318F0BD0](v149);
            v110 = objc_msgSend_reqVersion(self, v108, v109);
            if (v110)
            {
              if (v110 == 1)
              {
                v120 = objc_msgSend_ckvr(self, v111, v112);
                v121 = v148;
                v124 = objc_msgSend_mutableBytes(v148, v122, v123);
                v118 = sub_22E9E7EC4(v120, v53, v147, v146, v44, &v153, v124, sub_22E9F0358, v107);
              }

              else
              {
                if (v110 != 2)
                {
                  v141 = CloudServicesLog();
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                  {
                    v144 = objc_msgSend_reqVersion(self, v142, v143);
                    sub_22E9F5514(buf, v144, v141);
                  }

                  abort();
                }

                v113 = objc_msgSend_ckvr(self, v111, v112);
                v114 = v148;
                v117 = objc_msgSend_mutableBytes(v148, v115, v116);
                v118 = sub_22E9E7EF0(v113, v53, v147, v146, v44, &v153, v117, sub_22E9F0358, v107);
              }
            }

            else
            {
              v125 = objc_msgSend_ckvr(self, v111, v112);
              v126 = v148;
              v129 = objc_msgSend_mutableBytes(v148, v127, v128);
              v118 = sub_22E9E78CC(v125, v53, v147, v146, v44, &v153, v129, sub_22E9F0358, v107);
            }

            v130 = v118;
            if (error)
            {
              v131 = *(v151[0] + 40);
              if (v131)
              {
                *error = v131;
              }
            }

            if (v130)
            {
              v132 = CloudServicesLog();
              if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
              {
                sub_22E9F5484(v151, v130, v132);
              }

              v17 = 0;
            }

            else
            {
              v133 = objc_alloc(MEMORY[0x277CBEA90]);
              v134 = v148;
              v137 = objc_msgSend_bytes(v148, v135, v136);
              v17 = objc_msgSend_initWithBytes_length_(v133, v138, v137, v153);
            }

            _Block_object_dispose(&v150, 8);
          }

          else
          {
            v119 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v101, @"EscrowServiceErrorDomain", 102, @"fail to derive password");
            if (error)
            {
              v119 = v119;
              *error = v119;
            }

            v17 = 0;
          }

          goto LABEL_71;
        }

        v77 = CloudServicesLog();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F555C();
        }

        if (error)
        {
          objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v78, @"EscrowServiceErrorDomain", 128, @"recoveryPassphrase not provided");
          *error = v17 = 0;
LABEL_71:

          goto LABEL_72;
        }

LABEL_49:
        v17 = 0;
        goto LABEL_71;
      }

      v56 = objc_msgSend_dsid(self, v51, v52);
      v57 = v56;
      if (v56)
      {
        v58 = v56;
        v53 = objc_msgSend_cStringUsingEncoding_(v57, v59, 4);
        if (v53)
        {

          goto LABEL_21;
        }

        v81 = CloudServicesLog();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F539C();
        }

        if (!error)
        {
LABEL_43:

          goto LABEL_49;
        }

        objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v82, @"EscrowServiceErrorDomain", 102, @"username could not be converted to cstring");
      }

      else
      {
        v79 = CloudServicesLog();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F53D8();
        }

        if (!error)
        {
          goto LABEL_43;
        }

        objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v80, @"EscrowServiceErrorDomain", 102, @"can't process recovery blob with no username");
      }
      *error = ;
      goto LABEL_43;
    }
  }

  v54 = CloudServicesLog();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F5598();
  }

  if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v55, @"EscrowServiceErrorDomain", 102, @"failed to convert srp init response");
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_72:

  v139 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)encodedEscrowRecordWithPublicKey:(__SecKey *)key certificateData:(id)data error:(id *)error
{
  dataCopy = data;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (SecKeyCopyPublicBytes())
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_22E9CA000, v9, OS_LOG_TYPE_DEFAULT, "SecKeyCopyPublicBytes failed", v12, 2u);
    }

    v10 = 0;
  }

  else
  {
    v9 = v13;
    v10 = objc_msgSend_encodedEscrowRecordWithPublicKeyBytes_certificateData_error_(self, v8, v13, dataCopy, error);
  }

  return v10;
}

- (id)encodedEscrowRecordWithPublicKeyBytes:(id)bytes certificateData:(id)data error:(id *)error
{
  v307 = *MEMORY[0x277D85DE8];
  bytesCopy = bytes;
  dataCopy = data;
  v10 = MEMORY[0x277CCAC58];
  v13 = objc_msgSend_escrowRecord(self, v11, v12);
  v302 = 0;
  v15 = objc_msgSend_dataWithPropertyList_format_options_error_(v10, v14, v13, 200, 0, &v302);
  v16 = v302;

  if (!v15)
  {
    v19 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v17, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v19, v117, v16, *MEMORY[0x277CCA7E8]);
    objc_msgSend_setObject_forKeyedSubscript_(v19, v118, @"failed to serialize escrow data", *MEMORY[0x277CCA450]);
    v120 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v119, @"EscrowServiceErrorDomain", 5, v19);
    v121 = CloudServicesLog();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v304 = v120;
      _os_log_impl(&dword_22E9CA000, v121, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (error)
    {
      v122 = v120;
      *error = v120;
    }

    goto LABEL_24;
  }

  v19 = objc_msgSend_dsid(self, v17, v18);
  v20 = v19;
  v22 = objc_msgSend_cStringUsingEncoding_(v20, v21, 4);
  if (!v22)
  {
    v123 = CloudServicesLog();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      v126 = objc_msgSend_label(self, v124, v125);
      v129 = objc_msgSend_dsid(self, v127, v128);
      *buf = 138412546;
      v304 = v126;
      v305 = 2112;
      v306 = v129;
      _os_log_impl(&dword_22E9CA000, v123, OS_LOG_TYPE_DEFAULT, "username missing for %@ (dsid %@)", buf, 0x16u);
    }

    if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v130, @"EscrowServiceErrorDomain", 4, @"Username missing");
      *error = v116 = 0;
      goto LABEL_43;
    }

    goto LABEL_24;
  }

  v23 = v22;
  errorCopy = error;
  v299 = v16;
  v297 = strlen(v22);
  v26 = objc_msgSend_label(self, v24, v25);
  v27 = v26;
  v29 = objc_msgSend_cStringUsingEncoding_(v27, v28, 4);

  v32 = objc_msgSend_recordID(self, v30, v31);

  if (v32)
  {
    v35 = MEMORY[0x277CCACA8];
    v36 = objc_msgSend_label(self, v33, v34);
    v39 = objc_msgSend_recordID(self, v37, v38);
    v41 = objc_msgSend_stringWithFormat_(v35, v40, @"%@.%@", v36, v39);
    v42 = v41;
    v29 = objc_msgSend_cStringUsingEncoding_(v42, v43, 4);
  }

  if (!v29)
  {
    v131 = CloudServicesLog();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v134 = objc_msgSend_label(self, v132, v133);
      v137 = objc_msgSend_dsid(self, v135, v136);
      *buf = 138412546;
      v304 = v134;
      v305 = 2112;
      v306 = v137;
      _os_log_impl(&dword_22E9CA000, v131, OS_LOG_TYPE_DEFAULT, "label missing for %@ (dsid %@)", buf, 0x16u);
    }

    v16 = v299;
    if (errorCopy)
    {
      objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v138, @"EscrowServiceErrorDomain", 4, @"label missing");
      *errorCopy = v116 = 0;
      goto LABEL_43;
    }

LABEL_24:
    v116 = 0;
    goto LABEL_43;
  }

  v44 = strlen(v29);
  v47 = 128;
  if (v44 < 0x80)
  {
    v47 = v44;
  }

  v293 = v47;
  v48 = objc_msgSend_date(MEMORY[0x277CBEAA8], v45, v46);
  v295 = objc_msgSend_posixDateFormatter(CSDateUtilities, v49, v50);
  v296 = v48;
  v294 = objc_msgSend_stringFromDate_(v295, v51, v48);
  v53 = objc_msgSend_cStringUsingEncoding_(v294, v52, 4);
  v292 = strlen(v53);
  objc_msgSend_length(bytesCopy, v54, v55);
  v56 = bytesCopy;
  objc_msgSend_bytes(v56, v57, v58);
  v59 = ccrsa_import_pub_n();
  if (v59)
  {
    v62 = v59;
    if (objc_msgSend_useAppleIDPassword(self, v60, v61))
    {
      v65 = objc_msgSend_appleIDPasswordMetadata(self, v63, v64);

      if (!v65)
      {
        v66 = objc_alloc(MEMORY[0x277CBEB28]);
        v68 = objc_msgSend_initWithLength_(v66, v67, 32);
        v69 = v68;
        *(&v288 + 1) = v53;
        v72 = objc_msgSend_mutableBytes(v69, v70, v71);
        v75 = objc_msgSend_length(v68, v73, v74);
        v76 = v72;
        v53 = *(&v288 + 1);
        CCRandomGenerateBytes(v76, v75);
        v77 = [AppleIDPasswordMetadata alloc];
        v79 = objc_msgSend_initWithProto_salt_iterations_(v77, v78, *MEMORY[0x277CED190], v68, 43690);
        appleIDPasswordMetadata = self->_appleIDPasswordMetadata;
        self->_appleIDPasswordMetadata = v79;
      }
    }

    v81 = objc_msgSend_passcodeStashSecret(self, v63, v64);

    v289 = dataCopy;
    v290 = bytesCopy;
    v291 = v15;
    if (v81)
    {
      v300 = 0;
      v301 = 0;
      v84 = objc_msgSend_passcodeStashSecret(self, v82, v83);
      v85 = v84;
      *(&v288 + 1) = objc_msgSend_bytes(v85, v86, v87);
      v90 = objc_msgSend_passcodeStashSecret(self, v88, v89);
      *&v288 = objc_msgSend_length(v90, v91, v92);
      v93 = v15;
      v96 = objc_msgSend_bytes(v93, v94, v95);
      v99 = objc_msgSend_length(v15, v97, v98);
      v100 = dataCopy;
      v103 = v29;
      v104 = objc_msgSend_bytes(v100, v101, v102);
      v107 = objc_msgSend_length(dataCopy, v105, v106);
      sub_22E9F48FC(4294967293, *(&v288 + 1), v288, v23, v297 + 1, v103, v293, v96, v99, v53, v292, v104, v107, &v301, &v300, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291);
      v109 = v108;

      if (v109)
      {
        v111 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v110, *MEMORY[0x277CCA590], v109, 0);
        v113 = objc_msgSend_errorWithDomain_code_underlyingError_format_(CloudServicesError, v112, @"EscrowServiceErrorDomain", 125, v111, @"Escrow error encrypting data (%x)", v109);

        v114 = CloudServicesLog();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v304 = v113;
          _os_log_impl(&dword_22E9CA000, v114, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        dataCopy = v289;
        bytesCopy = v290;
        v15 = v291;
        v16 = v299;
        if (errorCopy)
        {
          v115 = v113;
          *errorCopy = v113;
        }

        v116 = 0;
        goto LABEL_42;
      }

      v168 = objc_alloc(MEMORY[0x277CBEA90]);
      v116 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v168, v169, v301, v300, 1);
      dataCopy = v289;
      bytesCopy = v290;
      v15 = v291;
      goto LABEL_41;
    }

    *(&v288 + 1) = v53;
    v147 = v29;
    if (objc_msgSend_useAppleIDPassword(self, v82, v83))
    {
      v148 = objc_msgSend_appleIDPasswordMetadata(self, v145, v146);
      *&v288 = objc_msgSend_ckvr(self, v149, v150);
      v153 = objc_msgSend_length(v291, v151, v152);
      v156 = objc_msgSend_salt(v148, v154, v155);
      v159 = objc_msgSend_length(v156, v157, v158);
      v160 = bytesCopy;
      objc_msgSend_bytes(v160, v161, v162);
      objc_msgSend_length(bytesCopy, v163, v164);
      v165 = sub_22E9EA0B8(v288, 0, v153, v293, v292, v159);
    }

    else
    {
      v172 = bytesCopy;
      v173 = objc_msgSend_ckvr(self, v145, v146);
      v176 = objc_msgSend_length(v291, v174, v175);
      v177 = v172;
      objc_msgSend_bytes(v177, v178, v179);
      objc_msgSend_length(v172, v180, v181);
      v166 = sub_22E9EA294(v173, v297, v176, v293, v292);
      v165 = v166;
    }

    v16 = v299;
    if (v165 > 0x1000)
    {
      v182 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v167, @"EscrowServiceErrorDomain", 3, @"Escrow data too long (%zu)", v165);
      v183 = v182;
      bytesCopy = v290;
      if (errorCopy)
      {
        v184 = v182;
        *errorCopy = v183;
      }

      v185 = CloudServicesLog();
      if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v304 = v183;
        _os_log_impl(&dword_22E9CA000, v185, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v116 = 0;
      dataCopy = v289;
      v15 = v291;
      goto LABEL_42;
    }

    *&v288 = &v283;
    MEMORY[0x28223BE20](v166);
    v186 = v290;
    if (v165)
    {
      memset(&v283 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v165);
    }

    *(&v287 + 1) = &v283 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v287 = v165;
    v187 = malloc_type_malloc(24 * v62 + 40, 0x10600407F0B3959uLL);
    *v187 = v62;
    v188 = v187;
    objc_msgSend_length(v186, v189, v190);
    v191 = v186;
    objc_msgSend_bytes(v191, v192, v193);
    ccrsa_import_pub();
    if (objc_msgSend_useAppleIDPassword(self, v194, v195))
    {
      v297 = v188;
      v198 = objc_msgSend_appleIDPasswordMetadata(self, v196, v197);
      v301 = 0;
      v201 = objc_msgSend_proto(v198, v199, v200);
      v204 = objc_msgSend_salt(v198, v202, v203);
      v205 = MEMORY[0x277CCABB0];
      v208 = objc_msgSend_iterations(v198, v206, v207);
      objc_msgSend_numberWithInt_(v205, v209, v208);
      v212 = objc_msgSend_recoveryPassphrase(self, v210, v211);
      Verifier = AppleIDAuthSupportCreateVerifier();

      if (!Verifier)
      {
        v244 = 0;
        v247 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v214, v215);
        v274 = v301;
        objc_msgSend_setObject_forKeyedSubscript_(v247, v275, v301, *MEMORY[0x277CCA7E8]);

        objc_msgSend_setObject_forKeyedSubscript_(v247, v276, @"could not create verifier", *MEMORY[0x277CCA450]);
        v278 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v277, @"EscrowServiceErrorDomain", 6, v247);
        v279 = CloudServicesLog();
        if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F5414();
        }

        dataCopy = v289;
        bytesCopy = v290;
        v280 = errorCopy;
        v16 = v299;
        if (errorCopy)
        {
          v281 = v278;
          *v280 = v278;
        }

        v15 = v291;
        v188 = v297;
        goto LABEL_73;
      }

      v286 = v147;
      v285 = objc_msgSend_ckvr(self, v214, v215);
      v216 = v291;
      v284 = objc_msgSend_length(v291, v217, v218);
      v219 = v216;
      v283 = objc_msgSend_bytes(v219, v220, v221);
      v224 = objc_msgSend_salt(v198, v222, v223);
      LODWORD(v216) = objc_msgSend_length(v224, v225, v226);
      v229 = objc_msgSend_salt(v198, v227, v228);
      v230 = v229;
      v233 = objc_msgSend_bytes(v230, v231, v232);
      v236 = objc_msgSend_length(Verifier, v234, v235);
      v237 = Verifier;
      v240 = objc_msgSend_bytes(v237, v238, v239);
      v243 = objc_msgSend_iterations(v198, v241, v242);
      v244 = Verifier;
      v245 = *(&v287 + 1);
      LODWORD(v216) = sub_22E9EA2D0(v285, 0, &unk_22E9FB10B, v284, v283, v293, v286, v292, *(&v288 + 1), v216, v233, v236, v240, v297, v243, *(&v287 + 1));

      if (v216)
      {
        v247 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v246, @"EscrowServiceErrorDomain", 125, @"Escrow error encrypting data");
        v248 = CloudServicesLog();
        v249 = os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT);
        dataCopy = v289;
        v16 = v299;
        if (v249)
        {
          *buf = 138412290;
          v304 = v247;
          _os_log_impl(&dword_22E9CA000, v248, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v15 = v291;
        v188 = v297;
        v250 = errorCopy;
        if (errorCopy)
        {
          v251 = v247;
          *v250 = v247;
        }

        bytesCopy = v290;
LABEL_73:

LABEL_74:
        v116 = 0;
LABEL_77:
        free(v188);
        goto LABEL_42;
      }

      dataCopy = v289;
      v16 = v299;
      v188 = v297;
    }

    else
    {
      v252 = objc_msgSend_recoveryPassphrase(self, v196, v197);
      v253 = v252;
      v255 = objc_msgSend_cStringUsingEncoding_(v253, v254, 4);

      v256 = strlen(v255);
      v259 = objc_msgSend_ckvr(self, v257, v258);
      v260 = v291;
      v263 = objc_msgSend_length(v291, v261, v262);
      v264 = v260;
      v267 = objc_msgSend_bytes(v264, v265, v266);
      v245 = *(&v287 + 1);
      v268 = sub_22E9EAC84(v259, v297, v23, v256, v255, v263, v267, v293, v147, v292, *(&v288 + 1), v188, *(&v287 + 1));
      dataCopy = v289;
      v16 = v299;
      if (v268)
      {
        v198 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v269, @"EscrowServiceErrorDomain", 125, @"Escrow error encrypting data");
        v270 = CloudServicesLog();
        v271 = os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT);
        bytesCopy = v290;
        if (v271)
        {
          *buf = 138412290;
          v304 = v198;
          _os_log_impl(&dword_22E9CA000, v270, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v15 = v291;
        v272 = errorCopy;
        if (errorCopy)
        {
          v273 = v198;
          *v272 = v198;
        }

        goto LABEL_74;
      }
    }

    v116 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v269, v245, v287);
    bytesCopy = v290;
    v15 = v291;
    goto LABEL_77;
  }

  v139 = v15;
  v140 = dataCopy;
  v141 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v60, @"EscrowServiceErrorDomain", 120, @"Fail to parse certificate");
  v142 = v141;
  if (errorCopy)
  {
    v143 = v141;
    *errorCopy = v142;
  }

  v144 = CloudServicesLog();
  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v304 = v142;
    _os_log_impl(&dword_22E9CA000, v144, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v116 = 0;
  dataCopy = v140;
  v15 = v139;
LABEL_41:
  v16 = v299;
LABEL_42:

LABEL_43:
  v170 = *MEMORY[0x277D85DE8];

  return v116;
}

- (id)srpResponseForEscrowBlob:(id)blob withFullCCKey:(ccrsa_full_ctx *)key
{
  v4 = MEMORY[0x28223BE20](self);
  v6 = v5;
  v7 = v4;
  v84 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v78 = 4096;
  memset(v79, 170, sizeof(v79));
  v12 = objc_msgSend_ckvr(v7, v10, v11);
  v15 = objc_msgSend_recoveryBlob(v7, v13, v14);
  v16 = v15;
  v19 = objc_msgSend_bytes(v16, v17, v18);
  LODWORD(v6) = sub_22E9EB1B0(v12, v19, &v78, v79, v6);

  if (v6)
  {
    v20 = CloudServicesLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F5748();
    }

LABEL_4:

LABEL_24:
    v60 = 0;
    goto LABEL_25;
  }

  v21 = objc_alloc(MEMORY[0x277CBEA90]);
  v23 = objc_msgSend_initWithBytes_length_(v21, v22, v79, v78);
  objc_msgSend_setEscrowBlob_(v7, v24, v23);

  v25 = sub_22E9E9294(v78, v79);
  if (!v25)
  {
    goto LABEL_24;
  }

  v69 = &v69;
  v26 = *(v79[3].u32 + v79[1].u32[1]);
  v27 = *(v79[3].u32 + v79[2].u32[1]);
  v76 = v27;
  v77 = v26;
  v28 = *(v79[3].u32 + v79[2].u32[2]);
  v29 = *(v79[3].u32 + v79[1].u32[2]);
  v74 = v29;
  v75 = v28;
  v30 = *(v79[3].u32 + v79[1].u32[3]);
  v72 = 0xAAAAAAAAAAAAAAAALL;
  v73 = v30;
  v31 = *(v79[3].u32 + v79[2].u32[0]);
  v71 = v31;
  MEMORY[0x28223BE20](v25);
  v33 = &v69 - v32;
  v35 = memset(&v69 - v32, 170, v34 + 1);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v69 - v37;
  if (v27)
  {
    v36 = memset(&v69 - v37, 170, v27);
  }

  v39 = MEMORY[0x28223BE20](v36);
  v40 = &v69 - ((v28 + 15) & 0x1FFFFFFF0);
  if (v28)
  {
    v39 = memset(&v69 - ((v28 + 15) & 0x1FFFFFFF0), 170, v28);
  }

  v41 = MEMORY[0x28223BE20](v39);
  v42 = &v69 - ((v29 + 15) & 0x1FFFFFFF0);
  if (v29)
  {
    v41 = memset(&v69 - ((v29 + 15) & 0x1FFFFFFF0), 170, v29);
  }

  v43 = MEMORY[0x28223BE20](v41);
  v44 = &v69 - ((v30 + 15) & 0x1FFFFFFF0);
  if (v30)
  {
    v43 = memset(&v69 - ((v30 + 15) & 0x1FFFFFFF0), 170, v30);
  }

  MEMORY[0x28223BE20](v43);
  if (v31)
  {
    memset(&v69 - ((v31 + 15) & 0x1FFFFFFF0), 170, v31);
  }

  if (!sub_22E9EB488(v79, &v77, v33, &v76, v38, &v75, v40, &v74, v42, &v73, v44, &v72, &v71, &v69 - ((v31 + 15) & 0x1FFFFFFF0)))
  {
LABEL_23:
    v60 = 0;
    goto LABEL_25;
  }

  v33[v77] = 0;
  v47 = objc_msgSend_srpPublicKeySize(v7, v45, v46);
  v48 = MEMORY[0x28223BE20](v47);
  v52 = &v69 - v51;
  if (v48)
  {
    memset(&v69 - v51, 170, v47);
  }

  v53 = objc_msgSend_ckvr(v7, v49, v50);
  v54 = v74;
  v55 = v9;
  v58 = objc_msgSend_bytes(v55, v56, v57);
  if (sub_22E9EAE54(v53, v33, v54, v42, v44, v58, v52))
  {
    v59 = CloudServicesLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F5784();
    }

    goto LABEL_23;
  }

  v83 = xmmword_22E9F9500;
  v80 = 0x706050403020100;
  v81 = 185207048;
  v82 = 3340;
  v70 = sub_22E9EB7AC(0xEuLL, v74, v47);
  v63 = MEMORY[0x28223BE20](v70);
  v66 = &v69 - v65;
  if (v63)
  {
    memset(&v69 - v65, 170, v64);
  }

  if ((sub_22E9EB5E8(16, &v83, 0xEu, &v80, v74, v42, v47, v52, &v70, v66) & 1) == 0)
  {
    v20 = CloudServicesLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F57C0();
    }

    goto LABEL_4;
  }

  v67 = objc_alloc(MEMORY[0x277CBEA90]);
  v60 = objc_msgSend_initWithBytes_length_(v67, v68, v66, v70);
LABEL_25:

  v61 = *MEMORY[0x277D85DE8];

  return v60;
}

- (id)recoveryResponseForBlob:(id)blob
{
  v83[1] = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  v9 = objc_msgSend_srpKeySize(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_length(blobCopy, v7, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v14 = (&v77 - v13);
    if (v11)
    {
      memset(&v77 - v13, 170, v12);
    }

    v15 = blobCopy;
    v18 = objc_msgSend_bytes(v15, v16, v17);
    v21 = objc_msgSend_length(blobCopy, v19, v20);
    memcpy(v14, v18, v21);
    v24 = objc_msgSend_length(blobCopy, v22, v23);
    if (!sub_22E9EB8E8(v24, v14) || (v27 = MEMORY[0x277CBEA90], v28 = objc_msgSend_length(blobCopy, v25, v26), objc_msgSend_dataWithBytes_length_(v27, v29, v14, v28), (v30 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = 0;
      goto LABEL_22;
    }

    v31 = v30;
    v79 = &v77;
    v32 = v30;
    v35 = objc_msgSend_bytes(v32, v33, v34);
    v83[0] = 16;
    v36 = *(v35 + 32);
    v82 = *(v35 + 40 + *(v35 + 28));
    v37 = *(v35 + 40 + v36);
    v81 = v37;
    v38 = MEMORY[0x28223BE20](v35);
    *&v76 = 0xAAAAAAAAAAAAAAAALL;
    *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = MEMORY[0x28223BE20](v38);
    v42 = &v77 - v41;
    if (v40)
    {
      v39 = memset(&v77 - v41, 170, v40);
    }

    MEMORY[0x28223BE20](v39);
    v43 = memset(&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v9);
    MEMORY[0x28223BE20](v43);
    if (v37)
    {
      memset(&v77 - ((v37 + 15) & 0x1FFFFFFF0), 170, v37);
    }

    if (sub_22E9EBA00(v35, &v82, v42, v83, &v76, &v81, &v77 - ((v37 + 15) & 0x1FFFFFFF0)))
    {
      v46 = objc_msgSend_ckvr(self, v44, v45);
      v47 = sub_22E9EAE7C(v46);
      if (v47)
      {
        v80 = 4096;
        MEMORY[0x28223BE20](v47);
        memset(&v77 - 512, 170, 0x1000uLL);
        v78 = objc_msgSend_ckvr(self, v48, v49);
        v52 = objc_msgSend_srpKeySize(self, v50, v51);
        v55 = objc_msgSend_ckvr(self, v53, v54);
        v56 = sub_22E9E7890(v55);
        v59 = objc_msgSend_escrowBlob(self, v57, v58);
        v62 = objc_msgSend_length(v59, v60, v61);
        v65 = objc_msgSend_escrowBlob(self, v63, v64);
        v66 = v65;
        v69 = objc_msgSend_bytes(v66, v67, v68);
        *(&v76 + 1) = sub_22E9F0358;
        v70 = sub_22E9EAE98(v78, v52, v56, v9, &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v62, v69, &v80, (&v77 - 512));

        if (!v70)
        {
          v71 = objc_alloc(MEMORY[0x277CBEA90]);
          v9 = objc_msgSend_initWithBytes_length_(v71, v72, (&v77 - 512), v80);
LABEL_21:

          goto LABEL_22;
        }

LABEL_20:
        v9 = 0;
        goto LABEL_21;
      }

      v73 = CloudServicesLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_22E9F5838();
      }
    }

    else
    {
      v73 = CloudServicesLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_22E9F57FC();
      }
    }

    goto LABEL_20;
  }

LABEL_22:

  v74 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)dealloc
{
  ckvr = self->_ckvr;
  if (ckvr)
  {
    sub_22E9E7724(ckvr);
    free(self->_ckvr);
  }

  v4.receiver = self;
  v4.super_class = CSSESWrapper;
  [(CSSESWrapper *)&v4 dealloc];
}

@end
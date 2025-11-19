@interface CSStingrayRecord
+ (id)parseFromAccountInfoPlist:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)expandMetadataHash:(id *)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTriggerUpdate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSStingrayRecord

+ (id)parseFromAccountInfoPlist:(id)a3 error:(id *)a4
{
  v191 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"label");
  isEqualToString = objc_msgSend_isEqualToString_(@"com.apple.protectedcloudstorage.record", v8, v7);
  if (objc_msgSend_isEqualToString_(@"com.apple.protectedcloudstorage.guitarfish.record", v10, v7) & 1) != 0 || (isEqualToString)
  {
    v186 = v7;
    v13 = objc_msgSend_objectForKeyedSubscript_(v5, v11, @"metadata");
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"ClientMetadata");
    v16 = objc_alloc_init(CSStingrayRecord);
    v17 = objc_alloc_init(CSStingrayRecordClientMetadata);
    objc_msgSend_setClientMetadata_(v16, v18, v17);

    v19 = sub_22E9DFEA8(v5, @"SecureBackupTriggerUpdate");
    objc_msgSend_setTriggerUpdate_(v16, v20, v19);
    v22 = objc_msgSend_objectForKeyedSubscript_(v5, v21, @"recordStatus");
    v24 = objc_msgSend_isEqualToString_(v22, v23, @"valid");
    objc_msgSend_setContainsiCloudIdentity_(v16, v25, v24);

    v27 = objc_msgSend_objectForKeyedSubscript_(v13, v26, @"BackupKeybagSHA256");
    objc_msgSend_setBackupKeybagSHA256_(v16, v28, v27);

    v30 = objc_msgSend_objectForKeyedSubscript_(v13, v29, @"BackupKeybagDigest");
    objc_msgSend_setBackupKeybagDigest_(v16, v31, v30);

    objc_msgSend_setMetadataHash_(v16, v32, 0);
    if (v13)
    {
      v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v36 = objc_msgSend_objectForKeyedSubscript_(v5, v35, @"encodedMetadata");
      objc_msgSend_setObject_forKeyedSubscript_(v34, v37, v36, @"encodedMetadata");

      v39 = objc_msgSend_objectForKeyedSubscript_(v13, v38, @"BackupKeybagSHA256");
      objc_msgSend_setObject_forKeyedSubscript_(v34, v40, v39, @"BackupKeybagSHA256");

      v42 = objc_msgSend_objectForKeyedSubscript_(v13, v41, @"BackupKeybagDigest");
      objc_msgSend_setObject_forKeyedSubscript_(v34, v43, v42, @"BackupKeybagDigest");

      v45 = objc_msgSend_objectForKeyedSubscript_(v13, v44, @"SecureBackupBackOffDate");
      objc_msgSend_setObject_forKeyedSubscript_(v34, v46, v45, @"SecureBackupBackOffDate");

      v48 = objc_msgSend_objectForKeyedSubscript_(v13, v47, @"com.apple.securebackup.timestamp");
      objc_msgSend_setObject_forKeyedSubscript_(v34, v49, v48, @"com.apple.securebackup.timestamp");

      v51 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v50, v34, 1, a4);
      if (!v51)
      {
        v183 = CloudServicesLog();
        if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F4808(v183);
        }

        v12 = 0;
        goto LABEL_27;
      }

      v53 = v51;
      objc_msgSend_setMetadataHash_(v16, v52, v51);
    }

    v54 = objc_msgSend_objectForKeyedSubscript_(v13, v33, @"com.apple.securebackup.timestamp");
    objc_msgSend_setTimestamp_(v16, v55, v54);

    v57 = objc_msgSend_objectForKeyedSubscript_(v15, v56, @"SecureBackupiCloudIdentityPublicData");
    v60 = objc_msgSend_clientMetadata(v16, v58, v59);
    objc_msgSend_setIcloudIdentityPublicData_(v60, v61, v57);

    v62 = sub_22E9DFF5C(v15, @"IdMSPasswordGeneration");
    v65 = objc_msgSend_clientMetadata(v16, v63, v64);
    objc_msgSend_setPasswordGeneration_(v65, v66, v62);

    v67 = sub_22E9DFF5C(v15, @"IdMSPasswordVerifierIterations");
    v70 = objc_msgSend_clientMetadata(v16, v68, v69);
    objc_msgSend_setPasswordIterations_(v70, v71, v67);

    v73 = objc_msgSend_objectForKeyedSubscript_(v15, v72, @"IdMSPasswordVerifierProto");
    v76 = objc_msgSend_clientMetadata(v16, v74, v75);
    objc_msgSend_setPasswordProtocol_(v76, v77, v73);

    v78 = objc_alloc_init(CSStingrayRecordClientMetadataICloudDataProtection);
    v81 = objc_msgSend_clientMetadata(v16, v79, v80);
    objc_msgSend_setIcdp_(v81, v82, v78);

    v84 = objc_msgSend_objectForKeyedSubscript_(v15, v83, @"SecureBackupiCloudDataProtection");
    v85 = sub_22E9DFEA8(v84, @"kPCSMetadataiCDP");
    v88 = objc_msgSend_clientMetadata(v16, v86, v87);
    v91 = objc_msgSend_icdp(v88, v89, v90);
    objc_msgSend_setIcdp_(v91, v92, v85);

    v93 = sub_22E9DFEA8(v84, @"kPCSMetadataiCDPArmed");
    v96 = objc_msgSend_clientMetadata(v16, v94, v95);
    v99 = objc_msgSend_icdp(v96, v97, v98);
    objc_msgSend_setIcdpArmed_(v99, v100, v93);

    v101 = sub_22E9DFEA8(v84, @"kPCSMetadataiCDPWalrus");
    v104 = objc_msgSend_clientMetadata(v16, v102, v103);
    v107 = objc_msgSend_icdp(v104, v105, v106);
    objc_msgSend_setIcdpWalrus_(v107, v108, v101);

    v109 = sub_22E9DFEA8(v84, @"kPCSMetadataiCDPDrop");
    v112 = objc_msgSend_clientMetadata(v16, v110, v111);
    v115 = objc_msgSend_icdp(v112, v113, v114);
    objc_msgSend_setIcdpDrop_(v115, v116, v109);

    v118 = objc_msgSend_objectForKeyedSubscript_(v84, v117, @"kPCSMetadataEscrowedKeys");
    v121 = objc_msgSend_clientMetadata(v16, v119, v120);
    v124 = objc_msgSend_icdp(v121, v122, v123);
    objc_msgSend_setEscrowedKeys_(v124, v125, v118);

    v126 = sub_22E9DFEA8(v84, @"kPCSMetadataiCDPGuitarfish");
    v129 = objc_msgSend_clientMetadata(v16, v127, v128);
    v132 = objc_msgSend_icdp(v129, v130, v131);
    objc_msgSend_setIcdpGF_(v132, v133, v126);

    v135 = objc_msgSend_objectForKeyedSubscript_(v84, v134, @"SecureBackupWrappedKeys");
    v138 = objc_msgSend_clientMetadata(v16, v136, v137);
    v141 = objc_msgSend_icdp(v138, v139, v140);
    objc_msgSend_setWrappedKeys_(v141, v142, v135);

    v144 = objc_msgSend_objectForKeyedSubscript_(v84, v143, @"DerivedDBRSeedAESPID");
    v147 = objc_msgSend_clientMetadata(v16, v145, v146);
    v150 = objc_msgSend_icdp(v147, v148, v149);
    objc_msgSend_setDerivedTokenID_(v150, v151, v144);

    v154 = objc_msgSend_objectForKeyedSubscript_(v15, v152, @"SecureBackupKeyRegistry");
    if (v154)
    {
      v188 = 0;
      v155 = objc_msgSend_parseFromKeyRegistryPlist_error_(CSStingrayRecordClientMetadataKeyRegistry, v153, v154, &v188);
      v156 = v188;
      v159 = objc_msgSend_clientMetadata(v16, v157, v158);
      objc_msgSend_setKeyRegistry_(v159, v160, v155);

      v163 = objc_msgSend_clientMetadata(v16, v161, v162);
      v166 = objc_msgSend_keyRegistry(v163, v164, v165);

      if (!v166 || v156)
      {
        v167 = CloudServicesLog();
        if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v190 = v156;
          _os_log_impl(&dword_22E9CA000, v167, OS_LOG_TYPE_DEFAULT, "failed to parse key registry: %@", buf, 0xCu);
        }
      }
    }

    v169 = objc_msgSend_objectForKeyedSubscript_(v15, v153, @"SecureBackupStableMetadata");
    if (v169)
    {
      v187 = 0;
      v170 = objc_msgSend_parseFromStableMetadataPlist_error_(CSStingrayRecordClientMetadataStableMetadata, v168, v169, &v187);
      v171 = v187;
      v174 = objc_msgSend_clientMetadata(v16, v172, v173);
      objc_msgSend_setStableMetadata_(v174, v175, v170);

      v178 = objc_msgSend_clientMetadata(v16, v176, v177);
      v181 = objc_msgSend_stableMetadata(v178, v179, v180);

      if (!v181 || v171)
      {
        v182 = CloudServicesLog();
        if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v190 = v171;
          _os_log_impl(&dword_22E9CA000, v182, OS_LOG_TYPE_DEFAULT, "failed to parse stable metadata: %@", buf, 0xCu);
        }
      }
    }

    v12 = v16;
LABEL_27:

    v7 = v186;
    goto LABEL_28;
  }

  if (a4)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v11, @"SecureBackupErrorDomain", 24, 0);
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_28:

  v184 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)expandMetadataHash:(id *)a3
{
  v5 = MEMORY[0x277CCAAC8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_metadataHash(self, v7, v8);
  v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v5, v10, v6, v9, a3);

  return v11;
}

- (void)setHasTriggerUpdate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CSStingrayRecord;
  v4 = [(CSStingrayRecord *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  clientMetadata = self->_clientMetadata;
  if (clientMetadata)
  {
    v8 = objc_msgSend_dictionaryRepresentation(clientMetadata, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"clientMetadata");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_triggerUpdate);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"triggerUpdate");

    has = self->_has;
  }

  if (has)
  {
    v13 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_containsiCloudIdentity);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"containsiCloudIdentity");
  }

  backupKeybagDigest = self->_backupKeybagDigest;
  if (backupKeybagDigest)
  {
    objc_msgSend_setObject_forKey_(v6, v4, backupKeybagDigest, @"backupKeybagDigest");
  }

  metadataHash = self->_metadataHash;
  if (metadataHash)
  {
    objc_msgSend_setObject_forKey_(v6, v4, metadataHash, @"metadataHash");
  }

  timestamp = self->_timestamp;
  if (timestamp)
  {
    objc_msgSend_setObject_forKey_(v6, v4, timestamp, @"timestamp");
  }

  backupKeybagSHA256 = self->_backupKeybagSHA256;
  if (backupKeybagSHA256)
  {
    objc_msgSend_setObject_forKey_(v6, v4, backupKeybagSHA256, @"backupKeybagSHA256");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_clientMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    triggerUpdate = self->_triggerUpdate;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    containsiCloudIdentity = self->_containsiCloudIdentity;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_backupKeybagDigest)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_metadataHash)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_timestamp)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_backupKeybagSHA256)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  clientMetadata = self->_clientMetadata;
  v12 = v4;
  if (clientMetadata)
  {
    objc_msgSend_setClientMetadata_(v4, v5, clientMetadata);
    v4 = v12;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[49] = self->_triggerUpdate;
    v4[52] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[48] = self->_containsiCloudIdentity;
    v4[52] |= 1u;
  }

  backupKeybagDigest = self->_backupKeybagDigest;
  if (backupKeybagDigest)
  {
    objc_msgSend_setBackupKeybagDigest_(v12, v5, backupKeybagDigest);
    v4 = v12;
  }

  metadataHash = self->_metadataHash;
  if (metadataHash)
  {
    objc_msgSend_setMetadataHash_(v12, v5, metadataHash);
    v4 = v12;
  }

  timestamp = self->_timestamp;
  if (timestamp)
  {
    objc_msgSend_setTimestamp_(v12, v5, timestamp);
    v4 = v12;
  }

  backupKeybagSHA256 = self->_backupKeybagSHA256;
  if (backupKeybagSHA256)
  {
    objc_msgSend_setBackupKeybagSHA256_(v12, v5, backupKeybagSHA256);
    v4 = v12;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_clientMetadata, v11, a3);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 49) = self->_triggerUpdate;
    *(v10 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 48) = self->_containsiCloudIdentity;
    *(v10 + 52) |= 1u;
  }

  v16 = objc_msgSend_copyWithZone_(self->_backupKeybagDigest, v14, a3);
  v17 = *(v10 + 8);
  *(v10 + 8) = v16;

  v19 = objc_msgSend_copyWithZone_(self->_metadataHash, v18, a3);
  v20 = *(v10 + 32);
  *(v10 + 32) = v19;

  v22 = objc_msgSend_copyWithZone_(self->_timestamp, v21, a3);
  v23 = *(v10 + 40);
  *(v10 + 40) = v22;

  v25 = objc_msgSend_copyWithZone_(self->_backupKeybagSHA256, v24, a3);
  v26 = *(v10 + 16);
  *(v10 + 16) = v25;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_25;
  }

  clientMetadata = self->_clientMetadata;
  v9 = v4[3];
  if (clientMetadata | v9)
  {
    if (!objc_msgSend_isEqual_(clientMetadata, v7, v9))
    {
      goto LABEL_25;
    }
  }

  v10 = *(v4 + 52);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0)
    {
      goto LABEL_25;
    }

    v20 = *(v4 + 49);
    if (self->_triggerUpdate)
    {
      if ((*(v4 + 49) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(v4 + 49))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(v4 + 52) & 1) == 0)
  {
    goto LABEL_25;
  }

  v10 = *(v4 + 48);
  if (!self->_containsiCloudIdentity)
  {
LABEL_7:
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    isEqual = 0;
    goto LABEL_26;
  }

  if ((v4[6] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  backupKeybagDigest = self->_backupKeybagDigest;
  v12 = v4[1];
  if (backupKeybagDigest | v12 && !objc_msgSend_isEqual_(backupKeybagDigest, v7, v12))
  {
    goto LABEL_25;
  }

  metadataHash = self->_metadataHash;
  v14 = v4[4];
  if (metadataHash | v14)
  {
    if (!objc_msgSend_isEqual_(metadataHash, v7, v14))
    {
      goto LABEL_25;
    }
  }

  timestamp = self->_timestamp;
  v16 = v4[5];
  if (timestamp | v16)
  {
    if (!objc_msgSend_isEqual_(timestamp, v7, v16))
    {
      goto LABEL_25;
    }
  }

  backupKeybagSHA256 = self->_backupKeybagSHA256;
  v18 = v4[2];
  if (backupKeybagSHA256 | v18)
  {
    isEqual = objc_msgSend_isEqual_(backupKeybagSHA256, v7, v18);
  }

  else
  {
    isEqual = 1;
  }

LABEL_26:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_clientMetadata, a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_triggerUpdate;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_containsiCloudIdentity;
LABEL_6:
  v9 = v7 ^ v4 ^ v8 ^ objc_msgSend_hash(self->_backupKeybagDigest, v5, v6);
  v12 = objc_msgSend_hash(self->_metadataHash, v10, v11);
  v15 = v12 ^ objc_msgSend_hash(self->_timestamp, v13, v14);
  return v9 ^ v15 ^ objc_msgSend_hash(self->_backupKeybagSHA256, v16, v17);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  clientMetadata = self->_clientMetadata;
  v6 = *(v4 + 3);
  v12 = v4;
  if (clientMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(clientMetadata, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setClientMetadata_(self, v4, v6);
  }

  v4 = v12;
LABEL_7:
  v7 = *(v4 + 52);
  if ((v7 & 2) != 0)
  {
    self->_triggerUpdate = *(v4 + 49);
    *&self->_has |= 2u;
    v7 = *(v4 + 52);
  }

  if (v7)
  {
    self->_containsiCloudIdentity = *(v4 + 48);
    *&self->_has |= 1u;
  }

  v8 = *(v4 + 1);
  if (v8)
  {
    objc_msgSend_setBackupKeybagDigest_(self, v4, v8);
    v4 = v12;
  }

  v9 = *(v4 + 4);
  if (v9)
  {
    objc_msgSend_setMetadataHash_(self, v4, v9);
    v4 = v12;
  }

  v10 = *(v4 + 5);
  if (v10)
  {
    objc_msgSend_setTimestamp_(self, v4, v10);
    v4 = v12;
  }

  v11 = *(v4 + 2);
  if (v11)
  {
    objc_msgSend_setBackupKeybagSHA256_(self, v4, v11);
  }

  MEMORY[0x2821F96F8]();
}

@end
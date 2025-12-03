@interface HKMedicalDownloadableAttachment
- (BOOL)isEqual:(id)equal;
- (HKMedicalDownloadableAttachment)init;
- (HKMedicalDownloadableAttachment)initWithCoder:(id)coder;
- (HKMedicalDownloadableAttachment)initWithIdentifier:(id)identifier medicalRecordIdentifier:(id)recordIdentifier clinicalRecordIdentifier:(id)clinicalRecordIdentifier accountIdentifier:(id)accountIdentifier FHIRVersion:(id)version type:(int64_t)type status:(int64_t)status errorStatus:(int64_t)self0 title:(id)self1 webURL:(id)self2 sizeInBytes:(id)self3 contentType:(id)self4 locale:(id)self5 expectedHash:(id)self6 creationDate:(id)self7 retryCount:(int64_t)self8 nextRetryDate:(id)self9 lastUpdatedDate:(id)updatedDate lastError:(id)error fileURL:(id)rL inlineData:(id)data inlineDataChecksum:(id)checksum attachmentIdentifier:(id)attachmentIdentifier metadata:(id)metadata;
- (id)copyForAccountWithIdentifier:(id)identifier medicalRecordIdentifier:(id)recordIdentifier clinicalRecordIdentifier:(id)clinicalRecordIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicalDownloadableAttachment

- (HKMedicalDownloadableAttachment)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicalDownloadableAttachment)initWithIdentifier:(id)identifier medicalRecordIdentifier:(id)recordIdentifier clinicalRecordIdentifier:(id)clinicalRecordIdentifier accountIdentifier:(id)accountIdentifier FHIRVersion:(id)version type:(int64_t)type status:(int64_t)status errorStatus:(int64_t)self0 title:(id)self1 webURL:(id)self2 sizeInBytes:(id)self3 contentType:(id)self4 locale:(id)self5 expectedHash:(id)self6 creationDate:(id)self7 retryCount:(int64_t)self8 nextRetryDate:(id)self9 lastUpdatedDate:(id)updatedDate lastError:(id)error fileURL:(id)rL inlineData:(id)data inlineDataChecksum:(id)checksum attachmentIdentifier:(id)attachmentIdentifier metadata:(id)metadata
{
  identifierCopy = identifier;
  recordIdentifierCopy = recordIdentifier;
  clinicalRecordIdentifierCopy = clinicalRecordIdentifier;
  accountIdentifierCopy = accountIdentifier;
  versionCopy = version;
  titleCopy = title;
  lCopy = l;
  bytesCopy = bytes;
  contentTypeCopy = contentType;
  localeCopy = locale;
  hashCopy = hash;
  dateCopy = date;
  retryDateCopy = retryDate;
  updatedDateCopy = updatedDate;
  errorCopy = error;
  rLCopy = rL;
  dataCopy = data;
  checksumCopy = checksum;
  attachmentIdentifierCopy = attachmentIdentifier;
  metadataCopy = metadata;
  v94.receiver = self;
  v94.super_class = HKMedicalDownloadableAttachment;
  v39 = [(HKMedicalDownloadableAttachment *)&v94 init];
  if (v39)
  {
    v40 = [identifierCopy copy];
    identifier = v39->_identifier;
    v39->_identifier = v40;

    v42 = [recordIdentifierCopy copy];
    medicalRecordIdentifier = v39->_medicalRecordIdentifier;
    v39->_medicalRecordIdentifier = v42;

    v44 = [clinicalRecordIdentifierCopy copy];
    clinicalRecordIdentifier = v39->_clinicalRecordIdentifier;
    v39->_clinicalRecordIdentifier = v44;

    v46 = [accountIdentifierCopy copy];
    accountIdentifier = v39->_accountIdentifier;
    v39->_accountIdentifier = v46;

    v48 = [versionCopy copy];
    FHIRVersion = v39->_FHIRVersion;
    v39->_FHIRVersion = v48;

    v39->_type = type;
    v39->_status = status;
    v39->_errorStatus = errorStatus;
    v50 = [titleCopy copy];
    title = v39->_title;
    v39->_title = v50;

    v52 = [lCopy copy];
    webURL = v39->_webURL;
    v39->_webURL = v52;

    v54 = [bytesCopy copy];
    sizeInBytes = v39->_sizeInBytes;
    v39->_sizeInBytes = v54;

    v56 = [contentTypeCopy copy];
    contentType = v39->_contentType;
    v39->_contentType = v56;

    v58 = [localeCopy copy];
    locale = v39->_locale;
    v39->_locale = v58;

    v60 = [hashCopy copy];
    expectedHash = v39->_expectedHash;
    v39->_expectedHash = v60;

    v62 = [dateCopy copy];
    creationDate = v39->_creationDate;
    v39->_creationDate = v62;

    v39->_retryCount = count;
    v64 = [retryDateCopy copy];
    nextRetryDate = v39->_nextRetryDate;
    v39->_nextRetryDate = v64;

    v66 = [updatedDateCopy copy];
    lastUpdatedDate = v39->_lastUpdatedDate;
    v39->_lastUpdatedDate = v66;

    v68 = [errorCopy copy];
    lastError = v39->_lastError;
    v39->_lastError = v68;

    v70 = [rLCopy copy];
    fileURL = v39->_fileURL;
    v39->_fileURL = v70;

    v72 = [dataCopy copy];
    inlineData = v39->_inlineData;
    v39->_inlineData = v72;

    v74 = [checksumCopy copy];
    inlineDataChecksum = v39->_inlineDataChecksum;
    v39->_inlineDataChecksum = v74;

    v76 = [attachmentIdentifierCopy copy];
    attachmentIdentifier = v39->_attachmentIdentifier;
    v39->_attachmentIdentifier = v76;

    v78 = [metadataCopy copy];
    metadata = v39->_metadata;
    v39->_metadata = v78;
  }

  return v39;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
    goto LABEL_156;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_156;
  }

  v6 = equalCopy;
  identifier = self->_identifier;
  identifier = [(HKMedicalDownloadableAttachment *)v6 identifier];
  v166 = identifier;
  if (identifier != identifier)
  {
    identifier2 = [(HKMedicalDownloadableAttachment *)v6 identifier];
    if (!identifier2)
    {
      v137 = 0;
      v11 = 0;
      memset(v165, 0, sizeof(v165));
      memset(v173, 0, sizeof(v173));
      v159 = 0;
      v163 = 0;
      v178 = 0;
      v138 = 0;
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      v162 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_39;
    }

    v137 = identifier2;
    v10 = self->_identifier;
    identifier3 = [(HKMedicalDownloadableAttachment *)v6 identifier];
    if (![(NSUUID *)v10 isEqual:?])
    {
      *v165 = 0uLL;
      v11 = 0;
      memset(v173, 0, sizeof(v173));
      v159 = 0;
      v163 = 0;
      v178 = 0;
      v138 = 0;
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      v162 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[16] = 1;
      goto LABEL_39;
    }
  }

  medicalRecordIdentifier = self->_medicalRecordIdentifier;
  medicalRecordIdentifier = [(HKMedicalDownloadableAttachment *)v6 medicalRecordIdentifier];
  metadata3 = medicalRecordIdentifier != medicalRecordIdentifier;
  *&v165[16] = identifier != identifier;
  if (medicalRecordIdentifier != medicalRecordIdentifier)
  {
    medicalRecordIdentifier2 = [(HKMedicalDownloadableAttachment *)v6 medicalRecordIdentifier];
    if (!medicalRecordIdentifier2)
    {
      v134 = 0;
      *&v165[4] = 0;
      *v173 = 0;
      v11 = 0;
      *v165 = 0;
      v159 = 0;
      v163 = 0;
      v178 = 0;
      v138 = 0;
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      v162 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[12] = 1;
      *&v173[8] = 1;
      goto LABEL_39;
    }

    v134 = medicalRecordIdentifier2;
    v20 = self->_medicalRecordIdentifier;
    medicalRecordIdentifier3 = [(HKMedicalDownloadableAttachment *)v6 medicalRecordIdentifier];
    if (![(NSUUID *)v20 isEqual:?])
    {
      *&v165[8] = 0x100000000;
      *v173 = 0;
      v11 = 0;
      *v165 = 0x100000000;
      v159 = 0;
      v163 = 0;
      v178 = 0;
      v138 = 0;
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      v162 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v173[8] = 1;
      goto LABEL_39;
    }
  }

  clinicalRecordIdentifier = self->_clinicalRecordIdentifier;
  clinicalRecordIdentifier = [(HKMedicalDownloadableAttachment *)v6 clinicalRecordIdentifier];
  v22 = clinicalRecordIdentifier != clinicalRecordIdentifier;
  *&v173[8] = metadata3;
  if (clinicalRecordIdentifier != clinicalRecordIdentifier)
  {
    clinicalRecordIdentifier2 = [(HKMedicalDownloadableAttachment *)v6 clinicalRecordIdentifier];
    if (!clinicalRecordIdentifier2)
    {
      v131 = 0;
      v11 = 0;
      *v165 = 0;
      *v173 = 0x100000000;
      v159 = 0;
      v163 = 0;
      v178 = 0;
      v138 = 0;
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      v162 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *&v165[4] = metadata3;
      goto LABEL_39;
    }

    v131 = clinicalRecordIdentifier2;
    v24 = self->_clinicalRecordIdentifier;
    clinicalRecordIdentifier3 = [(HKMedicalDownloadableAttachment *)v6 clinicalRecordIdentifier];
    if (![(NSUUID *)v24 isEqual:?])
    {
      *v165 = 0;
      *v173 = 0x100000000;
      v159 = 0;
      v163 = 0;
      v178 = 0;
      v138 = 0;
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      v162 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *&v165[4] = metadata3;
      v11 = 1;
      goto LABEL_39;
    }
  }

  accountIdentifier = self->_accountIdentifier;
  accountIdentifier = [(HKMedicalDownloadableAttachment *)v6 accountIdentifier];
  v26 = accountIdentifier != accountIdentifier;
  *&v173[4] = v22;
  if (accountIdentifier != accountIdentifier)
  {
    accountIdentifier2 = [(HKMedicalDownloadableAttachment *)v6 accountIdentifier];
    if (!accountIdentifier2)
    {
      v128 = 0;
      v159 = 0;
      v163 = 0;
      v178 = 0;
      v138 = 0;
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      v162 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      *v173 = 1;
      goto LABEL_39;
    }

    v128 = accountIdentifier2;
    v28 = self->_accountIdentifier;
    accountIdentifier3 = [(HKMedicalDownloadableAttachment *)v6 accountIdentifier];
    if (![(NSUUID *)v28 isEqual:?])
    {
      v163 = 0;
      v178 = 0;
      v138 = 0;
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      v162 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      *v173 = 1;
      v158 = 0;
      v159 = 1;
      goto LABEL_39;
    }
  }

  FHIRVersion = self->_FHIRVersion;
  fHIRVersion = [(HKMedicalDownloadableAttachment *)v6 FHIRVersion];
  v178 = FHIRVersion != fHIRVersion;
  *v173 = v26;
  if (FHIRVersion != fHIRVersion)
  {
    fHIRVersion2 = [(HKMedicalDownloadableAttachment *)v6 FHIRVersion];
    if (!fHIRVersion2)
    {
      v125 = 0;
      v138 = 0;
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v178 = 1;
      goto LABEL_39;
    }

    v125 = fHIRVersion2;
    v31 = self->_FHIRVersion;
    fHIRVersion3 = [(HKMedicalDownloadableAttachment *)v6 FHIRVersion];
    if (![(HKFHIRVersion *)v31 isEqual:?])
    {
      v164 = 0;
      v161 = 0;
      v156 = 0;
      memset(v177, 0, sizeof(v177));
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v178 = 1;
      v32 = 1;
LABEL_37:
      v138 = v32;
      goto LABEL_39;
    }
  }

  type = self->_type;
  if (type != [(HKMedicalDownloadableAttachment *)v6 type]|| (status = self->_status, status != [(HKMedicalDownloadableAttachment *)v6 status]) || (errorStatus = self->_errorStatus, errorStatus != [(HKMedicalDownloadableAttachment *)v6 errorStatus]))
  {
    v164 = 0;
    v161 = 0;
    v156 = 0;
    memset(v177, 0, sizeof(v177));
    v148 = 0;
    v157 = 0;
    v176 = 0;
    v142 = 0;
    v150 = 0;
    v175 = 0;
    v141 = 0;
    v147 = 0;
    v174 = 0;
    v140 = 0;
    v143 = 0;
    v172 = 0;
    v139 = 0;
    v152 = 0;
    v171 = 0;
    v144 = 0;
    v151 = 0;
    v170 = 0;
    v145 = 0;
    v153 = 0;
    v169 = 0;
    v146 = 0;
    v154 = 0;
    v168 = 0;
    v149 = 0;
    v158 = 0;
    v159 = v26;
    v155 = 0;
    v12 = 0;
    v160 = 0;
    memset(v167, 0, sizeof(v167));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    *&v165[8] = 0x100000001;
    *v165 = 1;
    *&v165[4] = metadata3;
    v11 = v22;
    v13 = 0;
    v162 = 0;
    v163 = 1;
    v32 = v178;
    goto LABEL_37;
  }

  title = self->_title;
  title = [(HKMedicalDownloadableAttachment *)v6 title];
  *&v177[8] = title != title;
  if (title != title)
  {
    title2 = [(HKMedicalDownloadableAttachment *)v6 title];
    if (!title2)
    {
      v122 = 0;
      v161 = 0;
      v164 = 0x100000000;
      *v177 = 0;
      v156 = 0;
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      *&v177[8] = 1;
      goto LABEL_39;
    }

    v122 = title2;
    v38 = self->_title;
    title3 = [(HKMedicalDownloadableAttachment *)v6 title];
    if (![(NSString *)v38 isEqualToString:?])
    {
      v164 = 0x100000000;
      *v177 = 0;
      v156 = 0;
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      *&v177[8] = 1;
      v161 = 1;
      goto LABEL_39;
    }
  }

  webURL = self->_webURL;
  webURL = [(HKMedicalDownloadableAttachment *)v6 webURL];
  *&v177[4] = webURL != webURL;
  if (webURL != webURL)
  {
    webURL2 = [(HKMedicalDownloadableAttachment *)v6 webURL];
    if (!webURL2)
    {
      v119 = 0;
      v156 = 0;
      *v177 = 0x100000000;
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8];
      v164 = 0x100000001;
      goto LABEL_39;
    }

    v119 = webURL2;
    v48 = self->_webURL;
    webURL3 = [(HKMedicalDownloadableAttachment *)v6 webURL];
    if (![(NSURL *)v48 isEqual:?])
    {
      *v177 = 0x100000000;
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8];
      v164 = 0x100000001;
      v156 = 1;
      goto LABEL_39;
    }
  }

  sizeInBytes = self->_sizeInBytes;
  sizeInBytes = [(HKMedicalDownloadableAttachment *)v6 sizeInBytes];
  *v177 = sizeInBytes != sizeInBytes;
  if (sizeInBytes != sizeInBytes)
  {
    sizeInBytes2 = [(HKMedicalDownloadableAttachment *)v6 sizeInBytes];
    if (!sizeInBytes2)
    {
      v116 = 0;
      v148 = 0;
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      *v177 = 1;
      goto LABEL_39;
    }

    v116 = sizeInBytes2;
    v51 = self->_sizeInBytes;
    sizeInBytes3 = [(HKMedicalDownloadableAttachment *)v6 sizeInBytes];
    if (![(NSNumber *)v51 isEqual:?])
    {
      v157 = 0;
      v176 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      *v177 = 1;
      v148 = 1;
      goto LABEL_39;
    }
  }

  contentType = self->_contentType;
  contentType = [(HKMedicalDownloadableAttachment *)v6 contentType];
  v176 = contentType != contentType;
  if (contentType != contentType)
  {
    contentType2 = [(HKMedicalDownloadableAttachment *)v6 contentType];
    if (!contentType2)
    {
      contentType2 = 0;
      v142 = 0;
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v176 = 1;
      goto LABEL_39;
    }

    v53 = self->_contentType;
    contentType3 = [(HKMedicalDownloadableAttachment *)v6 contentType];
    if (![(NSString *)v53 isEqualToString:?])
    {
      v150 = 0;
      v175 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v176 = 1;
      v142 = 1;
      goto LABEL_39;
    }
  }

  locale = self->_locale;
  locale = [(HKMedicalDownloadableAttachment *)v6 locale];
  v175 = locale != locale;
  if (locale != locale)
  {
    locale2 = [(HKMedicalDownloadableAttachment *)v6 locale];
    if (!locale2)
    {
      v110 = 0;
      v141 = 0;
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v175 = 1;
      goto LABEL_39;
    }

    v110 = locale2;
    v56 = self->_locale;
    locale3 = [(HKMedicalDownloadableAttachment *)v6 locale];
    if (![(NSLocale *)v56 isEqual:?])
    {
      v147 = 0;
      v174 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v175 = 1;
      v141 = 1;
      goto LABEL_39;
    }
  }

  expectedHash = self->_expectedHash;
  expectedHash = [(HKMedicalDownloadableAttachment *)v6 expectedHash];
  v174 = expectedHash != expectedHash;
  v109 = expectedHash;
  if (expectedHash != expectedHash)
  {
    expectedHash2 = [(HKMedicalDownloadableAttachment *)v6 expectedHash];
    if (!expectedHash2)
    {
      expectedHash2 = 0;
      v140 = 0;
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v159 = v26;
      v155 = 0;
      v12 = 0;
      v160 = 0;
      memset(v167, 0, sizeof(v167));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v174 = 1;
      goto LABEL_39;
    }

    v59 = self->_expectedHash;
    expectedHash3 = [(HKMedicalDownloadableAttachment *)v6 expectedHash];
    if (![(NSData *)v59 isEqual:?])
    {
      v143 = 0;
      v172 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v174 = 1;
      v140 = 1;
      goto LABEL_39;
    }
  }

  creationDate = self->_creationDate;
  creationDate = [(HKMedicalDownloadableAttachment *)v6 creationDate];
  v172 = creationDate != creationDate;
  if (creationDate != creationDate)
  {
    creationDate2 = [(HKMedicalDownloadableAttachment *)v6 creationDate];
    if (!creationDate2)
    {
      creationDate2 = 0;
      v139 = 0;
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v172 = 1;
      goto LABEL_39;
    }

    v61 = self->_creationDate;
    creationDate3 = [(HKMedicalDownloadableAttachment *)v6 creationDate];
    if (![(NSDate *)v61 isEqualToDate:?])
    {
      v152 = 0;
      v171 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v172 = 1;
      v62 = 1;
LABEL_196:
      v139 = v62;
      goto LABEL_39;
    }
  }

  retryCount = self->_retryCount;
  if (retryCount != [(HKMedicalDownloadableAttachment *)v6 retryCount])
  {
    v152 = 0;
    v171 = 0;
    v144 = 0;
    v151 = 0;
    v170 = 0;
    v145 = 0;
    v153 = 0;
    v169 = 0;
    v146 = 0;
    v154 = 0;
    v168 = 0;
    v149 = 0;
    v158 = 0;
    v155 = 0;
    v12 = 0;
    memset(v167, 0, sizeof(v167));
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v11 = *&v173[4];
    *&v165[4] = metadata3;
    *&v165[8] = 0x100000001;
    *v165 = 1;
    v159 = *v173;
    v160 = 0;
    v162 = 0;
    v163 = 1;
    v138 = v178;
    v161 = *&v177[8] | 0x100000000;
    v164 = 0x100000001;
    v156 = *&v177[4];
    v148 = *v177;
    v157 = 1;
    v142 = v176;
    v150 = 1;
    v141 = v175;
    v147 = 1;
    v140 = v174;
    v143 = 1;
    v62 = v172;
    goto LABEL_196;
  }

  nextRetryDate = self->_nextRetryDate;
  nextRetryDate = [(HKMedicalDownloadableAttachment *)v6 nextRetryDate];
  v171 = nextRetryDate != nextRetryDate;
  if (nextRetryDate != nextRetryDate)
  {
    nextRetryDate2 = [(HKMedicalDownloadableAttachment *)v6 nextRetryDate];
    if (!nextRetryDate2)
    {
      nextRetryDate2 = 0;
      v144 = 0;
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v171 = 1;
      goto LABEL_39;
    }

    v65 = self->_nextRetryDate;
    nextRetryDate3 = [(HKMedicalDownloadableAttachment *)v6 nextRetryDate];
    if (![(NSDate *)v65 isEqualToDate:?])
    {
      v151 = 0;
      v170 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v171 = 1;
      v144 = 1;
      goto LABEL_39;
    }
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  lastUpdatedDate = [(HKMedicalDownloadableAttachment *)v6 lastUpdatedDate];
  v170 = lastUpdatedDate != lastUpdatedDate;
  if (lastUpdatedDate != lastUpdatedDate)
  {
    lastUpdatedDate2 = [(HKMedicalDownloadableAttachment *)v6 lastUpdatedDate];
    if (!lastUpdatedDate2)
    {
      lastUpdatedDate2 = 0;
      v145 = 0;
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v170 = 1;
      goto LABEL_39;
    }

    v67 = self->_lastUpdatedDate;
    lastUpdatedDate3 = [(HKMedicalDownloadableAttachment *)v6 lastUpdatedDate];
    if (![(NSDate *)v67 isEqualToDate:?])
    {
      v153 = 0;
      v169 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v170 = 1;
      v145 = 1;
      goto LABEL_39;
    }
  }

  lastError = self->_lastError;
  lastError = [(HKMedicalDownloadableAttachment *)v6 lastError];
  v169 = lastError != lastError;
  if (lastError != lastError)
  {
    lastError2 = [(HKMedicalDownloadableAttachment *)v6 lastError];
    if (!lastError2)
    {
      lastError2 = 0;
      v146 = 0;
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v169 = 1;
      goto LABEL_39;
    }

    v69 = self->_lastError;
    lastError3 = [(HKMedicalDownloadableAttachment *)v6 lastError];
    if (![(NSError *)v69 isEqual:?])
    {
      v154 = 0;
      v168 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v169 = 1;
      v146 = 1;
      goto LABEL_39;
    }
  }

  fileURL = self->_fileURL;
  fileURL = [(HKMedicalDownloadableAttachment *)v6 fileURL];
  v168 = fileURL != fileURL;
  if (fileURL != fileURL)
  {
    fileURL2 = [(HKMedicalDownloadableAttachment *)v6 fileURL];
    if (!fileURL2)
    {
      fileURL2 = 0;
      v149 = 0;
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v168 = 1;
      goto LABEL_39;
    }

    v71 = self->_fileURL;
    fileURL3 = [(HKMedicalDownloadableAttachment *)v6 fileURL];
    if (![(NSURL *)v71 isEqual:?])
    {
      v158 = 0;
      v155 = 0;
      v12 = 0;
      memset(v167, 0, sizeof(v167));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v168 = 1;
      v149 = 1;
      goto LABEL_39;
    }
  }

  inlineData = self->_inlineData;
  inlineData = [(HKMedicalDownloadableAttachment *)v6 inlineData];
  *&v167[8] = inlineData != inlineData;
  if (inlineData != inlineData)
  {
    inlineData2 = [(HKMedicalDownloadableAttachment *)v6 inlineData];
    if (!inlineData2)
    {
      inlineData2 = 0;
      v155 = 0;
      v12 = 0;
      *v167 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v149 = v168;
      v158 = 1;
      *&v167[8] = 1;
      goto LABEL_39;
    }

    v73 = self->_inlineData;
    inlineData3 = [(HKMedicalDownloadableAttachment *)v6 inlineData];
    if (![(NSData *)v73 isEqual:?])
    {
      v12 = 0;
      *v167 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v149 = v168;
      v158 = 1;
      *&v167[8] = 1;
      v155 = 1;
      goto LABEL_39;
    }
  }

  inlineDataChecksum = self->_inlineDataChecksum;
  inlineDataChecksum = [(HKMedicalDownloadableAttachment *)v6 inlineDataChecksum];
  *&v167[4] = inlineDataChecksum != inlineDataChecksum;
  if (inlineDataChecksum != inlineDataChecksum)
  {
    inlineDataChecksum2 = [(HKMedicalDownloadableAttachment *)v6 inlineDataChecksum];
    if (!inlineDataChecksum2)
    {
      inlineDataChecksum2 = 0;
      *v167 = 0x100000000;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v160 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v149 = v168;
      v158 = 1;
      v155 = *&v167[8];
      v12 = 1;
      goto LABEL_39;
    }

    v75 = self->_inlineDataChecksum;
    inlineDataChecksum3 = [(HKMedicalDownloadableAttachment *)v6 inlineDataChecksum];
    if (![(NSData *)v75 isEqual:?])
    {
      *v167 = 0x100000000;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v149 = v168;
      v158 = 1;
      v155 = *&v167[8];
      v12 = 1;
      v160 = 1;
      goto LABEL_39;
    }
  }

  attachmentIdentifier = self->_attachmentIdentifier;
  attachmentIdentifier = [(HKMedicalDownloadableAttachment *)v6 attachmentIdentifier];
  *v167 = attachmentIdentifier != attachmentIdentifier;
  if (attachmentIdentifier != attachmentIdentifier)
  {
    attachmentIdentifier2 = [(HKMedicalDownloadableAttachment *)v6 attachmentIdentifier];
    if (!attachmentIdentifier2)
    {
      attachmentIdentifier2 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v149 = v168;
      v158 = 1;
      v155 = *&v167[8];
      v12 = 1;
      v160 = *&v167[4];
      v162 = 1;
      *v167 = 1;
      goto LABEL_39;
    }

    v77 = self->_attachmentIdentifier;
    attachmentIdentifier3 = [(HKMedicalDownloadableAttachment *)v6 attachmentIdentifier];
    if (![(NSUUID *)v77 isEqual:?])
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = v22;
      *&v165[4] = metadata3;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      v159 = *v173;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8] | 0x100000000;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v149 = v168;
      v158 = 1;
      v155 = *&v167[8];
      v12 = 1;
      v160 = *&v167[4];
      v162 = 1;
      *v167 = 1;
      v13 = 1;
      goto LABEL_39;
    }
  }

  metadata = self->_metadata;
  metadata = [(HKMedicalDownloadableAttachment *)v6 metadata];
  if (metadata == metadata)
  {
    v15 = 0;
    v16 = 0;
    v11 = v22;
    *&v165[4] = metadata3;
    *&v165[8] = 0x100000001;
    *v165 = 1;
    v159 = *v173;
    v163 = 1;
    v138 = v178;
    v161 = *&v177[8] | 0x100000000;
    v164 = 0x100000001;
    v156 = *&v177[4];
    v148 = *v177;
    v157 = 1;
    v142 = v176;
    v150 = 1;
    v141 = v175;
    v147 = 1;
    v140 = v174;
    v143 = 1;
    v139 = v172;
    v152 = 1;
    v144 = v171;
    v151 = 1;
    v145 = v170;
    v153 = 1;
    v146 = v169;
    v154 = 1;
    v149 = v168;
    v158 = 1;
    v155 = *&v167[8];
    v12 = 1;
    v160 = *&v167[4];
    v162 = 1;
    v13 = *v167;
    v14 = 1;
    v17 = 1;
  }

  else
  {
    metadata2 = [(HKMedicalDownloadableAttachment *)v6 metadata];
    if (metadata2)
    {
      v79 = self->_metadata;
      metadata3 = [(HKMedicalDownloadableAttachment *)v6 metadata];
      v17 = [(NSDictionary *)v79 isEqual:metadata3];
      v11 = v22;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = *&v173[8];
      v159 = *v173;
      v163 = 1;
      v138 = v178;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v161 = *&v177[8] | 0x100000000;
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v149 = v168;
      v158 = 1;
      v155 = *&v167[8];
      v12 = 1;
      v160 = *&v167[4];
      v16 = 1;
    }

    else
    {
      metadata2 = 0;
      v16 = 0;
      v17 = 0;
      v11 = v22;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = metadata3;
      v159 = *v173;
      v163 = 1;
      v138 = v178;
      v164 = 0x100000001;
      v156 = *&v177[4];
      v161 = *&v177[8] | 0x100000000;
      v148 = *v177;
      v157 = 1;
      v142 = v176;
      v150 = 1;
      v141 = v175;
      v147 = 1;
      v140 = v174;
      v143 = 1;
      v139 = v172;
      v152 = 1;
      v144 = v171;
      v151 = 1;
      v145 = v170;
      v153 = 1;
      v146 = v169;
      v154 = 1;
      v149 = v168;
      v158 = 1;
      v155 = *&v167[8];
      v12 = 1;
      v160 = *&v167[4];
    }

    v162 = 1;
    v13 = *v167;
    v14 = 1;
    v15 = 1;
  }

LABEL_39:
  if (v16)
  {
    v39 = v12;
    v40 = identifier;
    v41 = v13;
    v42 = v11;
    v43 = v14;
    v44 = v15;

    v15 = v44;
    v14 = v43;
    v11 = v42;
    v13 = v41;
    identifier = v40;
    v12 = v39;
  }

  if (v15)
  {
  }

  if (v14)
  {
  }

  if (v13)
  {
  }

  if (*v167)
  {
  }

  if (v162)
  {
  }

  if (v160)
  {
  }

  if (*&v167[4])
  {
  }

  if (v12)
  {
  }

  if (v155)
  {
  }

  if (*&v167[8])
  {
  }

  if (v158)
  {
  }

  if (v149)
  {
  }

  if (v168)
  {
  }

  if (v154)
  {
  }

  if (v146)
  {
  }

  if (v169)
  {
  }

  if (v153)
  {
  }

  if (v145)
  {
  }

  if (v170)
  {
  }

  if (v151)
  {
  }

  if (v144)
  {
  }

  if (v171)
  {
  }

  if (v152)
  {
  }

  if (v139)
  {
  }

  if (v172)
  {
  }

  if (v143)
  {
  }

  if (v140)
  {
  }

  if (v174)
  {
  }

  if (v147)
  {
  }

  if (v141)
  {
  }

  if (v175)
  {
  }

  if (v150)
  {
  }

  if (v142)
  {
  }

  if (v176)
  {
  }

  if (v157)
  {
  }

  if (v148)
  {
  }

  if (*v177)
  {
  }

  if (HIDWORD(v161))
  {
  }

  if (v156)
  {
  }

  if (*&v177[4])
  {
  }

  if (v164)
  {
  }

  if (v161)
  {
  }

  if (*&v177[8])
  {
  }

  if (HIDWORD(v164))
  {
  }

  if (v138)
  {
  }

  if (v178)
  {
  }

  if (v163)
  {
  }

  if (v159)
  {
  }

  if (*v173)
  {
  }

  if (*v165)
  {

    if (!v11)
    {
      goto LABEL_141;
    }

LABEL_158:

    if (!*&v173[4])
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  if (v11)
  {
    goto LABEL_158;
  }

LABEL_141:
  if (*&v173[4])
  {
LABEL_142:
  }

LABEL_143:
  if (*&v165[8])
  {
  }

  if (*&v165[4])
  {
  }

  if (*&v173[8])
  {
  }

  if (*&v165[12])
  {
  }

  if (*&v165[16])
  {
  }

  if (v166 != identifier)
  {
  }

LABEL_156:
  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(NSUUID *)self->_medicalRecordIdentifier hash]^ v3;
  v5 = [(NSUUID *)self->_clinicalRecordIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSUUID *)self->_accountIdentifier hash];
  v7 = v6 ^ [(HKFHIRVersion *)self->_FHIRVersion hash]^ self->_type ^ self->_status;
  errorStatus = self->_errorStatus;
  v9 = errorStatus ^ [(NSString *)self->_title hash];
  v10 = v9 ^ [(NSURL *)self->_webURL hash];
  v11 = v7 ^ v10 ^ [(NSNumber *)self->_sizeInBytes hash];
  v12 = [(NSString *)self->_contentType hash];
  v13 = v12 ^ [(NSLocale *)self->_locale hash];
  v14 = v13 ^ [(NSData *)self->_expectedHash hash];
  v15 = v11 ^ v14 ^ [(NSDate *)self->_creationDate hash]^ self->_retryCount;
  v16 = [(NSDate *)self->_nextRetryDate hash];
  v17 = v16 ^ [(NSDate *)self->_lastUpdatedDate hash];
  v18 = v17 ^ [(NSError *)self->_lastError hash];
  v19 = v18 ^ [(NSURL *)self->_fileURL hash];
  v20 = v19 ^ [(NSData *)self->_inlineData hash];
  v21 = v15 ^ v20 ^ [(NSData *)self->_inlineDataChecksum hash];
  v22 = [(NSUUID *)self->_attachmentIdentifier hash];
  return v21 ^ v22 ^ [(NSDictionary *)self->_metadata hash];
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_medicalRecordIdentifier forKey:@"MedicalRecordIdentifier"];
  [coderCopy encodeObject:self->_clinicalRecordIdentifier forKey:@"ClinicalRecordIdentifier"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"AccountIdentifier"];
  [coderCopy encodeObject:self->_FHIRVersion forKey:@"FHIRVersion"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeInteger:self->_status forKey:@"Status"];
  [coderCopy encodeInteger:self->_errorStatus forKey:@"ErrorStatus"];
  [coderCopy encodeObject:self->_title forKey:@"Title"];
  [coderCopy encodeObject:self->_webURL forKey:@"WebURL"];
  [coderCopy encodeObject:self->_sizeInBytes forKey:@"SizeInBytes"];
  [coderCopy encodeObject:self->_contentType forKey:@"ContentType"];
  [coderCopy encodeObject:self->_locale forKey:@"Locale"];
  [coderCopy encodeObject:self->_expectedHash forKey:@"ExpectedHash"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
  [coderCopy encodeInteger:self->_retryCount forKey:@"RetryCount"];
  [coderCopy encodeObject:self->_nextRetryDate forKey:@"NextRetryDate"];
  [coderCopy encodeObject:self->_lastUpdatedDate forKey:@"LastUpdatedDate"];
  [coderCopy encodeObject:self->_lastError forKey:@"LastError"];
  [coderCopy encodeObject:self->_fileURL forKey:@"FileURL"];
  [coderCopy encodeObject:self->_inlineData forKey:@"InlineData"];
  [coderCopy encodeObject:self->_inlineDataChecksum forKey:@"InlineDataChecksum"];
  [coderCopy encodeObject:self->_attachmentIdentifier forKey:@"AttachmentIdentifierKey"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKMedicalDownloadableAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecordIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 || v7 == 0;
  if (!v10 && [coderCopy containsValueForKey:@"Type"] && objc_msgSend(coderCopy, "containsValueForKey:", @"Status") && objc_msgSend(coderCopy, "containsValueForKey:", @"ErrorStatus") && (objc_msgSend(coderCopy, "containsValueForKey:", @"RetryCount") & 1) != 0)
  {
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalRecordIdentifier"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccountIdentifier"];
    v23 = [coderCopy decodeIntegerForKey:@"Type"];
    v22 = [coderCopy decodeIntegerForKey:@"Status"];
    v21 = [coderCopy decodeIntegerForKey:@"ErrorStatus"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WebURL"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SizeInBytes"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContentType"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Locale"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExpectedHash"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
    v18 = [coderCopy decodeIntegerForKey:@"RetryCount"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NextRetryDate"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastUpdatedDate"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastError"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileURL"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InlineData"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InlineDataChecksum"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AttachmentIdentifierKey"];
    hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v13 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"Metadata"];
    self = [(HKMedicalDownloadableAttachment *)self initWithIdentifier:v5 medicalRecordIdentifier:v6 clinicalRecordIdentifier:v34 accountIdentifier:v31 FHIRVersion:v8 type:v23 status:v22 errorStatus:v21 title:v33 webURL:v32 sizeInBytes:v28 contentType:v30 locale:v20 expectedHash:v29 creationDate:v19 retryCount:v18 nextRetryDate:v27 lastUpdatedDate:v26 lastError:v25 fileURL:v24 inlineData:v17 inlineDataChecksum:v16 attachmentIdentifier:v11 metadata:v13];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyForAccountWithIdentifier:(id)identifier medicalRecordIdentifier:(id)recordIdentifier clinicalRecordIdentifier:(id)clinicalRecordIdentifier
{
  identifierCopy = identifier;
  recordIdentifierCopy = recordIdentifier;
  clinicalRecordIdentifierCopy = clinicalRecordIdentifier;
  if (!identifierCopy)
  {
    [HKMedicalDownloadableAttachment copyForAccountWithIdentifier:a2 medicalRecordIdentifier:self clinicalRecordIdentifier:?];
  }

  v12 = objc_alloc(objc_opt_class());
  v13 = *&self->_status;
  v14 = *&self->_sizeInBytes;
  v15 = *&self->_creationDate;
  v16 = *&self->_lastError;
  v17 = [v12 initWithIdentifier:self->_identifier medicalRecordIdentifier:recordIdentifierCopy clinicalRecordIdentifier:clinicalRecordIdentifierCopy accountIdentifier:identifierCopy FHIRVersion:self->_FHIRVersion type:self->_type status:self->_status errorStatus:self->_errorStatus title:self->_title webURL:self->_webURL sizeInBytes:self->_sizeInBytes contentType:self->_contentType locale:self->_locale expectedHash:self->_expectedHash creationDate:self->_creationDate retryCount:self->_retryCount nextRetryDate:self->_nextRetryDate lastUpdatedDate:self->_lastUpdatedDate lastError:self->_lastError fileURL:self->_fileURL inlineData:self->_inlineData inlineDataChecksum:self->_inlineDataChecksum attachmentIdentifier:self->_attachmentIdentifier metadata:self->_metadata];

  return v17;
}

- (void)copyForAccountWithIdentifier:(uint64_t)a1 medicalRecordIdentifier:(uint64_t)a2 clinicalRecordIdentifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalDownloadableAttachment.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"accountIdentifier"}];
}

@end
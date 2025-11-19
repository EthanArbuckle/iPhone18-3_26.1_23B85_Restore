@interface HKMedicalDownloadableAttachment
- (BOOL)isEqual:(id)a3;
- (HKMedicalDownloadableAttachment)init;
- (HKMedicalDownloadableAttachment)initWithCoder:(id)a3;
- (HKMedicalDownloadableAttachment)initWithIdentifier:(id)a3 medicalRecordIdentifier:(id)a4 clinicalRecordIdentifier:(id)a5 accountIdentifier:(id)a6 FHIRVersion:(id)a7 type:(int64_t)a8 status:(int64_t)a9 errorStatus:(int64_t)a10 title:(id)a11 webURL:(id)a12 sizeInBytes:(id)a13 contentType:(id)a14 locale:(id)a15 expectedHash:(id)a16 creationDate:(id)a17 retryCount:(int64_t)a18 nextRetryDate:(id)a19 lastUpdatedDate:(id)a20 lastError:(id)a21 fileURL:(id)a22 inlineData:(id)a23 inlineDataChecksum:(id)a24 attachmentIdentifier:(id)a25 metadata:(id)a26;
- (id)copyForAccountWithIdentifier:(id)a3 medicalRecordIdentifier:(id)a4 clinicalRecordIdentifier:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKMedicalDownloadableAttachment)initWithIdentifier:(id)a3 medicalRecordIdentifier:(id)a4 clinicalRecordIdentifier:(id)a5 accountIdentifier:(id)a6 FHIRVersion:(id)a7 type:(int64_t)a8 status:(int64_t)a9 errorStatus:(int64_t)a10 title:(id)a11 webURL:(id)a12 sizeInBytes:(id)a13 contentType:(id)a14 locale:(id)a15 expectedHash:(id)a16 creationDate:(id)a17 retryCount:(int64_t)a18 nextRetryDate:(id)a19 lastUpdatedDate:(id)a20 lastError:(id)a21 fileURL:(id)a22 inlineData:(id)a23 inlineDataChecksum:(id)a24 attachmentIdentifier:(id)a25 metadata:(id)a26
{
  v93 = a3;
  v92 = a4;
  v91 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a11;
  v90 = a12;
  v33 = a13;
  v89 = a14;
  v34 = a15;
  v35 = a16;
  v36 = a17;
  v37 = a19;
  v38 = a20;
  v88 = a21;
  v87 = a22;
  v86 = a23;
  v85 = a24;
  v84 = a25;
  v83 = a26;
  v94.receiver = self;
  v94.super_class = HKMedicalDownloadableAttachment;
  v39 = [(HKMedicalDownloadableAttachment *)&v94 init];
  if (v39)
  {
    v40 = [v93 copy];
    identifier = v39->_identifier;
    v39->_identifier = v40;

    v42 = [v92 copy];
    medicalRecordIdentifier = v39->_medicalRecordIdentifier;
    v39->_medicalRecordIdentifier = v42;

    v44 = [v91 copy];
    clinicalRecordIdentifier = v39->_clinicalRecordIdentifier;
    v39->_clinicalRecordIdentifier = v44;

    v46 = [v30 copy];
    accountIdentifier = v39->_accountIdentifier;
    v39->_accountIdentifier = v46;

    v48 = [v31 copy];
    FHIRVersion = v39->_FHIRVersion;
    v39->_FHIRVersion = v48;

    v39->_type = a8;
    v39->_status = a9;
    v39->_errorStatus = a10;
    v50 = [v32 copy];
    title = v39->_title;
    v39->_title = v50;

    v52 = [v90 copy];
    webURL = v39->_webURL;
    v39->_webURL = v52;

    v54 = [v33 copy];
    sizeInBytes = v39->_sizeInBytes;
    v39->_sizeInBytes = v54;

    v56 = [v89 copy];
    contentType = v39->_contentType;
    v39->_contentType = v56;

    v58 = [v34 copy];
    locale = v39->_locale;
    v39->_locale = v58;

    v60 = [v35 copy];
    expectedHash = v39->_expectedHash;
    v39->_expectedHash = v60;

    v62 = [v36 copy];
    creationDate = v39->_creationDate;
    v39->_creationDate = v62;

    v39->_retryCount = a18;
    v64 = [v37 copy];
    nextRetryDate = v39->_nextRetryDate;
    v39->_nextRetryDate = v64;

    v66 = [v38 copy];
    lastUpdatedDate = v39->_lastUpdatedDate;
    v39->_lastUpdatedDate = v66;

    v68 = [v88 copy];
    lastError = v39->_lastError;
    v39->_lastError = v68;

    v70 = [v87 copy];
    fileURL = v39->_fileURL;
    v39->_fileURL = v70;

    v72 = [v86 copy];
    inlineData = v39->_inlineData;
    v39->_inlineData = v72;

    v74 = [v85 copy];
    inlineDataChecksum = v39->_inlineDataChecksum;
    v39->_inlineDataChecksum = v74;

    v76 = [v84 copy];
    attachmentIdentifier = v39->_attachmentIdentifier;
    v39->_attachmentIdentifier = v76;

    v78 = [v83 copy];
    metadata = v39->_metadata;
    v39->_metadata = v78;
  }

  return v39;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
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

  v6 = v5;
  identifier = self->_identifier;
  v8 = [(HKMedicalDownloadableAttachment *)v6 identifier];
  v166 = identifier;
  if (identifier != v8)
  {
    v9 = [(HKMedicalDownloadableAttachment *)v6 identifier];
    if (!v9)
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

    v137 = v9;
    v10 = self->_identifier;
    v135 = [(HKMedicalDownloadableAttachment *)v6 identifier];
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
  v136 = [(HKMedicalDownloadableAttachment *)v6 medicalRecordIdentifier];
  v3 = medicalRecordIdentifier != v136;
  *&v165[16] = identifier != v8;
  if (medicalRecordIdentifier != v136)
  {
    v19 = [(HKMedicalDownloadableAttachment *)v6 medicalRecordIdentifier];
    if (!v19)
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

    v134 = v19;
    v20 = self->_medicalRecordIdentifier;
    v132 = [(HKMedicalDownloadableAttachment *)v6 medicalRecordIdentifier];
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
  v133 = [(HKMedicalDownloadableAttachment *)v6 clinicalRecordIdentifier];
  v22 = clinicalRecordIdentifier != v133;
  *&v173[8] = v3;
  if (clinicalRecordIdentifier != v133)
  {
    v23 = [(HKMedicalDownloadableAttachment *)v6 clinicalRecordIdentifier];
    if (!v23)
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
      *&v165[4] = v3;
      goto LABEL_39;
    }

    v131 = v23;
    v24 = self->_clinicalRecordIdentifier;
    v129 = [(HKMedicalDownloadableAttachment *)v6 clinicalRecordIdentifier];
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
      *&v165[4] = v3;
      v11 = 1;
      goto LABEL_39;
    }
  }

  accountIdentifier = self->_accountIdentifier;
  v130 = [(HKMedicalDownloadableAttachment *)v6 accountIdentifier];
  v26 = accountIdentifier != v130;
  *&v173[4] = v22;
  if (accountIdentifier != v130)
  {
    v27 = [(HKMedicalDownloadableAttachment *)v6 accountIdentifier];
    if (!v27)
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
      *&v165[4] = v3;
      v11 = v22;
      v13 = 0;
      *v173 = 1;
      goto LABEL_39;
    }

    v128 = v27;
    v28 = self->_accountIdentifier;
    v126 = [(HKMedicalDownloadableAttachment *)v6 accountIdentifier];
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
      *&v165[4] = v3;
      v11 = v22;
      v13 = 0;
      *v173 = 1;
      v158 = 0;
      v159 = 1;
      goto LABEL_39;
    }
  }

  FHIRVersion = self->_FHIRVersion;
  v127 = [(HKMedicalDownloadableAttachment *)v6 FHIRVersion];
  v178 = FHIRVersion != v127;
  *v173 = v26;
  if (FHIRVersion != v127)
  {
    v30 = [(HKMedicalDownloadableAttachment *)v6 FHIRVersion];
    if (!v30)
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
      *&v165[4] = v3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v178 = 1;
      goto LABEL_39;
    }

    v125 = v30;
    v31 = self->_FHIRVersion;
    v124 = [(HKMedicalDownloadableAttachment *)v6 FHIRVersion];
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
      *&v165[4] = v3;
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
    *&v165[4] = v3;
    v11 = v22;
    v13 = 0;
    v162 = 0;
    v163 = 1;
    v32 = v178;
    goto LABEL_37;
  }

  title = self->_title;
  v123 = [(HKMedicalDownloadableAttachment *)v6 title];
  *&v177[8] = title != v123;
  if (title != v123)
  {
    v37 = [(HKMedicalDownloadableAttachment *)v6 title];
    if (!v37)
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
      *&v165[4] = v3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      *&v177[8] = 1;
      goto LABEL_39;
    }

    v122 = v37;
    v38 = self->_title;
    v120 = [(HKMedicalDownloadableAttachment *)v6 title];
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
      *&v165[4] = v3;
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
  v121 = [(HKMedicalDownloadableAttachment *)v6 webURL];
  *&v177[4] = webURL != v121;
  if (webURL != v121)
  {
    v47 = [(HKMedicalDownloadableAttachment *)v6 webURL];
    if (!v47)
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
      *&v165[4] = v3;
      v11 = v22;
      v13 = 0;
      v162 = 0;
      v163 = 1;
      v138 = v178;
      v161 = *&v177[8];
      v164 = 0x100000001;
      goto LABEL_39;
    }

    v119 = v47;
    v48 = self->_webURL;
    v117 = [(HKMedicalDownloadableAttachment *)v6 webURL];
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
      *&v165[4] = v3;
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
  v118 = [(HKMedicalDownloadableAttachment *)v6 sizeInBytes];
  *v177 = sizeInBytes != v118;
  if (sizeInBytes != v118)
  {
    v50 = [(HKMedicalDownloadableAttachment *)v6 sizeInBytes];
    if (!v50)
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
      *&v165[4] = v3;
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

    v116 = v50;
    v51 = self->_sizeInBytes;
    v113 = [(HKMedicalDownloadableAttachment *)v6 sizeInBytes];
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
      *&v165[4] = v3;
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
  v115 = [(HKMedicalDownloadableAttachment *)v6 contentType];
  v176 = contentType != v115;
  if (contentType != v115)
  {
    v114 = [(HKMedicalDownloadableAttachment *)v6 contentType];
    if (!v114)
    {
      v114 = 0;
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
      *&v165[4] = v3;
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
    v111 = [(HKMedicalDownloadableAttachment *)v6 contentType];
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
      *&v165[4] = v3;
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
  v112 = [(HKMedicalDownloadableAttachment *)v6 locale];
  v175 = locale != v112;
  if (locale != v112)
  {
    v55 = [(HKMedicalDownloadableAttachment *)v6 locale];
    if (!v55)
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
      *&v165[4] = v3;
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

    v110 = v55;
    v56 = self->_locale;
    v107 = [(HKMedicalDownloadableAttachment *)v6 locale];
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
      *&v165[4] = v3;
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
  v58 = [(HKMedicalDownloadableAttachment *)v6 expectedHash];
  v174 = expectedHash != v58;
  v109 = v58;
  if (expectedHash != v58)
  {
    v108 = [(HKMedicalDownloadableAttachment *)v6 expectedHash];
    if (!v108)
    {
      v108 = 0;
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
      *&v165[4] = v3;
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
    v104 = [(HKMedicalDownloadableAttachment *)v6 expectedHash];
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
      *&v165[4] = v3;
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
  v106 = [(HKMedicalDownloadableAttachment *)v6 creationDate];
  v172 = creationDate != v106;
  if (creationDate != v106)
  {
    v105 = [(HKMedicalDownloadableAttachment *)v6 creationDate];
    if (!v105)
    {
      v105 = 0;
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
      *&v165[4] = v3;
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
    v103 = [(HKMedicalDownloadableAttachment *)v6 creationDate];
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
      *&v165[4] = v3;
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
    *&v165[4] = v3;
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
  v102 = [(HKMedicalDownloadableAttachment *)v6 nextRetryDate];
  v171 = nextRetryDate != v102;
  if (nextRetryDate != v102)
  {
    v101 = [(HKMedicalDownloadableAttachment *)v6 nextRetryDate];
    if (!v101)
    {
      v101 = 0;
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
      *&v165[4] = v3;
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
    v98 = [(HKMedicalDownloadableAttachment *)v6 nextRetryDate];
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
      *&v165[4] = v3;
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
  v100 = [(HKMedicalDownloadableAttachment *)v6 lastUpdatedDate];
  v170 = lastUpdatedDate != v100;
  if (lastUpdatedDate != v100)
  {
    v99 = [(HKMedicalDownloadableAttachment *)v6 lastUpdatedDate];
    if (!v99)
    {
      v99 = 0;
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
      *&v165[4] = v3;
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
    v95 = [(HKMedicalDownloadableAttachment *)v6 lastUpdatedDate];
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
      *&v165[4] = v3;
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
  v97 = [(HKMedicalDownloadableAttachment *)v6 lastError];
  v169 = lastError != v97;
  if (lastError != v97)
  {
    v96 = [(HKMedicalDownloadableAttachment *)v6 lastError];
    if (!v96)
    {
      v96 = 0;
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
      *&v165[4] = v3;
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
    v92 = [(HKMedicalDownloadableAttachment *)v6 lastError];
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
      *&v165[4] = v3;
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
  v94 = [(HKMedicalDownloadableAttachment *)v6 fileURL];
  v168 = fileURL != v94;
  if (fileURL != v94)
  {
    v93 = [(HKMedicalDownloadableAttachment *)v6 fileURL];
    if (!v93)
    {
      v93 = 0;
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
      *&v165[4] = v3;
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
    v89 = [(HKMedicalDownloadableAttachment *)v6 fileURL];
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
      *&v165[4] = v3;
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
  v91 = [(HKMedicalDownloadableAttachment *)v6 inlineData];
  *&v167[8] = inlineData != v91;
  if (inlineData != v91)
  {
    v90 = [(HKMedicalDownloadableAttachment *)v6 inlineData];
    if (!v90)
    {
      v90 = 0;
      v155 = 0;
      v12 = 0;
      *v167 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = v3;
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
    v86 = [(HKMedicalDownloadableAttachment *)v6 inlineData];
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
      *&v165[4] = v3;
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
  v88 = [(HKMedicalDownloadableAttachment *)v6 inlineDataChecksum];
  *&v167[4] = inlineDataChecksum != v88;
  if (inlineDataChecksum != v88)
  {
    v87 = [(HKMedicalDownloadableAttachment *)v6 inlineDataChecksum];
    if (!v87)
    {
      v87 = 0;
      *v167 = 0x100000000;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = v3;
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
    v83 = [(HKMedicalDownloadableAttachment *)v6 inlineDataChecksum];
    if (![(NSData *)v75 isEqual:?])
    {
      *v167 = 0x100000000;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = v3;
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
  v85 = [(HKMedicalDownloadableAttachment *)v6 attachmentIdentifier];
  *v167 = attachmentIdentifier != v85;
  if (attachmentIdentifier != v85)
  {
    v84 = [(HKMedicalDownloadableAttachment *)v6 attachmentIdentifier];
    if (!v84)
    {
      v84 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = *&v173[4];
      *&v165[4] = v3;
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
    v80 = [(HKMedicalDownloadableAttachment *)v6 attachmentIdentifier];
    if (![(NSUUID *)v77 isEqual:?])
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v11 = v22;
      *&v165[4] = v3;
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
  v82 = [(HKMedicalDownloadableAttachment *)v6 metadata];
  if (metadata == v82)
  {
    v15 = 0;
    v16 = 0;
    v11 = v22;
    *&v165[4] = v3;
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
    v81 = [(HKMedicalDownloadableAttachment *)v6 metadata];
    if (v81)
    {
      v79 = self->_metadata;
      v3 = [(HKMedicalDownloadableAttachment *)v6 metadata];
      v17 = [(NSDictionary *)v79 isEqual:v3];
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
      v81 = 0;
      v16 = 0;
      v17 = 0;
      v11 = v22;
      *&v165[8] = 0x100000001;
      *v165 = 1;
      *&v165[4] = v3;
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
    v40 = v8;
    v41 = v13;
    v42 = v11;
    v43 = v14;
    v44 = v15;

    v15 = v44;
    v14 = v43;
    v11 = v42;
    v13 = v41;
    v8 = v40;
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

  if (v166 != v8)
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_medicalRecordIdentifier forKey:@"MedicalRecordIdentifier"];
  [v5 encodeObject:self->_clinicalRecordIdentifier forKey:@"ClinicalRecordIdentifier"];
  [v5 encodeObject:self->_accountIdentifier forKey:@"AccountIdentifier"];
  [v5 encodeObject:self->_FHIRVersion forKey:@"FHIRVersion"];
  [v5 encodeInteger:self->_type forKey:@"Type"];
  [v5 encodeInteger:self->_status forKey:@"Status"];
  [v5 encodeInteger:self->_errorStatus forKey:@"ErrorStatus"];
  [v5 encodeObject:self->_title forKey:@"Title"];
  [v5 encodeObject:self->_webURL forKey:@"WebURL"];
  [v5 encodeObject:self->_sizeInBytes forKey:@"SizeInBytes"];
  [v5 encodeObject:self->_contentType forKey:@"ContentType"];
  [v5 encodeObject:self->_locale forKey:@"Locale"];
  [v5 encodeObject:self->_expectedHash forKey:@"ExpectedHash"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
  [v5 encodeInteger:self->_retryCount forKey:@"RetryCount"];
  [v5 encodeObject:self->_nextRetryDate forKey:@"NextRetryDate"];
  [v5 encodeObject:self->_lastUpdatedDate forKey:@"LastUpdatedDate"];
  [v5 encodeObject:self->_lastError forKey:@"LastError"];
  [v5 encodeObject:self->_fileURL forKey:@"FileURL"];
  [v5 encodeObject:self->_inlineData forKey:@"InlineData"];
  [v5 encodeObject:self->_inlineDataChecksum forKey:@"InlineDataChecksum"];
  [v5 encodeObject:self->_attachmentIdentifier forKey:@"AttachmentIdentifierKey"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKMedicalDownloadableAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecordIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
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
  if (!v10 && [v4 containsValueForKey:@"Type"] && objc_msgSend(v4, "containsValueForKey:", @"Status") && objc_msgSend(v4, "containsValueForKey:", @"ErrorStatus") && (objc_msgSend(v4, "containsValueForKey:", @"RetryCount") & 1) != 0)
  {
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalRecordIdentifier"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccountIdentifier"];
    v23 = [v4 decodeIntegerForKey:@"Type"];
    v22 = [v4 decodeIntegerForKey:@"Status"];
    v21 = [v4 decodeIntegerForKey:@"ErrorStatus"];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WebURL"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SizeInBytes"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContentType"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Locale"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExpectedHash"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
    v18 = [v4 decodeIntegerForKey:@"RetryCount"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NextRetryDate"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastUpdatedDate"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastError"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileURL"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InlineData"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InlineDataChecksum"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AttachmentIdentifierKey"];
    v12 = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"Metadata"];
    self = [(HKMedicalDownloadableAttachment *)self initWithIdentifier:v5 medicalRecordIdentifier:v6 clinicalRecordIdentifier:v34 accountIdentifier:v31 FHIRVersion:v8 type:v23 status:v22 errorStatus:v21 title:v33 webURL:v32 sizeInBytes:v28 contentType:v30 locale:v20 expectedHash:v29 creationDate:v19 retryCount:v18 nextRetryDate:v27 lastUpdatedDate:v26 lastError:v25 fileURL:v24 inlineData:v17 inlineDataChecksum:v16 attachmentIdentifier:v11 metadata:v13];

    v14 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v14 = 0;
  }

  return v14;
}

- (id)copyForAccountWithIdentifier:(id)a3 medicalRecordIdentifier:(id)a4 clinicalRecordIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [HKMedicalDownloadableAttachment copyForAccountWithIdentifier:a2 medicalRecordIdentifier:self clinicalRecordIdentifier:?];
  }

  v12 = objc_alloc(objc_opt_class());
  v13 = *&self->_status;
  v14 = *&self->_sizeInBytes;
  v15 = *&self->_creationDate;
  v16 = *&self->_lastError;
  v17 = [v12 initWithIdentifier:self->_identifier medicalRecordIdentifier:v10 clinicalRecordIdentifier:v11 accountIdentifier:v9 FHIRVersion:self->_FHIRVersion type:self->_type status:self->_status errorStatus:self->_errorStatus title:self->_title webURL:self->_webURL sizeInBytes:self->_sizeInBytes contentType:self->_contentType locale:self->_locale expectedHash:self->_expectedHash creationDate:self->_creationDate retryCount:self->_retryCount nextRetryDate:self->_nextRetryDate lastUpdatedDate:self->_lastUpdatedDate lastError:self->_lastError fileURL:self->_fileURL inlineData:self->_inlineData inlineDataChecksum:self->_inlineDataChecksum attachmentIdentifier:self->_attachmentIdentifier metadata:self->_metadata];

  return v17;
}

- (void)copyForAccountWithIdentifier:(uint64_t)a1 medicalRecordIdentifier:(uint64_t)a2 clinicalRecordIdentifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicalDownloadableAttachment.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"accountIdentifier"}];
}

@end
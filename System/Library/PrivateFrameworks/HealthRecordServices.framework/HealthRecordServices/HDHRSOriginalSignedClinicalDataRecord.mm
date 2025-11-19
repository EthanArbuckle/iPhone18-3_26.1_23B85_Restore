@interface HDHRSOriginalSignedClinicalDataRecord
- (BOOL)isEqual:(id)a3;
- (HDHRSOriginalSignedClinicalDataRecord)initWithCoder:(id)a3;
- (HDHRSOriginalSignedClinicalDataRecord)initWithRawContent:(id)a3 sourceType:(int64_t)a4 sourceURL:(id)a5 issuerIdentifier:(id)a6 credentialTypes:(id)a7 syncIdentifier:(id)a8 metadata:(id)a9 receivedDate:(id)a10 receivedDateTimeZone:(id)a11 signatureStatus:(int64_t)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDHRSOriginalSignedClinicalDataRecord

- (HDHRSOriginalSignedClinicalDataRecord)initWithRawContent:(id)a3 sourceType:(int64_t)a4 sourceURL:(id)a5 issuerIdentifier:(id)a6 credentialTypes:(id)a7 syncIdentifier:(id)a8 metadata:(id)a9 receivedDate:(id)a10 receivedDateTimeZone:(id)a11 signatureStatus:(int64_t)a12
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v44.receiver = self;
  v44.super_class = HDHRSOriginalSignedClinicalDataRecord;
  v26 = [(HDHRSOriginalSignedClinicalDataRecord *)&v44 init];
  if (v26)
  {
    v27 = [v18 copy];
    rawContent = v26->_rawContent;
    v26->_rawContent = v27;

    v26->_sourceType = a4;
    v29 = [v19 copy];
    sourceURL = v26->_sourceURL;
    v26->_sourceURL = v29;

    v31 = [v20 copy];
    issuerIdentifier = v26->_issuerIdentifier;
    v26->_issuerIdentifier = v31;

    v33 = [v21 copy];
    credentialTypes = v26->_credentialTypes;
    v26->_credentialTypes = v33;

    v35 = [v22 copy];
    syncIdentifier = v26->_syncIdentifier;
    v26->_syncIdentifier = v35;

    v37 = [v23 copy];
    metadata = v26->_metadata;
    v26->_metadata = v37;

    v39 = [v24 copy];
    receivedDate = v26->_receivedDate;
    v26->_receivedDate = v39;

    v41 = [v25 copy];
    receivedDateTimeZone = v26->_receivedDateTimeZone;
    v26->_receivedDateTimeZone = v41;

    v26->_signatureStatus = a12;
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_58:

      goto LABEL_59;
    }

    rawContent = self->_rawContent;
    v9 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 rawContent];
    if (rawContent == v9)
    {
      sourceType = self->_sourceType;
      if (sourceType == [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceType])
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 rawContent];
      if (v10)
      {
        v11 = v10;
        v12 = self->_rawContent;
        v3 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 rawContent];
        if (([(NSData *)v12 isEqual:v3]& 1) == 0 || (v13 = self->_sourceType, v13 != [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceType]))
        {
          v14 = 0;
LABEL_56:

          goto LABEL_57;
        }

        v97 = v11;
LABEL_11:
        sourceURL = self->_sourceURL;
        v17 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceURL];
        if (sourceURL != v17)
        {
          v18 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceURL];
          if (!v18)
          {
            goto LABEL_54;
          }

          v96 = v18;
          v19 = self->_sourceURL;
          v20 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceURL];
          v21 = v19;
          v22 = v20;
          if (([(NSURL *)v21 isEqual:v20]& 1) == 0)
          {

LABEL_53:
            goto LABEL_54;
          }

          v93 = v22;
        }

        issuerIdentifier = self->_issuerIdentifier;
        v24 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 issuerIdentifier];
        if (issuerIdentifier == v24)
        {
          v95 = issuerIdentifier;
        }

        else
        {
          v25 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 issuerIdentifier];
          if (!v25)
          {
            goto LABEL_51;
          }

          v95 = issuerIdentifier;
          v88 = v3;
          v87 = v25;
          v26 = v17;
          v27 = v24;
          v28 = sourceURL;
          v29 = self->_issuerIdentifier;
          v30 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 issuerIdentifier];
          if (![(NSString *)v29 isEqualToString:v30])
          {

            if (v28 != v26)
            {
            }

            v14 = 0;
            v11 = v97;
            v3 = v88;
            if (rawContent == v9)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }

          sourceURL = v28;
          v24 = v27;
          v17 = v26;
          v84 = v30;
          v3 = v88;
        }

        credentialTypes = self->_credentialTypes;
        v94 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 credentialTypes];
        v86 = credentialTypes;
        if (credentialTypes != v94)
        {
          v32 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 credentialTypes];
          if (!v32)
          {

            if (v95 == v24)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }

          v83 = v32;
          v89 = sourceURL;
          v33 = v3;
          v34 = self->_credentialTypes;
          v35 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 credentialTypes];
          v36 = v34;
          v37 = v35;
          if (![(NSArray *)v36 isEqualToArray:v35])
          {

            v3 = v33;
            if (v95 != v24)
            {
            }

            v11 = v97;
            if (v89 == v17)
            {
              goto LABEL_45;
            }

            goto LABEL_44;
          }

          v80 = v37;
          v3 = v33;
          sourceURL = v89;
        }

        syncIdentifier = self->_syncIdentifier;
        [(HDHRSOriginalSignedClinicalDataRecord *)v7 syncIdentifier];
        v85 = v82 = syncIdentifier;
        if (syncIdentifier == v85)
        {
          goto LABEL_37;
        }

        v39 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 syncIdentifier];
        if (v39)
        {
          v79 = v39;
          v90 = sourceURL;
          v40 = v3;
          v41 = self->_syncIdentifier;
          v42 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 syncIdentifier];
          v43 = v41;
          v44 = v42;
          if (([(NSUUID *)v43 isEqual:v42]& 1) != 0)
          {
            v77 = v44;
            v3 = v40;
            sourceURL = v90;
LABEL_37:
            metadata = self->_metadata;
            [(HDHRSOriginalSignedClinicalDataRecord *)v7 metadata];
            v81 = v78 = metadata;
            if (metadata != v81)
            {
              v46 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 metadata];
              if (!v46)
              {
                v14 = 0;
                goto LABEL_82;
              }

              v76 = v46;
              v47 = v84;
              v91 = v17;
              v48 = v24;
              v49 = sourceURL;
              v50 = v3;
              v51 = self->_metadata;
              v75 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 metadata];
              if (![(NSDictionary *)v51 isEqual:?])
              {
                v14 = 0;
                v3 = v50;
                sourceURL = v49;
                v24 = v48;
                v17 = v91;
LABEL_78:
                v84 = v47;

                goto LABEL_82;
              }

              v3 = v50;
              sourceURL = v49;
              v24 = v48;
              v17 = v91;
            }

            receivedDate = self->_receivedDate;
            v54 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDate];
            v74 = receivedDate;
            v55 = receivedDate == v54;
            v56 = v54;
            if (v55)
            {
              v92 = v3;
            }

            else
            {
              v57 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDate];
              if (!v57)
              {
LABEL_91:

                v14 = 0;
LABEL_94:
                if (v78 != v81)
                {
                }

                if (v82 != v85)
                {
                }

                if (v86 != v94)
                {
                }

                goto LABEL_100;
              }

              v73 = v57;
              v92 = v3;
              v58 = self->_receivedDate;
              v72 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDate];
              if (![(NSDate *)v58 isEqualToDate:?])
              {
                v14 = 0;
LABEL_76:
                v3 = v92;
                goto LABEL_80;
              }
            }

            receivedDateTimeZone = self->_receivedDateTimeZone;
            v60 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDateTimeZone];
            v55 = receivedDateTimeZone == v60;
            v61 = v60;
            if (v55)
            {
              v71 = v60;
              signatureStatus = self->_signatureStatus;
              v14 = signatureStatus == [(HDHRSOriginalSignedClinicalDataRecord *)v7 signatureStatus];

              v3 = v92;
              if (v74 != v56)
              {
LABEL_80:

                if (v78 != v81)
                {
                }

                goto LABEL_82;
              }
            }

            else
            {
              v62 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDateTimeZone];
              if (v62)
              {
                v69 = v62;
                v70 = v61;
                v63 = self->_receivedDateTimeZone;
                v64 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDateTimeZone];
                v65 = v63;
                v66 = v64;
                if ([(NSTimeZone *)v65 isEqual:?])
                {
                  v67 = self->_signatureStatus;
                  v14 = v67 == [(HDHRSOriginalSignedClinicalDataRecord *)v7 signatureStatus];

                  if (v74 != v56)
                  {
                    goto LABEL_76;
                  }

                  v3 = v92;
                  if (v78 != v81)
                  {
                    v47 = v84;
                    goto LABEL_78;
                  }

LABEL_82:

                  if (v82 != v85)
                  {
                  }

                  if (v86 != v94)
                  {
                  }

LABEL_100:

                  if (v95 != v24)
                  {
                  }

                  if (sourceURL != v17)
                  {
                  }

LABEL_55:
                  v11 = v97;
                  if (rawContent != v9)
                  {
                    goto LABEL_56;
                  }

LABEL_57:

                  goto LABEL_58;
                }
              }

              else
              {
              }

              if (v74 != v56)
              {

                v3 = v92;
                goto LABEL_91;
              }

              v14 = 0;
              v3 = v92;
            }

            goto LABEL_94;
          }

          v3 = v40;
          if (v86 != v94)
          {
          }

          v11 = v97;
          if (v95 != v24)
          {
          }

          if (v90 == v17)
          {
LABEL_45:

            v14 = 0;
            if (rawContent == v9)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }

LABEL_44:

          goto LABEL_45;
        }

        if (v86 != v94)
        {
        }

        if (v95 == v24)
        {
LABEL_51:

          if (sourceURL != v17)
          {

            goto LABEL_53;
          }

LABEL_54:

          v14 = 0;
          goto LABEL_55;
        }

LABEL_50:

        goto LABEL_51;
      }
    }

    v14 = 0;
    goto LABEL_57;
  }

  v14 = 1;
LABEL_59:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  rawContent = self->_rawContent;
  v5 = a3;
  [v5 encodeObject:rawContent forKey:@"RawContent"];
  [v5 encodeInteger:self->_sourceType forKey:@"SourceType"];
  [v5 encodeObject:self->_sourceURL forKey:@"SourceURL"];
  [v5 encodeObject:self->_issuerIdentifier forKey:@"IssuerIdentifier"];
  [v5 encodeObject:self->_credentialTypes forKey:@"CredentialTypes"];
  [v5 encodeObject:self->_syncIdentifier forKey:@"SyncIdentifier"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
  [v5 encodeObject:self->_receivedDate forKey:@"ReceivedDate"];
  [v5 encodeObject:self->_receivedDateTimeZone forKey:@"ReceivedDateTimeZone"];
  [v5 encodeInteger:self->_signatureStatus forKey:@"SignatureStatus"];
}

- (HDHRSOriginalSignedClinicalDataRecord)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"SourceURL"] && (objc_msgSend(v4, "containsValueForKey:", @"SignatureStatus") & 1) != 0)
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RawContent"];
    v6 = [v4 decodeIntegerForKey:@"SourceType"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IssuerIdentifier"];
    v8 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SyncIdentifier"];
    v23 = v8;
    v10 = [v4 decodeObjectOfClasses:v8 forKey:@"CredentialTypes"];
    v11 = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v22 = [v4 decodeObjectOfClasses:v11 forKey:@"Metadata"];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDate"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDateTimeZone"];
    v14 = [v4 decodeIntegerForKey:@"SignatureStatus"];
    v21 = v5;
    if (v5 && v7 && v10 && v9 && v12 && v13)
    {
      v15 = v22;
      v16 = v6;
      v17 = v24;
      self = [(HDHRSOriginalSignedClinicalDataRecord *)self initWithRawContent:v5 sourceType:v16 sourceURL:v24 issuerIdentifier:v7 credentialTypes:v10 syncIdentifier:v9 metadata:v22 receivedDate:v12 receivedDateTimeZone:v13 signatureStatus:v14, v5];
      v18 = v12;
      v19 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v18 = v12;
      v19 = 0;
      v17 = v24;
      v15 = v22;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v19 = 0;
  }

  return v19;
}

@end
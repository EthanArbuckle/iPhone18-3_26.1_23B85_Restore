@interface HDHRSOriginalSignedClinicalDataRecord
- (BOOL)isEqual:(id)equal;
- (HDHRSOriginalSignedClinicalDataRecord)initWithCoder:(id)coder;
- (HDHRSOriginalSignedClinicalDataRecord)initWithRawContent:(id)content sourceType:(int64_t)type sourceURL:(id)l issuerIdentifier:(id)identifier credentialTypes:(id)types syncIdentifier:(id)syncIdentifier metadata:(id)metadata receivedDate:(id)self0 receivedDateTimeZone:(id)self1 signatureStatus:(int64_t)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDHRSOriginalSignedClinicalDataRecord

- (HDHRSOriginalSignedClinicalDataRecord)initWithRawContent:(id)content sourceType:(int64_t)type sourceURL:(id)l issuerIdentifier:(id)identifier credentialTypes:(id)types syncIdentifier:(id)syncIdentifier metadata:(id)metadata receivedDate:(id)self0 receivedDateTimeZone:(id)self1 signatureStatus:(int64_t)self2
{
  contentCopy = content;
  lCopy = l;
  identifierCopy = identifier;
  typesCopy = types;
  syncIdentifierCopy = syncIdentifier;
  metadataCopy = metadata;
  dateCopy = date;
  zoneCopy = zone;
  v44.receiver = self;
  v44.super_class = HDHRSOriginalSignedClinicalDataRecord;
  v26 = [(HDHRSOriginalSignedClinicalDataRecord *)&v44 init];
  if (v26)
  {
    v27 = [contentCopy copy];
    rawContent = v26->_rawContent;
    v26->_rawContent = v27;

    v26->_sourceType = type;
    v29 = [lCopy copy];
    sourceURL = v26->_sourceURL;
    v26->_sourceURL = v29;

    v31 = [identifierCopy copy];
    issuerIdentifier = v26->_issuerIdentifier;
    v26->_issuerIdentifier = v31;

    v33 = [typesCopy copy];
    credentialTypes = v26->_credentialTypes;
    v26->_credentialTypes = v33;

    v35 = [syncIdentifierCopy copy];
    syncIdentifier = v26->_syncIdentifier;
    v26->_syncIdentifier = v35;

    v37 = [metadataCopy copy];
    metadata = v26->_metadata;
    v26->_metadata = v37;

    v39 = [dateCopy copy];
    receivedDate = v26->_receivedDate;
    v26->_receivedDate = v39;

    v41 = [zoneCopy copy];
    receivedDateTimeZone = v26->_receivedDateTimeZone;
    v26->_receivedDateTimeZone = v41;

    v26->_signatureStatus = status;
  }

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_58:

      goto LABEL_59;
    }

    rawContent = self->_rawContent;
    rawContent = [(HDHRSOriginalSignedClinicalDataRecord *)v7 rawContent];
    if (rawContent == rawContent)
    {
      sourceType = self->_sourceType;
      if (sourceType == [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceType])
      {
        goto LABEL_11;
      }
    }

    else
    {
      rawContent2 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 rawContent];
      if (rawContent2)
      {
        v11 = rawContent2;
        v12 = self->_rawContent;
        rawContent3 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 rawContent];
        if (([(NSData *)v12 isEqual:rawContent3]& 1) == 0 || (v13 = self->_sourceType, v13 != [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceType]))
        {
          v14 = 0;
LABEL_56:

          goto LABEL_57;
        }

        v97 = v11;
LABEL_11:
        sourceURL = self->_sourceURL;
        sourceURL = [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceURL];
        if (sourceURL != sourceURL)
        {
          sourceURL2 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceURL];
          if (!sourceURL2)
          {
            goto LABEL_54;
          }

          v96 = sourceURL2;
          v19 = self->_sourceURL;
          sourceURL3 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 sourceURL];
          v21 = v19;
          v22 = sourceURL3;
          if (([(NSURL *)v21 isEqual:sourceURL3]& 1) == 0)
          {

LABEL_53:
            goto LABEL_54;
          }

          v93 = v22;
        }

        issuerIdentifier = self->_issuerIdentifier;
        issuerIdentifier = [(HDHRSOriginalSignedClinicalDataRecord *)v7 issuerIdentifier];
        if (issuerIdentifier == issuerIdentifier)
        {
          v95 = issuerIdentifier;
        }

        else
        {
          issuerIdentifier2 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 issuerIdentifier];
          if (!issuerIdentifier2)
          {
            goto LABEL_51;
          }

          v95 = issuerIdentifier;
          v88 = rawContent3;
          v87 = issuerIdentifier2;
          v26 = sourceURL;
          v27 = issuerIdentifier;
          v28 = sourceURL;
          v29 = self->_issuerIdentifier;
          issuerIdentifier3 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 issuerIdentifier];
          if (![(NSString *)v29 isEqualToString:issuerIdentifier3])
          {

            if (v28 != v26)
            {
            }

            v14 = 0;
            v11 = v97;
            rawContent3 = v88;
            if (rawContent == rawContent)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }

          sourceURL = v28;
          issuerIdentifier = v27;
          sourceURL = v26;
          v84 = issuerIdentifier3;
          rawContent3 = v88;
        }

        credentialTypes = self->_credentialTypes;
        credentialTypes = [(HDHRSOriginalSignedClinicalDataRecord *)v7 credentialTypes];
        v86 = credentialTypes;
        if (credentialTypes != credentialTypes)
        {
          credentialTypes2 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 credentialTypes];
          if (!credentialTypes2)
          {

            if (v95 == issuerIdentifier)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }

          v83 = credentialTypes2;
          v89 = sourceURL;
          v33 = rawContent3;
          v34 = self->_credentialTypes;
          credentialTypes3 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 credentialTypes];
          v36 = v34;
          v37 = credentialTypes3;
          if (![(NSArray *)v36 isEqualToArray:credentialTypes3])
          {

            rawContent3 = v33;
            if (v95 != issuerIdentifier)
            {
            }

            v11 = v97;
            if (v89 == sourceURL)
            {
              goto LABEL_45;
            }

            goto LABEL_44;
          }

          v80 = v37;
          rawContent3 = v33;
          sourceURL = v89;
        }

        syncIdentifier = self->_syncIdentifier;
        [(HDHRSOriginalSignedClinicalDataRecord *)v7 syncIdentifier];
        v85 = v82 = syncIdentifier;
        if (syncIdentifier == v85)
        {
          goto LABEL_37;
        }

        syncIdentifier = [(HDHRSOriginalSignedClinicalDataRecord *)v7 syncIdentifier];
        if (syncIdentifier)
        {
          v79 = syncIdentifier;
          v90 = sourceURL;
          v40 = rawContent3;
          v41 = self->_syncIdentifier;
          syncIdentifier2 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 syncIdentifier];
          v43 = v41;
          v44 = syncIdentifier2;
          if (([(NSUUID *)v43 isEqual:syncIdentifier2]& 1) != 0)
          {
            v77 = v44;
            rawContent3 = v40;
            sourceURL = v90;
LABEL_37:
            metadata = self->_metadata;
            [(HDHRSOriginalSignedClinicalDataRecord *)v7 metadata];
            v81 = v78 = metadata;
            if (metadata != v81)
            {
              metadata = [(HDHRSOriginalSignedClinicalDataRecord *)v7 metadata];
              if (!metadata)
              {
                v14 = 0;
                goto LABEL_82;
              }

              v76 = metadata;
              v47 = v84;
              v91 = sourceURL;
              v48 = issuerIdentifier;
              v49 = sourceURL;
              v50 = rawContent3;
              v51 = self->_metadata;
              metadata2 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 metadata];
              if (![(NSDictionary *)v51 isEqual:?])
              {
                v14 = 0;
                rawContent3 = v50;
                sourceURL = v49;
                issuerIdentifier = v48;
                sourceURL = v91;
LABEL_78:
                v84 = v47;

                goto LABEL_82;
              }

              rawContent3 = v50;
              sourceURL = v49;
              issuerIdentifier = v48;
              sourceURL = v91;
            }

            receivedDate = self->_receivedDate;
            receivedDate = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDate];
            v74 = receivedDate;
            v55 = receivedDate == receivedDate;
            v56 = receivedDate;
            if (v55)
            {
              v92 = rawContent3;
            }

            else
            {
              receivedDate2 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDate];
              if (!receivedDate2)
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

                if (v86 != credentialTypes)
                {
                }

                goto LABEL_100;
              }

              v73 = receivedDate2;
              v92 = rawContent3;
              v58 = self->_receivedDate;
              receivedDate3 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDate];
              if (![(NSDate *)v58 isEqualToDate:?])
              {
                v14 = 0;
LABEL_76:
                rawContent3 = v92;
                goto LABEL_80;
              }
            }

            receivedDateTimeZone = self->_receivedDateTimeZone;
            receivedDateTimeZone = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDateTimeZone];
            v55 = receivedDateTimeZone == receivedDateTimeZone;
            v61 = receivedDateTimeZone;
            if (v55)
            {
              v71 = receivedDateTimeZone;
              signatureStatus = self->_signatureStatus;
              v14 = signatureStatus == [(HDHRSOriginalSignedClinicalDataRecord *)v7 signatureStatus];

              rawContent3 = v92;
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
              receivedDateTimeZone2 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDateTimeZone];
              if (receivedDateTimeZone2)
              {
                v69 = receivedDateTimeZone2;
                v70 = v61;
                v63 = self->_receivedDateTimeZone;
                receivedDateTimeZone3 = [(HDHRSOriginalSignedClinicalDataRecord *)v7 receivedDateTimeZone];
                v65 = v63;
                v66 = receivedDateTimeZone3;
                if ([(NSTimeZone *)v65 isEqual:?])
                {
                  v67 = self->_signatureStatus;
                  v14 = v67 == [(HDHRSOriginalSignedClinicalDataRecord *)v7 signatureStatus];

                  if (v74 != v56)
                  {
                    goto LABEL_76;
                  }

                  rawContent3 = v92;
                  if (v78 != v81)
                  {
                    v47 = v84;
                    goto LABEL_78;
                  }

LABEL_82:

                  if (v82 != v85)
                  {
                  }

                  if (v86 != credentialTypes)
                  {
                  }

LABEL_100:

                  if (v95 != issuerIdentifier)
                  {
                  }

                  if (sourceURL != sourceURL)
                  {
                  }

LABEL_55:
                  v11 = v97;
                  if (rawContent != rawContent)
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

                rawContent3 = v92;
                goto LABEL_91;
              }

              v14 = 0;
              rawContent3 = v92;
            }

            goto LABEL_94;
          }

          rawContent3 = v40;
          if (v86 != credentialTypes)
          {
          }

          v11 = v97;
          if (v95 != issuerIdentifier)
          {
          }

          if (v90 == sourceURL)
          {
LABEL_45:

            v14 = 0;
            if (rawContent == rawContent)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }

LABEL_44:

          goto LABEL_45;
        }

        if (v86 != credentialTypes)
        {
        }

        if (v95 == issuerIdentifier)
        {
LABEL_51:

          if (sourceURL != sourceURL)
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

- (void)encodeWithCoder:(id)coder
{
  rawContent = self->_rawContent;
  coderCopy = coder;
  [coderCopy encodeObject:rawContent forKey:@"RawContent"];
  [coderCopy encodeInteger:self->_sourceType forKey:@"SourceType"];
  [coderCopy encodeObject:self->_sourceURL forKey:@"SourceURL"];
  [coderCopy encodeObject:self->_issuerIdentifier forKey:@"IssuerIdentifier"];
  [coderCopy encodeObject:self->_credentialTypes forKey:@"CredentialTypes"];
  [coderCopy encodeObject:self->_syncIdentifier forKey:@"SyncIdentifier"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
  [coderCopy encodeObject:self->_receivedDate forKey:@"ReceivedDate"];
  [coderCopy encodeObject:self->_receivedDateTimeZone forKey:@"ReceivedDateTimeZone"];
  [coderCopy encodeInteger:self->_signatureStatus forKey:@"SignatureStatus"];
}

- (HDHRSOriginalSignedClinicalDataRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"SourceURL"] && (objc_msgSend(coderCopy, "containsValueForKey:", @"SignatureStatus") & 1) != 0)
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RawContent"];
    v6 = [coderCopy decodeIntegerForKey:@"SourceType"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IssuerIdentifier"];
    v8 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SyncIdentifier"];
    v23 = v8;
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"CredentialTypes"];
    hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v22 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"Metadata"];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDate"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDateTimeZone"];
    v14 = [coderCopy decodeIntegerForKey:@"SignatureStatus"];
    v21 = v5;
    if (v5 && v7 && v10 && v9 && v12 && v13)
    {
      v15 = v22;
      v16 = v6;
      v17 = v24;
      self = [(HDHRSOriginalSignedClinicalDataRecord *)self initWithRawContent:v5 sourceType:v16 sourceURL:v24 issuerIdentifier:v7 credentialTypes:v10 syncIdentifier:v9 metadata:v22 receivedDate:v12 receivedDateTimeZone:v13 signatureStatus:v14, v5];
      v18 = v12;
      selfCopy = self;
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      v18 = v12;
      selfCopy = 0;
      v17 = v24;
      v15 = v22;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end
@interface HDHRSSignedClinicalDataProcessingContext
- (BOOL)isEqual:(id)equal;
- (HDHRSSignedClinicalDataProcessingContext)init;
- (HDHRSSignedClinicalDataProcessingContext)initWithCoder:(id)coder;
- (HDHRSSignedClinicalDataProcessingContext)initWithRawData:(id)data sourceType:(int64_t)type sourceURL:(id)l issuerIdentifier:(id)identifier signingKeyID:(id)d JWKSData:(id)sData JWKSOutcome:(unint64_t)outcome metadata:(id)self0;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDHRSSignedClinicalDataProcessingContext

- (HDHRSSignedClinicalDataProcessingContext)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHRSSignedClinicalDataProcessingContext)initWithRawData:(id)data sourceType:(int64_t)type sourceURL:(id)l issuerIdentifier:(id)identifier signingKeyID:(id)d JWKSData:(id)sData JWKSOutcome:(unint64_t)outcome metadata:(id)self0
{
  dataCopy = data;
  lCopy = l;
  identifierCopy = identifier;
  dCopy = d;
  sDataCopy = sData;
  metadataCopy = metadata;
  v36.receiver = self;
  v36.super_class = HDHRSSignedClinicalDataProcessingContext;
  v22 = [(HDHRSSignedClinicalDataProcessingContext *)&v36 init];
  if (v22)
  {
    v23 = [dataCopy copy];
    rawData = v22->_rawData;
    v22->_rawData = v23;

    v22->_sourceType = type;
    v25 = [lCopy copy];
    sourceURL = v22->_sourceURL;
    v22->_sourceURL = v25;

    v27 = [identifierCopy copy];
    issuerIdentifier = v22->_issuerIdentifier;
    v22->_issuerIdentifier = v27;

    v29 = [dCopy copy];
    signingKeyID = v22->_signingKeyID;
    v22->_signingKeyID = v29;

    v31 = [sDataCopy copy];
    JWKSData = v22->_JWKSData;
    v22->_JWKSData = v31;

    v22->_JWKSOutcome = outcome;
    v33 = [metadataCopy copy];
    metadata = v22->_metadata;
    v22->_metadata = v33;
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = self->_sourceType ^ [(NSData *)self->_rawData hash];
  v4 = [(NSURL *)self->_sourceURL hash];
  v5 = v3 ^ v4 ^ [(NSString *)self->_issuerIdentifier hash];
  v6 = [(NSString *)self->_signingKeyID hash];
  v7 = v6 ^ [(NSData *)self->_JWKSData hash];
  metadata = self->_metadata;
  v9 = v5 ^ v7 ^ self->_JWKSOutcome;
  return v9 ^ [(NSDictionary *)metadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy != self)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_74:

      goto LABEL_75;
    }

    rawData = self->_rawData;
    rawData = [(HDHRSSignedClinicalDataProcessingContext *)v7 rawData];
    if (rawData == rawData)
    {
      sourceType = self->_sourceType;
      if (sourceType == [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceType])
      {
        goto LABEL_11;
      }
    }

    else
    {
      rawData2 = [(HDHRSSignedClinicalDataProcessingContext *)v7 rawData];
      if (rawData2)
      {
        v11 = rawData2;
        v12 = self->_rawData;
        rawData3 = [(HDHRSSignedClinicalDataProcessingContext *)v7 rawData];
        if (([(NSData *)v12 isEqual:rawData3]& 1) == 0 || (v13 = self->_sourceType, v13 != [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceType]))
        {
          v14 = 0;
LABEL_72:

          goto LABEL_73;
        }

        v68 = v11;
LABEL_11:
        sourceURL = self->_sourceURL;
        sourceURL = [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceURL];
        if (sourceURL == sourceURL)
        {
          v69 = rawData3;
        }

        else
        {
          sourceURL2 = [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceURL];
          if (!sourceURL2)
          {

            v14 = 0;
            v31 = rawData == rawData;
            goto LABEL_71;
          }

          v67 = sourceURL2;
          v19 = sourceURL;
          v69 = rawData3;
          v20 = self->_sourceURL;
          sourceURL3 = [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceURL];
          if (([(NSURL *)v20 isEqual:sourceURL3]& 1) == 0)
          {

            goto LABEL_37;
          }

          v65 = sourceURL3;
          sourceURL = v19;
        }

        issuerIdentifier = self->_issuerIdentifier;
        issuerIdentifier = [(HDHRSSignedClinicalDataProcessingContext *)v7 issuerIdentifier];
        if (issuerIdentifier == issuerIdentifier)
        {
          goto LABEL_23;
        }

        issuerIdentifier2 = [(HDHRSSignedClinicalDataProcessingContext *)v7 issuerIdentifier];
        if (issuerIdentifier2)
        {
          v25 = issuerIdentifier;
          v62 = issuerIdentifier2;
          v26 = sourceURL;
          v27 = self->_issuerIdentifier;
          issuerIdentifier3 = [(HDHRSSignedClinicalDataProcessingContext *)v7 issuerIdentifier];
          v29 = v27;
          v30 = issuerIdentifier3;
          if ([(NSString *)v29 isEqualToString:issuerIdentifier3])
          {
            v59 = v30;
            sourceURL = v26;
            issuerIdentifier = v25;
LABEL_23:
            signingKeyID = self->_signingKeyID;
            signingKeyID = [(HDHRSSignedClinicalDataProcessingContext *)v7 signingKeyID];
            v61 = signingKeyID;
            if (signingKeyID != signingKeyID)
            {
              signingKeyID2 = [(HDHRSSignedClinicalDataProcessingContext *)v7 signingKeyID];
              if (!signingKeyID2)
              {
                v14 = 0;
                goto LABEL_65;
              }

              v58 = signingKeyID2;
              v63 = issuerIdentifier;
              v34 = issuerIdentifier;
              v35 = self->_signingKeyID;
              signingKeyID3 = [(HDHRSSignedClinicalDataProcessingContext *)v7 signingKeyID];
              v37 = v35;
              v38 = signingKeyID3;
              if (![(NSString *)v37 isEqualToString:signingKeyID3])
              {

                if (v63 != v34)
                {
                }

                v11 = v68;
                if (sourceURL != sourceURL)
                {
                }

                v14 = 0;
                rawData3 = v69;
                if (rawData == rawData)
                {
                  goto LABEL_73;
                }

                goto LABEL_72;
              }

              v55 = v38;
              issuerIdentifier = v34;
              issuerIdentifier = v63;
            }

            JWKSData = self->_JWKSData;
            jWKSData = [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSData];
            v56 = JWKSData;
            if (JWKSData == jWKSData)
            {
              v64 = issuerIdentifier;
              v57 = issuerIdentifier;
              JWKSOutcome = self->_JWKSOutcome;
              if (JWKSOutcome != [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSOutcome])
              {
                v14 = 0;
                goto LABEL_76;
              }
            }

            else
            {
              jWKSData2 = [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSData];
              if (!jWKSData2)
              {
                v14 = 0;
                goto LABEL_63;
              }

              v54 = jWKSData2;
              v64 = issuerIdentifier;
              v57 = issuerIdentifier;
              v41 = self->_JWKSData;
              jWKSData3 = [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSData];
              if (([(NSData *)v41 isEqual:jWKSData3]& 1) == 0)
              {

                v14 = 0;
LABEL_54:
                issuerIdentifier = v57;
                if (v61 == signingKeyID)
                {

                  if (v64 == v57)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_66;
                }

                issuerIdentifier = v64;
                goto LABEL_65;
              }

              v53 = jWKSData3;
              v43 = self->_JWKSOutcome;
              if (v43 != [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSOutcome])
              {
                v14 = 0;
LABEL_62:

                issuerIdentifier = v57;
                issuerIdentifier = v64;
LABEL_63:

                if (v61 == signingKeyID)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              }
            }

            metadata = self->_metadata;
            metadata = [(HDHRSSignedClinicalDataProcessingContext *)v7 metadata];
            v47 = metadata;
            if (metadata == metadata)
            {

              v14 = 1;
            }

            else
            {
              metadata2 = [(HDHRSSignedClinicalDataProcessingContext *)v7 metadata];
              if (metadata2)
              {
                v49 = self->_metadata;
                v50 = metadata2;
                metadata3 = [(HDHRSSignedClinicalDataProcessingContext *)v7 metadata];
                v14 = [(NSDictionary *)v49 isEqual:metadata3];

                if (v56 != jWKSData)
                {
                }

                goto LABEL_54;
              }

              v14 = 0;
            }

            jWKSData3 = v53;
            if (v56 != jWKSData)
            {
              goto LABEL_62;
            }

LABEL_76:

            issuerIdentifier = v57;
            issuerIdentifier = v64;
            if (v61 != signingKeyID)
            {
LABEL_64:
            }

LABEL_65:

            if (issuerIdentifier == issuerIdentifier)
            {
LABEL_67:

              if (sourceURL != sourceURL)
              {
              }

              goto LABEL_70;
            }

LABEL_66:

            goto LABEL_67;
          }

          if (v26 == sourceURL)
          {
LABEL_38:

            v14 = 0;
LABEL_70:
            v31 = rawData == rawData;
            rawData3 = v69;
LABEL_71:
            v11 = v68;
            if (!v31)
            {
              goto LABEL_72;
            }

LABEL_73:

            goto LABEL_74;
          }
        }

        else
        {

          if (sourceURL == sourceURL)
          {
            goto LABEL_38;
          }
        }

LABEL_37:
        goto LABEL_38;
      }
    }

    v14 = 0;
    goto LABEL_73;
  }

  v14 = 1;
LABEL_75:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  rawData = self->_rawData;
  coderCopy = coder;
  [coderCopy encodeObject:rawData forKey:@"RawData"];
  [coderCopy encodeInteger:self->_sourceType forKey:@"SourceType"];
  [coderCopy encodeObject:self->_sourceURL forKey:@"SourceURL"];
  [coderCopy encodeObject:self->_issuerIdentifier forKey:@"IssuerIdentifier"];
  [coderCopy encodeObject:self->_signingKeyID forKey:@"SigningKeyID"];
  [coderCopy encodeObject:self->_JWKSData forKey:@"JWKSData"];
  [coderCopy encodeInteger:self->_JWKSOutcome forKey:@"JWKSOutcome"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HDHRSSignedClinicalDataProcessingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RawData"];
  if (v5 && [coderCopy containsValueForKey:@"SourceType"] && (objc_msgSend(coderCopy, "containsValueForKey:", @"JWKSOutcome") & 1) != 0)
  {
    v15 = [coderCopy decodeIntegerForKey:@"SourceType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IssuerIdentifier"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SigningKeyID"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"JWKSData"];
    v10 = [coderCopy decodeIntegerForKey:@"JWKSOutcome"];
    hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v12 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"Metadata"];
    self = [(HDHRSSignedClinicalDataProcessingContext *)self initWithRawData:v5 sourceType:v15 sourceURL:v6 issuerIdentifier:v7 signingKeyID:v8 JWKSData:v9 JWKSOutcome:v10 metadata:v12];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end
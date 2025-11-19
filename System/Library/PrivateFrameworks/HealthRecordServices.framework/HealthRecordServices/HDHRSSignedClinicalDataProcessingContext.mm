@interface HDHRSSignedClinicalDataProcessingContext
- (BOOL)isEqual:(id)a3;
- (HDHRSSignedClinicalDataProcessingContext)init;
- (HDHRSSignedClinicalDataProcessingContext)initWithCoder:(id)a3;
- (HDHRSSignedClinicalDataProcessingContext)initWithRawData:(id)a3 sourceType:(int64_t)a4 sourceURL:(id)a5 issuerIdentifier:(id)a6 signingKeyID:(id)a7 JWKSData:(id)a8 JWKSOutcome:(unint64_t)a9 metadata:(id)a10;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HDHRSSignedClinicalDataProcessingContext)initWithRawData:(id)a3 sourceType:(int64_t)a4 sourceURL:(id)a5 issuerIdentifier:(id)a6 signingKeyID:(id)a7 JWKSData:(id)a8 JWKSOutcome:(unint64_t)a9 metadata:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  v36.receiver = self;
  v36.super_class = HDHRSSignedClinicalDataProcessingContext;
  v22 = [(HDHRSSignedClinicalDataProcessingContext *)&v36 init];
  if (v22)
  {
    v23 = [v16 copy];
    rawData = v22->_rawData;
    v22->_rawData = v23;

    v22->_sourceType = a4;
    v25 = [v17 copy];
    sourceURL = v22->_sourceURL;
    v22->_sourceURL = v25;

    v27 = [v18 copy];
    issuerIdentifier = v22->_issuerIdentifier;
    v22->_issuerIdentifier = v27;

    v29 = [v19 copy];
    signingKeyID = v22->_signingKeyID;
    v22->_signingKeyID = v29;

    v31 = [v20 copy];
    JWKSData = v22->_JWKSData;
    v22->_JWKSData = v31;

    v22->_JWKSOutcome = a9;
    v33 = [v21 copy];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 != self)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_74:

      goto LABEL_75;
    }

    rawData = self->_rawData;
    v9 = [(HDHRSSignedClinicalDataProcessingContext *)v7 rawData];
    if (rawData == v9)
    {
      sourceType = self->_sourceType;
      if (sourceType == [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceType])
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [(HDHRSSignedClinicalDataProcessingContext *)v7 rawData];
      if (v10)
      {
        v11 = v10;
        v12 = self->_rawData;
        v3 = [(HDHRSSignedClinicalDataProcessingContext *)v7 rawData];
        if (([(NSData *)v12 isEqual:v3]& 1) == 0 || (v13 = self->_sourceType, v13 != [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceType]))
        {
          v14 = 0;
LABEL_72:

          goto LABEL_73;
        }

        v68 = v11;
LABEL_11:
        sourceURL = self->_sourceURL;
        v17 = [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceURL];
        if (sourceURL == v17)
        {
          v69 = v3;
        }

        else
        {
          v18 = [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceURL];
          if (!v18)
          {

            v14 = 0;
            v31 = rawData == v9;
            goto LABEL_71;
          }

          v67 = v18;
          v19 = sourceURL;
          v69 = v3;
          v20 = self->_sourceURL;
          v21 = [(HDHRSSignedClinicalDataProcessingContext *)v7 sourceURL];
          if (([(NSURL *)v20 isEqual:v21]& 1) == 0)
          {

            goto LABEL_37;
          }

          v65 = v21;
          sourceURL = v19;
        }

        issuerIdentifier = self->_issuerIdentifier;
        v23 = [(HDHRSSignedClinicalDataProcessingContext *)v7 issuerIdentifier];
        if (issuerIdentifier == v23)
        {
          goto LABEL_23;
        }

        v24 = [(HDHRSSignedClinicalDataProcessingContext *)v7 issuerIdentifier];
        if (v24)
        {
          v25 = issuerIdentifier;
          v62 = v24;
          v26 = sourceURL;
          v27 = self->_issuerIdentifier;
          v28 = [(HDHRSSignedClinicalDataProcessingContext *)v7 issuerIdentifier];
          v29 = v27;
          v30 = v28;
          if ([(NSString *)v29 isEqualToString:v28])
          {
            v59 = v30;
            sourceURL = v26;
            issuerIdentifier = v25;
LABEL_23:
            signingKeyID = self->_signingKeyID;
            v66 = [(HDHRSSignedClinicalDataProcessingContext *)v7 signingKeyID];
            v61 = signingKeyID;
            if (signingKeyID != v66)
            {
              v33 = [(HDHRSSignedClinicalDataProcessingContext *)v7 signingKeyID];
              if (!v33)
              {
                v14 = 0;
                goto LABEL_65;
              }

              v58 = v33;
              v63 = issuerIdentifier;
              v34 = v23;
              v35 = self->_signingKeyID;
              v36 = [(HDHRSSignedClinicalDataProcessingContext *)v7 signingKeyID];
              v37 = v35;
              v38 = v36;
              if (![(NSString *)v37 isEqualToString:v36])
              {

                if (v63 != v34)
                {
                }

                v11 = v68;
                if (sourceURL != v17)
                {
                }

                v14 = 0;
                v3 = v69;
                if (rawData == v9)
                {
                  goto LABEL_73;
                }

                goto LABEL_72;
              }

              v55 = v38;
              v23 = v34;
              issuerIdentifier = v63;
            }

            JWKSData = self->_JWKSData;
            v60 = [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSData];
            v56 = JWKSData;
            if (JWKSData == v60)
            {
              v64 = issuerIdentifier;
              v57 = v23;
              JWKSOutcome = self->_JWKSOutcome;
              if (JWKSOutcome != [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSOutcome])
              {
                v14 = 0;
                goto LABEL_76;
              }
            }

            else
            {
              v40 = [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSData];
              if (!v40)
              {
                v14 = 0;
                goto LABEL_63;
              }

              v54 = v40;
              v64 = issuerIdentifier;
              v57 = v23;
              v41 = self->_JWKSData;
              v42 = [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSData];
              if (([(NSData *)v41 isEqual:v42]& 1) == 0)
              {

                v14 = 0;
LABEL_54:
                v23 = v57;
                if (v61 == v66)
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

              v53 = v42;
              v43 = self->_JWKSOutcome;
              if (v43 != [(HDHRSSignedClinicalDataProcessingContext *)v7 JWKSOutcome])
              {
                v14 = 0;
LABEL_62:

                v23 = v57;
                issuerIdentifier = v64;
LABEL_63:

                if (v61 == v66)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              }
            }

            metadata = self->_metadata;
            v46 = [(HDHRSSignedClinicalDataProcessingContext *)v7 metadata];
            v47 = v46;
            if (metadata == v46)
            {

              v14 = 1;
            }

            else
            {
              v48 = [(HDHRSSignedClinicalDataProcessingContext *)v7 metadata];
              if (v48)
              {
                v49 = self->_metadata;
                v50 = v48;
                v51 = [(HDHRSSignedClinicalDataProcessingContext *)v7 metadata];
                v14 = [(NSDictionary *)v49 isEqual:v51];

                if (v56 != v60)
                {
                }

                goto LABEL_54;
              }

              v14 = 0;
            }

            v42 = v53;
            if (v56 != v60)
            {
              goto LABEL_62;
            }

LABEL_76:

            v23 = v57;
            issuerIdentifier = v64;
            if (v61 != v66)
            {
LABEL_64:
            }

LABEL_65:

            if (issuerIdentifier == v23)
            {
LABEL_67:

              if (sourceURL != v17)
              {
              }

              goto LABEL_70;
            }

LABEL_66:

            goto LABEL_67;
          }

          if (v26 == v17)
          {
LABEL_38:

            v14 = 0;
LABEL_70:
            v31 = rawData == v9;
            v3 = v69;
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

          if (sourceURL == v17)
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

- (void)encodeWithCoder:(id)a3
{
  rawData = self->_rawData;
  v5 = a3;
  [v5 encodeObject:rawData forKey:@"RawData"];
  [v5 encodeInteger:self->_sourceType forKey:@"SourceType"];
  [v5 encodeObject:self->_sourceURL forKey:@"SourceURL"];
  [v5 encodeObject:self->_issuerIdentifier forKey:@"IssuerIdentifier"];
  [v5 encodeObject:self->_signingKeyID forKey:@"SigningKeyID"];
  [v5 encodeObject:self->_JWKSData forKey:@"JWKSData"];
  [v5 encodeInteger:self->_JWKSOutcome forKey:@"JWKSOutcome"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HDHRSSignedClinicalDataProcessingContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RawData"];
  if (v5 && [v4 containsValueForKey:@"SourceType"] && (objc_msgSend(v4, "containsValueForKey:", @"JWKSOutcome") & 1) != 0)
  {
    v15 = [v4 decodeIntegerForKey:@"SourceType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IssuerIdentifier"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SigningKeyID"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"JWKSData"];
    v10 = [v4 decodeIntegerForKey:@"JWKSOutcome"];
    v11 = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"Metadata"];
    self = [(HDHRSSignedClinicalDataProcessingContext *)self initWithRawData:v5 sourceType:v15 sourceURL:v6 issuerIdentifier:v7 signingKeyID:v8 JWKSData:v9 JWKSOutcome:v10 metadata:v12];

    v13 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v13 = 0;
  }

  return v13;
}

@end
@interface HDOriginalFHIRResourceObject
+ (id)resourceObjectWithData:(id)a3 uniquenessChecksum:(id)a4 sourceURL:(id)a5 FHIRVersion:(id)a6 receivedDate:(id)a7 firstSeenDate:(id)a8 extractionHints:(unint64_t)a9 originVersion:(id *)a10 originBuild:(id)a11 country:(id)a12 existingROWID:(id)a13 ingestedOnLocalDevice:(BOOL)a14 error:(id *)a15;
+ (id)resourceObjectWithStaticIdentifier:(id)a3 data:(id)a4 sourceURL:(id)a5 FHIRVersion:(id)a6 receivedDate:(id)a7 firstSeenDate:(id)a8 extractionHints:(unint64_t)a9 originVersion:(id *)a10 originBuild:(id)a11 country:(id)a12 error:(id *)a13;
- (BOOL)isEqual:(id)a3;
- (HDOriginalFHIRResourceObject)initWithCoder:(id)a3;
- (HDOriginalFHIRResourceObject)initWithResourceData:(id)a3 receivedDate:(id)a4 firstSeenDate:(id)a5 extractionHints:(unint64_t)a6 originInformation:(id)a7 country:(id)a8 existingROWID:(id)a9 ingestedOnLocalDevice:(BOOL)a10 error:(id *)a11;
- (id)_initWithResourceIdentifier:(id)a3 JSONObject:(id)a4 uniquenessChecksum:(id)a5 sourceURL:(id)a6 FHIRVersion:(id)a7 receivedDate:(id)a8 firstSeenDate:(id)a9 extractionHints:(unint64_t)a10 originInformation:(id)a11 existingROWID:(id)a12 ingestedOnLocalDevice:(BOOL)a13 country:(id)a14;
- (id)copyWithAlteredData:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDOriginalFHIRResourceObject

- (id)_initWithResourceIdentifier:(id)a3 JSONObject:(id)a4 uniquenessChecksum:(id)a5 sourceURL:(id)a6 FHIRVersion:(id)a7 receivedDate:(id)a8 firstSeenDate:(id)a9 extractionHints:(unint64_t)a10 originInformation:(id)a11 existingROWID:(id)a12 ingestedOnLocalDevice:(BOOL)a13 country:(id)a14
{
  v18 = a5;
  v19 = a9;
  v20 = a11;
  v21 = a12;
  v22 = a14;
  v38.receiver = self;
  v38.super_class = HDOriginalFHIRResourceObject;
  v23 = v19;
  v24 = [(HDFHIRResourceObject *)&v38 _initWithResourceIdentifier:a3 JSONObject:a4 sourceURL:a6 FHIRVersion:a7 receivedDate:a8 extractionHints:a10];
  if (v24)
  {
    v25 = [v18 copy];
    v26 = v24[7];
    v24[7] = v25;

    v27 = [v23 copy];
    v28 = v24[9];
    v24[9] = v27;

    v29 = [v20 copy];
    v30 = v24[10];
    v24[10] = v29;

    v31 = [v22 copy];
    v32 = v24[11];
    v24[11] = v31;

    v33 = [v21 copy];
    v34 = v24[12];
    v24[12] = v33;

    *(v24 + 64) = a13;
  }

  return v24;
}

- (HDOriginalFHIRResourceObject)initWithResourceData:(id)a3 receivedDate:(id)a4 firstSeenDate:(id)a5 extractionHints:(unint64_t)a6 originInformation:(id)a7 country:(id)a8 existingROWID:(id)a9 ingestedOnLocalDevice:(BOOL)a10 error:(id *)a11
{
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [HDFHIRResourceObject resourceObjectWithResourceData:a3 receivedDate:a4 extractionHints:a6 error:a11];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 copyAsOriginalResourceObjectWithFirstSeenDate:v17 originInformation:v18 existingRowID:v20 ingestedOnLocalDevice:a10 country:v19];

    self = v23;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)resourceObjectWithData:(id)a3 uniquenessChecksum:(id)a4 sourceURL:(id)a5 FHIRVersion:(id)a6 receivedDate:(id)a7 firstSeenDate:(id)a8 extractionHints:(unint64_t)a9 originVersion:(id *)a10 originBuild:(id)a11 country:(id)a12 existingROWID:(id)a13 ingestedOnLocalDevice:(BOOL)a14 error:(id *)a15
{
  v41 = a4;
  v43 = a7;
  v42 = a8;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a6;
  v25 = a5;
  v26 = a3;
  v27 = [[HDFHIRResourceData alloc] initWithData:v26 sourceURL:v25 FHIRVersion:v24];

  v28 = [(HDFHIRResourceData *)v27 JSONDictionaryWithError:a15];
  if (v28)
  {
    v29 = [a1 identifierDetectedInJSONObject:v28 error:a15];
    if (v29)
    {
      v30 = [HDHRSOriginInformation alloc];
      v44 = *a10;
      v31 = [(HDHRSOriginInformation *)v30 initWithOperatingSystemVersion:&v44 build:v21];
      v32 = [a1 alloc];
      v33 = [(HDFHIRResourceData *)v27 sourceURL];
      [(HDFHIRResourceData *)v27 FHIRVersion];
      v34 = v40 = v21;
      LOBYTE(v39) = a14;
      v35 = v32;
      v36 = v41;
      v37 = [v35 _initWithResourceIdentifier:v29 JSONObject:v28 uniquenessChecksum:v41 sourceURL:v33 FHIRVersion:v34 receivedDate:v43 firstSeenDate:v42 extractionHints:a9 originInformation:v31 existingROWID:v23 ingestedOnLocalDevice:v39 country:v22];

      v21 = v40;
    }

    else
    {
      v37 = 0;
      v36 = v41;
    }
  }

  else
  {
    v37 = 0;
    v36 = v41;
  }

  return v37;
}

+ (id)resourceObjectWithStaticIdentifier:(id)a3 data:(id)a4 sourceURL:(id)a5 FHIRVersion:(id)a6 receivedDate:(id)a7 firstSeenDate:(id)a8 extractionHints:(unint64_t)a9 originVersion:(id *)a10 originBuild:(id)a11 country:(id)a12 error:(id *)a13
{
  v19 = a3;
  v50 = a7;
  v51 = a8;
  v20 = a11;
  v21 = a12;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = [[HDFHIRResourceData alloc] initWithData:v24 sourceURL:v23 FHIRVersion:v22];

  v26 = [HDFHIRJSONObject objectWithResourceData:v25 error:a13];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 JSONObject];
    v29 = [a1 identifierWithStaticIdentifier:v19 JSONObject:v28 error:a13];

    if (v29)
    {
      v30 = [HDHRSOriginInformation alloc];
      v52 = *a10;
      v31 = [(HDHRSOriginInformation *)v30 initWithOperatingSystemVersion:&v52 build:v20];
      v32 = a1;
      v33 = v31;
      v47 = v31;
      v34 = [v32 alloc];
      [v27 JSONObject];
      v35 = v49 = v19;
      v36 = [v27 uniquenessChecksum];
      [(HDFHIRResourceData *)v25 sourceURL];
      v38 = v37 = v21;
      [(HDFHIRResourceData *)v25 FHIRVersion];
      v39 = v48 = v20;
      LOBYTE(v46) = 1;
      v40 = v34;
      v41 = v35;
      v42 = v35;
      v43 = v50;
      v44 = [v40 _initWithResourceIdentifier:v29 JSONObject:v41 uniquenessChecksum:v36 sourceURL:v38 FHIRVersion:v39 receivedDate:v50 firstSeenDate:v51 extractionHints:a9 originInformation:v33 existingROWID:0 ingestedOnLocalDevice:v46 country:v37];

      v20 = v48;
      v21 = v37;

      v19 = v49;
    }

    else
    {
      v44 = 0;
      v43 = v50;
    }
  }

  else
  {
    v44 = 0;
    v43 = v50;
  }

  return v44;
}

- (id)copyWithAlteredData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(HDFHIRResourceObject *)self extractionHints];
  v7 = objc_opt_class();
  staticUniquenessChecksum = self->_staticUniquenessChecksum;
  v9 = [(HDFHIRJSONObject *)self sourceURL];
  v10 = [(HDFHIRJSONObject *)self FHIRVersion];
  v11 = [MEMORY[0x277CBEAA8] now];
  firstSeenDate = self->_firstSeenDate;
  originInformation = self->_originInformation;
  if (originInformation)
  {
    [(HDHRSOriginInformation *)originInformation operatingSystemVersion];
    originInformation = self->_originInformation;
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  v14 = v6 | 0x10;
  v15 = [(HDHRSOriginInformation *)originInformation operatingSystemBuild];
  country = self->_country;
  LOBYTE(v19) = self->_ingestedOnLocalDevice;
  v17 = [v7 resourceObjectWithData:v5 uniquenessChecksum:staticUniquenessChecksum sourceURL:v9 FHIRVersion:v10 receivedDate:v11 firstSeenDate:firstSeenDate extractionHints:v14 originVersion:v21 originBuild:v15 country:country existingROWID:self->_existingRowID ingestedOnLocalDevice:v19 error:a4];

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = HDOriginalFHIRResourceObject;
  v4 = a3;
  [(HDFHIRResourceObject *)&v9 encodeWithCoder:v4];
  [v4 encodeObject:self->_staticUniquenessChecksum forKey:{@"UniquenessChecksum", v9.receiver, v9.super_class}];
  v5 = [(HDOriginalFHIRResourceObject *)self firstSeenDate];
  [v4 encodeObject:v5 forKey:@"FirstSeenDate"];

  v6 = [(HDOriginalFHIRResourceObject *)self originInformation];
  [v4 encodeObject:v6 forKey:@"OriginInformation"];

  v7 = [(HDOriginalFHIRResourceObject *)self country];
  [v4 encodeObject:v7 forKey:@"Country"];

  v8 = [(HDOriginalFHIRResourceObject *)self existingRowID];
  [v4 encodeObject:v8 forKey:@"existingRowID"];

  [v4 encodeBool:-[HDOriginalFHIRResourceObject ingestedOnLocalDevice](self forKey:{"ingestedOnLocalDevice"), @"ingestedOnLocalDevice"}];
}

- (HDOriginalFHIRResourceObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniquenessChecksum"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstSeenDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OriginInformation"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Country"];
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 || v7 == 0;
  if (!v10 && [v4 containsValueForKey:@"ingestedOnLocalDevice"] && v8)
  {
    v17.receiver = self;
    v17.super_class = HDOriginalFHIRResourceObject;
    v12 = [(HDFHIRResourceObject *)&v17 initWithCoder:v4];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_staticUniquenessChecksum, v5);
      objc_storeStrong(&v13->_firstSeenDate, v6);
      objc_storeStrong(&v13->_originInformation, v7);
      objc_storeStrong(&v13->_country, v8);
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"existingRowID"];
      existingRowID = v13->_existingRowID;
      v13->_existingRowID = v14;

      v13->_ingestedOnLocalDevice = [v4 decodeBoolForKey:@"ingestedOnLocalDevice"];
    }

    self = v13;
    v11 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = HDOriginalFHIRResourceObject;
  v3 = [(HDFHIRResourceObject *)&v8 hash];
  v4 = [(NSData *)self->_staticUniquenessChecksum hash]^ v3;
  v5 = [(NSDate *)self->_firstSeenDate hash];
  v6 = v4 ^ v5 ^ [(HDHRSOriginInformation *)self->_originInformation hash];
  return v6 ^ [(NSNumber *)self->_existingRowID hash]^ self->_ingestedOnLocalDevice;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44.receiver = self;
      v44.super_class = HDOriginalFHIRResourceObject;
      if ([(HDFHIRResourceObject *)&v44 isEqual:v6])
      {
        v7 = v6;
        staticUniquenessChecksum = self->_staticUniquenessChecksum;
        v9 = [(HDOriginalFHIRResourceObject *)v7 uniquenessChecksum];
        if (staticUniquenessChecksum != v9)
        {
          v10 = [(HDOriginalFHIRResourceObject *)v7 uniquenessChecksum];
          if (!v10)
          {
            v12 = 0;
            goto LABEL_40;
          }

          v3 = v10;
          v11 = self->_staticUniquenessChecksum;
          v4 = [(HDOriginalFHIRResourceObject *)v7 uniquenessChecksum];
          if (![(NSData *)v11 isEqual:v4])
          {
            v12 = 0;
LABEL_39:

            goto LABEL_40;
          }
        }

        firstSeenDate = self->_firstSeenDate;
        v14 = [(HDOriginalFHIRResourceObject *)v7 firstSeenDate];
        v43 = firstSeenDate;
        if (firstSeenDate != v14)
        {
          v15 = [(HDOriginalFHIRResourceObject *)v7 firstSeenDate];
          if (!v15)
          {
            v12 = 0;
LABEL_37:

LABEL_38:
            if (staticUniquenessChecksum != v9)
            {
              goto LABEL_39;
            }

LABEL_40:

            goto LABEL_41;
          }

          v16 = v15;
          v17 = self->_firstSeenDate;
          v18 = [(HDOriginalFHIRResourceObject *)v7 firstSeenDate];
          v19 = v17;
          v20 = v18;
          if (([(NSDate *)v19 isEqual:v18]& 1) == 0)
          {

            v12 = 0;
            goto LABEL_38;
          }

          v41 = v20;
          v38 = v16;
        }

        originInformation = self->_originInformation;
        v22 = [(HDOriginalFHIRResourceObject *)v7 originInformation];
        v42 = originInformation;
        v23 = originInformation == v22;
        v24 = v22;
        if (v23)
        {
          v39 = v4;
          v40 = v3;
        }

        else
        {
          v25 = [(HDOriginalFHIRResourceObject *)v7 originInformation];
          if (!v25)
          {
            v12 = 0;
            v31 = v41;
            goto LABEL_35;
          }

          v37 = v25;
          v26 = self->_originInformation;
          v36 = [(HDOriginalFHIRResourceObject *)v7 originInformation];
          if (![(HDHRSOriginInformation *)v26 isEqual:?])
          {
            v12 = 0;
            v31 = v41;
            goto LABEL_34;
          }

          v39 = v4;
          v40 = v3;
        }

        existingRowID = self->_existingRowID;
        v28 = [(HDOriginalFHIRResourceObject *)v7 existingRowID];
        if (existingRowID != v28)
        {
          v29 = [(HDOriginalFHIRResourceObject *)v7 existingRowID];
          if (!v29)
          {

            v12 = 0;
            goto LABEL_33;
          }

          v35 = v29;
          v30 = self->_existingRowID;
          v34 = [(HDOriginalFHIRResourceObject *)v7 existingRowID];
          if (![(NSNumber *)v30 isEqual:?])
          {
            v12 = 0;
            goto LABEL_28;
          }
        }

        ingestedOnLocalDevice = self->_ingestedOnLocalDevice;
        v12 = ingestedOnLocalDevice == [(HDOriginalFHIRResourceObject *)v7 ingestedOnLocalDevice];
        if (existingRowID != v28)
        {
LABEL_28:
          v3 = v40;
          v31 = v41;

          v4 = v39;
          if (v42 == v24)
          {
LABEL_35:

            if (v43 != v14)
            {
            }

            goto LABEL_37;
          }

LABEL_34:

          goto LABEL_35;
        }

LABEL_33:
        v31 = v41;
        v4 = v39;
        v3 = v40;
        if (v42 == v24)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v12 = 0;
  }

LABEL_41:

  return v12;
}

@end
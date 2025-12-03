@interface HDOriginalFHIRResourceObject
+ (id)resourceObjectWithData:(id)data uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date firstSeenDate:(id)seenDate extractionHints:(unint64_t)hints originVersion:(id *)self0 originBuild:(id)self1 country:(id)self2 existingROWID:(id)self3 ingestedOnLocalDevice:(BOOL)self4 error:(id *)self5;
+ (id)resourceObjectWithStaticIdentifier:(id)identifier data:(id)data sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date firstSeenDate:(id)seenDate extractionHints:(unint64_t)hints originVersion:(id *)self0 originBuild:(id)self1 country:(id)self2 error:(id *)self3;
- (BOOL)isEqual:(id)equal;
- (HDOriginalFHIRResourceObject)initWithCoder:(id)coder;
- (HDOriginalFHIRResourceObject)initWithResourceData:(id)data receivedDate:(id)date firstSeenDate:(id)seenDate extractionHints:(unint64_t)hints originInformation:(id)information country:(id)country existingROWID:(id)d ingestedOnLocalDevice:(BOOL)self0 error:(id *)self1;
- (id)_initWithResourceIdentifier:(id)identifier JSONObject:(id)object uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date firstSeenDate:(id)seenDate extractionHints:(unint64_t)self0 originInformation:(id)self1 existingROWID:(id)self2 ingestedOnLocalDevice:(BOOL)self3 country:(id)self4;
- (id)copyWithAlteredData:(id)data error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDOriginalFHIRResourceObject

- (id)_initWithResourceIdentifier:(id)identifier JSONObject:(id)object uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date firstSeenDate:(id)seenDate extractionHints:(unint64_t)self0 originInformation:(id)self1 existingROWID:(id)self2 ingestedOnLocalDevice:(BOOL)self3 country:(id)self4
{
  checksumCopy = checksum;
  seenDateCopy = seenDate;
  informationCopy = information;
  dCopy = d;
  countryCopy = country;
  v38.receiver = self;
  v38.super_class = HDOriginalFHIRResourceObject;
  v23 = seenDateCopy;
  v24 = [(HDFHIRResourceObject *)&v38 _initWithResourceIdentifier:identifier JSONObject:object sourceURL:l FHIRVersion:version receivedDate:date extractionHints:hints];
  if (v24)
  {
    v25 = [checksumCopy copy];
    v26 = v24[7];
    v24[7] = v25;

    v27 = [v23 copy];
    v28 = v24[9];
    v24[9] = v27;

    v29 = [informationCopy copy];
    v30 = v24[10];
    v24[10] = v29;

    v31 = [countryCopy copy];
    v32 = v24[11];
    v24[11] = v31;

    v33 = [dCopy copy];
    v34 = v24[12];
    v24[12] = v33;

    *(v24 + 64) = device;
  }

  return v24;
}

- (HDOriginalFHIRResourceObject)initWithResourceData:(id)data receivedDate:(id)date firstSeenDate:(id)seenDate extractionHints:(unint64_t)hints originInformation:(id)information country:(id)country existingROWID:(id)d ingestedOnLocalDevice:(BOOL)self0 error:(id *)self1
{
  seenDateCopy = seenDate;
  informationCopy = information;
  countryCopy = country;
  dCopy = d;
  v21 = [HDFHIRResourceObject resourceObjectWithResourceData:data receivedDate:date extractionHints:hints error:error];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 copyAsOriginalResourceObjectWithFirstSeenDate:seenDateCopy originInformation:informationCopy existingRowID:dCopy ingestedOnLocalDevice:device country:countryCopy];

    self = v23;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)resourceObjectWithData:(id)data uniquenessChecksum:(id)checksum sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date firstSeenDate:(id)seenDate extractionHints:(unint64_t)hints originVersion:(id *)self0 originBuild:(id)self1 country:(id)self2 existingROWID:(id)self3 ingestedOnLocalDevice:(BOOL)self4 error:(id *)self5
{
  checksumCopy = checksum;
  dateCopy = date;
  seenDateCopy = seenDate;
  buildCopy = build;
  countryCopy = country;
  dCopy = d;
  versionCopy = version;
  lCopy = l;
  dataCopy = data;
  v27 = [[HDFHIRResourceData alloc] initWithData:dataCopy sourceURL:lCopy FHIRVersion:versionCopy];

  v28 = [(HDFHIRResourceData *)v27 JSONDictionaryWithError:error];
  if (v28)
  {
    v29 = [self identifierDetectedInJSONObject:v28 error:error];
    if (v29)
    {
      v30 = [HDHRSOriginInformation alloc];
      v44 = *originVersion;
      v31 = [(HDHRSOriginInformation *)v30 initWithOperatingSystemVersion:&v44 build:buildCopy];
      v32 = [self alloc];
      sourceURL = [(HDFHIRResourceData *)v27 sourceURL];
      [(HDFHIRResourceData *)v27 FHIRVersion];
      v34 = v40 = buildCopy;
      LOBYTE(v39) = device;
      v35 = v32;
      v36 = checksumCopy;
      v37 = [v35 _initWithResourceIdentifier:v29 JSONObject:v28 uniquenessChecksum:checksumCopy sourceURL:sourceURL FHIRVersion:v34 receivedDate:dateCopy firstSeenDate:seenDateCopy extractionHints:hints originInformation:v31 existingROWID:dCopy ingestedOnLocalDevice:v39 country:countryCopy];

      buildCopy = v40;
    }

    else
    {
      v37 = 0;
      v36 = checksumCopy;
    }
  }

  else
  {
    v37 = 0;
    v36 = checksumCopy;
  }

  return v37;
}

+ (id)resourceObjectWithStaticIdentifier:(id)identifier data:(id)data sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date firstSeenDate:(id)seenDate extractionHints:(unint64_t)hints originVersion:(id *)self0 originBuild:(id)self1 country:(id)self2 error:(id *)self3
{
  identifierCopy = identifier;
  dateCopy = date;
  seenDateCopy = seenDate;
  buildCopy = build;
  countryCopy = country;
  versionCopy = version;
  lCopy = l;
  dataCopy = data;
  v25 = [[HDFHIRResourceData alloc] initWithData:dataCopy sourceURL:lCopy FHIRVersion:versionCopy];

  v26 = [HDFHIRJSONObject objectWithResourceData:v25 error:error];
  v27 = v26;
  if (v26)
  {
    jSONObject = [v26 JSONObject];
    v29 = [self identifierWithStaticIdentifier:identifierCopy JSONObject:jSONObject error:error];

    if (v29)
    {
      v30 = [HDHRSOriginInformation alloc];
      v52 = *originVersion;
      v31 = [(HDHRSOriginInformation *)v30 initWithOperatingSystemVersion:&v52 build:buildCopy];
      selfCopy = self;
      v33 = v31;
      v47 = v31;
      v34 = [selfCopy alloc];
      [v27 JSONObject];
      v35 = v49 = identifierCopy;
      uniquenessChecksum = [v27 uniquenessChecksum];
      [(HDFHIRResourceData *)v25 sourceURL];
      v38 = v37 = countryCopy;
      [(HDFHIRResourceData *)v25 FHIRVersion];
      v39 = v48 = buildCopy;
      LOBYTE(v46) = 1;
      v40 = v34;
      v41 = v35;
      v42 = v35;
      v43 = dateCopy;
      v44 = [v40 _initWithResourceIdentifier:v29 JSONObject:v41 uniquenessChecksum:uniquenessChecksum sourceURL:v38 FHIRVersion:v39 receivedDate:dateCopy firstSeenDate:seenDateCopy extractionHints:hints originInformation:v33 existingROWID:0 ingestedOnLocalDevice:v46 country:v37];

      buildCopy = v48;
      countryCopy = v37;

      identifierCopy = v49;
    }

    else
    {
      v44 = 0;
      v43 = dateCopy;
    }
  }

  else
  {
    v44 = 0;
    v43 = dateCopy;
  }

  return v44;
}

- (id)copyWithAlteredData:(id)data error:(id *)error
{
  dataCopy = data;
  extractionHints = [(HDFHIRResourceObject *)self extractionHints];
  v7 = objc_opt_class();
  staticUniquenessChecksum = self->_staticUniquenessChecksum;
  sourceURL = [(HDFHIRJSONObject *)self sourceURL];
  fHIRVersion = [(HDFHIRJSONObject *)self FHIRVersion];
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

  v14 = extractionHints | 0x10;
  operatingSystemBuild = [(HDHRSOriginInformation *)originInformation operatingSystemBuild];
  country = self->_country;
  LOBYTE(v19) = self->_ingestedOnLocalDevice;
  v17 = [v7 resourceObjectWithData:dataCopy uniquenessChecksum:staticUniquenessChecksum sourceURL:sourceURL FHIRVersion:fHIRVersion receivedDate:v11 firstSeenDate:firstSeenDate extractionHints:v14 originVersion:v21 originBuild:operatingSystemBuild country:country existingROWID:self->_existingRowID ingestedOnLocalDevice:v19 error:error];

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = HDOriginalFHIRResourceObject;
  coderCopy = coder;
  [(HDFHIRResourceObject *)&v9 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_staticUniquenessChecksum forKey:{@"UniquenessChecksum", v9.receiver, v9.super_class}];
  firstSeenDate = [(HDOriginalFHIRResourceObject *)self firstSeenDate];
  [coderCopy encodeObject:firstSeenDate forKey:@"FirstSeenDate"];

  originInformation = [(HDOriginalFHIRResourceObject *)self originInformation];
  [coderCopy encodeObject:originInformation forKey:@"OriginInformation"];

  country = [(HDOriginalFHIRResourceObject *)self country];
  [coderCopy encodeObject:country forKey:@"Country"];

  existingRowID = [(HDOriginalFHIRResourceObject *)self existingRowID];
  [coderCopy encodeObject:existingRowID forKey:@"existingRowID"];

  [coderCopy encodeBool:-[HDOriginalFHIRResourceObject ingestedOnLocalDevice](self forKey:{"ingestedOnLocalDevice"), @"ingestedOnLocalDevice"}];
}

- (HDOriginalFHIRResourceObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniquenessChecksum"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstSeenDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OriginInformation"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Country"];
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 || v7 == 0;
  if (!v10 && [coderCopy containsValueForKey:@"ingestedOnLocalDevice"] && v8)
  {
    v17.receiver = self;
    v17.super_class = HDOriginalFHIRResourceObject;
    v12 = [(HDFHIRResourceObject *)&v17 initWithCoder:coderCopy];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_staticUniquenessChecksum, v5);
      objc_storeStrong(&v13->_firstSeenDate, v6);
      objc_storeStrong(&v13->_originInformation, v7);
      objc_storeStrong(&v13->_country, v8);
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"existingRowID"];
      existingRowID = v13->_existingRowID;
      v13->_existingRowID = v14;

      v13->_ingestedOnLocalDevice = [coderCopy decodeBoolForKey:@"ingestedOnLocalDevice"];
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
      if ([(HDFHIRResourceObject *)&v44 isEqual:equalCopy])
      {
        v7 = equalCopy;
        staticUniquenessChecksum = self->_staticUniquenessChecksum;
        uniquenessChecksum = [(HDOriginalFHIRResourceObject *)v7 uniquenessChecksum];
        if (staticUniquenessChecksum != uniquenessChecksum)
        {
          uniquenessChecksum2 = [(HDOriginalFHIRResourceObject *)v7 uniquenessChecksum];
          if (!uniquenessChecksum2)
          {
            v12 = 0;
            goto LABEL_40;
          }

          v3 = uniquenessChecksum2;
          v11 = self->_staticUniquenessChecksum;
          uniquenessChecksum3 = [(HDOriginalFHIRResourceObject *)v7 uniquenessChecksum];
          if (![(NSData *)v11 isEqual:uniquenessChecksum3])
          {
            v12 = 0;
LABEL_39:

            goto LABEL_40;
          }
        }

        firstSeenDate = self->_firstSeenDate;
        firstSeenDate = [(HDOriginalFHIRResourceObject *)v7 firstSeenDate];
        v43 = firstSeenDate;
        if (firstSeenDate != firstSeenDate)
        {
          firstSeenDate2 = [(HDOriginalFHIRResourceObject *)v7 firstSeenDate];
          if (!firstSeenDate2)
          {
            v12 = 0;
LABEL_37:

LABEL_38:
            if (staticUniquenessChecksum != uniquenessChecksum)
            {
              goto LABEL_39;
            }

LABEL_40:

            goto LABEL_41;
          }

          v16 = firstSeenDate2;
          v17 = self->_firstSeenDate;
          firstSeenDate3 = [(HDOriginalFHIRResourceObject *)v7 firstSeenDate];
          v19 = v17;
          v20 = firstSeenDate3;
          if (([(NSDate *)v19 isEqual:firstSeenDate3]& 1) == 0)
          {

            v12 = 0;
            goto LABEL_38;
          }

          v41 = v20;
          v38 = v16;
        }

        originInformation = self->_originInformation;
        originInformation = [(HDOriginalFHIRResourceObject *)v7 originInformation];
        v42 = originInformation;
        v23 = originInformation == originInformation;
        v24 = originInformation;
        if (v23)
        {
          v39 = uniquenessChecksum3;
          v40 = v3;
        }

        else
        {
          originInformation2 = [(HDOriginalFHIRResourceObject *)v7 originInformation];
          if (!originInformation2)
          {
            v12 = 0;
            v31 = v41;
            goto LABEL_35;
          }

          v37 = originInformation2;
          v26 = self->_originInformation;
          originInformation3 = [(HDOriginalFHIRResourceObject *)v7 originInformation];
          if (![(HDHRSOriginInformation *)v26 isEqual:?])
          {
            v12 = 0;
            v31 = v41;
            goto LABEL_34;
          }

          v39 = uniquenessChecksum3;
          v40 = v3;
        }

        existingRowID = self->_existingRowID;
        existingRowID = [(HDOriginalFHIRResourceObject *)v7 existingRowID];
        if (existingRowID != existingRowID)
        {
          existingRowID2 = [(HDOriginalFHIRResourceObject *)v7 existingRowID];
          if (!existingRowID2)
          {

            v12 = 0;
            goto LABEL_33;
          }

          v35 = existingRowID2;
          v30 = self->_existingRowID;
          existingRowID3 = [(HDOriginalFHIRResourceObject *)v7 existingRowID];
          if (![(NSNumber *)v30 isEqual:?])
          {
            v12 = 0;
            goto LABEL_28;
          }
        }

        ingestedOnLocalDevice = self->_ingestedOnLocalDevice;
        v12 = ingestedOnLocalDevice == [(HDOriginalFHIRResourceObject *)v7 ingestedOnLocalDevice];
        if (existingRowID != existingRowID)
        {
LABEL_28:
          v3 = v40;
          v31 = v41;

          uniquenessChecksum3 = v39;
          if (v42 == v24)
          {
LABEL_35:

            if (v43 != firstSeenDate)
            {
            }

            goto LABEL_37;
          }

LABEL_34:

          goto LABEL_35;
        }

LABEL_33:
        v31 = v41;
        uniquenessChecksum3 = v39;
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
@interface HDFHIRResourceObject
+ (HDFHIRResourceObject)resourceObjectWithJSONObject:(id)object serverBaseURL:(id)l FHIRVersion:(id)version receivedDate:(id)date error:(id *)error;
+ (HDFHIRResourceObject)resourceObjectWithJSONObject:(id)object sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date extractionHints:(unint64_t)hints error:(id *)error;
+ (HDFHIRResourceObject)resourceObjectWithResourceData:(id)data receivedDate:(id)date extractionHints:(unint64_t)hints error:(id *)error;
+ (id)identifierDetectedInJSONObject:(id)object error:(id *)error;
+ (id)identifierWithStaticIdentifier:(id)identifier JSONObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HDFHIRResourceObject)initWithCoder:(id)coder;
- (NSURL)serverBaseURL;
- (id)_initWithResourceIdentifier:(id)identifier JSONObject:(id)object sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date extractionHints:(unint64_t)hints;
- (id)copyAsOriginalResourceObjectWithFirstSeenDate:(id)date originInformation:(id)information existingRowID:(id)d ingestedOnLocalDevice:(BOOL)device country:(id)country;
- (id)copyWithOriginDataFrom:(id)from;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)serverBaseURL;
@end

@implementation HDFHIRResourceObject

- (id)copyWithOriginDataFrom:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(HDFHIRResourceObject(CopyWithOriginal) *)a2 copyWithOriginDataFrom:?];
  }

  firstSeenDate = [fromCopy firstSeenDate];
  originInformation = [fromCopy originInformation];
  existingRowID = [fromCopy existingRowID];
  country = [fromCopy country];
  v10 = [(HDFHIRResourceObject *)self copyAsOriginalResourceObjectWithFirstSeenDate:firstSeenDate originInformation:originInformation existingRowID:existingRowID ingestedOnLocalDevice:1 country:country];

  return v10;
}

- (id)copyAsOriginalResourceObjectWithFirstSeenDate:(id)date originInformation:(id)information existingRowID:(id)d ingestedOnLocalDevice:(BOOL)device country:(id)country
{
  countryCopy = country;
  dCopy = d;
  informationCopy = information;
  dateCopy = date;
  v22 = [HDOriginalFHIRResourceObject alloc];
  identifier = [(HDFHIRResourceObject *)self identifier];
  jSONObject = [(HDFHIRJSONObject *)self JSONObject];
  uniquenessChecksum = [(HDFHIRJSONObject *)self uniquenessChecksum];
  sourceURL = [(HDFHIRJSONObject *)self sourceURL];
  fHIRVersion = [(HDFHIRJSONObject *)self FHIRVersion];
  receivedDate = [(HDFHIRResourceObject *)self receivedDate];
  LOBYTE(v21) = device;
  v19 = [(HDOriginalFHIRResourceObject *)v22 _initWithResourceIdentifier:identifier JSONObject:jSONObject uniquenessChecksum:uniquenessChecksum sourceURL:sourceURL FHIRVersion:fHIRVersion receivedDate:receivedDate firstSeenDate:dateCopy extractionHints:[(HDFHIRResourceObject *)self extractionHints] originInformation:informationCopy existingROWID:dCopy ingestedOnLocalDevice:v21 country:countryCopy];

  return v19;
}

- (id)_initWithResourceIdentifier:(id)identifier JSONObject:(id)object sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date extractionHints:(unint64_t)hints
{
  identifierCopy = identifier;
  dateCopy = date;
  v22.receiver = self;
  v22.super_class = HDFHIRResourceObject;
  v16 = [(HDFHIRJSONObject *)&v22 initWithJSONObject:object sourceURL:l FHIRVersion:version];
  if (v16)
  {
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [dateCopy copy];
    receivedDate = v16->_receivedDate;
    v16->_receivedDate = v19;

    v16->_extractionHints = hints;
  }

  return v16;
}

+ (HDFHIRResourceObject)resourceObjectWithResourceData:(id)data receivedDate:(id)date extractionHints:(unint64_t)hints error:(id *)error
{
  dataCopy = data;
  dateCopy = date;
  v12 = [dataCopy JSONDictionaryWithError:error];
  if (v12)
  {
    v13 = [self identifierDetectedInJSONObject:v12 error:error];
    if (v13)
    {
      v14 = [self alloc];
      sourceURL = [dataCopy sourceURL];
      fHIRVersion = [dataCopy FHIRVersion];
      v17 = [v14 _initWithResourceIdentifier:v13 JSONObject:v12 sourceURL:sourceURL FHIRVersion:fHIRVersion receivedDate:dateCopy extractionHints:hints];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (HDFHIRResourceObject)resourceObjectWithJSONObject:(id)object serverBaseURL:(id)l FHIRVersion:(id)version receivedDate:(id)date error:(id *)error
{
  objectCopy = object;
  lCopy = l;
  versionCopy = version;
  dateCopy = date;
  v16 = [self identifierDetectedInJSONObject:objectCopy error:error];
  v17 = v16;
  if (v16)
  {
    resourceType = [v16 resourceType];
    v19 = [lCopy URLByAppendingPathComponent:resourceType];
    identifier = [v17 identifier];
    v21 = [v19 URLByAppendingPathComponent:identifier];

    v22 = [[self alloc] _initWithResourceIdentifier:v17 JSONObject:objectCopy sourceURL:v21 FHIRVersion:versionCopy receivedDate:dateCopy extractionHints:0];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (HDFHIRResourceObject)resourceObjectWithJSONObject:(id)object sourceURL:(id)l FHIRVersion:(id)version receivedDate:(id)date extractionHints:(unint64_t)hints error:(id *)error
{
  objectCopy = object;
  lCopy = l;
  versionCopy = version;
  dateCopy = date;
  v18 = [self identifierDetectedInJSONObject:objectCopy error:error];
  if (v18)
  {
    if (!lCopy || ([lCopy isFileURL] & 1) != 0)
    {
      goto LABEL_4;
    }

    pathComponents = [lCopy pathComponents];
    v21 = [pathComponents count];

    if (v21 > 1)
    {
      identifier = [v18 identifier];
      pathComponents2 = [lCopy pathComponents];
      lastObject = [pathComponents2 lastObject];
      v34 = [identifier isEqualToString:lastObject];

      if (v34)
      {
        resourceType = [v18 resourceType];
        pathComponents3 = [lCopy pathComponents];
        pathComponents4 = [lCopy pathComponents];
        v29 = [pathComponents3 objectAtIndexedSubscript:{objc_msgSend(pathComponents4, "count") - 2}];
        v33 = [resourceType isEqualToString:v29];

        if (v33)
        {
LABEL_4:
          v19 = [[self alloc] _initWithResourceIdentifier:v18 JSONObject:objectCopy sourceURL:lCopy FHIRVersion:versionCopy receivedDate:dateCopy extractionHints:hints];
          goto LABEL_14;
        }

        v30 = MEMORY[0x277CCA9B8];
        v23 = HKSensitiveLogItem();
        path = [lCopy path];
        lastObject2 = HKSensitiveLogItem();
        [v30 hk_assignError:error code:3 format:{@"Invalid sourceURL for resource %@, resource type is not the second to last path component in %@", v23, lastObject2}];
      }

      else
      {
        v38 = MEMORY[0x277CCA9B8];
        v23 = HKSensitiveLogItem();
        path = [lCopy pathComponents];
        lastObject2 = [path lastObject];
        v31 = HKSensitiveLogItem();
        [v38 hk_assignError:error code:3 format:{@"Invalid sourceURL for resource %@, id is not the last path component, got %@", v23, v31}];
      }
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = HKSensitiveLogItem();
      path = [lCopy path];
      lastObject2 = HKSensitiveLogItem();
      [v22 hk_assignError:error code:3 format:{@"Invalid sourceURL for resource %@, has fewer than 2 path components: «%@»", v23, lastObject2}];
    }
  }

  v19 = 0;
LABEL_14:

  return v19;
}

+ (id)identifierDetectedInJSONObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [self resourceTypeOfJSONObject:objectCopy error:error];
  v8 = v7;
  if (v7)
  {
    if ([v7 length])
    {
      v14 = 0;
      v9 = [objectCopy hk_safeStringForKeyPath:@"id" error:&v14];
      v10 = v14;
      if (v9)
      {
        v11 = [objc_alloc(MEMORY[0x277CCD3B8]) initWithResourceType:v8 identifier:v9];
      }

      else
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to instantiate resource"];
        [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:v12 underlyingError:v10];

        v11 = 0;
      }

      goto LABEL_9;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Empty resourceType"];
  }

  v11 = 0;
LABEL_9:

  return v11;
}

+ (id)identifierWithStaticIdentifier:(id)identifier JSONObject:(id)object error:(id *)error
{
  identifierCopy = identifier;
  v9 = [self resourceTypeOfJSONObject:object error:error];
  v10 = v9;
  if (v9)
  {
    if ([v9 length])
    {
      if (identifierCopy && [identifierCopy length])
      {
        v11 = [objc_alloc(MEMORY[0x277CCD3B8]) initWithResourceType:v10 identifier:identifierCopy];
        goto LABEL_9;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty staticIdentifier"];
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:v12];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Empty resourceType"];
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (NSURL)serverBaseURL
{
  sourceURL = [(HDFHIRJSONObject *)self sourceURL];
  if (sourceURL)
  {
    v4 = sourceURL;
    sourceURL2 = [(HDFHIRJSONObject *)self sourceURL];
    host = [sourceURL2 host];

    if (host)
    {
      sourceURL3 = [(HDFHIRJSONObject *)self sourceURL];
      v8 = [sourceURL3 copy];

      lastPathComponent = [v8 lastPathComponent];
      identifier = [(HKFHIRIdentifier *)self->_identifier identifier];
      v11 = [lastPathComponent isEqualToString:identifier];

      if (v11)
      {
        uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];

        lastPathComponent2 = [uRLByDeletingLastPathComponent lastPathComponent];
        resourceType = [(HKFHIRIdentifier *)self->_identifier resourceType];
        v15 = [lastPathComponent2 isEqualToString:resourceType];

        if (v15)
        {
          v12URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];

          goto LABEL_11;
        }

        v8 = uRLByDeletingLastPathComponent;
      }

      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [(HDFHIRResourceObject *)v17 serverBaseURL];
      }
    }
  }

  v12URLByDeletingLastPathComponent = 0;
LABEL_11:

  return v12URLByDeletingLastPathComponent;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HDFHIRResourceObject;
  coderCopy = coder;
  [(HDFHIRJSONObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(HDFHIRResourceObject *)self identifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"Identifier"];

  receivedDate = [(HDFHIRResourceObject *)self receivedDate];
  [coderCopy encodeObject:receivedDate forKey:@"ReceivedDate"];

  [coderCopy encodeInteger:-[HDFHIRResourceObject extractionHints](self forKey:{"extractionHints"), @"ExtractionHints"}];
}

- (HDFHIRResourceObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDate"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([coderCopy containsValueForKey:@"ExtractionHints"] & 1) == 0)
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HDFHIRResourceObject;
    v9 = [(HDFHIRJSONObject *)&v13 initWithCoder:coderCopy];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_identifier, v5);
      objc_storeStrong(&v10->_receivedDate, v7);
      v10->_extractionHints = [coderCopy decodeIntegerForKey:@"ExtractionHints"];
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = HDFHIRResourceObject;
  v3 = [(HDFHIRJSONObject *)&v5 hash];
  return [(NSDate *)self->_receivedDate hash]^ v3 ^ self->_extractionHints;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = HDFHIRResourceObject, [(HDFHIRJSONObject *)&v9 isEqual:equalCopy]))
    {
      v5 = equalCopy;
      extractionHints = self->_extractionHints;
      v7 = extractionHints == [(HDFHIRResourceObject *)v5 extractionHints]&& [(NSDate *)self->_receivedDate isEqualToDate:v5->_receivedDate];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  resourceType = [(HKFHIRIdentifier *)self->_identifier resourceType];
  identifier = [(HKFHIRIdentifier *)self->_identifier identifier];
  v6 = HKSensitiveLogItem();
  v7 = [v3 stringWithFormat:@"<%@ %@>", resourceType, v6];

  return v7;
}

- (void)serverBaseURL
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  sourceURL = [a2 sourceURL];
  v7 = HKSensitiveLogItem();
  v8 = *a3;
  v9 = HKSensitiveLogItem();
  v11 = 138412546;
  v12 = v7;
  v13 = 2112;
  v14 = v9;
  _os_log_error_impl(&dword_2519FE000, selfCopy, OS_LOG_TYPE_ERROR, "Unexpected sourceURL «%@» on resource %@, cannot create serverBaseURL", &v11, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end
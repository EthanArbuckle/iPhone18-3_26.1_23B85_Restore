@interface HDFHIRResourceObject
+ (HDFHIRResourceObject)resourceObjectWithJSONObject:(id)a3 serverBaseURL:(id)a4 FHIRVersion:(id)a5 receivedDate:(id)a6 error:(id *)a7;
+ (HDFHIRResourceObject)resourceObjectWithJSONObject:(id)a3 sourceURL:(id)a4 FHIRVersion:(id)a5 receivedDate:(id)a6 extractionHints:(unint64_t)a7 error:(id *)a8;
+ (HDFHIRResourceObject)resourceObjectWithResourceData:(id)a3 receivedDate:(id)a4 extractionHints:(unint64_t)a5 error:(id *)a6;
+ (id)identifierDetectedInJSONObject:(id)a3 error:(id *)a4;
+ (id)identifierWithStaticIdentifier:(id)a3 JSONObject:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HDFHIRResourceObject)initWithCoder:(id)a3;
- (NSURL)serverBaseURL;
- (id)_initWithResourceIdentifier:(id)a3 JSONObject:(id)a4 sourceURL:(id)a5 FHIRVersion:(id)a6 receivedDate:(id)a7 extractionHints:(unint64_t)a8;
- (id)copyAsOriginalResourceObjectWithFirstSeenDate:(id)a3 originInformation:(id)a4 existingRowID:(id)a5 ingestedOnLocalDevice:(BOOL)a6 country:(id)a7;
- (id)copyWithOriginDataFrom:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)serverBaseURL;
@end

@implementation HDFHIRResourceObject

- (id)copyWithOriginDataFrom:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(HDFHIRResourceObject(CopyWithOriginal) *)a2 copyWithOriginDataFrom:?];
  }

  v6 = [v5 firstSeenDate];
  v7 = [v5 originInformation];
  v8 = [v5 existingRowID];
  v9 = [v5 country];
  v10 = [(HDFHIRResourceObject *)self copyAsOriginalResourceObjectWithFirstSeenDate:v6 originInformation:v7 existingRowID:v8 ingestedOnLocalDevice:1 country:v9];

  return v10;
}

- (id)copyAsOriginalResourceObjectWithFirstSeenDate:(id)a3 originInformation:(id)a4 existingRowID:(id)a5 ingestedOnLocalDevice:(BOOL)a6 country:(id)a7
{
  v12 = a7;
  v25 = a5;
  v24 = a4;
  v13 = a3;
  v22 = [HDOriginalFHIRResourceObject alloc];
  v23 = [(HDFHIRResourceObject *)self identifier];
  v14 = [(HDFHIRJSONObject *)self JSONObject];
  v15 = [(HDFHIRJSONObject *)self uniquenessChecksum];
  v16 = [(HDFHIRJSONObject *)self sourceURL];
  v17 = [(HDFHIRJSONObject *)self FHIRVersion];
  v18 = [(HDFHIRResourceObject *)self receivedDate];
  LOBYTE(v21) = a6;
  v19 = [(HDOriginalFHIRResourceObject *)v22 _initWithResourceIdentifier:v23 JSONObject:v14 uniquenessChecksum:v15 sourceURL:v16 FHIRVersion:v17 receivedDate:v18 firstSeenDate:v13 extractionHints:[(HDFHIRResourceObject *)self extractionHints] originInformation:v24 existingROWID:v25 ingestedOnLocalDevice:v21 country:v12];

  return v19;
}

- (id)_initWithResourceIdentifier:(id)a3 JSONObject:(id)a4 sourceURL:(id)a5 FHIRVersion:(id)a6 receivedDate:(id)a7 extractionHints:(unint64_t)a8
{
  v14 = a3;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = HDFHIRResourceObject;
  v16 = [(HDFHIRJSONObject *)&v22 initWithJSONObject:a4 sourceURL:a5 FHIRVersion:a6];
  if (v16)
  {
    v17 = [v14 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [v15 copy];
    receivedDate = v16->_receivedDate;
    v16->_receivedDate = v19;

    v16->_extractionHints = a8;
  }

  return v16;
}

+ (HDFHIRResourceObject)resourceObjectWithResourceData:(id)a3 receivedDate:(id)a4 extractionHints:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 JSONDictionaryWithError:a6];
  if (v12)
  {
    v13 = [a1 identifierDetectedInJSONObject:v12 error:a6];
    if (v13)
    {
      v14 = [a1 alloc];
      v15 = [v10 sourceURL];
      v16 = [v10 FHIRVersion];
      v17 = [v14 _initWithResourceIdentifier:v13 JSONObject:v12 sourceURL:v15 FHIRVersion:v16 receivedDate:v11 extractionHints:a5];
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

+ (HDFHIRResourceObject)resourceObjectWithJSONObject:(id)a3 serverBaseURL:(id)a4 FHIRVersion:(id)a5 receivedDate:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a1 identifierDetectedInJSONObject:v12 error:a7];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 resourceType];
    v19 = [v13 URLByAppendingPathComponent:v18];
    v20 = [v17 identifier];
    v21 = [v19 URLByAppendingPathComponent:v20];

    v22 = [[a1 alloc] _initWithResourceIdentifier:v17 JSONObject:v12 sourceURL:v21 FHIRVersion:v14 receivedDate:v15 extractionHints:0];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (HDFHIRResourceObject)resourceObjectWithJSONObject:(id)a3 sourceURL:(id)a4 FHIRVersion:(id)a5 receivedDate:(id)a6 extractionHints:(unint64_t)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [a1 identifierDetectedInJSONObject:v14 error:a8];
  if (v18)
  {
    if (!v15 || ([v15 isFileURL] & 1) != 0)
    {
      goto LABEL_4;
    }

    v20 = [v15 pathComponents];
    v21 = [v20 count];

    if (v21 > 1)
    {
      v26 = [v18 identifier];
      v36 = [v15 pathComponents];
      v27 = [v36 lastObject];
      v34 = [v26 isEqualToString:v27];

      if (v34)
      {
        v28 = [v18 resourceType];
        v35 = [v15 pathComponents];
        v37 = [v15 pathComponents];
        v29 = [v35 objectAtIndexedSubscript:{objc_msgSend(v37, "count") - 2}];
        v33 = [v28 isEqualToString:v29];

        if (v33)
        {
LABEL_4:
          v19 = [[a1 alloc] _initWithResourceIdentifier:v18 JSONObject:v14 sourceURL:v15 FHIRVersion:v16 receivedDate:v17 extractionHints:a7];
          goto LABEL_14;
        }

        v30 = MEMORY[0x277CCA9B8];
        v23 = HKSensitiveLogItem();
        v24 = [v15 path];
        v25 = HKSensitiveLogItem();
        [v30 hk_assignError:a8 code:3 format:{@"Invalid sourceURL for resource %@, resource type is not the second to last path component in %@", v23, v25}];
      }

      else
      {
        v38 = MEMORY[0x277CCA9B8];
        v23 = HKSensitiveLogItem();
        v24 = [v15 pathComponents];
        v25 = [v24 lastObject];
        v31 = HKSensitiveLogItem();
        [v38 hk_assignError:a8 code:3 format:{@"Invalid sourceURL for resource %@, id is not the last path component, got %@", v23, v31}];
      }
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = HKSensitiveLogItem();
      v24 = [v15 path];
      v25 = HKSensitiveLogItem();
      [v22 hk_assignError:a8 code:3 format:{@"Invalid sourceURL for resource %@, has fewer than 2 path components: «%@»", v23, v25}];
    }
  }

  v19 = 0;
LABEL_14:

  return v19;
}

+ (id)identifierDetectedInJSONObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 resourceTypeOfJSONObject:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    if ([v7 length])
    {
      v14 = 0;
      v9 = [v6 hk_safeStringForKeyPath:@"id" error:&v14];
      v10 = v14;
      if (v9)
      {
        v11 = [objc_alloc(MEMORY[0x277CCD3B8]) initWithResourceType:v8 identifier:v9];
      }

      else
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to instantiate resource"];
        [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:v12 underlyingError:v10];

        v11 = 0;
      }

      goto LABEL_9;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:@"Empty resourceType"];
  }

  v11 = 0;
LABEL_9:

  return v11;
}

+ (id)identifierWithStaticIdentifier:(id)a3 JSONObject:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a1 resourceTypeOfJSONObject:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    if ([v9 length])
    {
      if (v8 && [v8 length])
      {
        v11 = [objc_alloc(MEMORY[0x277CCD3B8]) initWithResourceType:v10 identifier:v8];
        goto LABEL_9;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty staticIdentifier"];
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:v12];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"Empty resourceType"];
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (NSURL)serverBaseURL
{
  v3 = [(HDFHIRJSONObject *)self sourceURL];
  if (v3)
  {
    v4 = v3;
    v5 = [(HDFHIRJSONObject *)self sourceURL];
    v6 = [v5 host];

    if (v6)
    {
      v7 = [(HDFHIRJSONObject *)self sourceURL];
      v8 = [v7 copy];

      v9 = [v8 lastPathComponent];
      v10 = [(HKFHIRIdentifier *)self->_identifier identifier];
      v11 = [v9 isEqualToString:v10];

      if (v11)
      {
        v12 = [v8 URLByDeletingLastPathComponent];

        v13 = [v12 lastPathComponent];
        v14 = [(HKFHIRIdentifier *)self->_identifier resourceType];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v16 = [v12 URLByDeletingLastPathComponent];

          goto LABEL_11;
        }

        v8 = v12;
      }

      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
      {
        [(HDFHIRResourceObject *)v17 serverBaseURL];
      }
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HDFHIRResourceObject;
  v4 = a3;
  [(HDFHIRJSONObject *)&v7 encodeWithCoder:v4];
  v5 = [(HDFHIRResourceObject *)self identifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"Identifier"];

  v6 = [(HDFHIRResourceObject *)self receivedDate];
  [v4 encodeObject:v6 forKey:@"ReceivedDate"];

  [v4 encodeInteger:-[HDFHIRResourceObject extractionHints](self forKey:{"extractionHints"), @"ExtractionHints"}];
}

- (HDFHIRResourceObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDate"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ([v4 containsValueForKey:@"ExtractionHints"] & 1) == 0)
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HDFHIRResourceObject;
    v9 = [(HDFHIRJSONObject *)&v13 initWithCoder:v4];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_identifier, v5);
      objc_storeStrong(&v10->_receivedDate, v7);
      v10->_extractionHints = [v4 decodeIntegerForKey:@"ExtractionHints"];
    }

    self = v10;
    v11 = self;
  }

  return v11;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = HDFHIRResourceObject;
  v3 = [(HDFHIRJSONObject *)&v5 hash];
  return [(NSDate *)self->_receivedDate hash]^ v3 ^ self->_extractionHints;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = HDFHIRResourceObject, [(HDFHIRJSONObject *)&v9 isEqual:v4]))
    {
      v5 = v4;
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
  v4 = [(HKFHIRIdentifier *)self->_identifier resourceType];
  v5 = [(HKFHIRIdentifier *)self->_identifier identifier];
  v6 = HKSensitiveLogItem();
  v7 = [v3 stringWithFormat:@"<%@ %@>", v4, v6];

  return v7;
}

- (void)serverBaseURL
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 sourceURL];
  v7 = HKSensitiveLogItem();
  v8 = *a3;
  v9 = HKSensitiveLogItem();
  v11 = 138412546;
  v12 = v7;
  v13 = 2112;
  v14 = v9;
  _os_log_error_impl(&dword_2519FE000, v5, OS_LOG_TYPE_ERROR, "Unexpected sourceURL «%@» on resource %@, cannot create serverBaseURL", &v11, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end
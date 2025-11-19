@interface HDFHIRJSONObject
+ (id)_dataFromJSONObject:(id)a3 JSONOptions:(unint64_t)a4;
+ (id)objectWithResourceData:(id)a3 error:(id *)a4;
+ (id)resourceTypeOfJSONObject:(id)a3 error:(id *)a4;
- (BOOL)_isDiagnosticTestReportR4Lab;
- (BOOL)hasCode:(id)a3 codeSystem:(id)a4 codeableConcept:(id)a5 error:(id *)a6;
- (BOOL)hasCode:(id)a3 codeSystem:(id)a4 codings:(id)a5 error:(id *)a6;
- (BOOL)isClinicalNoteRecord;
- (BOOL)isDiagnosticTestReport;
- (BOOL)isDocumentReference;
- (BOOL)isEqual:(id)a3;
- (HDFHIRJSONObject)initWithCoder:(id)a3;
- (HDFHIRJSONObject)initWithJSONObject:(id)a3 sourceURL:(id)a4 FHIRVersion:(id)a5;
- (NSData)data;
- (NSData)uniquenessChecksum;
- (NSString)sourceString;
- (id)_dataWithJSONOptions:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDFHIRJSONObject

- (BOOL)isDiagnosticTestReport
{
  v3 = [(HDFHIRJSONObject *)self detectedResourceType];
  if (![v3 isEqual:*MEMORY[0x277CCBDE0]])
  {
    goto LABEL_7;
  }

  v4 = [(HDFHIRJSONObject *)self FHIRVersion];
  v5 = [v4 FHIRRelease];
  v6 = v5;
  if (v5 == *MEMORY[0x277CCBDD0])
  {
    v7 = [(HDFHIRJSONObject *)self _isDiagnosticTestReportR4Lab];

    if (v7)
    {
      v8 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = [(HDFHIRJSONObject *)self FHIRVersion];
  v10 = [v9 FHIRRelease];
  v11 = *MEMORY[0x277CCBDC8];

  if (v10 != v11)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v13 = [(HDFHIRJSONObject *)self JSONObject];
  v18 = 0;
  v14 = [v13 hk_safeValueIfExistsForKeyPath:@"category" class:objc_opt_class() error:&v18];
  v15 = v18;

  if (v14)
  {
    v17 = v15;
    v8 = [(HDFHIRJSONObject *)self hasCode:@"LAB" codeSystem:@"http://hl7.org/fhir/ValueSet/diagnostic-service-sections" codeableConcept:v14 error:&v17];
    v16 = v17;

    v15 = v16;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  return v8;
}

- (BOOL)isClinicalNoteRecord
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HDFHIRJSONObject *)self FHIRVersion];
  v4 = [v3 FHIRRelease];
  v5 = *MEMORY[0x277CCBDD0];

  if (v4 == v5)
  {
    v7 = [(HDFHIRJSONObject *)self detectedResourceType];
    if ([v7 isEqual:*MEMORY[0x277CCBDE8]])
    {
      v8 = [(HDFHIRJSONObject *)self JSONObject];
      v29 = 0;
      v9 = [v8 hk_safeValueIfExistsForKeyPath:@"category" class:objc_opt_class() error:&v29];
      v10 = v29;

      if (!v9)
      {
        v6 = 0;
        goto LABEL_21;
      }

      v22 = v7;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        while (2)
        {
          v15 = 0;
          v16 = v10;
          do
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v25 + 1) + 8 * v15);
            v24 = v16;
            v18 = [(HDFHIRJSONObject *)self hasCode:@"clinical-note" codeSystem:@"http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category" codeableConcept:v17 error:&v24];
            v10 = v24;

            if (v18)
            {

              v6 = 1;
              goto LABEL_18;
            }

            ++v15;
            v16 = v10;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
LABEL_18:
      v7 = v22;
    }

    else
    {
      if (![v7 isEqual:*MEMORY[0x277CCBDE0]] || -[HDFHIRJSONObject _isDiagnosticTestReportR4Lab](self, "_isDiagnosticTestReportR4Lab"))
      {
        v6 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v21 = [(HDFHIRJSONObject *)self JSONObject];
      v23 = 0;
      v11 = [v21 hk_safeValueIfExistsForKeyPath:@"presentedForm" class:objc_opt_class() error:&v23];
      v10 = v23;

      if (v11)
      {
        v6 = [v11 count] != 0;
      }

      else
      {
        v6 = 0;
      }
    }

LABEL_21:
    goto LABEL_22;
  }

  v6 = 0;
LABEL_23:
  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_isDiagnosticTestReportR4Lab
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HDFHIRJSONObject *)self JSONObject];
  v23 = 0;
  v4 = [v3 hk_safeValueIfExistsForKeyPath:@"category" class:objc_opt_class() error:&v23];
  v5 = v23;

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v17 = v4;
      v9 = *v20;
      while (2)
      {
        v10 = 0;
        v11 = v5;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * v10);
          v18 = v11;
          v13 = [(HDFHIRJSONObject *)self hasCode:@"LAB" codeSystem:@"http://terminology.hl7.org/CodeSystem/v2-0074" codeableConcept:v12 error:&v18, v17];
          v5 = v18;

          if (v13)
          {
            v14 = 1;
            goto LABEL_12;
          }

          ++v10;
          v11 = v5;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v14 = 0;
LABEL_12:
      v4 = v17;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)isDocumentReference
{
  v2 = [(HDFHIRJSONObject *)self detectedResourceType];
  v3 = [v2 isEqual:*MEMORY[0x277CCBDE8]];

  return v3;
}

- (BOOL)hasCode:(id)a3 codeSystem:(id)a4 codeableConcept:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 hk_safeValueIfExistsForKeyPath:@"coding" class:objc_opt_class() error:a6];

  if (v13)
  {
    v14 = [(HDFHIRJSONObject *)self hasCode:v10 codeSystem:v11 codings:v13 error:a6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)hasCode:(id)a3 codeSystem:(id)a4 codings:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v20 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a5;
  v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 hk_safeValueIfExistsForKeyPath:@"code" class:objc_opt_class() error:a6];
        v16 = [v14 hk_safeValueIfExistsForKeyPath:@"system" class:objc_opt_class() error:a6];
        if (![v9 caseInsensitiveCompare:v15] && !objc_msgSend(v20, "caseInsensitiveCompare:", v16))
        {

          v17 = 1;
          goto LABEL_12;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (HDFHIRJSONObject)initWithJSONObject:(id)a3 sourceURL:(id)a4 FHIRVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HDFHIRJSONObject;
  v11 = [(HDFHIRJSONObject *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    JSONObject = v11->_JSONObject;
    v11->_JSONObject = v12;

    v14 = [v9 copy];
    sourceURL = v11->_sourceURL;
    v11->_sourceURL = v14;

    v16 = [v10 copy];
    FHIRVersion = v11->_FHIRVersion;
    v11->_FHIRVersion = v16;
  }

  return v11;
}

+ (id)_dataFromJSONObject:(id)a3 JSONOptions:(unint64_t)a4
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:a4 error:&v8];
  v5 = v8;
  if (!v4)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      [HDFHIRJSONObject _dataFromJSONObject:v5 JSONOptions:v6];
    }
  }

  return v4;
}

- (id)_dataWithJSONOptions:(unint64_t)a3
{
  v5 = objc_opt_class();
  JSONObject = self->_JSONObject;

  return [v5 _dataFromJSONObject:JSONObject JSONOptions:a3];
}

- (NSData)data
{
  v2 = [(HDFHIRJSONObject *)self _dataWithJSONOptions:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA90] data];
  }

  v5 = v4;

  return v5;
}

- (NSString)sourceString
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(HDFHIRJSONObject *)self JSONObject];
  v4 = [v2 hk_stringForDisplayFromFHIRJSONObject:v3];

  return v4;
}

- (NSData)uniquenessChecksum
{
  v2 = [(HDFHIRJSONObject *)self _dataWithJSONOptions:10];
  v3 = [v2 hk_MD5];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDFHIRJSONObject *)self JSONObject];
  [v4 encodeObject:v5 forKey:@"JSONObject"];

  v6 = [(HDFHIRJSONObject *)self sourceURL];
  [v4 encodeObject:v6 forKey:@"SourceURL"];

  v7 = [(HDFHIRJSONObject *)self FHIRVersion];
  [v4 encodeObject:v7 forKey:@"FHIRVersion"];
}

- (HDFHIRJSONObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAAA0] hk_JSONObjectSecureCodingClasses];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"JSONObject"];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FHIRVersion"];
  v9 = v8;
  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v11 = 0;
  }

  else
  {
    self = [(HDFHIRJSONObject *)self initWithJSONObject:v6 sourceURL:v7 FHIRVersion:v8];
    v11 = self;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_JSONObject hash];
  v4 = [(NSURL *)self->_sourceURL hash]^ v3;
  return v4 ^ [(HKFHIRVersion *)self->_FHIRVersion hash];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      JSONObject = self->_JSONObject;
      v8 = [(HDFHIRJSONObject *)v6 JSONObject];
      if (![(NSDictionary *)JSONObject isEqualToDictionary:v8])
      {
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }

      sourceURL = self->_sourceURL;
      v10 = [(HDFHIRJSONObject *)v6 sourceURL];
      if (sourceURL != v10)
      {
        v11 = [(HDFHIRJSONObject *)v6 sourceURL];
        if (!v11)
        {
          v14 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v3 = v11;
        v12 = self->_sourceURL;
        v13 = [(HDFHIRJSONObject *)v6 sourceURL];
        if (![(NSURL *)v12 isEqual:v13])
        {
          v14 = 0;
LABEL_19:

          goto LABEL_20;
        }

        v23 = v13;
      }

      FHIRVersion = self->_FHIRVersion;
      v16 = [(HDFHIRJSONObject *)v6 FHIRVersion];
      v17 = v16;
      if (FHIRVersion == v16)
      {

        v14 = 1;
      }

      else
      {
        v18 = [(HDFHIRJSONObject *)v6 FHIRVersion];
        if (v18)
        {
          v19 = v18;
          v20 = self->_FHIRVersion;
          v21 = [(HDFHIRJSONObject *)v6 FHIRVersion];
          v14 = [(HKFHIRVersion *)v20 isEqual:v21];
        }

        else
        {

          v14 = 0;
        }
      }

      v13 = v23;
      if (sourceURL == v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

+ (id)objectWithResourceData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 JSONDictionaryWithError:a4];
  if (v7)
  {
    v8 = [a1 alloc];
    v9 = [v6 sourceURL];
    v10 = [v6 FHIRVersion];
    v11 = [v8 initWithJSONObject:v7 sourceURL:v9 FHIRVersion:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)resourceTypeOfJSONObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();
  if (!v6)
  {
    goto LABEL_7;
  }

  if (([v5 hk_hasValueForKeyPath:@"resourceType"] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:@"Missing resourceType string in JSON"];
LABEL_7:
    v9 = 0;
    goto LABEL_11;
  }

  v7 = [v5 hk_safeStringForKeyPath:@"resourceType" error:a4];
  v8 = v7;
  if (!v7)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (![v7 length])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:@"Empty resourceType in JSON"];
    goto LABEL_9;
  }

  v9 = v8;
LABEL_10:

LABEL_11:

  return v9;
}

+ (void)_dataFromJSONObject:(uint64_t)a1 JSONOptions:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2519FE000, a2, OS_LOG_TYPE_ERROR, "Failed to create FHIR resource data from JSON: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
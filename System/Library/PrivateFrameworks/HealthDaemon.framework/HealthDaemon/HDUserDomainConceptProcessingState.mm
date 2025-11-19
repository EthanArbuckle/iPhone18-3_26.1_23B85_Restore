@interface HDUserDomainConceptProcessingState
+ (id)fetchFromKeyValueDomain:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)persistInKeyValueDomain:(id)a3 error:(id *)a4;
- (HDUserDomainConceptProcessingState)init;
- (HDUserDomainConceptProcessingState)initWithAnchor:(int64_t)a3 ontologyVersion:(id)a4 maximumPropertyType:(int64_t)a5;
- (id)copyByUpdatingAnchor:(int64_t)a3;
- (id)description;
@end

@implementation HDUserDomainConceptProcessingState

- (HDUserDomainConceptProcessingState)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDUserDomainConceptProcessingState)initWithAnchor:(int64_t)a3 ontologyVersion:(id)a4 maximumPropertyType:(int64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HDUserDomainConceptProcessingState;
  v9 = [(HDUserDomainConceptProcessingState *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_anchor = a3;
    v11 = [v8 copy];
    ontologyVersion = v10->_ontologyVersion;
    v10->_ontologyVersion = v11;

    v10->_maximumPropertyType = a5;
  }

  return v10;
}

- (id)copyByUpdatingAnchor:(int64_t)a3
{
  v5 = [HDUserDomainConceptProcessingState alloc];
  ontologyVersion = self->_ontologyVersion;
  maximumPropertyType = self->_maximumPropertyType;

  return [(HDUserDomainConceptProcessingState *)v5 initWithAnchor:a3 ontologyVersion:ontologyVersion maximumPropertyType:maximumPropertyType];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  anchor = self->_anchor;
  maximumPropertyType = self->_maximumPropertyType;
  v7 = HKStringFromUserDomainConceptPropertyType();
  v8 = [v3 stringWithFormat:@"<%@:%p %lld, %@ (%ld), %@>", v4, self, anchor, v7, self->_maximumPropertyType, self->_ontologyVersion];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = self->_anchor == v5->_anchor && ((ontologyVersion = self->_ontologyVersion, v7 = v5->_ontologyVersion, ontologyVersion == v7) || v7 && [(HKOntologyVersion *)ontologyVersion isEqual:?]) && self->_maximumPropertyType == v5->_maximumPropertyType;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)fetchFromKeyValueDomain:(id)a3 error:(id *)a4
{
  v32[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v32[0] = @"UserDomainConceptProcessingStateAnchor";
  v32[1] = @"UserDomainConceptProcessingStateVersionString";
  v32[2] = @"UserDomainConceptProcessingStateMaxPropertyType";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  v7 = [v5 valuesForKeys:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"UserDomainConceptProcessingStateAnchor"];
    v10 = [v8 objectForKeyedSubscript:@"UserDomainConceptProcessingStateVersionString"];
    v11 = [v8 objectForKeyedSubscript:@"UserDomainConceptProcessingStateMaxPropertyType"];
    v12 = v11;
    if (v9)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v11 == 0)
    {
      v15 = v5;
      objc_opt_self();
      v31 = 0;
      v16 = [HDUserDomainConceptPersistableProcessingState fetchFromKeyValueDomain:v15 stateOut:&v31 error:a4];

      v17 = v31;
      v25 = 0;
      if (v16)
      {
        v18 = [HDUserDomainConceptProcessingState alloc];
        if (v17)
        {
          v30 = [v17 anchor];
          v29 = v18;
          v19 = objc_alloc(MEMORY[0x277CCD768]);
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "ontologyVersion")}];
          v28 = [v20 stringValue];
          v21 = [v19 initWithString:v28];
          v25 = -[HDUserDomainConceptProcessingState initWithAnchor:ontologyVersion:maximumPropertyType:](v29, "initWithAnchor:ontologyVersion:maximumPropertyType:", v30, v21, [v17 maximumPropertyType]);
        }

        else
        {
          v20 = [objc_alloc(MEMORY[0x277CCD768]) initEmptyVersion];
          v25 = [(HDUserDomainConceptProcessingState *)v18 initWithAnchor:-1 ontologyVersion:v20 maximumPropertyType:184000];
        }
      }
    }

    else
    {
      v22 = [HDUserDomainConceptProcessingState alloc];
      v23 = [v9 longLongValue];
      v24 = [objc_alloc(MEMORY[0x277CCD768]) initWithString:v10];
      v25 = -[HDUserDomainConceptProcessingState initWithAnchor:ontologyVersion:maximumPropertyType:](v22, "initWithAnchor:ontologyVersion:maximumPropertyType:", v23, v24, [v12 longLongValue]);
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)persistInKeyValueDomain:(id)a3 error:(id *)a4
{
  v24[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23[0] = @"UserDomainConceptProcessingStateAnchor";
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_anchor];
  v24[0] = v7;
  v23[1] = @"UserDomainConceptProcessingStateVersionString";
  v8 = [(HKOntologyVersion *)self->_ontologyVersion string];
  v24[1] = v8;
  v23[2] = @"UserDomainConceptProcessingStateMaxPropertyType";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maximumPropertyType];
  v24[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v11 = [v6 setValuesWithDictionary:v10 error:a4];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB98] setWithObject:@"LastProcessedUserDomainConceptStateKey"];
    v18 = 0;
    v13 = [v6 removeValuesForKeys:v12 error:&v18];
    v14 = v18;

    if ((v13 & 1) == 0)
    {
      _HKInitializeLogging();
      v15 = HKLogHealthOntology();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v20 = self;
        v21 = 2114;
        v22 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Unable to clear legacy state from key-value domain %{public}@", buf, 0x16u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

@end
@interface HDQueryDescriptor
+ (HDQueryDescriptor)queryDescriptorWithSampleType:(id)a3;
+ (HDQueryDescriptor)queryDescriptorWithSampleTypes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HDQueryDescriptor)init;
- (HDQueryDescriptor)initWithSampleTypes:(id)a3 encodingOptions:(id)a4 restrictedSourceEntities:(id)a5 authorizationFilter:(id)a6 filter:(id)a7 samplePredicate:(id)a8 deletedObjectsPredicate:(id)a9;
- (unint64_t)hash;
@end

@implementation HDQueryDescriptor

- (HDQueryDescriptor)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HDQueryDescriptor)queryDescriptorWithSampleType:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v4];

  v7 = [v5 initWithSampleTypes:v6 encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 filter:0 samplePredicate:0 deletedObjectsPredicate:0];

  return v7;
}

+ (HDQueryDescriptor)queryDescriptorWithSampleTypes:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSampleTypes:v4 encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 filter:0 samplePredicate:0 deletedObjectsPredicate:0];

  return v5;
}

- (HDQueryDescriptor)initWithSampleTypes:(id)a3 encodingOptions:(id)a4 restrictedSourceEntities:(id)a5 authorizationFilter:(id)a6 filter:(id)a7 samplePredicate:(id)a8 deletedObjectsPredicate:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (!v16)
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"HDQueryDescriptor.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"sampleTypes"}];
  }

  if (![v16 count])
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"HDQueryDescriptor.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"sampleTypes.count"}];
  }

  v41.receiver = self;
  v41.super_class = HDQueryDescriptor;
  v23 = [(HDQueryDescriptor *)&v41 init];
  if (v23)
  {
    v24 = [v16 copy];
    sampleTypes = v23->_sampleTypes;
    v23->_sampleTypes = v24;

    v26 = [v17 copy];
    encodingOptions = v23->_encodingOptions;
    v23->_encodingOptions = v26;

    v28 = [v18 copy];
    restrictedSourceEntities = v23->_restrictedSourceEntities;
    v23->_restrictedSourceEntities = v28;

    v30 = _Block_copy(v19);
    authorizationFilter = v23->_authorizationFilter;
    v23->_authorizationFilter = v30;

    v32 = [v20 copy];
    filter = v23->_filter;
    v23->_filter = v32;

    v34 = [v21 copy];
    samplePredicate = v23->_samplePredicate;
    v23->_samplePredicate = v34;

    v36 = [v22 copy];
    deletedObjectsPredicate = v23->_deletedObjectsPredicate;
    v23->_deletedObjectsPredicate = v36;
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [(HDQueryDescriptor *)self sampleTypes];
  v4 = [v3 hash];
  v5 = [(HDQueryDescriptor *)self encodingOptions];
  v6 = [v5 hash] ^ v4;
  v7 = [(HDQueryDescriptor *)self restrictedSourceEntities];
  v8 = [v7 hash];
  v9 = [(HDQueryDescriptor *)self authorizationFilter];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(HDQueryDescriptor *)self filter];
  v12 = [v11 hash];
  v13 = [(HDQueryDescriptor *)self samplePredicate];
  v14 = v12 ^ [v13 hash];
  v15 = [(HDQueryDescriptor *)self deletedObjectsPredicate];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HDQueryDescriptor *)self sampleTypes];
      v7 = [(HDQueryDescriptor *)v5 sampleTypes];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HDQueryDescriptor *)v5 sampleTypes];
        if (!v9)
        {
          goto LABEL_39;
        }

        v10 = v9;
        v11 = [(HDQueryDescriptor *)self sampleTypes];
        v12 = [(HDQueryDescriptor *)v5 sampleTypes];
        v13 = [v11 isEqualToSet:v12];

        if (!v13)
        {
          goto LABEL_40;
        }
      }

      v6 = [(HDQueryDescriptor *)self encodingOptions];
      v15 = [(HDQueryDescriptor *)v5 encodingOptions];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HDQueryDescriptor *)v5 encodingOptions];
        if (!v16)
        {
          goto LABEL_39;
        }

        v17 = v16;
        v18 = [(HDQueryDescriptor *)self encodingOptions];
        v19 = [(HDQueryDescriptor *)v5 encodingOptions];
        v20 = [v18 isEqual:v19];

        if (!v20)
        {
          goto LABEL_40;
        }
      }

      v6 = [(HDQueryDescriptor *)self restrictedSourceEntities];
      v21 = [(HDQueryDescriptor *)v5 restrictedSourceEntities];
      v8 = v21;
      if (v6 == v21)
      {
      }

      else
      {
        v22 = [(HDQueryDescriptor *)v5 restrictedSourceEntities];
        if (!v22)
        {
          goto LABEL_39;
        }

        v23 = v22;
        v24 = [(HDQueryDescriptor *)self restrictedSourceEntities];
        v25 = [(HDQueryDescriptor *)v5 restrictedSourceEntities];
        v26 = [v24 isEqual:v25];

        if (!v26)
        {
          goto LABEL_40;
        }
      }

      v6 = [(HDQueryDescriptor *)self authorizationFilter];
      v27 = [(HDQueryDescriptor *)v5 authorizationFilter];
      v8 = v27;
      if (v6 == v27)
      {
      }

      else
      {
        v28 = [(HDQueryDescriptor *)v5 authorizationFilter];
        if (!v28)
        {
          goto LABEL_39;
        }

        v29 = v28;
        v30 = [(HDQueryDescriptor *)self authorizationFilter];
        v31 = [(HDQueryDescriptor *)v5 authorizationFilter];
        v32 = _Block_copy(v31);
        v33 = [v30 isEqual:v32];

        if (!v33)
        {
          goto LABEL_40;
        }
      }

      v6 = [(HDQueryDescriptor *)self filter];
      v34 = [(HDQueryDescriptor *)v5 filter];
      v8 = v34;
      if (v6 == v34)
      {
      }

      else
      {
        v35 = [(HDQueryDescriptor *)v5 filter];
        if (!v35)
        {
          goto LABEL_39;
        }

        v36 = v35;
        v37 = [(HDQueryDescriptor *)self filter];
        v38 = [(HDQueryDescriptor *)v5 filter];
        v39 = [v37 isEqual:v38];

        if (!v39)
        {
          goto LABEL_40;
        }
      }

      v6 = [(HDQueryDescriptor *)self samplePredicate];
      v40 = [(HDQueryDescriptor *)v5 samplePredicate];
      v8 = v40;
      if (v6 == v40)
      {
      }

      else
      {
        v41 = [(HDQueryDescriptor *)v5 samplePredicate];
        if (!v41)
        {
          goto LABEL_39;
        }

        v42 = v41;
        v43 = [(HDQueryDescriptor *)self samplePredicate];
        v44 = [(HDQueryDescriptor *)v5 samplePredicate];
        v45 = [v43 isEqual:v44];

        if (!v45)
        {
          goto LABEL_40;
        }
      }

      v6 = [(HDQueryDescriptor *)self deletedObjectsPredicate];
      v46 = [(HDQueryDescriptor *)v5 deletedObjectsPredicate];
      v8 = v46;
      if (v6 == v46)
      {

LABEL_44:
        v14 = 1;
        goto LABEL_41;
      }

      v47 = [(HDQueryDescriptor *)v5 deletedObjectsPredicate];
      if (v47)
      {
        v48 = v47;
        v49 = [(HDQueryDescriptor *)self deletedObjectsPredicate];
        v50 = [(HDQueryDescriptor *)v5 deletedObjectsPredicate];
        v51 = [v49 isEqual:v50];

        if (v51)
        {
          goto LABEL_44;
        }

LABEL_40:
        v14 = 0;
LABEL_41:

        goto LABEL_42;
      }

LABEL_39:

      goto LABEL_40;
    }

    v14 = 0;
  }

LABEL_42:

  return v14;
}

@end
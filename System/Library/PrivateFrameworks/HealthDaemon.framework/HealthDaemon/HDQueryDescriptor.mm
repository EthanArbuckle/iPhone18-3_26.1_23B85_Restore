@interface HDQueryDescriptor
+ (HDQueryDescriptor)queryDescriptorWithSampleType:(id)type;
+ (HDQueryDescriptor)queryDescriptorWithSampleTypes:(id)types;
- (BOOL)isEqual:(id)equal;
- (HDQueryDescriptor)init;
- (HDQueryDescriptor)initWithSampleTypes:(id)types encodingOptions:(id)options restrictedSourceEntities:(id)entities authorizationFilter:(id)filter filter:(id)a7 samplePredicate:(id)predicate deletedObjectsPredicate:(id)objectsPredicate;
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

+ (HDQueryDescriptor)queryDescriptorWithSampleType:(id)type
{
  typeCopy = type;
  v5 = [self alloc];
  v6 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];

  v7 = [v5 initWithSampleTypes:v6 encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 filter:0 samplePredicate:0 deletedObjectsPredicate:0];

  return v7;
}

+ (HDQueryDescriptor)queryDescriptorWithSampleTypes:(id)types
{
  typesCopy = types;
  v5 = [[self alloc] initWithSampleTypes:typesCopy encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 filter:0 samplePredicate:0 deletedObjectsPredicate:0];

  return v5;
}

- (HDQueryDescriptor)initWithSampleTypes:(id)types encodingOptions:(id)options restrictedSourceEntities:(id)entities authorizationFilter:(id)filter filter:(id)a7 samplePredicate:(id)predicate deletedObjectsPredicate:(id)objectsPredicate
{
  typesCopy = types;
  optionsCopy = options;
  entitiesCopy = entities;
  filterCopy = filter;
  v20 = a7;
  predicateCopy = predicate;
  objectsPredicateCopy = objectsPredicate;
  if (!typesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQueryDescriptor.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"sampleTypes"}];
  }

  if (![typesCopy count])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDQueryDescriptor.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"sampleTypes.count"}];
  }

  v41.receiver = self;
  v41.super_class = HDQueryDescriptor;
  v23 = [(HDQueryDescriptor *)&v41 init];
  if (v23)
  {
    v24 = [typesCopy copy];
    sampleTypes = v23->_sampleTypes;
    v23->_sampleTypes = v24;

    v26 = [optionsCopy copy];
    encodingOptions = v23->_encodingOptions;
    v23->_encodingOptions = v26;

    v28 = [entitiesCopy copy];
    restrictedSourceEntities = v23->_restrictedSourceEntities;
    v23->_restrictedSourceEntities = v28;

    v30 = _Block_copy(filterCopy);
    authorizationFilter = v23->_authorizationFilter;
    v23->_authorizationFilter = v30;

    v32 = [v20 copy];
    filter = v23->_filter;
    v23->_filter = v32;

    v34 = [predicateCopy copy];
    samplePredicate = v23->_samplePredicate;
    v23->_samplePredicate = v34;

    v36 = [objectsPredicateCopy copy];
    deletedObjectsPredicate = v23->_deletedObjectsPredicate;
    v23->_deletedObjectsPredicate = v36;
  }

  return v23;
}

- (unint64_t)hash
{
  sampleTypes = [(HDQueryDescriptor *)self sampleTypes];
  v4 = [sampleTypes hash];
  encodingOptions = [(HDQueryDescriptor *)self encodingOptions];
  v6 = [encodingOptions hash] ^ v4;
  restrictedSourceEntities = [(HDQueryDescriptor *)self restrictedSourceEntities];
  v8 = [restrictedSourceEntities hash];
  authorizationFilter = [(HDQueryDescriptor *)self authorizationFilter];
  v10 = v6 ^ v8 ^ [authorizationFilter hash];
  filter = [(HDQueryDescriptor *)self filter];
  v12 = [filter hash];
  samplePredicate = [(HDQueryDescriptor *)self samplePredicate];
  v14 = v12 ^ [samplePredicate hash];
  deletedObjectsPredicate = [(HDQueryDescriptor *)self deletedObjectsPredicate];
  v16 = v14 ^ [deletedObjectsPredicate hash];

  return v10 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sampleTypes = [(HDQueryDescriptor *)self sampleTypes];
      sampleTypes2 = [(HDQueryDescriptor *)v5 sampleTypes];
      v8 = sampleTypes2;
      if (sampleTypes == sampleTypes2)
      {
      }

      else
      {
        sampleTypes3 = [(HDQueryDescriptor *)v5 sampleTypes];
        if (!sampleTypes3)
        {
          goto LABEL_39;
        }

        v10 = sampleTypes3;
        sampleTypes4 = [(HDQueryDescriptor *)self sampleTypes];
        sampleTypes5 = [(HDQueryDescriptor *)v5 sampleTypes];
        v13 = [sampleTypes4 isEqualToSet:sampleTypes5];

        if (!v13)
        {
          goto LABEL_40;
        }
      }

      sampleTypes = [(HDQueryDescriptor *)self encodingOptions];
      encodingOptions = [(HDQueryDescriptor *)v5 encodingOptions];
      v8 = encodingOptions;
      if (sampleTypes == encodingOptions)
      {
      }

      else
      {
        encodingOptions2 = [(HDQueryDescriptor *)v5 encodingOptions];
        if (!encodingOptions2)
        {
          goto LABEL_39;
        }

        v17 = encodingOptions2;
        encodingOptions3 = [(HDQueryDescriptor *)self encodingOptions];
        encodingOptions4 = [(HDQueryDescriptor *)v5 encodingOptions];
        v20 = [encodingOptions3 isEqual:encodingOptions4];

        if (!v20)
        {
          goto LABEL_40;
        }
      }

      sampleTypes = [(HDQueryDescriptor *)self restrictedSourceEntities];
      restrictedSourceEntities = [(HDQueryDescriptor *)v5 restrictedSourceEntities];
      v8 = restrictedSourceEntities;
      if (sampleTypes == restrictedSourceEntities)
      {
      }

      else
      {
        restrictedSourceEntities2 = [(HDQueryDescriptor *)v5 restrictedSourceEntities];
        if (!restrictedSourceEntities2)
        {
          goto LABEL_39;
        }

        v23 = restrictedSourceEntities2;
        restrictedSourceEntities3 = [(HDQueryDescriptor *)self restrictedSourceEntities];
        restrictedSourceEntities4 = [(HDQueryDescriptor *)v5 restrictedSourceEntities];
        v26 = [restrictedSourceEntities3 isEqual:restrictedSourceEntities4];

        if (!v26)
        {
          goto LABEL_40;
        }
      }

      sampleTypes = [(HDQueryDescriptor *)self authorizationFilter];
      authorizationFilter = [(HDQueryDescriptor *)v5 authorizationFilter];
      v8 = authorizationFilter;
      if (sampleTypes == authorizationFilter)
      {
      }

      else
      {
        authorizationFilter2 = [(HDQueryDescriptor *)v5 authorizationFilter];
        if (!authorizationFilter2)
        {
          goto LABEL_39;
        }

        v29 = authorizationFilter2;
        authorizationFilter3 = [(HDQueryDescriptor *)self authorizationFilter];
        authorizationFilter4 = [(HDQueryDescriptor *)v5 authorizationFilter];
        v32 = _Block_copy(authorizationFilter4);
        v33 = [authorizationFilter3 isEqual:v32];

        if (!v33)
        {
          goto LABEL_40;
        }
      }

      sampleTypes = [(HDQueryDescriptor *)self filter];
      filter = [(HDQueryDescriptor *)v5 filter];
      v8 = filter;
      if (sampleTypes == filter)
      {
      }

      else
      {
        filter2 = [(HDQueryDescriptor *)v5 filter];
        if (!filter2)
        {
          goto LABEL_39;
        }

        v36 = filter2;
        filter3 = [(HDQueryDescriptor *)self filter];
        filter4 = [(HDQueryDescriptor *)v5 filter];
        v39 = [filter3 isEqual:filter4];

        if (!v39)
        {
          goto LABEL_40;
        }
      }

      sampleTypes = [(HDQueryDescriptor *)self samplePredicate];
      samplePredicate = [(HDQueryDescriptor *)v5 samplePredicate];
      v8 = samplePredicate;
      if (sampleTypes == samplePredicate)
      {
      }

      else
      {
        samplePredicate2 = [(HDQueryDescriptor *)v5 samplePredicate];
        if (!samplePredicate2)
        {
          goto LABEL_39;
        }

        v42 = samplePredicate2;
        samplePredicate3 = [(HDQueryDescriptor *)self samplePredicate];
        samplePredicate4 = [(HDQueryDescriptor *)v5 samplePredicate];
        v45 = [samplePredicate3 isEqual:samplePredicate4];

        if (!v45)
        {
          goto LABEL_40;
        }
      }

      sampleTypes = [(HDQueryDescriptor *)self deletedObjectsPredicate];
      deletedObjectsPredicate = [(HDQueryDescriptor *)v5 deletedObjectsPredicate];
      v8 = deletedObjectsPredicate;
      if (sampleTypes == deletedObjectsPredicate)
      {

LABEL_44:
        v14 = 1;
        goto LABEL_41;
      }

      deletedObjectsPredicate2 = [(HDQueryDescriptor *)v5 deletedObjectsPredicate];
      if (deletedObjectsPredicate2)
      {
        v48 = deletedObjectsPredicate2;
        deletedObjectsPredicate3 = [(HDQueryDescriptor *)self deletedObjectsPredicate];
        deletedObjectsPredicate4 = [(HDQueryDescriptor *)v5 deletedObjectsPredicate];
        v51 = [deletedObjectsPredicate3 isEqual:deletedObjectsPredicate4];

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
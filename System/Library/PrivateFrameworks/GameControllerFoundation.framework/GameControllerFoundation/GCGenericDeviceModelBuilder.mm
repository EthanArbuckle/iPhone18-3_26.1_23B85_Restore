@interface GCGenericDeviceModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceModelBuilder)init;
- (GCGenericDeviceModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDeviceModelBuilder

- (GCGenericDeviceModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceModelBuilder;
  return [(GCGenericDeviceModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  productCategory = [modelCopy productCategory];
  [(GCGenericDeviceModelBuilder *)self setProductCategory:productCategory];

  productName = [modelCopy productName];
  [(GCGenericDeviceModelBuilder *)self setProductName:productName];

  isFormFitting = [modelCopy isFormFitting];
  [(GCGenericDeviceModelBuilder *)self setFormFitting:isFormFitting];

  driver = [modelCopy driver];
  [(GCGenericDeviceModelBuilder *)self setDriver:driver];

  physicalInput = [modelCopy physicalInput];

  [(GCGenericDeviceModelBuilder *)self setPhysicalInput:physicalInput];
}

- (void)reset
{
  [(GCGenericDeviceModelBuilder *)self setProductCategory:0];
  [(GCGenericDeviceModelBuilder *)self setProductName:0];
  [(GCGenericDeviceModelBuilder *)self setFormFitting:0];
  [(GCGenericDeviceModelBuilder *)self setDriver:0];

  [(GCGenericDeviceModelBuilder *)self setPhysicalInput:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  productCategory = [(GCGenericDeviceModelBuilder *)self productCategory];
  if (!productCategory)
  {
    [(GCGenericDeviceModelBuilder *)a2 build];
  }

  v6 = [productCategory copy];
  v7 = v4[1];
  v4[1] = v6;

  productName = [(GCGenericDeviceModelBuilder *)self productName];
  v9 = [productName copy];
  v10 = v4[2];
  v4[2] = v9;

  formFitting = [(GCGenericDeviceModelBuilder *)self formFitting];
  v12 = [formFitting copy];
  v13 = v4[3];
  v4[3] = v12;

  driver = [(GCGenericDeviceModelBuilder *)self driver];
  v15 = [driver copy];
  v16 = v4[4];
  v4[4] = v15;

  physicalInput = [(GCGenericDeviceModelBuilder *)self physicalInput];
  v18 = [physicalInput copy];
  v19 = v4[5];
  v4[5] = v18;

  return v4;
}

- (unint64_t)hash
{
  modelClass = [objc_opt_class() modelClass];

  return [modelClass hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqual:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GCGenericDeviceModelBuilder;
    v5 = [(GCGenericDeviceModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (GCGenericDeviceModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v74[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v7 = [(GCGenericDeviceModelBuilder *)self init];
  v60 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"ProductCategory" ofClass:objc_opt_class() error:&v60];
  v9 = v60;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_27;
    }

    v24 = MEMORY[0x1E696ABC0];
    v73[0] = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
    v74[0] = v25;
    v73[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v74[1] = localizedFailureReason;
    v27 = MEMORY[0x1E695DF20];
    v28 = v74;
    v29 = v73;
LABEL_26:
    v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:2];
    *error = [(NSError *)v24 gc_modelError:v30 userInfo:?];

    goto LABEL_27;
  }

  [(GCGenericDeviceModelBuilder *)v7 setProductCategory:v8];

  v59 = 0;
  v10 = [representationCopy gc_objectForKey:@"ProductName" ofClass:objc_opt_class() error:&v59];
  v11 = v59;
  v9 = v11;
  if (!v10 && v11)
  {
    if (!error)
    {
      goto LABEL_27;
    }

    v24 = MEMORY[0x1E696ABC0];
    v71[0] = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
    v72[0] = v25;
    v71[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v72[1] = localizedFailureReason;
    v27 = MEMORY[0x1E695DF20];
    v28 = v72;
    v29 = v71;
    goto LABEL_26;
  }

  [(GCGenericDeviceModelBuilder *)v7 setProductName:v10];

  v58 = 0;
  v12 = [representationCopy gc_objectForKey:@"FormFitting" ofClass:objc_opt_class() error:&v58];
  v13 = v58;
  v9 = v13;
  if (!v12 && v13)
  {
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v69[0] = *MEMORY[0x1E696A578];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      v70[0] = v25;
      v69[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v70[1] = localizedFailureReason;
      v27 = MEMORY[0x1E695DF20];
      v28 = v70;
      v29 = v69;
      goto LABEL_26;
    }

LABEL_27:

LABEL_56:
    v21 = 0;
    goto LABEL_19;
  }

  [(GCGenericDeviceModelBuilder *)v7 setFormFitting:v12];

  v57 = 0;
  v14 = [representationCopy gc_objectForKey:@"Driver" ofClass:objc_opt_class() error:&v57];
  v15 = v57;
  v16 = v15;
  if (!v14 && v15)
  {
    if (error)
    {
      v31 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      v68[0] = v32;
      v67[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v16 localizedFailureReason];
      v68[1] = localizedFailureReason2;
      v34 = MEMORY[0x1E695DF20];
      v35 = v68;
      v36 = v67;
LABEL_32:
      v37 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:2];
      *error = [(NSError *)v31 gc_modelError:v37 userInfo:?];

      v18 = v16;
LABEL_33:

LABEL_54:
      goto LABEL_55;
    }

LABEL_34:
    v18 = v16;
    goto LABEL_55;
  }

  if (v14)
  {
    v56 = 0;
    v17 = [GCGenericDeviceDriverModel modelWithDictionaryRepresentation:v14 error:&v56];
    v18 = v56;

    if (!v17)
    {
      if (error)
      {
        v52 = MEMORY[0x1E696ABC0];
        v65[0] = *MEMORY[0x1E696A578];
        localizedDescription = [v18 localizedDescription];
        v32 = localizedDescription;
        if (!localizedDescription)
        {
          localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
        }

        v53 = localizedDescription;
        v66[0] = localizedDescription;
        v65[1] = *MEMORY[0x1E696A588];
        localizedFailureReason3 = [v18 localizedFailureReason];
        v51 = localizedFailureReason3;
        if (!localizedFailureReason3)
        {
          localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Driver"];
        }

        v50 = localizedFailureReason3;
        v66[1] = localizedFailureReason3;
        v65[2] = @"GCFailingKeyPathErrorKey";
        gc_failingKeyPath = [v18 gc_failingKeyPath];
        v41 = gc_failingKeyPath;
        if (!gc_failingKeyPath)
        {
          gc_failingKeyPath = MEMORY[0x1E695E0F0];
        }

        v42 = [gc_failingKeyPath arrayByAddingObject:@"Driver"];
        v66[2] = v42;
        v43 = MEMORY[0x1E695DF20];
        v44 = v66;
        v45 = v65;
LABEL_51:
        v49 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:3];
        *error = [(NSError *)v52 gc_modelError:v49 userInfo:?];

        if (!v51)
        {
        }

        localizedFailureReason2 = v53;
        if (v32)
        {
          goto LABEL_54;
        }

        goto LABEL_33;
      }

LABEL_55:

      goto LABEL_56;
    }

    [(GCGenericDeviceModelBuilder *)v7 setDriver:v17];
  }

  else
  {
    v18 = v15;
  }

  v55 = 0;
  v14 = [representationCopy gc_objectForKey:@"PhysicalInput" ofClass:objc_opt_class() error:&v55];
  v19 = v55;
  v16 = v19;
  if (!v14 && v19)
  {
    if (error)
    {
      v31 = MEMORY[0x1E696ABC0];
      v63[0] = *MEMORY[0x1E696A578];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      v64[0] = v32;
      v63[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v16 localizedFailureReason];
      v64[1] = localizedFailureReason2;
      v34 = MEMORY[0x1E695DF20];
      v35 = v64;
      v36 = v63;
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (!v14)
  {
    v18 = v19;
    goto LABEL_18;
  }

  v54 = 0;
  v20 = [GCGenericDevicePhysicalInputModel modelWithDictionaryRepresentation:v14 error:&v54];
  v18 = v54;

  if (!v20)
  {
    if (error)
    {
      v52 = MEMORY[0x1E696ABC0];
      v61[0] = *MEMORY[0x1E696A578];
      localizedDescription2 = [v18 localizedDescription];
      v32 = localizedDescription2;
      if (!localizedDescription2)
      {
        localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      }

      v53 = localizedDescription2;
      v62[0] = localizedDescription2;
      v61[1] = *MEMORY[0x1E696A588];
      localizedFailureReason4 = [v18 localizedFailureReason];
      v51 = localizedFailureReason4;
      if (!localizedFailureReason4)
      {
        localizedFailureReason4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"PhysicalInput"];
      }

      v50 = localizedFailureReason4;
      v62[1] = localizedFailureReason4;
      v61[2] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath2 = [v18 gc_failingKeyPath];
      v41 = gc_failingKeyPath2;
      if (!gc_failingKeyPath2)
      {
        gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
      }

      v42 = [gc_failingKeyPath2 arrayByAddingObject:@"PhysicalInput"];
      v62[2] = v42;
      v43 = MEMORY[0x1E695DF20];
      v44 = v62;
      v45 = v61;
      goto LABEL_51;
    }

    goto LABEL_55;
  }

  [(GCGenericDeviceModelBuilder *)v7 setPhysicalInput:v20];

LABEL_18:
  v21 = v7;
LABEL_19:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDeviceModel.m" lineNumber:144 description:@"'productCategory' can not be nil"];
}

@end
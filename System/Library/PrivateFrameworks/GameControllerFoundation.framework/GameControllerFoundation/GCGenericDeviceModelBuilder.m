@interface GCGenericDeviceModelBuilder
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceModelBuilder)init;
- (GCGenericDeviceModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)a3;
- (void)reset;
@end

@implementation GCGenericDeviceModelBuilder

- (GCGenericDeviceModelBuilder)init
{
  v3.receiver = self;
  v3.super_class = GCGenericDeviceModelBuilder;
  return [(GCGenericDeviceModelBuilder *)&v3 init];
}

- (void)initializeWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 productCategory];
  [(GCGenericDeviceModelBuilder *)self setProductCategory:v5];

  v6 = [v4 productName];
  [(GCGenericDeviceModelBuilder *)self setProductName:v6];

  v7 = [v4 isFormFitting];
  [(GCGenericDeviceModelBuilder *)self setFormFitting:v7];

  v8 = [v4 driver];
  [(GCGenericDeviceModelBuilder *)self setDriver:v8];

  v9 = [v4 physicalInput];

  [(GCGenericDeviceModelBuilder *)self setPhysicalInput:v9];
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
  v5 = [(GCGenericDeviceModelBuilder *)self productCategory];
  if (!v5)
  {
    [(GCGenericDeviceModelBuilder *)a2 build];
  }

  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(GCGenericDeviceModelBuilder *)self productName];
  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  v11 = [(GCGenericDeviceModelBuilder *)self formFitting];
  v12 = [v11 copy];
  v13 = v4[3];
  v4[3] = v12;

  v14 = [(GCGenericDeviceModelBuilder *)self driver];
  v15 = [v14 copy];
  v16 = v4[4];
  v4[4] = v15;

  v17 = [(GCGenericDeviceModelBuilder *)self physicalInput];
  v18 = [v17 copy];
  v19 = v4[5];
  v4[5] = v18;

  return v4;
}

- (unint64_t)hash
{
  v2 = [objc_opt_class() modelClass];

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqual:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GCGenericDeviceModelBuilder;
    v5 = [(GCGenericDeviceModelBuilder *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (GCGenericDeviceModelBuilder)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v74[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(GCGenericDeviceModelBuilder *)self init];
  v60 = 0;
  v8 = [v6 gc_requiredObjectForKey:@"ProductCategory" ofClass:objc_opt_class() error:&v60];
  v9 = v60;
  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_27;
    }

    v24 = MEMORY[0x1E696ABC0];
    v73[0] = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
    v74[0] = v25;
    v73[1] = *MEMORY[0x1E696A588];
    v26 = [v9 localizedFailureReason];
    v74[1] = v26;
    v27 = MEMORY[0x1E695DF20];
    v28 = v74;
    v29 = v73;
LABEL_26:
    v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:2];
    *a4 = [(NSError *)v24 gc_modelError:v30 userInfo:?];

    goto LABEL_27;
  }

  [(GCGenericDeviceModelBuilder *)v7 setProductCategory:v8];

  v59 = 0;
  v10 = [v6 gc_objectForKey:@"ProductName" ofClass:objc_opt_class() error:&v59];
  v11 = v59;
  v9 = v11;
  if (!v10 && v11)
  {
    if (!a4)
    {
      goto LABEL_27;
    }

    v24 = MEMORY[0x1E696ABC0];
    v71[0] = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
    v72[0] = v25;
    v71[1] = *MEMORY[0x1E696A588];
    v26 = [v9 localizedFailureReason];
    v72[1] = v26;
    v27 = MEMORY[0x1E695DF20];
    v28 = v72;
    v29 = v71;
    goto LABEL_26;
  }

  [(GCGenericDeviceModelBuilder *)v7 setProductName:v10];

  v58 = 0;
  v12 = [v6 gc_objectForKey:@"FormFitting" ofClass:objc_opt_class() error:&v58];
  v13 = v58;
  v9 = v13;
  if (!v12 && v13)
  {
    if (a4)
    {
      v24 = MEMORY[0x1E696ABC0];
      v69[0] = *MEMORY[0x1E696A578];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      v70[0] = v25;
      v69[1] = *MEMORY[0x1E696A588];
      v26 = [v9 localizedFailureReason];
      v70[1] = v26;
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
  v14 = [v6 gc_objectForKey:@"Driver" ofClass:objc_opt_class() error:&v57];
  v15 = v57;
  v16 = v15;
  if (!v14 && v15)
  {
    if (a4)
    {
      v31 = MEMORY[0x1E696ABC0];
      v67[0] = *MEMORY[0x1E696A578];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      v68[0] = v32;
      v67[1] = *MEMORY[0x1E696A588];
      v33 = [v16 localizedFailureReason];
      v68[1] = v33;
      v34 = MEMORY[0x1E695DF20];
      v35 = v68;
      v36 = v67;
LABEL_32:
      v37 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:2];
      *a4 = [(NSError *)v31 gc_modelError:v37 userInfo:?];

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
      if (a4)
      {
        v52 = MEMORY[0x1E696ABC0];
        v65[0] = *MEMORY[0x1E696A578];
        v38 = [v18 localizedDescription];
        v32 = v38;
        if (!v38)
        {
          v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
        }

        v53 = v38;
        v66[0] = v38;
        v65[1] = *MEMORY[0x1E696A588];
        v39 = [v18 localizedFailureReason];
        v51 = v39;
        if (!v39)
        {
          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"Driver"];
        }

        v50 = v39;
        v66[1] = v39;
        v65[2] = @"GCFailingKeyPathErrorKey";
        v40 = [v18 gc_failingKeyPath];
        v41 = v40;
        if (!v40)
        {
          v40 = MEMORY[0x1E695E0F0];
        }

        v42 = [v40 arrayByAddingObject:@"Driver"];
        v66[2] = v42;
        v43 = MEMORY[0x1E695DF20];
        v44 = v66;
        v45 = v65;
LABEL_51:
        v49 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:3];
        *a4 = [(NSError *)v52 gc_modelError:v49 userInfo:?];

        if (!v51)
        {
        }

        v33 = v53;
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
  v14 = [v6 gc_objectForKey:@"PhysicalInput" ofClass:objc_opt_class() error:&v55];
  v19 = v55;
  v16 = v19;
  if (!v14 && v19)
  {
    if (a4)
    {
      v31 = MEMORY[0x1E696ABC0];
      v63[0] = *MEMORY[0x1E696A578];
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      v64[0] = v32;
      v63[1] = *MEMORY[0x1E696A588];
      v33 = [v16 localizedFailureReason];
      v64[1] = v33;
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
    if (a4)
    {
      v52 = MEMORY[0x1E696ABC0];
      v61[0] = *MEMORY[0x1E696A578];
      v46 = [v18 localizedDescription];
      v32 = v46;
      if (!v46)
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", v7];
      }

      v53 = v46;
      v62[0] = v46;
      v61[1] = *MEMORY[0x1E696A588];
      v47 = [v18 localizedFailureReason];
      v51 = v47;
      if (!v47)
      {
        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"PhysicalInput"];
      }

      v50 = v47;
      v62[1] = v47;
      v61[2] = @"GCFailingKeyPathErrorKey";
      v48 = [v18 gc_failingKeyPath];
      v41 = v48;
      if (!v48)
      {
        v48 = MEMORY[0x1E695E0F0];
      }

      v42 = [v48 arrayByAddingObject:@"PhysicalInput"];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGenericDeviceModel.m" lineNumber:144 description:@"'productCategory' can not be nil"];
}

@end
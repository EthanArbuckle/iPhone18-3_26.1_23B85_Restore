@interface GCGenericDeviceModel
+ (GCGenericDeviceModel)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceModel)init;
- (GCGenericDeviceModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceModel

- (GCGenericDeviceModel)init
{
  [(GCGenericDeviceModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceModel)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = GCGenericDeviceModel;
  v3 = a3;
  v4 = [(GCGenericDeviceModel *)&v16 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"productCategory", v16.receiver, v16.super_class}];
  productCategory = v4->_productCategory;
  v4->_productCategory = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"productName"];
  productName = v4->_productName;
  v4->_productName = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"formFitting"];
  formFitting = v4->_formFitting;
  v4->_formFitting = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"driver"];
  driver = v4->_driver;
  v4->_driver = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"physicalInput"];

  physicalInput = v4->_physicalInput;
  v4->_physicalInput = v13;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCGenericDeviceModel *)self productCategory];
  [v4 encodeObject:v5 forKey:@"productCategory"];

  v6 = [(GCGenericDeviceModel *)self productName];
  [v4 encodeObject:v6 forKey:@"productName"];

  v7 = [(GCGenericDeviceModel *)self isFormFitting];
  [v4 encodeObject:v7 forKey:@"formFitting"];

  v8 = [(GCGenericDeviceModel *)self driver];
  [v4 encodeObject:v8 forKey:@"driver"];

  v9 = [(GCGenericDeviceModel *)self physicalInput];
  [v4 encodeObject:v9 forKey:@"physicalInput"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_10;
    }

LABEL_6:
    v5 = [(GCGenericDeviceModel *)self productCategory];
    v6 = [v4 productCategory];
    if (![v5 isEqual:v6])
    {
      v10 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v7 = [(GCGenericDeviceModel *)self productName];
    v8 = [v4 productName];
    if (v7 != v8)
    {
      v9 = [(GCGenericDeviceModel *)self productName];
      v36 = [v4 productName];
      v37 = v9;
      if (![v9 isEqual:?])
      {
        v10 = 0;
        goto LABEL_28;
      }
    }

    v11 = [(GCGenericDeviceModel *)self isFormFitting];
    v12 = [v4 isFormFitting];
    if (v11 != v12)
    {
      v13 = [(GCGenericDeviceModel *)self isFormFitting];
      v33 = [v4 isFormFitting];
      v34 = v13;
      if (![v13 isEqual:v33])
      {
        v10 = 0;
LABEL_26:

LABEL_27:
        if (v7 == v8)
        {
LABEL_29:

          goto LABEL_30;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    v14 = [(GCGenericDeviceModel *)self driver];
    v15 = [v4 driver];
    v35 = v14;
    v16 = v14 == v15;
    v17 = v15;
    if (v16)
    {
      v31 = v12;
      v32 = v11;
    }

    else
    {
      v18 = [(GCGenericDeviceModel *)self driver];
      v28 = [v4 driver];
      v29 = v18;
      if (![v18 isEqual:?])
      {
        v10 = 0;
        v26 = v35;
        goto LABEL_24;
      }

      v31 = v12;
      v32 = v11;
    }

    v30 = v17;
    v19 = [(GCGenericDeviceModel *)self physicalInput];
    v20 = [v4 physicalInput];
    v21 = v20;
    if (v19 == v20)
    {

      v10 = 1;
    }

    else
    {
      v22 = [(GCGenericDeviceModel *)self physicalInput];
      [v4 physicalInput];
      v23 = v8;
      v25 = v24 = v7;
      v10 = [v22 isEqual:v25];

      v7 = v24;
      v8 = v23;
    }

    v26 = v35;
    v17 = v30;
    v12 = v31;
    v11 = v32;
    if (v35 == v30)
    {
LABEL_25:

      if (v11 == v12)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (([(GCGenericDeviceModel *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_10:
  v10 = 0;
LABEL_31:

  return v10;
}

- (id)debugDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  v4 = [(GCGenericDeviceModel *)self productCategory];
  v5 = [(GCGenericDeviceModel *)self productName];
  v6 = [(GCGenericDeviceModel *)self isFormFitting];
  v15 = [(GCGenericDeviceModel *)self driver];
  v7 = [v15 debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [(GCGenericDeviceModel *)self physicalInput];
  v10 = [v9 debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v16 stringWithFormat:@"<%@ %p> {\n\t productCategory = %@\n\t productName = %@\n\t formFitting = %@\n\t driver = %@\n\t physicalInput = %@\n}", v14, self, v4, v5, v6, v8, v11];

  return v12;
}

+ (GCGenericDeviceModel)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  v7 = [a3 gc_objectForKey:@"ProductClass" ofClass:objc_opt_class() error:v23];
  v8 = v23[0];
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    if (!a4)
    {
LABEL_24:

      v15 = 0;
      goto LABEL_13;
    }

    v18 = MEMORY[0x1E696ABC0];
    v26[0] = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
    v27[0] = v12;
    v26[1] = *MEMORY[0x1E696A588];
    v19 = [v9 localizedFailureReason];
    v27[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    *a4 = [(NSError *)v18 gc_modelError:v20 userInfo:?];
    goto LABEL_22;
  }

  v11 = objc_opt_class();
  if (v7)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GCGeneric%@ModelBuilder", v7];
    v13 = NSClassFromString(v12);
    if (!v13 || ([(objc_class *)v13 isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      if (!a4)
      {
LABEL_23:

        goto LABEL_24;
      }

      v21 = MEMORY[0x1E696ABC0];
      v24[0] = *MEMORY[0x1E696A578];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v25[0] = v19;
      v24[1] = *MEMORY[0x1E696A588];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid product class.", v7];
      v25[1] = v20;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      *a4 = [(NSError *)v21 gc_modelError:v22 userInfo:?];

LABEL_22:
      goto LABEL_23;
    }
  }

  else
  {
    v13 = v11;
  }

  v14 = [[v13 alloc] initWithDictionaryRepresentation:a3 error:a4];

  if (v14)
  {
    v15 = [v14 build];
    v9 = v14;
LABEL_13:

    goto LABEL_15;
  }

  v15 = 0;
LABEL_15:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end
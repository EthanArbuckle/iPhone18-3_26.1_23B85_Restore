@interface GCGenericDeviceModel
+ (GCGenericDeviceModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceModel)init;
- (GCGenericDeviceModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceModel

- (GCGenericDeviceModel)init
{
  [(GCGenericDeviceModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceModel)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = GCGenericDeviceModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceModel *)&v16 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"productCategory", v16.receiver, v16.super_class}];
  productCategory = v4->_productCategory;
  v4->_productCategory = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productName"];
  productName = v4->_productName;
  v4->_productName = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formFitting"];
  formFitting = v4->_formFitting;
  v4->_formFitting = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"driver"];
  driver = v4->_driver;
  v4->_driver = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"physicalInput"];

  physicalInput = v4->_physicalInput;
  v4->_physicalInput = v13;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  productCategory = [(GCGenericDeviceModel *)self productCategory];
  [coderCopy encodeObject:productCategory forKey:@"productCategory"];

  productName = [(GCGenericDeviceModel *)self productName];
  [coderCopy encodeObject:productName forKey:@"productName"];

  isFormFitting = [(GCGenericDeviceModel *)self isFormFitting];
  [coderCopy encodeObject:isFormFitting forKey:@"formFitting"];

  driver = [(GCGenericDeviceModel *)self driver];
  [coderCopy encodeObject:driver forKey:@"driver"];

  physicalInput = [(GCGenericDeviceModel *)self physicalInput];
  [coderCopy encodeObject:physicalInput forKey:@"physicalInput"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_10;
    }

LABEL_6:
    productCategory = [(GCGenericDeviceModel *)self productCategory];
    productCategory2 = [equalCopy productCategory];
    if (![productCategory isEqual:productCategory2])
    {
      v10 = 0;
LABEL_30:

      goto LABEL_31;
    }

    productName = [(GCGenericDeviceModel *)self productName];
    productName2 = [equalCopy productName];
    if (productName != productName2)
    {
      productName3 = [(GCGenericDeviceModel *)self productName];
      productName4 = [equalCopy productName];
      v37 = productName3;
      if (![productName3 isEqual:?])
      {
        v10 = 0;
        goto LABEL_28;
      }
    }

    isFormFitting = [(GCGenericDeviceModel *)self isFormFitting];
    isFormFitting2 = [equalCopy isFormFitting];
    if (isFormFitting != isFormFitting2)
    {
      isFormFitting3 = [(GCGenericDeviceModel *)self isFormFitting];
      isFormFitting4 = [equalCopy isFormFitting];
      v34 = isFormFitting3;
      if (![isFormFitting3 isEqual:isFormFitting4])
      {
        v10 = 0;
LABEL_26:

LABEL_27:
        if (productName == productName2)
        {
LABEL_29:

          goto LABEL_30;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    driver = [(GCGenericDeviceModel *)self driver];
    driver2 = [equalCopy driver];
    v35 = driver;
    v16 = driver == driver2;
    v17 = driver2;
    if (v16)
    {
      v31 = isFormFitting2;
      v32 = isFormFitting;
    }

    else
    {
      driver3 = [(GCGenericDeviceModel *)self driver];
      driver4 = [equalCopy driver];
      v29 = driver3;
      if (![driver3 isEqual:?])
      {
        v10 = 0;
        v26 = v35;
        goto LABEL_24;
      }

      v31 = isFormFitting2;
      v32 = isFormFitting;
    }

    v30 = v17;
    physicalInput = [(GCGenericDeviceModel *)self physicalInput];
    physicalInput2 = [equalCopy physicalInput];
    v21 = physicalInput2;
    if (physicalInput == physicalInput2)
    {

      v10 = 1;
    }

    else
    {
      physicalInput3 = [(GCGenericDeviceModel *)self physicalInput];
      [equalCopy physicalInput];
      v23 = productName2;
      v25 = v24 = productName;
      v10 = [physicalInput3 isEqual:v25];

      productName = v24;
      productName2 = v23;
    }

    v26 = v35;
    v17 = v30;
    isFormFitting2 = v31;
    isFormFitting = v32;
    if (v35 == v30)
    {
LABEL_25:

      if (isFormFitting == isFormFitting2)
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
  productCategory = [(GCGenericDeviceModel *)self productCategory];
  productName = [(GCGenericDeviceModel *)self productName];
  isFormFitting = [(GCGenericDeviceModel *)self isFormFitting];
  driver = [(GCGenericDeviceModel *)self driver];
  v7 = [driver debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  physicalInput = [(GCGenericDeviceModel *)self physicalInput];
  v10 = [physicalInput debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v16 stringWithFormat:@"<%@ %p> {\n\t productCategory = %@\n\t productName = %@\n\t formFitting = %@\n\t driver = %@\n\t physicalInput = %@\n}", v14, self, productCategory, productName, isFormFitting, v8, v11];

  return v12;
}

+ (GCGenericDeviceModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v27[2] = *MEMORY[0x1E69E9840];
  v23[0] = 0;
  v7 = [representation gc_objectForKey:@"ProductClass" ofClass:objc_opt_class() error:v23];
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
    if (!error)
    {
LABEL_24:

      build = 0;
      goto LABEL_13;
    }

    v18 = MEMORY[0x1E696ABC0];
    v26[0] = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v27[0] = v12;
    v26[1] = *MEMORY[0x1E696A588];
    localizedFailureReason = [v9 localizedFailureReason];
    v27[1] = localizedFailureReason;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    *error = [(NSError *)v18 gc_modelError:v20 userInfo:?];
    goto LABEL_22;
  }

  v11 = objc_opt_class();
  if (v7)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GCGeneric%@ModelBuilder", v7];
    v13 = NSClassFromString(v12);
    if (!v13 || ([(objc_class *)v13 isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      if (!error)
      {
LABEL_23:

        goto LABEL_24;
      }

      v21 = MEMORY[0x1E696ABC0];
      v24[0] = *MEMORY[0x1E696A578];
      localizedFailureReason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v25[0] = localizedFailureReason;
      v24[1] = *MEMORY[0x1E696A588];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid product class.", v7];
      v25[1] = v20;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      *error = [(NSError *)v21 gc_modelError:v22 userInfo:?];

LABEL_22:
      goto LABEL_23;
    }
  }

  else
  {
    v13 = v11;
  }

  v14 = [[v13 alloc] initWithDictionaryRepresentation:representation error:error];

  if (v14)
  {
    build = [v14 build];
    v9 = v14;
LABEL_13:

    goto LABEL_15;
  }

  build = 0;
LABEL_15:
  v16 = *MEMORY[0x1E69E9840];

  return build;
}

@end
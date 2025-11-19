@interface GCGenericDevicePhysicalInputElementModel
+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDevicePhysicalInputElementModel)init;
- (GCGenericDevicePhysicalInputElementModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDevicePhysicalInputElementModel

- (GCGenericDevicePhysicalInputElementModel)init
{
  [(GCGenericDevicePhysicalInputElementModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDevicePhysicalInputElementModel)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = GCGenericDevicePhysicalInputElementModel;
  v3 = a3;
  v4 = [(GCGenericDevicePhysicalInputElementModel *)&v16 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"identifier", v16.receiver, v16.super_class}];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [v3 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"names"];
  names = v4->_names;
  v4->_names = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"analog"];
  analog = v4->_analog;
  v4->_analog = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localizedNameKey"];
  localizedNameKey = v4->_localizedNameKey;
  v4->_localizedNameKey = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];

  symbolName = v4->_symbolName;
  v4->_symbolName = v13;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCGenericDevicePhysicalInputElementModel *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(GCGenericDevicePhysicalInputElementModel *)self names];
  [v4 encodeObject:v6 forKey:@"names"];

  v7 = [(GCGenericDevicePhysicalInputElementModel *)self isAnalog];
  [v4 encodeObject:v7 forKey:@"analog"];

  v8 = [(GCGenericDevicePhysicalInputElementModel *)self localizedNameKey];
  [v4 encodeObject:v8 forKey:@"localizedNameKey"];

  v9 = [(GCGenericDevicePhysicalInputElementModel *)self symbolName];
  [v4 encodeObject:v9 forKey:@"symbolName"];
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
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDevicePhysicalInputElementModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_12;
    }

LABEL_6:
    v5 = [(GCGenericDevicePhysicalInputElementModel *)self identifier];
    v6 = [v4 identifier];
    if (![v5 isEqual:v6])
    {
      v15 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v7 = [(GCGenericDevicePhysicalInputElementModel *)self names];
    v8 = [v4 names];
    if (![v7 isEqual:v8])
    {
      v15 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v9 = [(GCGenericDevicePhysicalInputElementModel *)self isAnalog];
    v10 = [v4 isAnalog];
    if (![v9 isEqual:v10])
    {
      v15 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v11 = [(GCGenericDevicePhysicalInputElementModel *)self localizedNameKey];
    v12 = [v4 localizedNameKey];
    v13 = v12;
    v26 = v11;
    if (v11 == v12)
    {
      v25 = v12;
    }

    else
    {
      v14 = [(GCGenericDevicePhysicalInputElementModel *)self localizedNameKey];
      v23 = [v4 localizedNameKey];
      v24 = v14;
      if (![v14 isEqual:?])
      {
        v15 = 0;
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      v25 = v13;
    }

    v16 = [(GCGenericDevicePhysicalInputElementModel *)self symbolName];
    v17 = [v4 symbolName];
    v18 = v17;
    if (v16 == v17)
    {

      v15 = 1;
    }

    else
    {
      v21 = [(GCGenericDevicePhysicalInputElementModel *)self symbolName];
      [v4 symbolName];
      v19 = v22 = v16;
      v15 = [v21 isEqual:v19];
    }

    v13 = v25;
    if (v26 == v25)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (([(GCGenericDevicePhysicalInputElementModel *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_12:
  v15 = 0;
LABEL_27:

  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDevicePhysicalInputElementModel *)self identifier];
  v7 = [(GCGenericDevicePhysicalInputElementModel *)self names];
  v8 = [(GCGenericDevicePhysicalInputElementModel *)self isAnalog];
  v9 = [(GCGenericDevicePhysicalInputElementModel *)self localizedNameKey];
  v10 = [(GCGenericDevicePhysicalInputElementModel *)self symbolName];
  v11 = [v3 stringWithFormat:@"<%@ %p> {\n\t identifier = %@\n\t names = %@\n\t analog = %@\n\t localizedNameKey = %@\n\t symbolName = %@\n}", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23[0] = 0;
  v7 = [v6 gc_requiredObjectForKey:@"Type" ofClass:objc_opt_class() error:v23];
  v8 = v23[0];
  if (!v7)
  {
    if (a4)
    {
      v19 = MEMORY[0x1E696ABC0];
      v26[0] = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v27[0] = v20;
      v26[1] = *MEMORY[0x1E696A588];
      v21 = [v8 localizedFailureReason];
      v27[1] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
      *a4 = [(NSError *)v19 gc_modelError:v22 userInfo:?];
    }

    goto LABEL_15;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GCGenericDevicePhysicalInput%@ModelBuilder", v7];
  v10 = NSClassFromString(v9);
  if (!v10 || v10 == objc_opt_class() || ([(objc_class *)v10 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    if (a4)
    {
      v15 = MEMORY[0x1E696ABC0];
      v24[0] = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v25[0] = v16;
      v24[1] = *MEMORY[0x1E696A588];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid element type.", v7];
      v25[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      *a4 = [(NSError *)v15 gc_modelError:v18 userInfo:?];
    }

LABEL_15:
    v12 = 0;
    goto LABEL_7;
  }

  v11 = [[v10 alloc] initWithDictionaryRepresentation:v6 error:a4];

  if (v11)
  {
    v12 = [v11 build];
    v8 = v11;
LABEL_7:

    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end
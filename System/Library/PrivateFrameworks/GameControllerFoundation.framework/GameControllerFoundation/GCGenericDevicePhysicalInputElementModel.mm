@interface GCGenericDevicePhysicalInputElementModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDevicePhysicalInputElementModel)init;
- (GCGenericDevicePhysicalInputElementModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDevicePhysicalInputElementModel

- (GCGenericDevicePhysicalInputElementModel)init
{
  [(GCGenericDevicePhysicalInputElementModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDevicePhysicalInputElementModel)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = GCGenericDevicePhysicalInputElementModel;
  coderCopy = coder;
  v4 = [(GCGenericDevicePhysicalInputElementModel *)&v16 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"identifier", v16.receiver, v16.super_class}];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"names"];
  names = v4->_names;
  v4->_names = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analog"];
  analog = v4->_analog;
  v4->_analog = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedNameKey"];
  localizedNameKey = v4->_localizedNameKey;
  v4->_localizedNameKey = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];

  symbolName = v4->_symbolName;
  v4->_symbolName = v13;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(GCGenericDevicePhysicalInputElementModel *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  names = [(GCGenericDevicePhysicalInputElementModel *)self names];
  [coderCopy encodeObject:names forKey:@"names"];

  isAnalog = [(GCGenericDevicePhysicalInputElementModel *)self isAnalog];
  [coderCopy encodeObject:isAnalog forKey:@"analog"];

  localizedNameKey = [(GCGenericDevicePhysicalInputElementModel *)self localizedNameKey];
  [coderCopy encodeObject:localizedNameKey forKey:@"localizedNameKey"];

  symbolName = [(GCGenericDevicePhysicalInputElementModel *)self symbolName];
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];
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
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDevicePhysicalInputElementModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_12;
    }

LABEL_6:
    identifier = [(GCGenericDevicePhysicalInputElementModel *)self identifier];
    identifier2 = [equalCopy identifier];
    if (![identifier isEqual:identifier2])
    {
      v15 = 0;
LABEL_26:

      goto LABEL_27;
    }

    names = [(GCGenericDevicePhysicalInputElementModel *)self names];
    names2 = [equalCopy names];
    if (![names isEqual:names2])
    {
      v15 = 0;
LABEL_25:

      goto LABEL_26;
    }

    isAnalog = [(GCGenericDevicePhysicalInputElementModel *)self isAnalog];
    isAnalog2 = [equalCopy isAnalog];
    if (![isAnalog isEqual:isAnalog2])
    {
      v15 = 0;
LABEL_24:

      goto LABEL_25;
    }

    localizedNameKey = [(GCGenericDevicePhysicalInputElementModel *)self localizedNameKey];
    localizedNameKey2 = [equalCopy localizedNameKey];
    v13 = localizedNameKey2;
    v26 = localizedNameKey;
    if (localizedNameKey == localizedNameKey2)
    {
      v25 = localizedNameKey2;
    }

    else
    {
      localizedNameKey3 = [(GCGenericDevicePhysicalInputElementModel *)self localizedNameKey];
      localizedNameKey4 = [equalCopy localizedNameKey];
      v24 = localizedNameKey3;
      if (![localizedNameKey3 isEqual:?])
      {
        v15 = 0;
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      v25 = v13;
    }

    symbolName = [(GCGenericDevicePhysicalInputElementModel *)self symbolName];
    symbolName2 = [equalCopy symbolName];
    v18 = symbolName2;
    if (symbolName == symbolName2)
    {

      v15 = 1;
    }

    else
    {
      symbolName3 = [(GCGenericDevicePhysicalInputElementModel *)self symbolName];
      [equalCopy symbolName];
      v19 = v22 = symbolName;
      v15 = [symbolName3 isEqual:v19];
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
  identifier = [(GCGenericDevicePhysicalInputElementModel *)self identifier];
  names = [(GCGenericDevicePhysicalInputElementModel *)self names];
  isAnalog = [(GCGenericDevicePhysicalInputElementModel *)self isAnalog];
  localizedNameKey = [(GCGenericDevicePhysicalInputElementModel *)self localizedNameKey];
  symbolName = [(GCGenericDevicePhysicalInputElementModel *)self symbolName];
  v11 = [v3 stringWithFormat:@"<%@ %p> {\n\t identifier = %@\n\t names = %@\n\t analog = %@\n\t localizedNameKey = %@\n\t symbolName = %@\n}", v5, self, identifier, names, isAnalog, localizedNameKey, symbolName];

  return v11;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v27[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v23[0] = 0;
  v7 = [representationCopy gc_requiredObjectForKey:@"Type" ofClass:objc_opt_class() error:v23];
  v8 = v23[0];
  if (!v7)
  {
    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v26[0] = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v27[0] = v20;
      v26[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v8 localizedFailureReason];
      v27[1] = localizedFailureReason;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
      *error = [(NSError *)v19 gc_modelError:v22 userInfo:?];
    }

    goto LABEL_15;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GCGenericDevicePhysicalInput%@ModelBuilder", v7];
  v10 = NSClassFromString(v9);
  if (!v10 || v10 == objc_opt_class() || ([(objc_class *)v10 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v24[0] = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v25[0] = v16;
      v24[1] = *MEMORY[0x1E696A588];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid element type.", v7];
      v25[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      *error = [(NSError *)v15 gc_modelError:v18 userInfo:?];
    }

LABEL_15:
    build = 0;
    goto LABEL_7;
  }

  v11 = [[v10 alloc] initWithDictionaryRepresentation:representationCopy error:error];

  if (v11)
  {
    build = [v11 build];
    v8 = v11;
LABEL_7:

    goto LABEL_9;
  }

  build = 0;
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

  return build;
}

@end
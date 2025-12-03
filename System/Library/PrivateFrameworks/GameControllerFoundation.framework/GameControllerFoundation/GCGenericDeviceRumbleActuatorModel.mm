@interface GCGenericDeviceRumbleActuatorModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleActuatorModel)init;
- (GCGenericDeviceRumbleActuatorModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceRumbleActuatorModel

- (GCGenericDeviceRumbleActuatorModel)init
{
  [(GCGenericDeviceRumbleActuatorModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceRumbleActuatorModel)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceRumbleActuatorModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceRumbleActuatorModel *)&v8 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"name", v8.receiver, v8.super_class}];

  name = v4->_name;
  v4->_name = v5;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(GCGenericDeviceRumbleActuatorModel *)self name];
  [coderCopy encodeObject:name forKey:@"name"];
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
  if (objc_opt_isKindOfClass())
  {
    if (([(GCGenericDeviceRumbleActuatorModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceRumbleActuatorModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_7;
    }
  }

  name = [(GCGenericDeviceRumbleActuatorModel *)self name];
  name2 = [equalCopy name];
  v7 = [name isEqual:name2];

LABEL_8:
  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(GCGenericDeviceRumbleActuatorModel *)self name];
  v7 = [v3 stringWithFormat:@"<%@ %p> {\n\t name = %@\n}", v5, self, name];

  return v7;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v7 = objc_opt_new();
  v17[0] = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"Name" ofClass:objc_opt_class() error:v17];
  v9 = v17[0];
  if (v8)
  {
    [v7 setName:v8];

    build = [v7 build];
  }

  else
  {
    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v18[0] = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v19[0] = v14;
      v18[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v19[1] = localizedFailureReason;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      *error = [(NSError *)v13 gc_modelError:v16 userInfo:?];
    }

    build = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return build;
}

@end
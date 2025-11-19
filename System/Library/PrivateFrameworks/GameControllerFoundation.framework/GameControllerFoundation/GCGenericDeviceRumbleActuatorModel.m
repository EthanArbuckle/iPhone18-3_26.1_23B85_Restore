@interface GCGenericDeviceRumbleActuatorModel
+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceRumbleActuatorModel)init;
- (GCGenericDeviceRumbleActuatorModel)initWithCoder:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceRumbleActuatorModel

- (GCGenericDeviceRumbleActuatorModel)init
{
  [(GCGenericDeviceRumbleActuatorModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceRumbleActuatorModel)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceRumbleActuatorModel;
  v3 = a3;
  v4 = [(GCGenericDeviceRumbleActuatorModel *)&v8 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"name", v8.receiver, v8.super_class}];

  name = v4->_name;
  v4->_name = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCGenericDeviceRumbleActuatorModel *)self name];
  [v4 encodeObject:v5 forKey:@"name"];
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

  v5 = [(GCGenericDeviceRumbleActuatorModel *)self name];
  v6 = [v4 name];
  v7 = [v5 isEqual:v6];

LABEL_8:
  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCGenericDeviceRumbleActuatorModel *)self name];
  v7 = [v3 stringWithFormat:@"<%@ %p> {\n\t name = %@\n}", v5, self, v6];

  return v7;
}

+ (id)modelWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_new();
  v17[0] = 0;
  v8 = [v6 gc_requiredObjectForKey:@"Name" ofClass:objc_opt_class() error:v17];
  v9 = v17[0];
  if (v8)
  {
    [v7 setName:v8];

    v10 = [v7 build];
  }

  else
  {
    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v18[0] = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", a1];
      v19[0] = v14;
      v18[1] = *MEMORY[0x1E696A588];
      v15 = [v9 localizedFailureReason];
      v19[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      *a4 = [(NSError *)v13 gc_modelError:v16 userInfo:?];
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end
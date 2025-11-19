@interface GCHIDServiceInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHIDServiceInfo:(id)a3;
- (GCHIDServiceInfo)initWithService:(__IOHIDServiceClient *)a3 queue:(id)a4 functions:(const GCHIDServiceClientFunctions *)a5;
- (NSString)debugDescription;
- (id)dictionaryPropertyForKey:(id)a3;
- (id)numberPropertyForKey:(id)a3;
- (id)propertyForKey:(id)a3;
- (id)propertyForKey:(id)a3 ofClass:(Class)a4;
- (id)stringPropertyForKey:(id)a3;
- (void)dealloc;
@end

@implementation GCHIDServiceInfo

- (GCHIDServiceInfo)initWithService:(__IOHIDServiceClient *)a3 queue:(id)a4 functions:(const GCHIDServiceClientFunctions *)a5
{
  v10 = a4;
  v11 = v10;
  if (a3)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [GCHIDServiceInfo initWithService:a2 queue:self functions:?];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [GCHIDServiceInfo initWithService:a2 queue:self functions:?];
LABEL_3:
  v18.receiver = self;
  v18.super_class = GCHIDServiceInfo;
  v12 = [(GCHIDServiceInfo *)&v18 init];
  v12->_functions = a5;
  objc_storeStrong(&v12->_queue, a4);
  v12->_service = CFRetain(a3);
  functions = v12->_functions;
  if (functions)
  {
    v14 = *functions;
  }

  else
  {
    v14 = MEMORY[0x1E696CD28];
  }

  v15 = v14();
  registryID = v12->_registryID;
  v12->_registryID = v15;

  return v12;
}

- (void)dealloc
{
  CFRelease(self->_service);
  self->_service = 0;
  v3.receiver = self;
  v3.super_class = GCHIDServiceInfo;
  [(GCHIDServiceInfo *)&v3 dealloc];
}

- (BOOL)isEqualToHIDServiceInfo:(id)a3
{
  registryID = self->_registryID;
  v4 = [a3 registryID];
  LOBYTE(registryID) = [(NSNumber *)registryID isEqual:v4];

  return registryID;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GCHIDServiceInfo *)self isEqualToHIDServiceInfo:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(NSNumber *)self->_registryID isEqual:v4];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (NSString)debugDescription
{
  v3 = [(NSNumber *)self->_registryID longLongValue];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@ %p registryID='%#010llx'>", v6, self, v3];

  return v7;
}

- (id)propertyForKey:(id)a3
{
  functions = self->_functions;
  if (functions)
  {
    v4 = (functions->var1)(self->_service, a3);
  }

  else
  {
    v4 = MEMORY[0x1E696CD20](self->_service, a3);
  }

  return v4;
}

- (id)propertyForKey:(id)a3 ofClass:(Class)a4
{
  v5 = [(GCHIDServiceInfo *)self propertyForKey:a3];
  v6 = v5;
  if (a4 && v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

- (id)stringPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(GCHIDServiceInfo *)self propertyForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)numberPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(GCHIDServiceInfo *)self propertyForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)dictionaryPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(GCHIDServiceInfo *)self propertyForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (void)initWithService:(uint64_t)a1 queue:(uint64_t)a2 functions:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCHIDServiceInfo.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %s", "service != NULL"}];
}

- (void)initWithService:(uint64_t)a1 queue:(uint64_t)a2 functions:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCHIDServiceInfo.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %s", "hidSystemClientQueue != NULL"}];
}

@end
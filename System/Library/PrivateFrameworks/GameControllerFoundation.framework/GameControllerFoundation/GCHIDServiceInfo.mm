@interface GCHIDServiceInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHIDServiceInfo:(id)info;
- (GCHIDServiceInfo)initWithService:(__IOHIDServiceClient *)service queue:(id)queue functions:(const GCHIDServiceClientFunctions *)functions;
- (NSString)debugDescription;
- (id)dictionaryPropertyForKey:(id)key;
- (id)numberPropertyForKey:(id)key;
- (id)propertyForKey:(id)key;
- (id)propertyForKey:(id)key ofClass:(Class)class;
- (id)stringPropertyForKey:(id)key;
- (void)dealloc;
@end

@implementation GCHIDServiceInfo

- (GCHIDServiceInfo)initWithService:(__IOHIDServiceClient *)service queue:(id)queue functions:(const GCHIDServiceClientFunctions *)functions
{
  queueCopy = queue;
  v11 = queueCopy;
  if (service)
  {
    if (queueCopy)
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
  v12->_functions = functions;
  objc_storeStrong(&v12->_queue, queue);
  v12->_service = CFRetain(service);
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

- (BOOL)isEqualToHIDServiceInfo:(id)info
{
  registryID = self->_registryID;
  registryID = [info registryID];
  LOBYTE(registryID) = [(NSNumber *)registryID isEqual:registryID];

  return registryID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GCHIDServiceInfo *)self isEqualToHIDServiceInfo:equalCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(NSNumber *)self->_registryID isEqual:equalCopy];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (NSString)debugDescription
{
  longLongValue = [(NSNumber *)self->_registryID longLongValue];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@ %p registryID='%#010llx'>", v6, self, longLongValue];

  return v7;
}

- (id)propertyForKey:(id)key
{
  functions = self->_functions;
  if (functions)
  {
    v4 = (functions->var1)(self->_service, key);
  }

  else
  {
    v4 = MEMORY[0x1E696CD20](self->_service, key);
  }

  return v4;
}

- (id)propertyForKey:(id)key ofClass:(Class)class
{
  v5 = [(GCHIDServiceInfo *)self propertyForKey:key];
  v6 = v5;
  if (class && v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

- (id)stringPropertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(GCHIDServiceInfo *)self propertyForKey:keyCopy ofClass:objc_opt_class()];

  return v5;
}

- (id)numberPropertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(GCHIDServiceInfo *)self propertyForKey:keyCopy ofClass:objc_opt_class()];

  return v5;
}

- (id)dictionaryPropertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(GCHIDServiceInfo *)self propertyForKey:keyCopy ofClass:objc_opt_class()];

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
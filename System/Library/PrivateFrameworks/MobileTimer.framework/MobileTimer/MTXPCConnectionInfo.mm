@interface MTXPCConnectionInfo
+ (id)infoForMachServiceName:(id)name remoteObjectInterface:(id)interface exportedObject:(id)object exportedObjectInterface:(id)objectInterface lifecycleNotification:(id)notification requiredEntitlement:(id)entitlement options:(unint64_t)options;
- (MTXPCConnectionInfo)initWithMachServiceName:(id)name remoteObjectInterface:(id)interface exportedObject:(id)object exportedObjectInterface:(id)objectInterface lifecycleNotification:(id)notification requiredEntitlement:(id)entitlement options:(unint64_t)options;
- (id)description;
@end

@implementation MTXPCConnectionInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  machServiceName = [(MTXPCConnectionInfo *)self machServiceName];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, machServiceName];

  return v6;
}

+ (id)infoForMachServiceName:(id)name remoteObjectInterface:(id)interface exportedObject:(id)object exportedObjectInterface:(id)objectInterface lifecycleNotification:(id)notification requiredEntitlement:(id)entitlement options:(unint64_t)options
{
  entitlementCopy = entitlement;
  notificationCopy = notification;
  objectInterfaceCopy = objectInterface;
  objectCopy = object;
  interfaceCopy = interface;
  nameCopy = name;
  v20 = [objc_alloc(objc_opt_class()) initWithMachServiceName:nameCopy remoteObjectInterface:interfaceCopy exportedObject:objectCopy exportedObjectInterface:objectInterfaceCopy lifecycleNotification:notificationCopy requiredEntitlement:entitlementCopy options:0];

  return v20;
}

- (MTXPCConnectionInfo)initWithMachServiceName:(id)name remoteObjectInterface:(id)interface exportedObject:(id)object exportedObjectInterface:(id)objectInterface lifecycleNotification:(id)notification requiredEntitlement:(id)entitlement options:(unint64_t)options
{
  nameCopy = name;
  interfaceCopy = interface;
  objectCopy = object;
  objectInterfaceCopy = objectInterface;
  notificationCopy = notification;
  entitlementCopy = entitlement;
  if (objectCopy)
  {
    [objectInterfaceCopy protocol];
    v20 = v34 = nameCopy;
    v21 = [objectCopy conformsToProtocol:v20];

    nameCopy = v34;
    if ((v21 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      protocol = [objectInterfaceCopy protocol];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MTXPCConnectionInfo.m" lineNumber:62 description:{@"exportedObject: %@ must conform to protocol: %@", objectCopy, protocol}];

      v32 = MTLogForCategory(2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [MTXPCConnectionInfo initWithMachServiceName:objectCopy remoteObjectInterface:objectInterfaceCopy exportedObject:v32 exportedObjectInterface:? lifecycleNotification:? requiredEntitlement:? options:?];
      }

      nameCopy = v34;
    }
  }

  v36.receiver = self;
  v36.super_class = MTXPCConnectionInfo;
  v22 = [(MTXPCConnectionInfo *)&v36 init];
  if (v22)
  {
    v23 = [nameCopy copy];
    machServiceName = v22->_machServiceName;
    v22->_machServiceName = v23;

    objc_storeStrong(&v22->_remoteObjectInterface, interface);
    objc_storeStrong(&v22->_exportedObject, object);
    objc_storeStrong(&v22->_exportedObjectInterface, objectInterface);
    v25 = [notificationCopy copy];
    lifecycleNotification = v22->_lifecycleNotification;
    v22->_lifecycleNotification = v25;

    v27 = [entitlementCopy copy];
    requiredEntitlement = v22->_requiredEntitlement;
    v22->_requiredEntitlement = v27;

    v22->_options = options;
  }

  return v22;
}

- (void)initWithMachServiceName:(NSObject *)a3 remoteObjectInterface:exportedObject:exportedObjectInterface:lifecycleNotification:requiredEntitlement:options:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 protocol];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1B1F9F000, a3, OS_LOG_TYPE_ERROR, "exportedObject: %{public}@ must conform to protocol: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end
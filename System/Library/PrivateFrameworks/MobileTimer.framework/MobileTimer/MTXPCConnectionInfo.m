@interface MTXPCConnectionInfo
+ (id)infoForMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObject:(id)a5 exportedObjectInterface:(id)a6 lifecycleNotification:(id)a7 requiredEntitlement:(id)a8 options:(unint64_t)a9;
- (MTXPCConnectionInfo)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObject:(id)a5 exportedObjectInterface:(id)a6 lifecycleNotification:(id)a7 requiredEntitlement:(id)a8 options:(unint64_t)a9;
- (id)description;
@end

@implementation MTXPCConnectionInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTXPCConnectionInfo *)self machServiceName];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

+ (id)infoForMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObject:(id)a5 exportedObjectInterface:(id)a6 lifecycleNotification:(id)a7 requiredEntitlement:(id)a8 options:(unint64_t)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [objc_alloc(objc_opt_class()) initWithMachServiceName:v19 remoteObjectInterface:v18 exportedObject:v17 exportedObjectInterface:v16 lifecycleNotification:v15 requiredEntitlement:v14 options:0];

  return v20;
}

- (MTXPCConnectionInfo)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedObject:(id)a5 exportedObjectInterface:(id)a6 lifecycleNotification:(id)a7 requiredEntitlement:(id)a8 options:(unint64_t)a9
{
  v15 = a3;
  v35 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v16)
  {
    [v17 protocol];
    v20 = v34 = v15;
    v21 = [v16 conformsToProtocol:v20];

    v15 = v34;
    if ((v21 & 1) == 0)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [v17 protocol];
      [v30 handleFailureInMethod:a2 object:self file:@"MTXPCConnectionInfo.m" lineNumber:62 description:{@"exportedObject: %@ must conform to protocol: %@", v16, v31}];

      v32 = MTLogForCategory(2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [MTXPCConnectionInfo initWithMachServiceName:v16 remoteObjectInterface:v17 exportedObject:v32 exportedObjectInterface:? lifecycleNotification:? requiredEntitlement:? options:?];
      }

      v15 = v34;
    }
  }

  v36.receiver = self;
  v36.super_class = MTXPCConnectionInfo;
  v22 = [(MTXPCConnectionInfo *)&v36 init];
  if (v22)
  {
    v23 = [v15 copy];
    machServiceName = v22->_machServiceName;
    v22->_machServiceName = v23;

    objc_storeStrong(&v22->_remoteObjectInterface, a4);
    objc_storeStrong(&v22->_exportedObject, a5);
    objc_storeStrong(&v22->_exportedObjectInterface, a6);
    v25 = [v18 copy];
    lifecycleNotification = v22->_lifecycleNotification;
    v22->_lifecycleNotification = v25;

    v27 = [v19 copy];
    requiredEntitlement = v22->_requiredEntitlement;
    v22->_requiredEntitlement = v27;

    v22->_options = a9;
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
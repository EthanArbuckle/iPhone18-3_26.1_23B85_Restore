@interface DAEditPropertyAction
- (DAEditPropertyAction)initWithChangedItem:(id)a3 propertyName:(id)a4 value:(id)a5 propertyNamespace:(id)a6 serverId:(id)a7;
- (DAEditPropertyAction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAEditPropertyAction

- (DAEditPropertyAction)initWithChangedItem:(id)a3 propertyName:(id)a4 value:(id)a5 propertyNamespace:(id)a6 serverId:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = DAEditPropertyAction;
  v16 = [(DAAction *)&v19 initWithItemChangeType:10 changedItem:a3 serverId:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_propertyName, a4);
    objc_storeStrong(&v17->_propertyNamespace, a6);
    objc_storeStrong(&v17->_value, a5);
  }

  return v17;
}

- (DAEditPropertyAction)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [DAEditPropertyAction initWithCoder:];
  }

  v13.receiver = self;
  v13.super_class = DAEditPropertyAction;
  v5 = [(DAAction *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAPropertyName"];
    propertyName = v5->_propertyName;
    v5->_propertyName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAPropertyNamespace"];
    propertyNamespace = v5->_propertyNamespace;
    v5->_propertyNamespace = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DAPropertyValue"];
    value = v5->_value;
    v5->_value = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [DAEditPropertyAction encodeWithCoder:];
  }

  v8.receiver = self;
  v8.super_class = DAEditPropertyAction;
  [(DAAction *)&v8 encodeWithCoder:v4];
  v5 = [(DAEditPropertyAction *)self value];
  [v4 encodeObject:v5 forKey:@"DAPropertyValue"];

  v6 = [(DAEditPropertyAction *)self propertyNamespace];
  [v4 encodeObject:v6 forKey:@"DAPropertyNamespace"];

  v7 = [(DAEditPropertyAction *)self propertyName];
  [v4 encodeObject:v7 forKey:@"DAPropertyName"];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
@interface DAEditPropertyAction
- (DAEditPropertyAction)initWithChangedItem:(id)item propertyName:(id)name value:(id)value propertyNamespace:(id)namespace serverId:(id)id;
- (DAEditPropertyAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAEditPropertyAction

- (DAEditPropertyAction)initWithChangedItem:(id)item propertyName:(id)name value:(id)value propertyNamespace:(id)namespace serverId:(id)id
{
  nameCopy = name;
  valueCopy = value;
  namespaceCopy = namespace;
  v19.receiver = self;
  v19.super_class = DAEditPropertyAction;
  v16 = [(DAAction *)&v19 initWithItemChangeType:10 changedItem:item serverId:id];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_propertyName, name);
    objc_storeStrong(&v17->_propertyNamespace, namespace);
    objc_storeStrong(&v17->_value, value);
  }

  return v17;
}

- (DAEditPropertyAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAEditPropertyAction initWithCoder:];
  }

  v13.receiver = self;
  v13.super_class = DAEditPropertyAction;
  v5 = [(DAAction *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAPropertyName"];
    propertyName = v5->_propertyName;
    v5->_propertyName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAPropertyNamespace"];
    propertyNamespace = v5->_propertyNamespace;
    v5->_propertyNamespace = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DAPropertyValue"];
    value = v5->_value;
    v5->_value = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [DAEditPropertyAction encodeWithCoder:];
  }

  v8.receiver = self;
  v8.super_class = DAEditPropertyAction;
  [(DAAction *)&v8 encodeWithCoder:coderCopy];
  value = [(DAEditPropertyAction *)self value];
  [coderCopy encodeObject:value forKey:@"DAPropertyValue"];

  propertyNamespace = [(DAEditPropertyAction *)self propertyNamespace];
  [coderCopy encodeObject:propertyNamespace forKey:@"DAPropertyNamespace"];

  propertyName = [(DAEditPropertyAction *)self propertyName];
  [coderCopy encodeObject:propertyName forKey:@"DAPropertyName"];
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
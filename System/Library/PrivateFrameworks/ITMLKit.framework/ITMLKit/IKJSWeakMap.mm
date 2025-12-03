@interface IKJSWeakMap
- (IKJSWeakMap)initWithAppContext:(id)context;
- (OpaqueJSValue)valueRefForWeakKeyRef:(OpaqueJSValue *)ref;
- (id)_jsWeakMap;
- (id)valueForWeakKey:(id)key;
- (void)setValue:(id)value forWeakKey:(id)key;
@end

@implementation IKJSWeakMap

- (IKJSWeakMap)initWithAppContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = IKJSWeakMap;
  v5 = [(IKJSObject *)&v14 initWithAppContext:contextCopy];
  if (v5)
  {
    jsContext = [contextCopy jsContext];
    v7 = [jsContext objectForKeyedSubscript:@"WeakMap"];
    v8 = [v7 constructWithArguments:MEMORY[0x277CBEBF8]];

    v9 = MEMORY[0x277CD4650];
    jsApp = [contextCopy jsApp];
    v11 = [v9 managedValueWithValue:v8 andOwner:jsApp];
    managedWeakMap = v5->_managedWeakMap;
    v5->_managedWeakMap = v11;
  }

  return v5;
}

- (void)setValue:(id)value forWeakKey:(id)key
{
  v12[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  _jsWeakMap = [(IKJSWeakMap *)self _jsWeakMap];
  v12[0] = keyCopy;
  v12[1] = valueCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = [_jsWeakMap invokeMethod:@"set" withArguments:v9];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)valueForWeakKey:(id)key
{
  v10[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  _jsWeakMap = [(IKJSWeakMap *)self _jsWeakMap];
  v10[0] = keyCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = [_jsWeakMap invokeMethod:@"get" withArguments:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (OpaqueJSValue)valueRefForWeakKeyRef:(OpaqueJSValue *)ref
{
  v16[1] = *MEMORY[0x277D85DE8];
  appContext = [(IKJSObject *)self appContext];
  jsContext = [appContext jsContext];

  jSGlobalContextRef = [jsContext JSGlobalContextRef];
  _jsWeakMap = [(IKJSWeakMap *)self _jsWeakMap];
  v9 = JSValueToObject(jSGlobalContextRef, [_jsWeakMap JSValueRef], 0);

  v10 = JSStringCreateWithCFString(@"get");
  Property = JSObjectGetProperty(jSGlobalContextRef, v9, v10, 0);
  v12 = JSValueToObject(jSGlobalContextRef, Property, 0);
  JSStringRelease(v10);
  v16[0] = ref;
  v13 = JSObjectCallAsFunction(jSGlobalContextRef, v12, v9, 1uLL, v16, 0);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_jsWeakMap
{
  managedWeakMap = [(IKJSWeakMap *)self managedWeakMap];
  value = [managedWeakMap value];

  return value;
}

@end
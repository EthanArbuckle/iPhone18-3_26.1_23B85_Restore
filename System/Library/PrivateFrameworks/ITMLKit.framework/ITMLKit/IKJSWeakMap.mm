@interface IKJSWeakMap
- (IKJSWeakMap)initWithAppContext:(id)a3;
- (OpaqueJSValue)valueRefForWeakKeyRef:(OpaqueJSValue *)a3;
- (id)_jsWeakMap;
- (id)valueForWeakKey:(id)a3;
- (void)setValue:(id)a3 forWeakKey:(id)a4;
@end

@implementation IKJSWeakMap

- (IKJSWeakMap)initWithAppContext:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IKJSWeakMap;
  v5 = [(IKJSObject *)&v14 initWithAppContext:v4];
  if (v5)
  {
    v6 = [v4 jsContext];
    v7 = [v6 objectForKeyedSubscript:@"WeakMap"];
    v8 = [v7 constructWithArguments:MEMORY[0x277CBEBF8]];

    v9 = MEMORY[0x277CD4650];
    v10 = [v4 jsApp];
    v11 = [v9 managedValueWithValue:v8 andOwner:v10];
    managedWeakMap = v5->_managedWeakMap;
    v5->_managedWeakMap = v11;
  }

  return v5;
}

- (void)setValue:(id)a3 forWeakKey:(id)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(IKJSWeakMap *)self _jsWeakMap];
  v12[0] = v6;
  v12[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = [v8 invokeMethod:@"set" withArguments:v9];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)valueForWeakKey:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IKJSWeakMap *)self _jsWeakMap];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = [v5 invokeMethod:@"get" withArguments:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (OpaqueJSValue)valueRefForWeakKeyRef:(OpaqueJSValue *)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = [(IKJSObject *)self appContext];
  v6 = [v5 jsContext];

  v7 = [v6 JSGlobalContextRef];
  v8 = [(IKJSWeakMap *)self _jsWeakMap];
  v9 = JSValueToObject(v7, [v8 JSValueRef], 0);

  v10 = JSStringCreateWithCFString(@"get");
  Property = JSObjectGetProperty(v7, v9, v10, 0);
  v12 = JSValueToObject(v7, Property, 0);
  JSStringRelease(v10);
  v16[0] = a3;
  v13 = JSObjectCallAsFunction(v7, v12, v9, 1uLL, v16, 0);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_jsWeakMap
{
  v2 = [(IKJSWeakMap *)self managedWeakMap];
  v3 = [v2 value];

  return v3;
}

@end
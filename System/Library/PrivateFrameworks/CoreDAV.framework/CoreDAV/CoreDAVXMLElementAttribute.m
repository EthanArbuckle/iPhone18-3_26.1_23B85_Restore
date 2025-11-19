@interface CoreDAVXMLElementAttribute
- (CoreDAVXMLElementAttribute)initWithNameSpace:(id)a3 name:(id)a4 value:(id)a5;
- (id)description;
@end

@implementation CoreDAVXMLElementAttribute

- (CoreDAVXMLElementAttribute)initWithNameSpace:(id)a3 name:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9 || (v11 = v10, ![v9 length]))
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Non-nil and non-empty 'name' required." userInfo:0];
    objc_exception_throw(v15);
  }

  v16.receiver = self;
  v16.super_class = CoreDAVXMLElementAttribute;
  v12 = [(CoreDAVXMLElementAttribute *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(CoreDAVXMLElementAttribute *)v12 setNameSpace:v8];
    [(CoreDAVXMLElementAttribute *)v13 setName:v9];
    [(CoreDAVXMLElementAttribute *)v13 setValue:v11];
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CoreDAVXMLElementAttribute;
  v4 = [(CoreDAVXMLElementAttribute *)&v10 description];
  v5 = [(CoreDAVXMLElementAttribute *)self nameSpace];
  v6 = [(CoreDAVXMLElementAttribute *)self name];
  v7 = [(CoreDAVXMLElementAttribute *)self value];
  v8 = [v3 stringWithFormat:@"[%@], namespace: [%@], name: [%@], value: [%@]", v4, v5, v6, v7];

  return v8;
}

@end
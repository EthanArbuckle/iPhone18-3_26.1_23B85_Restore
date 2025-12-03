@interface CoreDAVXMLElementAttribute
- (CoreDAVXMLElementAttribute)initWithNameSpace:(id)space name:(id)name value:(id)value;
- (id)description;
@end

@implementation CoreDAVXMLElementAttribute

- (CoreDAVXMLElementAttribute)initWithNameSpace:(id)space name:(id)name value:(id)value
{
  spaceCopy = space;
  nameCopy = name;
  valueCopy = value;
  if (!nameCopy || (v11 = valueCopy, ![nameCopy length]))
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
    [(CoreDAVXMLElementAttribute *)v12 setNameSpace:spaceCopy];
    [(CoreDAVXMLElementAttribute *)v13 setName:nameCopy];
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
  nameSpace = [(CoreDAVXMLElementAttribute *)self nameSpace];
  name = [(CoreDAVXMLElementAttribute *)self name];
  value = [(CoreDAVXMLElementAttribute *)self value];
  v8 = [v3 stringWithFormat:@"[%@], namespace: [%@], name: [%@], value: [%@]", v4, nameSpace, name, value];

  return v8;
}

@end
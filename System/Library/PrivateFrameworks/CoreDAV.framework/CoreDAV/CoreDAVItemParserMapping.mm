@interface CoreDAVItemParserMapping
- (CoreDAVItemParserMapping)initWithNameSpace:(id)space name:(id)name parseClass:(Class)class;
- (id)description;
@end

@implementation CoreDAVItemParserMapping

- (CoreDAVItemParserMapping)initWithNameSpace:(id)space name:(id)name parseClass:(Class)class
{
  spaceCopy = space;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = CoreDAVItemParserMapping;
  v11 = [(CoreDAVItemParserMapping *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_nameSpace, space);
    objc_storeStrong(&v12->_name, name);
    v12->_parseClass = class;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CoreDAVItemParserMapping;
  v4 = [(CoreDAVItemParserMapping *)&v10 description];
  nameSpace = [(CoreDAVItemParserMapping *)self nameSpace];
  name = [(CoreDAVItemParserMapping *)self name];
  v7 = NSStringFromClass([(CoreDAVItemParserMapping *)self parseClass]);
  v8 = [v3 stringWithFormat:@"[%@], namespace: [%@], name: [%@] parse class: [%@]", v4, nameSpace, name, v7];

  return v8;
}

@end
@interface CoreDAVItemParserMapping
- (CoreDAVItemParserMapping)initWithNameSpace:(id)a3 name:(id)a4 parseClass:(Class)a5;
- (id)description;
@end

@implementation CoreDAVItemParserMapping

- (CoreDAVItemParserMapping)initWithNameSpace:(id)a3 name:(id)a4 parseClass:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CoreDAVItemParserMapping;
  v11 = [(CoreDAVItemParserMapping *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_nameSpace, a3);
    objc_storeStrong(&v12->_name, a4);
    v12->_parseClass = a5;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CoreDAVItemParserMapping;
  v4 = [(CoreDAVItemParserMapping *)&v10 description];
  v5 = [(CoreDAVItemParserMapping *)self nameSpace];
  v6 = [(CoreDAVItemParserMapping *)self name];
  v7 = NSStringFromClass([(CoreDAVItemParserMapping *)self parseClass]);
  v8 = [v3 stringWithFormat:@"[%@], namespace: [%@], name: [%@] parse class: [%@]", v4, v5, v6, v7];

  return v8;
}

@end
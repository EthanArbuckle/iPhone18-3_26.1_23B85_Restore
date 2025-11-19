@interface CoreDAVExpandProperty
- (CoreDAVExpandProperty)initWithPropertiesToFind:(id)a3 expandedName:(id)a4 expandedNameSpace:(id)a5;
@end

@implementation CoreDAVExpandProperty

- (CoreDAVExpandProperty)initWithPropertiesToFind:(id)a3 expandedName:(id)a4 expandedNameSpace:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CoreDAVExpandProperty;
  v12 = [(CoreDAVExpandProperty *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_propertiesToFind, a3);
    objc_storeStrong(&v13->_expandedName, a4);
    objc_storeStrong(&v13->_expandedNameSpace, a5);
  }

  return v13;
}

@end
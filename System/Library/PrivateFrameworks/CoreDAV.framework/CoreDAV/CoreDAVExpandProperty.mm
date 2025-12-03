@interface CoreDAVExpandProperty
- (CoreDAVExpandProperty)initWithPropertiesToFind:(id)find expandedName:(id)name expandedNameSpace:(id)space;
@end

@implementation CoreDAVExpandProperty

- (CoreDAVExpandProperty)initWithPropertiesToFind:(id)find expandedName:(id)name expandedNameSpace:(id)space
{
  findCopy = find;
  nameCopy = name;
  spaceCopy = space;
  v15.receiver = self;
  v15.super_class = CoreDAVExpandProperty;
  v12 = [(CoreDAVExpandProperty *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_propertiesToFind, find);
    objc_storeStrong(&v13->_expandedName, name);
    objc_storeStrong(&v13->_expandedNameSpace, space);
  }

  return v13;
}

@end
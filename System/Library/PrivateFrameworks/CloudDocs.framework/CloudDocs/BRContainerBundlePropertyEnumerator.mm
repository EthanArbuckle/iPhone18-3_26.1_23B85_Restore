@interface BRContainerBundlePropertyEnumerator
- (BRContainerBundlePropertyEnumerator)initWithContainerPlist:(id)plist propertyKey:(id)key valuesOfClass:(Class)class;
- (id)nextObject;
@end

@implementation BRContainerBundlePropertyEnumerator

- (BRContainerBundlePropertyEnumerator)initWithContainerPlist:(id)plist propertyKey:(id)key valuesOfClass:(Class)class
{
  plistCopy = plist;
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = BRContainerBundlePropertyEnumerator;
  v11 = [(BRContainerBundlePropertyEnumerator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_plist, plist);
    v13 = [[BRContainerBundleIdentifiersEnumerator alloc] initWithContainerPlist:plistCopy];
    enumerator = v12->_enumerator;
    v12->_enumerator = &v13->super;

    objc_storeStrong(&v12->_propertyKey, key);
    v12->_valueClass = class;
  }

  return v12;
}

- (id)nextObject
{
  nextObject = [(NSEnumerator *)self->_enumerator nextObject];
  if (!nextObject)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    v4 = [(NSDictionary *)self->_plist objectForKey:nextObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_5:

    nextObject2 = [(NSEnumerator *)self->_enumerator nextObject];

    nextObject = nextObject2;
    if (!nextObject2)
    {
      goto LABEL_6;
    }
  }

  v5 = [v4 objectForKey:self->_propertyKey];
  valueClass = self->_valueClass;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

LABEL_8:

  return v5;
}

@end
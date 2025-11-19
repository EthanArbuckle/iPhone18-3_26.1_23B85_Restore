@interface NSObject(NTKIntrospection)
- (id)ntk_listOfDynamicProperties;
- (id)ntk_listOfProperties;
@end

@implementation NSObject(NTKIntrospection)

- (id)ntk_listOfProperties
{
  outCount = 0;
  v0 = objc_opt_class();
  v1 = class_copyPropertyList(v0, &outCount);
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v4 = v1[i];
      Name = property_getName(v4);
      if (Name)
      {
        v6 = Name;
        v11 = 0;
        v7 = getObjectType(v4, &v11);
        v8 = objc_alloc_init(NTKObjectPropertyInfo);
        v9 = [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
        [(NTKObjectPropertyInfo *)v8 setName:v9];

        if (v7)
        {
          [(NTKObjectPropertyInfo *)v8 setTypeString:v7];
        }

        [(NTKObjectPropertyInfo *)v8 setIsDynamic:v11];
        [v2 addObject:v8];
      }
    }
  }

  free(v1);

  return v2;
}

- (id)ntk_listOfDynamicProperties
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [a1 ntk_listOfProperties];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__NSObject_NTKIntrospection__ntk_listOfDynamicProperties__block_invoke;
  v6[3] = &unk_278786950;
  v4 = v2;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];

  return v4;
}

@end
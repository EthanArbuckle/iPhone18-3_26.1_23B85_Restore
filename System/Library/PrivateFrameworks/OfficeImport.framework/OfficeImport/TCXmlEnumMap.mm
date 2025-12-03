@interface TCXmlEnumMap
- (BOOL)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name value:(int64_t *)value;
- (TCXmlEnumMap)initWithDescriptions:(const TCXmlEnumDescription *)descriptions;
- (int64_t)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name;
- (int64_t)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name def:(int64_t)def;
- (void)dealloc;
@end

@implementation TCXmlEnumMap

- (TCXmlEnumMap)initWithDescriptions:(const TCXmlEnumDescription *)descriptions
{
  Mutable = CFDictionaryCreateMutable(0, 10, &TCXmlStringKeyCallBacks, 0);
  self->mNameToValueMap = Mutable;
  if (Mutable)
  {
    for (i = descriptions->var1; i; ++descriptions)
    {
      CFDictionaryAddValue(self->mNameToValueMap, i, descriptions->var0);
      i = descriptions[1].var1;
    }
  }

  return self;
}

- (void)dealloc
{
  CFRelease(self->mNameToValueMap);
  v3.receiver = self;
  v3.super_class = TCXmlEnumMap;
  [(TCXmlEnumMap *)&v3 dealloc];
}

- (BOOL)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name value:(int64_t *)value
{
  NsProp = xmlGetNsProp(node, name, ns);
  if (NsProp)
  {
    value = 0;
    mNameToValueMap = self->mNameToValueMap;
    if (mNameToValueMap && CFDictionaryGetValueIfPresent(mNameToValueMap, NsProp, &value))
    {
      *value = value;
    }

    else
    {
      nsProp = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute %s has bad value: %s", name, NsProp];
      free(NsProp);
      [objc_msgSend(MEMORY[0x277CBEAD8] exceptionWithName:@"TCXmlException" reason:nsProp userInfo:{0), "raise"}];
    }

    free(NsProp);
  }

  return NsProp != 0;
}

- (int64_t)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name
{
  v7 = 0;
  if (![(TCXmlEnumMap *)self readFromNode:node ns:ns name:name value:&v7])
  {
    [MEMORY[0x277CBEAD8] raise:@"TCXmlException" format:{@"Couldn't find attribute: %s", name}];
  }

  return v7;
}

- (int64_t)readFromNode:(_xmlNode *)node ns:(const char *)ns name:(const char *)name def:(int64_t)def
{
  v8 = 0;
  if ([(TCXmlEnumMap *)self readFromNode:node ns:ns name:name value:&v8])
  {
    return v8;
  }

  else
  {
    return def;
  }
}

@end
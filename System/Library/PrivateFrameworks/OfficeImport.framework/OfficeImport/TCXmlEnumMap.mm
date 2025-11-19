@interface TCXmlEnumMap
- (BOOL)readFromNode:(_xmlNode *)a3 ns:(const char *)a4 name:(const char *)a5 value:(int64_t *)a6;
- (TCXmlEnumMap)initWithDescriptions:(const TCXmlEnumDescription *)a3;
- (int64_t)readFromNode:(_xmlNode *)a3 ns:(const char *)a4 name:(const char *)a5;
- (int64_t)readFromNode:(_xmlNode *)a3 ns:(const char *)a4 name:(const char *)a5 def:(int64_t)a6;
- (void)dealloc;
@end

@implementation TCXmlEnumMap

- (TCXmlEnumMap)initWithDescriptions:(const TCXmlEnumDescription *)a3
{
  Mutable = CFDictionaryCreateMutable(0, 10, &TCXmlStringKeyCallBacks, 0);
  self->mNameToValueMap = Mutable;
  if (Mutable)
  {
    for (i = a3->var1; i; ++a3)
    {
      CFDictionaryAddValue(self->mNameToValueMap, i, a3->var0);
      i = a3[1].var1;
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

- (BOOL)readFromNode:(_xmlNode *)a3 ns:(const char *)a4 name:(const char *)a5 value:(int64_t *)a6
{
  NsProp = xmlGetNsProp(a3, a5, a4);
  if (NsProp)
  {
    value = 0;
    mNameToValueMap = self->mNameToValueMap;
    if (mNameToValueMap && CFDictionaryGetValueIfPresent(mNameToValueMap, NsProp, &value))
    {
      *a6 = value;
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute %s has bad value: %s", a5, NsProp];
      free(NsProp);
      [objc_msgSend(MEMORY[0x277CBEAD8] exceptionWithName:@"TCXmlException" reason:v11 userInfo:{0), "raise"}];
    }

    free(NsProp);
  }

  return NsProp != 0;
}

- (int64_t)readFromNode:(_xmlNode *)a3 ns:(const char *)a4 name:(const char *)a5
{
  v7 = 0;
  if (![(TCXmlEnumMap *)self readFromNode:a3 ns:a4 name:a5 value:&v7])
  {
    [MEMORY[0x277CBEAD8] raise:@"TCXmlException" format:{@"Couldn't find attribute: %s", a5}];
  }

  return v7;
}

- (int64_t)readFromNode:(_xmlNode *)a3 ns:(const char *)a4 name:(const char *)a5 def:(int64_t)a6
{
  v8 = 0;
  if ([(TCXmlEnumMap *)self readFromNode:a3 ns:a4 name:a5 value:&v8])
  {
    return v8;
  }

  else
  {
    return a6;
  }
}

@end
@interface OAXColorTransform
+ (id)colorTransformTypeEnumMap;
+ (id)readColorTransformsFromXmlNode:(_xmlNode *)node;
+ (void)write:(id)write to:(id)to;
@end

@implementation OAXColorTransform

+ (id)colorTransformTypeEnumMap
{
  if (+[OAXColorTransform(Private) colorTransformTypeEnumMap]::once != -1)
  {
    +[OAXColorTransform(Private) colorTransformTypeEnumMap];
  }

  v3 = +[OAXColorTransform(Private) colorTransformTypeEnumMap]::colorTransformTypeEnumMap;

  return v3;
}

+ (id)readColorTransformsFromXmlNode:(_xmlNode *)node
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE && i->name)
    {
      v7 = [MEMORY[0x277CCACA8] tc_stringWithXmlString:?];
      colorTransformTypeEnumMap = [self colorTransformTypeEnumMap];
      v9 = [colorTransformTypeEnumMap valueForString:v7];

      p_super = 0;
      if (v9 <= 0x1C)
      {
        v11 = 1 << v9;
        if (((1 << v9) & 0x7FFF9F0) != 0)
        {
          v12 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:v9];
          [OAXBaseTypes readRequiredFractionFromXmlNode:i name:"val"];
          [(OADValueColorTransform *)v12 setValue:?];
          goto LABEL_8;
        }

        if ((v11 & 0x1800000E) != 0)
        {
          p_super = [[OADColorTransform alloc] initWithType:v9];
          if (!p_super)
          {
            goto LABEL_10;
          }

LABEL_9:
          [v5 addObject:p_super];
        }

        else if ((v11 & 0x600) != 0)
        {
          v12 = [(OADColorTransform *)[OADValueColorTransform alloc] initWithType:v9];
          [OAXBaseTypes readRequiredAngleFromXmlNode:i name:"val"];
          *&v13 = v13;
          [(OADValueColorTransform *)v12 setValue:v13];
LABEL_8:
          p_super = &v12->super;
          if (v12)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_10:

      continue;
    }
  }

  return v5;
}

+ (void)write:(id)write to:(id)to
{
  v31 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  toCopy = to;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = writeCopy;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        type = [v11 type];
        colorTransformTypeEnumMap = [self colorTransformTypeEnumMap];
        v14 = [colorTransformTypeEnumMap stringForValue:type];

        [toCopy startOAElement:v14];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v16 = 0.0;
        v17 = 0.0;
        if (isKindOfClass)
        {
          objc_opt_class();
          v18 = v11;
          [v18 value];
          v20 = v19;

          v17 = v20;
        }

        if ((type - 4) <= 0x16)
        {
          v16 = dbl_25D6FB638[(type - 4)];
        }

        v21 = v17 * v16;
        *&v21 = v21;
        v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
        longValue = [v22 longValue];

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
        [toCopy writeOAAttribute:@"val" content:v24];

        [toCopy endElement];
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }
}

void __55__OAXColorTransform_Private__colorTransformTypeEnumMap__block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ55__OAXColorTransform_Private__colorTransformTypeEnumMap_EUb_E29colorTransformTypeEnumStructs, memory_order_acquire) & 1) == 0)
  {
    __55__OAXColorTransform_Private__colorTransformTypeEnumMap__block_invoke_cold_1();
  }

  v0 = [[TCEnumerationMap alloc] initWithStructs:&_ZZZ55__OAXColorTransform_Private__colorTransformTypeEnumMap_EUb_E29colorTransformTypeEnumStructs count:28 caseSensitive:1];
  v1 = +[OAXColorTransform(Private) colorTransformTypeEnumMap]::colorTransformTypeEnumMap;
  +[OAXColorTransform(Private) colorTransformTypeEnumMap]::colorTransformTypeEnumMap = v0;
}

void __55__OAXColorTransform_Private__colorTransformTypeEnumMap__block_invoke_cold_1()
{
  if (__cxa_guard_acquire(&_ZGVZZ55__OAXColorTransform_Private__colorTransformTypeEnumMap_EUb_E29colorTransformTypeEnumStructs))
  {
    __cxa_atexit(__cxx_global_array_dtor_5, 0, &dword_25D297000);

    __cxa_guard_release(&_ZGVZZ55__OAXColorTransform_Private__colorTransformTypeEnumMap_EUb_E29colorTransformTypeEnumStructs);
  }
}

@end
@interface EXColorReference
+ (id)autoColorWithCallerClass:(Class)class resources:(id)resources;
+ (id)edColorReferenceFromXmlColorElement:(_xmlNode *)element callerClass:(Class)class state:(id)state;
@end

@implementation EXColorReference

+ (id)edColorReferenceFromXmlColorElement:(_xmlNode *)element callerClass:(Class)class state:(id)state
{
  resources = [state resources];
  if (element)
  {
    v19 = 0;
    if (CXOptionalUnsignedLongAttribute(element, CXNoNamespace, "indexed", &v19))
    {
      v9 = [EDColorReference colorReferenceWithColorIndex:v19 resources:resources];
    }

    else
    {
      v18 = 0.0;
      CXOptionalDoubleAttribute(element, CXNoNamespace, "tint", &v18);
      if (!CXOptionalUnsignedLongAttribute(element, CXNoNamespace, "theme", &v19))
      {
        v17 = 0;
        v12 = CXOptionalStringAttribute(element, CXNoNamespace, "rgb", &v17);
        v13 = v17;
        if (v12)
        {
          v14 = [MEMORY[0x277CCAC80] scannerWithString:v13];
          [v14 scanHexInt:&v19];
          v15 = [OITSUColor colorWithRGBValue:v19];
          v10 = [EDColorReference colorReferenceWithColor:v15 resources:resources];
        }

        else
        {
          v16 = 0;
          CXOptionalBoolAttribute(element, CXNoNamespace, "auto", &v16);
          if (v16)
          {
            v10 = [self autoColorWithCallerClass:class resources:resources];
          }

          else
          {
            v10 = 0;
          }
        }

        goto LABEL_8;
      }

      v9 = [EDColorReference colorReferenceWithThemeIndex:v19 tint:resources resources:v18];
    }
  }

  else
  {
    v9 = [self autoColorWithCallerClass:class resources:resources];
  }

  v10 = v9;
LABEL_8:

  return v10;
}

+ (id)autoColorWithCallerClass:(Class)class resources:(id)resources
{
  resourcesCopy = resources;
  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    v6 = 13;
  }

  else if ([(objc_class *)class isEqual:objc_opt_class()])
  {
    v6 = 11;
  }

  else
  {
    v6 = 33;
  }

  v7 = [EDColorReference colorReferenceWithSystemColorID:v6 resources:resourcesCopy];

  return v7;
}

@end
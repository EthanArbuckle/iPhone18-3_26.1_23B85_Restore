@interface EXColorReference
+ (id)autoColorWithCallerClass:(Class)a3 resources:(id)a4;
+ (id)edColorReferenceFromXmlColorElement:(_xmlNode *)a3 callerClass:(Class)a4 state:(id)a5;
@end

@implementation EXColorReference

+ (id)edColorReferenceFromXmlColorElement:(_xmlNode *)a3 callerClass:(Class)a4 state:(id)a5
{
  v8 = [a5 resources];
  if (a3)
  {
    v19 = 0;
    if (CXOptionalUnsignedLongAttribute(a3, CXNoNamespace, "indexed", &v19))
    {
      v9 = [EDColorReference colorReferenceWithColorIndex:v19 resources:v8];
    }

    else
    {
      v18 = 0.0;
      CXOptionalDoubleAttribute(a3, CXNoNamespace, "tint", &v18);
      if (!CXOptionalUnsignedLongAttribute(a3, CXNoNamespace, "theme", &v19))
      {
        v17 = 0;
        v12 = CXOptionalStringAttribute(a3, CXNoNamespace, "rgb", &v17);
        v13 = v17;
        if (v12)
        {
          v14 = [MEMORY[0x277CCAC80] scannerWithString:v13];
          [v14 scanHexInt:&v19];
          v15 = [OITSUColor colorWithRGBValue:v19];
          v10 = [EDColorReference colorReferenceWithColor:v15 resources:v8];
        }

        else
        {
          v16 = 0;
          CXOptionalBoolAttribute(a3, CXNoNamespace, "auto", &v16);
          if (v16)
          {
            v10 = [a1 autoColorWithCallerClass:a4 resources:v8];
          }

          else
          {
            v10 = 0;
          }
        }

        goto LABEL_8;
      }

      v9 = [EDColorReference colorReferenceWithThemeIndex:v19 tint:v8 resources:v18];
    }
  }

  else
  {
    v9 = [a1 autoColorWithCallerClass:a4 resources:v8];
  }

  v10 = v9;
LABEL_8:

  return v10;
}

+ (id)autoColorWithCallerClass:(Class)a3 resources:(id)a4
{
  v5 = a4;
  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    v6 = 13;
  }

  else if ([(objc_class *)a3 isEqual:objc_opt_class()])
  {
    v6 = 11;
  }

  else
  {
    v6 = 33;
  }

  v7 = [EDColorReference colorReferenceWithSystemColorID:v6 resources:v5];

  return v7;
}

@end
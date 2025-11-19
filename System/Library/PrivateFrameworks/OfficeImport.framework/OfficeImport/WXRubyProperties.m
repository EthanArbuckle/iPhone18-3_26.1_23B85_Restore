@interface WXRubyProperties
+ (id)rubyAlignmentEnumMap;
+ (int)rubyAlignmentFromString:(id)a3;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
+ (void)rubyAlignmentEnumMap;
@end

@implementation WXRubyProperties

+ (id)rubyAlignmentEnumMap
{
  {
    +[WXRubyProperties rubyAlignmentEnumMap];
  }

  if (+[WXRubyProperties rubyAlignmentEnumMap]::onceToken != -1)
  {
    +[WXRubyProperties rubyAlignmentEnumMap];
  }

  v2 = +[WXRubyProperties rubyAlignmentEnumMap]::sRubyAlignmentEnumMap;

  return v2;
}

void __40__WXRubyProperties_rubyAlignmentEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXRubyProperties rubyAlignmentEnumMap]::sRubyAlignmentStructs count:6 caseSensitive:1];
  v1 = +[WXRubyProperties rubyAlignmentEnumMap]::sRubyAlignmentEnumMap;
  +[WXRubyProperties rubyAlignmentEnumMap]::sRubyAlignmentEnumMap = v0;
}

+ (int)rubyAlignmentFromString:(id)a3
{
  v4 = a3;
  v5 = [a1 rubyAlignmentEnumMap];
  v6 = [v5 valueForString:v4];

  if (v6 == -130883970)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v7 = a4;
  v8 = a5;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "rubyAlign"))
    {
      v10 = [v8 WXMainNamespace];
      v21 = 0;
      CXOptionalStringAttribute(i, v10, "val", &v21);
      v11 = v21;

      if (v11)
      {
        if ([(NSString *)v11 length])
        {
          [v7 setAlignment:{+[WXRubyProperties rubyAlignmentFromString:](WXRubyProperties, "rubyAlignmentFromString:", v11)}];
        }
      }

LABEL_7:

      continue;
    }

    if (xmlStrEqual(i->name, "hps"))
    {
      v20 = 0;
      v12 = [v8 WXMainNamespace];
      v13 = CXOptionalLongAttribute(i, v12, "val", &v20, 15);

      if (v13)
      {
        [v7 setPhoneticGuideFontSize:v20];
      }
    }

    else if (xmlStrEqual(i->name, "hpsRaise"))
    {
      v20 = 0;
      v14 = [v8 WXMainNamespace];
      v15 = CXOptionalLongAttribute(i, v14, "val", &v20, 15);

      if (v15)
      {
        [v7 setDistanceBetween:v20];
      }
    }

    else if (xmlStrEqual(i->name, "hpsBaseText"))
    {
      v20 = 0;
      v16 = [v8 WXMainNamespace];
      v17 = CXOptionalLongAttribute(i, v16, "val", &v20, 15);

      if (v17)
      {
        [v7 setBaseFontSize:v20];
      }
    }

    else if (xmlStrEqual(i->name, "lid"))
    {
      v18 = [v8 WXMainNamespace];
      v19 = 0;
      CXOptionalStringAttribute(i, v18, "val", &v19);
      v11 = v19;

      if (v11 && [(NSString *)v11 length])
      {
        [v7 setPhoneticGuideLanguage:OCDLanguageFromOfficeString(v11)];
      }

      goto LABEL_7;
    }
  }
}

+ (void)rubyAlignmentEnumMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_48, 0, &dword_25D297000);
  }
}

@end
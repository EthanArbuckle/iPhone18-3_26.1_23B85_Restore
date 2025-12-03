@interface WXRubyProperties
+ (id)rubyAlignmentEnumMap;
+ (int)rubyAlignmentFromString:(id)string;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
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

+ (int)rubyAlignmentFromString:(id)string
{
  stringCopy = string;
  rubyAlignmentEnumMap = [self rubyAlignmentEnumMap];
  v6 = [rubyAlignmentEnumMap valueForString:stringCopy];

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

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  toCopy = to;
  stateCopy = state;
  for (i = OCXFirstChild(from); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "rubyAlign"))
    {
      wXMainNamespace = [stateCopy WXMainNamespace];
      v21 = 0;
      CXOptionalStringAttribute(i, wXMainNamespace, "val", &v21);
      v11 = v21;

      if (v11)
      {
        if ([(NSString *)v11 length])
        {
          [toCopy setAlignment:{+[WXRubyProperties rubyAlignmentFromString:](WXRubyProperties, "rubyAlignmentFromString:", v11)}];
        }
      }

LABEL_7:

      continue;
    }

    if (xmlStrEqual(i->name, "hps"))
    {
      v20 = 0;
      wXMainNamespace2 = [stateCopy WXMainNamespace];
      v13 = CXOptionalLongAttribute(i, wXMainNamespace2, "val", &v20, 15);

      if (v13)
      {
        [toCopy setPhoneticGuideFontSize:v20];
      }
    }

    else if (xmlStrEqual(i->name, "hpsRaise"))
    {
      v20 = 0;
      wXMainNamespace3 = [stateCopy WXMainNamespace];
      v15 = CXOptionalLongAttribute(i, wXMainNamespace3, "val", &v20, 15);

      if (v15)
      {
        [toCopy setDistanceBetween:v20];
      }
    }

    else if (xmlStrEqual(i->name, "hpsBaseText"))
    {
      v20 = 0;
      wXMainNamespace4 = [stateCopy WXMainNamespace];
      v17 = CXOptionalLongAttribute(i, wXMainNamespace4, "val", &v20, 15);

      if (v17)
      {
        [toCopy setBaseFontSize:v20];
      }
    }

    else if (xmlStrEqual(i->name, "lid"))
    {
      wXMainNamespace5 = [stateCopy WXMainNamespace];
      v19 = 0;
      CXOptionalStringAttribute(i, wXMainNamespace5, "val", &v19);
      v11 = v19;

      if (v11 && [(NSString *)v11 length])
      {
        [toCopy setPhoneticGuideLanguage:OCDLanguageFromOfficeString(v11)];
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
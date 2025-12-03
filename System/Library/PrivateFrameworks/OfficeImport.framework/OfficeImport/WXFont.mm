@interface WXFont
+ (id)characterSetEnumMap;
+ (id)fontFamilyEnumMap;
+ (id)fontPitchEnumMap;
+ (id)isoCharacterSetEnumMap;
+ (void)characterSetEnumMap;
+ (void)fontFamilyEnumMap;
+ (void)fontPitchEnumMap;
+ (void)isoCharacterSetEnumMap;
+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state;
@end

@implementation WXFont

+ (id)fontFamilyEnumMap
{
  {
    +[WXFont fontFamilyEnumMap];
  }

  if (+[WXFont fontFamilyEnumMap]::onceToken != -1)
  {
    +[WXFont fontFamilyEnumMap];
  }

  v2 = +[WXFont fontFamilyEnumMap]::sFontFamilyEnumMap;

  return v2;
}

void __27__WXFont_fontFamilyEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXFont fontFamilyEnumMap]::sFontFamilyEnumStructs count:6];
  v1 = +[WXFont fontFamilyEnumMap]::sFontFamilyEnumMap;
  +[WXFont fontFamilyEnumMap]::sFontFamilyEnumMap = v0;
}

+ (id)characterSetEnumMap
{
  {
    +[WXFont characterSetEnumMap];
  }

  if (+[WXFont characterSetEnumMap]::onceToken != -1)
  {
    +[WXFont characterSetEnumMap];
  }

  v2 = +[WXFont characterSetEnumMap]::sCharacterSetEnumMap;

  return v2;
}

void __29__WXFont_characterSetEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXFont characterSetEnumMap]::sCharacterSetEnumStructs count:22];
  v1 = +[WXFont characterSetEnumMap]::sCharacterSetEnumMap;
  +[WXFont characterSetEnumMap]::sCharacterSetEnumMap = v0;
}

+ (id)isoCharacterSetEnumMap
{
  {
    +[WXFont isoCharacterSetEnumMap];
  }

  if (+[WXFont isoCharacterSetEnumMap]::onceToken != -1)
  {
    +[WXFont isoCharacterSetEnumMap];
  }

  v2 = +[WXFont isoCharacterSetEnumMap]::sISOCharacterSetEnumMap;

  return v2;
}

void __32__WXFont_isoCharacterSetEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXFont isoCharacterSetEnumMap]::sISOCharacterSetEnumStructs count:18];
  v1 = +[WXFont isoCharacterSetEnumMap]::sISOCharacterSetEnumMap;
  +[WXFont isoCharacterSetEnumMap]::sISOCharacterSetEnumMap = v0;
}

+ (id)fontPitchEnumMap
{
  {
    +[WXFont fontPitchEnumMap];
  }

  if (+[WXFont fontPitchEnumMap]::onceToken != -1)
  {
    +[WXFont fontPitchEnumMap];
  }

  v2 = +[WXFont fontPitchEnumMap]::sFontPitchEnumMap;

  return v2;
}

void __26__WXFont_fontPitchEnumMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[WXFont fontPitchEnumMap]::sFontPitchEnumStructs count:3];
  v1 = +[WXFont fontPitchEnumMap]::sFontPitchEnumMap;
  +[WXFont fontPitchEnumMap]::sFontPitchEnumMap = v0;
}

+ (void)readFrom:(_xmlNode *)from to:(id)to state:(id)state
{
  v37 = *MEMORY[0x277D85DE8];
  toCopy = to;
  stateCopy = state;
  wXMainNamespace = [stateCopy WXMainNamespace];
  v10 = OCXFindChild(from, wXMainNamespace, "altName");

  if (v10)
  {
    wXMainNamespace2 = [stateCopy WXMainNamespace];
    v35 = 0;
    v12 = CXOptionalStringAttribute(v10, wXMainNamespace2, "val", &v35);
    v26 = v35;

    if (v12)
    {
      [v26 componentsSeparatedByString:{@", "}];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v13 = v32 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v14)
      {
        v15 = *v32;
        do
        {
          v16 = 0;
          do
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v31 + 1) + 8 * v16);
            whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
            v19 = [v17 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            if ([v19 length])
            {
              [toCopy addAlternateName:v19];
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v14);
      }
    }
  }

  v30 = 0;
  fontFamilyEnumMap = [self fontFamilyEnumMap];
  readEnumProperty<WDFontFamily>(from, "family", "val", fontFamilyEnumMap, &v30, stateCopy);

  [toCopy setFontFamily:v30];
  v29 = 0;
  characterSetEnumMap = [self characterSetEnumMap];
  v22 = readEnumProperty<WDCharacterSet>(from, "charset", "val", characterSetEnumMap, &v29, stateCopy);

  if ((v22 & 1) != 0 || ([self isoCharacterSetEnumMap], v23 = objc_claimAutoreleasedReturnValue(), v24 = readEnumProperty<WDCharacterSet>(from, "charset", "characterSet", v23, &v29, stateCopy), v23, v24))
  {
    [toCopy setCharacterSet:v29];
  }

  v28 = 0;
  fontPitchEnumMap = [self fontPitchEnumMap];
  readEnumProperty<WDFontPitch>(from, "pitch", "val", fontPitchEnumMap, &v28, stateCopy);

  [toCopy setPitch:v28];
}

+ (void)fontFamilyEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)characterSetEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)isoCharacterSetEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

+ (void)fontPitchEnumMap
{
  if (v0)
  {
    OUTLINED_FUNCTION_0(v0, v1, &dword_25D297000);
  }
}

@end
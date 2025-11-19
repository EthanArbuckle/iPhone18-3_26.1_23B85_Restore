@interface WXFont
+ (id)characterSetEnumMap;
+ (id)fontFamilyEnumMap;
+ (id)fontPitchEnumMap;
+ (id)isoCharacterSetEnumMap;
+ (void)characterSetEnumMap;
+ (void)fontFamilyEnumMap;
+ (void)fontPitchEnumMap;
+ (void)isoCharacterSetEnumMap;
+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5;
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

+ (void)readFrom:(_xmlNode *)a3 to:(id)a4 state:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v8 WXMainNamespace];
  v10 = OCXFindChild(a3, v9, "altName");

  if (v10)
  {
    v11 = [v8 WXMainNamespace];
    v35 = 0;
    v12 = CXOptionalStringAttribute(v10, v11, "val", &v35);
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
            v18 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
            v19 = [v17 stringByTrimmingCharactersInSet:v18];

            if ([v19 length])
            {
              [v7 addAlternateName:v19];
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
  v20 = [a1 fontFamilyEnumMap];
  readEnumProperty<WDFontFamily>(a3, "family", "val", v20, &v30, v8);

  [v7 setFontFamily:v30];
  v29 = 0;
  v21 = [a1 characterSetEnumMap];
  v22 = readEnumProperty<WDCharacterSet>(a3, "charset", "val", v21, &v29, v8);

  if ((v22 & 1) != 0 || ([a1 isoCharacterSetEnumMap], v23 = objc_claimAutoreleasedReturnValue(), v24 = readEnumProperty<WDCharacterSet>(a3, "charset", "characterSet", v23, &v29, v8), v23, v24))
  {
    [v7 setCharacterSet:v29];
  }

  v28 = 0;
  v25 = [a1 fontPitchEnumMap];
  readEnumProperty<WDFontPitch>(a3, "pitch", "val", v25, &v28, v8);

  [v7 setPitch:v28];
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
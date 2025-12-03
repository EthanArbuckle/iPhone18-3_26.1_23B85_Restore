@interface ICTTFont(UI)
+ (id)convertFont:()UI toBold:toItalic:;
+ (void)font:()UI isBold:isItalic:isMonospace:;
- (id)nativeFontForStyle:()UI contentSizeCategory:isForPrint:;
@end

@implementation ICTTFont(UI)

+ (id)convertFont:()UI toBold:toItalic:
{
  v7 = a3;
  fontDescriptor = [v7 fontDescriptor];
  symbolicTraits = [fontDescriptor symbolicTraits];
  if (((symbolicTraits ^ a5) & 1) != 0 || a4 != (symbolicTraits & 2) >> 1)
  {
    if (a4)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 | a5;
    v12 = symbolicTraits & 0xFFFFFFFC;
    fontDescriptor2 = [v7 fontDescriptor];
    v14 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:v11 | v12];

    v15 = MEMORY[0x1E69DB878];
    [v7 pointSize];
    v16 = [v15 fontWithDescriptor:v14 size:?];

    v7 = v16;
  }

  return v7;
}

+ (void)font:()UI isBold:isItalic:isMonospace:
{
  fontDescriptor = [a3 fontDescriptor];
  *a4 = ([fontDescriptor symbolicTraits] & 2) != 0;
  *a5 = [fontDescriptor symbolicTraits] & 1;
  *a6 = ([fontDescriptor symbolicTraits] & 0x400) != 0;
}

- (id)nativeFontForStyle:()UI contentSizeCategory:isForPrint:
{
  v8 = a4;
  nativeFont = [self nativeFont];
  [self pointSize];
  if (!nativeFont)
  {
    v11 = v10;
    v12 = [MEMORY[0x1E69DB878] ic_preferredFontForStyle:a3 contentSizeCategory:v8 isForPrint:a5];
    v13 = v12;
    if (v11 <= 0.0 || a5 != 0)
    {
      [v12 pointSize];
      v11 = v15;
    }

    fontName = [self fontName];
    if (fontName)
    {
      v17 = fontName;
      fontName2 = [self fontName];
      v19 = [fontName2 hasPrefix:@"."];

      if ((v19 & 1) == 0)
      {
        v20 = MEMORY[0x1E69DB878];
        fontName3 = [self fontName];
        v22 = [v20 fontWithName:fontName3 size:v11];

        if (v22)
        {
          goto LABEL_25;
        }
      }
    }

    if (a3 == 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = 3;
    }

    v24 = [MEMORY[0x1E69DB878] ic_preferredFontForStyle:v23 contentSizeCategory:v8 isForPrint:a5];
    v22 = v24;
    if (v11 > 0.0)
    {
      v25 = [v24 fontWithSize:v11];
      v26 = v25;
      if (v25)
      {
        v27 = v25;

        v22 = v27;
      }
    }

    fontHints = [self fontHints];
    fontHints2 = [self fontHints];
    v30 = fontHints2;
    v31 = [MEMORY[0x1E69B7890] convertFont:v22 toBold:fontHints & 1 toItalic:(fontHints2 >> 1) & 1];
    v32 = (v31 == 0) & fontHints;
    if (v32)
    {
      v31 = 0;
    }

    if (v30 & 2) != 0 && (v32)
    {
      v31 = [MEMORY[0x1E69B7890] convertFont:v22 toBold:1 toItalic:0];
      if (v31)
      {
        goto LABEL_24;
      }

      v31 = [MEMORY[0x1E69B7890] convertFont:v22 toBold:0 toItalic:1];
    }

    if (!v31)
    {
LABEL_25:
      nativeFont = [v22 ic_fontWithSingleLineA];

      [self setNativeFont:nativeFont];
      goto LABEL_26;
    }

LABEL_24:
    v33 = v31;

    v22 = v33;
    goto LABEL_25;
  }

LABEL_26:

  return nativeFont;
}

@end
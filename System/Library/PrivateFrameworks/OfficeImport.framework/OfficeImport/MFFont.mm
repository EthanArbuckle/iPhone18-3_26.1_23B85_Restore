@interface MFFont
+ (MFFont)fontWithExtendedFeatures:(int)features lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7 elfFullName:(id)self8 elfStyle:(id)self9 elfVersion:(unsigned int)version elfStyleSize:(unsigned int)size elfMatch:(unsigned int)match elfVendorId:(unsigned int)id elfCulture:(unsigned int)culture;
+ (MFFont)fontWithFeatures:(int)features lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7;
+ (MFFont)fontWithStockFont:(int)font;
- (CGRect)textExtent:(id)extent options:(int)options in_spacingValues:(int *)values in_count:(int)in_count;
- (MFFont)initWithAllFeatures:(int)features lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7 elfFullName:(id)self8 elfStyle:(id)self9 elfVersion:(unsigned int)version elfStyleSize:(unsigned int)size elfMatch:(unsigned int)match elfVendorId:(unsigned int)id elfCulture:(unsigned int)culture;
- (MFFont)initWithFeatures:(int)features lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7;
- (MFFont)initWithStockFont:(int)font;
- (id)stringWithBytes:(const void *)bytes length:(unint64_t)length;
@end

@implementation MFFont

- (MFFont)initWithAllFeatures:(int)features lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7 elfFullName:(id)self8 elfStyle:(id)self9 elfVersion:(unsigned int)version elfStyleSize:(unsigned int)size elfMatch:(unsigned int)match elfVendorId:(unsigned int)id elfCulture:(unsigned int)culture
{
  nameCopy = name;
  fullNameCopy = fullName;
  styleCopy = style;
  v40.receiver = self;
  v40.super_class = MFFont;
  v33 = [(MFFont *)&v40 init];
  v34 = v33;
  if (v33)
  {
    v33->m_lfHeight = features;
    v33->m_lfWidth = width;
    v33->m_lfEscapement = escapement;
    v33->m_lfOrientation = orientation;
    v33->m_lfWeight = weight;
    v33->m_lfItalic = italic;
    v33->m_lfUnderline = underline;
    v33->m_lfStrikeOut = out;
    v33->m_lfCharSet = set;
    v33->m_lfOutPrecision = precision;
    v33->m_lfClipPrecision = clipPrecision;
    v33->m_lfQuality = quality;
    v33->m_pitch = pitch;
    v33->m_family = family;
    controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
    v36 = [nameCopy componentsSeparatedByCharactersInSet:controlCharacterSet];
    v37 = [v36 objectAtIndex:0];

    objc_storeStrong(&v34->m_lfFaceName, v37);
    objc_storeStrong(&v34->m_elfFullName, fullName);
    objc_storeStrong(&v34->m_elfStyle, style);
    v34->m_elfVersion = version;
    v34->m_elfStyleSize = size;
    v34->m_elfMatch = match;
    v34->m_elfVendorId = id;
    nameCopy = v37;
    v34->m_elfCulture = culture;
  }

  return v34;
}

- (MFFont)initWithFeatures:(int)features lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7
{
  LODWORD(v21) = 0;
  LODWORD(v20) = family;
  BYTE4(v19) = clipPrecision;
  HIDWORD(v18) = set;
  LODWORD(v19) = precision;
  LOWORD(v18) = __PAIR16__(out, underline);
  return [MFFont initWithAllFeatures:"initWithAllFeatures:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:elfFullName:elfStyle:elfVersion:elfStyleSize:elfMatch:elfVendorId:elfCulture:" lfWidth:*&features lfEscapement:*&width lfOrientation:*&escapement lfWeight:*&orientation lfItalic:*&weight lfUnderline:italic lfStrikeOut:v18 lfCharSet:v19 lfOutPrecision:*&quality lfClipPrecision:v20 lfQuality:name pitch:0 family:0 lfFaceName:0 elfFullName:0 elfStyle:v21 elfVersion:? elfStyleSize:? elfMatch:? elfVendorId:? elfCulture:?];
}

- (MFFont)initWithStockFont:(int)font
{
  if (font <= 12)
  {
    if (font != 10)
    {
      if (font == 11)
      {
        v10 = @"Courier";
        LODWORD(v9) = 0;
        v8 = 2;
        BYTE12(v7) = 2;
        *(&v7 + 4) = 0;
        LOWORD(v7) = 0;
        *&font = 12;
        goto LABEL_15;
      }

      if (font == 12)
      {
        v10 = @"MS Sans Serif";
        LODWORD(v9) = 0;
        v8 = 0x200000002;
        BYTE12(v7) = 2;
        *(&v7 + 4) = 0;
        LOWORD(v7) = 0;
LABEL_15:
        v3 = 9;
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v10 = @"Terminal";
    LODWORD(v9) = 48;
    v8 = 0x100000002;
    BYTE12(v7) = 2;
    *(&v7 + 4) = 0x1000000FFLL;
    LOWORD(v7) = 0;
    *&font = 12;
    goto LABEL_11;
  }

  if (font == 13)
  {
    v10 = @"System";
    LODWORD(v9) = 32;
    v8 = 0x200000002;
    BYTE12(v7) = 2;
    *(&v7 + 4) = 0x100000000;
LABEL_18:
    LOWORD(v7) = 0;
    *&font = 16;
    v3 = 7;
    v4 = 700;
    goto LABEL_19;
  }

  if (font == 14)
  {
    v10 = @"Helvetica";
    LODWORD(v9) = 0;
    v8 = 0x200000002;
    BYTE12(v7) = 0;
    *(&v7 + 4) = 0;
    goto LABEL_18;
  }

  if (font != 16)
  {
LABEL_13:
    v10 = @"MS Sans Serif";
    LODWORD(v9) = 0;
    v8 = 0;
    BYTE12(v7) = 0;
    *(&v7 + 4) = 0;
    LOWORD(v7) = 0;
    *&font = 4294967285;
    v3 = 0;
    goto LABEL_16;
  }

  v10 = @"Fixedsys";
  LODWORD(v9) = 48;
  v8 = 0x100000002;
  BYTE12(v7) = 2;
  *(&v7 + 4) = 0x100000000;
  LOWORD(v7) = 0;
  *&font = 15;
LABEL_11:
  v3 = 8;
LABEL_16:
  v4 = 400;
LABEL_19:
  v5 = [MFFont initWithFeatures:"initWithFeatures:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:" lfWidth:*&font lfEscapement:v3 lfOrientation:0 lfWeight:0 lfItalic:v4 lfUnderline:0 lfStrikeOut:v7 lfCharSet:v8 lfOutPrecision:v9 lfClipPrecision:v10 lfQuality:? pitch:? family:? lfFaceName:?];

  return v5;
}

+ (MFFont)fontWithFeatures:(int)features lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7
{
  italicCopy = italic;
  nameCopy = name;
  LODWORD(v24) = 0;
  LODWORD(v23) = family;
  BYTE4(v22) = clipPrecision;
  HIDWORD(v21) = set;
  LODWORD(v22) = precision;
  LOWORD(v21) = __PAIR16__(out, underline);
  v19 = [[self alloc] initWithAllFeatures:features lfWidth:width lfEscapement:escapement lfOrientation:orientation lfWeight:weight lfItalic:italicCopy lfUnderline:v21 lfStrikeOut:v22 lfCharSet:__PAIR64__(pitch lfOutPrecision:quality) lfClipPrecision:v23 lfQuality:nameCopy pitch:0 family:0 lfFaceName:0 elfFullName:0 elfStyle:v24 elfVersion:? elfStyleSize:? elfMatch:? elfVendorId:? elfCulture:?];

  return v19;
}

+ (MFFont)fontWithExtendedFeatures:(int)features lfWidth:(int)width lfEscapement:(int)escapement lfOrientation:(int)orientation lfWeight:(int)weight lfItalic:(BOOL)italic lfUnderline:(BOOL)underline lfStrikeOut:(BOOL)self0 lfCharSet:(int)self1 lfOutPrecision:(int)self2 lfClipPrecision:(unsigned __int8)self3 lfQuality:(int)self4 pitch:(int)self5 family:(int)self6 lfFaceName:(id)self7 elfFullName:(id)self8 elfStyle:(id)self9 elfVersion:(unsigned int)version elfStyleSize:(unsigned int)size elfMatch:(unsigned int)match elfVendorId:(unsigned int)id elfCulture:(unsigned int)culture
{
  italicCopy = italic;
  nameCopy = name;
  fullNameCopy = fullName;
  styleCopy = style;
  LODWORD(v33) = culture;
  LODWORD(v32) = family;
  BYTE4(v31) = clipPrecision;
  HIDWORD(v30) = set;
  LODWORD(v31) = precision;
  LOWORD(v30) = __PAIR16__(out, underline);
  v28 = [[self alloc] initWithAllFeatures:features lfWidth:width lfEscapement:escapement lfOrientation:orientation lfWeight:weight lfItalic:italicCopy lfUnderline:v30 lfStrikeOut:v31 lfCharSet:__PAIR64__(pitch lfOutPrecision:quality) lfClipPrecision:v32 lfQuality:nameCopy pitch:fullNameCopy family:styleCopy lfFaceName:__PAIR64__(size elfFullName:version) elfStyle:__PAIR64__(id elfVersion:match) elfStyleSize:v33 elfMatch:? elfVendorId:? elfCulture:?];

  return v28;
}

+ (MFFont)fontWithStockFont:(int)font
{
  v3 = [[self alloc] initWithStockFont:*&font];

  return v3;
}

- (CGRect)textExtent:(id)extent options:(int)options in_spacingValues:(int *)values in_count:(int)in_count
{
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)stringWithBytes:(const void *)bytes length:(unint64_t)length
{
  getCharset = [(MFFont *)self getCharset];
  if (getCharset == 2)
  {
    operator new[]();
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:bytes length:length encoding:OCNsStringEncodingForWindowsCharSet(getCharset)];

  return v7;
}

@end
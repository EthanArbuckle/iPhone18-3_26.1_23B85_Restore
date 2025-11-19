@interface MFFont
+ (MFFont)fontWithExtendedFeatures:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17 elfFullName:(id)a18 elfStyle:(id)a19 elfVersion:(unsigned int)a20 elfStyleSize:(unsigned int)a21 elfMatch:(unsigned int)a22 elfVendorId:(unsigned int)a23 elfCulture:(unsigned int)a24;
+ (MFFont)fontWithFeatures:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17;
+ (MFFont)fontWithStockFont:(int)a3;
- (CGRect)textExtent:(id)a3 options:(int)a4 in_spacingValues:(int *)a5 in_count:(int)a6;
- (MFFont)initWithAllFeatures:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17 elfFullName:(id)a18 elfStyle:(id)a19 elfVersion:(unsigned int)a20 elfStyleSize:(unsigned int)a21 elfMatch:(unsigned int)a22 elfVendorId:(unsigned int)a23 elfCulture:(unsigned int)a24;
- (MFFont)initWithFeatures:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17;
- (MFFont)initWithStockFont:(int)a3;
- (id)stringWithBytes:(const void *)a3 length:(unint64_t)a4;
@end

@implementation MFFont

- (MFFont)initWithAllFeatures:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17 elfFullName:(id)a18 elfStyle:(id)a19 elfVersion:(unsigned int)a20 elfStyleSize:(unsigned int)a21 elfMatch:(unsigned int)a22 elfVendorId:(unsigned int)a23 elfCulture:(unsigned int)a24
{
  v31 = a17;
  v32 = a18;
  v39 = a19;
  v40.receiver = self;
  v40.super_class = MFFont;
  v33 = [(MFFont *)&v40 init];
  v34 = v33;
  if (v33)
  {
    v33->m_lfHeight = a3;
    v33->m_lfWidth = a4;
    v33->m_lfEscapement = a5;
    v33->m_lfOrientation = a6;
    v33->m_lfWeight = a7;
    v33->m_lfItalic = a8;
    v33->m_lfUnderline = a9;
    v33->m_lfStrikeOut = a10;
    v33->m_lfCharSet = a11;
    v33->m_lfOutPrecision = a12;
    v33->m_lfClipPrecision = a13;
    v33->m_lfQuality = a14;
    v33->m_pitch = a15;
    v33->m_family = a16;
    v35 = [MEMORY[0x277CCA900] controlCharacterSet];
    v36 = [v31 componentsSeparatedByCharactersInSet:v35];
    v37 = [v36 objectAtIndex:0];

    objc_storeStrong(&v34->m_lfFaceName, v37);
    objc_storeStrong(&v34->m_elfFullName, a18);
    objc_storeStrong(&v34->m_elfStyle, a19);
    v34->m_elfVersion = a20;
    v34->m_elfStyleSize = a21;
    v34->m_elfMatch = a22;
    v34->m_elfVendorId = a23;
    v31 = v37;
    v34->m_elfCulture = a24;
  }

  return v34;
}

- (MFFont)initWithFeatures:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17
{
  LODWORD(v21) = 0;
  LODWORD(v20) = a16;
  BYTE4(v19) = a13;
  HIDWORD(v18) = a11;
  LODWORD(v19) = a12;
  LOWORD(v18) = __PAIR16__(a10, a9);
  return [MFFont initWithAllFeatures:"initWithAllFeatures:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:elfFullName:elfStyle:elfVersion:elfStyleSize:elfMatch:elfVendorId:elfCulture:" lfWidth:*&a3 lfEscapement:*&a4 lfOrientation:*&a5 lfWeight:*&a6 lfItalic:*&a7 lfUnderline:a8 lfStrikeOut:v18 lfCharSet:v19 lfOutPrecision:*&a14 lfClipPrecision:v20 lfQuality:a17 pitch:0 family:0 lfFaceName:0 elfFullName:0 elfStyle:v21 elfVersion:? elfStyleSize:? elfMatch:? elfVendorId:? elfCulture:?];
}

- (MFFont)initWithStockFont:(int)a3
{
  if (a3 <= 12)
  {
    if (a3 != 10)
    {
      if (a3 == 11)
      {
        v10 = @"Courier";
        LODWORD(v9) = 0;
        v8 = 2;
        BYTE12(v7) = 2;
        *(&v7 + 4) = 0;
        LOWORD(v7) = 0;
        *&a3 = 12;
        goto LABEL_15;
      }

      if (a3 == 12)
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
    *&a3 = 12;
    goto LABEL_11;
  }

  if (a3 == 13)
  {
    v10 = @"System";
    LODWORD(v9) = 32;
    v8 = 0x200000002;
    BYTE12(v7) = 2;
    *(&v7 + 4) = 0x100000000;
LABEL_18:
    LOWORD(v7) = 0;
    *&a3 = 16;
    v3 = 7;
    v4 = 700;
    goto LABEL_19;
  }

  if (a3 == 14)
  {
    v10 = @"Helvetica";
    LODWORD(v9) = 0;
    v8 = 0x200000002;
    BYTE12(v7) = 0;
    *(&v7 + 4) = 0;
    goto LABEL_18;
  }

  if (a3 != 16)
  {
LABEL_13:
    v10 = @"MS Sans Serif";
    LODWORD(v9) = 0;
    v8 = 0;
    BYTE12(v7) = 0;
    *(&v7 + 4) = 0;
    LOWORD(v7) = 0;
    *&a3 = 4294967285;
    v3 = 0;
    goto LABEL_16;
  }

  v10 = @"Fixedsys";
  LODWORD(v9) = 48;
  v8 = 0x100000002;
  BYTE12(v7) = 2;
  *(&v7 + 4) = 0x100000000;
  LOWORD(v7) = 0;
  *&a3 = 15;
LABEL_11:
  v3 = 8;
LABEL_16:
  v4 = 400;
LABEL_19:
  v5 = [MFFont initWithFeatures:"initWithFeatures:lfWidth:lfEscapement:lfOrientation:lfWeight:lfItalic:lfUnderline:lfStrikeOut:lfCharSet:lfOutPrecision:lfClipPrecision:lfQuality:pitch:family:lfFaceName:" lfWidth:*&a3 lfEscapement:v3 lfOrientation:0 lfWeight:0 lfItalic:v4 lfUnderline:0 lfStrikeOut:v7 lfCharSet:v8 lfOutPrecision:v9 lfClipPrecision:v10 lfQuality:? pitch:? family:? lfFaceName:?];

  return v5;
}

+ (MFFont)fontWithFeatures:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17
{
  v30 = a8;
  v18 = a17;
  LODWORD(v24) = 0;
  LODWORD(v23) = a16;
  BYTE4(v22) = a13;
  HIDWORD(v21) = a11;
  LODWORD(v22) = a12;
  LOWORD(v21) = __PAIR16__(a10, a9);
  v19 = [[a1 alloc] initWithAllFeatures:a3 lfWidth:a4 lfEscapement:a5 lfOrientation:a6 lfWeight:a7 lfItalic:v30 lfUnderline:v21 lfStrikeOut:v22 lfCharSet:__PAIR64__(a15 lfOutPrecision:a14) lfClipPrecision:v23 lfQuality:v18 pitch:0 family:0 lfFaceName:0 elfFullName:0 elfStyle:v24 elfVersion:? elfStyleSize:? elfMatch:? elfVendorId:? elfCulture:?];

  return v19;
}

+ (MFFont)fontWithExtendedFeatures:(int)a3 lfWidth:(int)a4 lfEscapement:(int)a5 lfOrientation:(int)a6 lfWeight:(int)a7 lfItalic:(BOOL)a8 lfUnderline:(BOOL)a9 lfStrikeOut:(BOOL)a10 lfCharSet:(int)a11 lfOutPrecision:(int)a12 lfClipPrecision:(unsigned __int8)a13 lfQuality:(int)a14 pitch:(int)a15 family:(int)a16 lfFaceName:(id)a17 elfFullName:(id)a18 elfStyle:(id)a19 elfVersion:(unsigned int)a20 elfStyleSize:(unsigned int)a21 elfMatch:(unsigned int)a22 elfVendorId:(unsigned int)a23 elfCulture:(unsigned int)a24
{
  v39 = a8;
  v25 = a17;
  v26 = a18;
  v27 = a19;
  LODWORD(v33) = a24;
  LODWORD(v32) = a16;
  BYTE4(v31) = a13;
  HIDWORD(v30) = a11;
  LODWORD(v31) = a12;
  LOWORD(v30) = __PAIR16__(a10, a9);
  v28 = [[a1 alloc] initWithAllFeatures:a3 lfWidth:a4 lfEscapement:a5 lfOrientation:a6 lfWeight:a7 lfItalic:v39 lfUnderline:v30 lfStrikeOut:v31 lfCharSet:__PAIR64__(a15 lfOutPrecision:a14) lfClipPrecision:v32 lfQuality:v25 pitch:v26 family:v27 lfFaceName:__PAIR64__(a21 elfFullName:a20) elfStyle:__PAIR64__(a23 elfVersion:a22) elfStyleSize:v33 elfMatch:? elfVendorId:? elfCulture:?];

  return v28;
}

+ (MFFont)fontWithStockFont:(int)a3
{
  v3 = [[a1 alloc] initWithStockFont:*&a3];

  return v3;
}

- (CGRect)textExtent:(id)a3 options:(int)a4 in_spacingValues:(int *)a5 in_count:(int)a6
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

- (id)stringWithBytes:(const void *)a3 length:(unint64_t)a4
{
  v6 = [(MFFont *)self getCharset];
  if (v6 == 2)
  {
    operator new[]();
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:OCNsStringEncodingForWindowsCharSet(v6)];

  return v7;
}

@end
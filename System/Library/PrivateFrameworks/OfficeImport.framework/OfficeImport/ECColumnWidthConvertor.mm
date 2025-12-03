@interface ECColumnWidthConvertor
- (CGSize)stringSizeWithFont:(id)font edFont:(id)edFont drawingState:(id)state;
- (float)fontWidthAdjustmentFor:(id)for;
- (void)setupWithEDFont:(id)font state:(id)state;
@end

@implementation ECColumnWidthConvertor

- (void)setupWithEDFont:(id)font state:(id)state
{
  fontCopy = font;
  self->mMultiplier = 7;
  v9 = fontCopy;
  [ECColumnWidthConvertor stringSizeWithFont:"stringSizeWithFont:edFont:drawingState:" edFont:@"m" drawingState:?];
  v7 = v6 * 0.65;
  if (v7 != 0.0)
  {
    [(ECColumnWidthConvertor *)self fontWidthAdjustmentFor:v9];
    self->mMultiplier = ((v8 * v7) + 0.5);
  }
}

- (CGSize)stringSizeWithFont:(id)font edFont:(id)edFont drawingState:(id)state
{
  fontCopy = font;
  edFontCopy = edFont;
  stateCopy = state;
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  if (fontCopy && [fontCopy length])
  {
    name = [edFontCopy name];
    if (!stateCopy)
    {
      [edFontCopy height];
      v14 = CTFontCreateWithName(name, v13 / 20.0, 0);
      if (v14)
      {
        [TCImportFontCache stringSizeForText:fontCopy ctFontRef:v14];
        v10 = v15;
        v11 = v16;
        CFRelease(v14);
      }

      else
      {
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ECColumnWidthConvertor(Private) stringSizeWithFont:edFont:drawingState:]"];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/Excel/Common/ECColumnWidthConvertor.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:90 isFatal:0 description:"invalid nil value for '%{public}s'", "ctFontRef"];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }
    }
  }

  v19 = v10;
  v20 = v11;
  result.height = v20;
  result.width = v19;
  return result;
}

- (float)fontWidthAdjustmentFor:(id)for
{
  forCopy = for;
  {
    -[ECColumnWidthConvertor(Private) fontWidthAdjustmentFor:]::sFontAdjustmentMap = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Academy Engraved LET", &unk_286F6DEB8, @"Apple-Chancery", &unk_286F6DEC8, @"AbadiMT-CondensedExtraBold", &unk_286F6DED8, @"Ayuthaya", &unk_286F6DEE8, @"Arial", &unk_286F6DEE8, @"ArialMT", &unk_286F6DEE8, @"ArialRoundedMTBold", &unk_286F6DEE8, @"AmericanTypewriter", &unk_286F6DEE8, @"AlBayan", &unk_286F6DEE8, @"AppleSymbols", &unk_286F6DEE8, @"Avenir-Heavy", &unk_286F6DEE8, @"Avenir-Black", &unk_286F6DEF8, @"Avenir-Light", &unk_286F6DEE8, @"Avenir Next", &unk_286F6DEE8, @"Avenir Medium", &unk_286F6DEE8, @"AvenirNext-DemiBold", &unk_286F6DEE8, @"AvenirNext-Heavy", &unk_286F6DEE8, @"AvenirNext-Medium", &unk_286F6DEE8, @"AvenirNextCondensed-Medium", &unk_286F6DF08, @"Avenir Next Condensed Ultra Lig", &unk_286F6DEF8, @"AvenirNext-UltraLight", &unk_286F6DED8, @"Baghdad", &unk_286F6DEC8, @"BanglaSangamMN", &unk_286F6DF18, @"Bank Gothic", &unk_286F6DF18, @"Blackmoor LET", &unk_286F6DF28, @"BlairMdITC TT", &unk_286F6DF28, @"Bodoni 72", &unk_286F6DF28, @"Bodoni 72 Oldstyle", &unk_286F6DED8, @"Bodoni 72 Smallcaps", &unk_286F6DF38, @"BodoniOrnamentsITCTT", &unk_286F6DEB8, @"BookshelfSymbolSeven"}];
  }

  v4 = [ECColumnWidthConvertor(Private) fontWidthAdjustmentFor:]::sFontAdjustmentMap;
  name = [forCopy name];
  v6 = [v4 objectForKeyedSubscript:name];

  if (v6)
  {
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

@end
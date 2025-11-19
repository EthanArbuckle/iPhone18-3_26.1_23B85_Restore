@interface OADCachedTextStyle
- (BOOL)isEqual:(id)a3;
- (OADCachedTextStyle)initWithTextBodyProperties:(id)a3 paragraphProperties:(id)a4 characterProperties:(id)a5 colorContext:(id)a6 graphicStyleCache:(id)a7;
- (void)applyToParagraphProperties:(id)a3 graphicStyleCache:(id)a4;
@end

@implementation OADCachedTextStyle

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v4;
  v7 = objc_opt_class();
  v10 = v7 == objc_opt_class() && *(&v5->mData + 3) == v6[4] && *&v5->mData == v6[1] && *&v5->mData.leftMargin == v6[2] && *(&v5->mData + 2) == v6[3];

  return v10;
}

- (OADCachedTextStyle)initWithTextBodyProperties:(id)a3 paragraphProperties:(id)a4 characterProperties:(id)a5 colorContext:(id)a6 graphicStyleCache:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v47 = a7;
  v48.receiver = self;
  v48.super_class = OADCachedTextStyle;
  v16 = [(OADCachedTextStyle *)&v48 init];
  if (v16)
  {
    v16[8] = v16[8] & 0xF8 | [v12 textAnchorType] & 7;
    v17 = [v13 lineSpacing];
    *(v16 + 9) = OADTextCachedSpacingWithSpacing(v17);

    v18 = [v13 beforeSpacing];
    *(v16 + 11) = OADTextCachedSpacingWithSpacing(v18);

    v19 = [v13 afterSpacing];
    *(v16 + 13) = OADTextCachedSpacingWithSpacing(v19);

    [v13 leftMargin];
    *(v16 + 15) = llroundf(v20 * 8.0);
    [v13 rightMargin];
    *(v16 + 17) = llroundf(v21 * 8.0);
    [v13 indent];
    *(v16 + 19) = llroundf(v22 * 8.0);
    [v13 defaultTab];
    *(v16 + 21) = llroundf(v23 * 8.0);
    v16[23] = v16[23] & 0xF0 | [v13 align] & 0xF;
    if ([v14 hasLatinFont])
    {
      [v14 latinFont];
    }

    else
    {
      [v13 latinFont];
    }
    v46 = ;
    v24 = [v47 fontFaceCache];
    *(v16 + 12) = [v24 cacheFeature:v46];

    if ([v14 hasSize])
    {
      v25 = v14;
    }

    else
    {
      v25 = v13;
    }

    [v25 size];
    *(v16 + 13) = llroundf(v26 * 8.0);
    if ([v14 hasFill])
    {
      [v14 fill];
    }

    else
    {
      [v13 fill];
    }
    v45 = ;
    v27 = objc_opt_class();
    v28 = TSUDynamicCast(v27, v45);
    v29 = [v28 color];

    if (!v29)
    {
      v29 = [OADSchemeColor schemeColorWithIndex:1];
    }

    v30 = [v15 map];
    v31 = [v15 scheme];
    v32 = [v15 palette];
    v33 = [OADColor rgbColorWithColor:v29 colorMap:v30 colorScheme:v31 colorPalette:v32];

    v12 = v44;
    v34 = [v47 colorCache];
    *(v16 + 14) = [v34 cacheFeature:v33];

    if ([v14 hasIsBold])
    {
      v35 = v14;
    }

    else
    {
      v35 = v13;
    }

    *(v16 + 15) = *(v16 + 15) & 0xFFFE | [v35 isBold];
    if ([v14 hasIsItalic])
    {
      v36 = v14;
    }

    else
    {
      v36 = v13;
    }

    if ([v36 isItalic])
    {
      v37 = 2;
    }

    else
    {
      v37 = 0;
    }

    *(v16 + 15) = *(v16 + 15) & 0xFFFD | v37;
    if ([v14 hasUnderlineType])
    {
      v38 = v14;
    }

    else
    {
      v38 = v13;
    }

    *(v16 + 15) = *(v16 + 15) & 0xFF83 | (4 * ([v38 underlineType] & 0x1F));
    if ([v14 hasFormatType])
    {
      v39 = v14;
    }

    else
    {
      v39 = v13;
    }

    *(v16 + 15) = *(v16 + 15) & 0xFE7F | (([v39 formatType] & 3) << 7);
    if ([v14 hasFormatKerningType])
    {
      v40 = v14;
    }

    else
    {
      v40 = v13;
    }

    *(v16 + 15) = *(v16 + 15) & 0xF9FF | (([v40 formatKerningType] & 3) << 9);
    if ([v14 hasStrikeThroughType])
    {
      v41 = v14;
    }

    else
    {
      v41 = v13;
    }

    *(v16 + 15) = *(v16 + 15) & 0xE7FF | (([v41 strikeThroughType] & 3) << 11);
    if ([v14 hasCaps])
    {
      v42 = v14;
    }

    else
    {
      v42 = v13;
    }

    *(v16 + 15) = *(v16 + 15) & 0x9FFF | (([v42 caps] & 3) << 13);
    *(v16 + 4) = TSUHash(v16 + 8, 24);
  }

  return v16;
}

- (void)applyToParagraphProperties:(id)a3 graphicStyleCache:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = OADTextSpacingWithCachedSpacing(*(&self->mData + 1));
  [v22 setLineSpacing:v7];

  v8 = OADTextSpacingWithCachedSpacing(*(&self->mData.lineSpacing + 1));
  [v22 setBeforeSpacing:v8];

  v9 = OADTextSpacingWithCachedSpacing(*(&self->mData.beforeSpacing + 1));
  [v22 setAfterSpacing:v9];

  *&v10 = vcvts_n_f32_s32(*(&self->mData.afterSpacing + 1), 3uLL);
  [v22 setLeftMargin:v10];
  *&v11 = vcvts_n_f32_s32(*(&self->mData.leftMargin + 1), 3uLL);
  [v22 setRightMargin:v11];
  *&v12 = vcvts_n_f32_s32(*(&self->mData.rightMargin + 1), 3uLL);
  [v22 setIndent:v12];
  *&v13 = vcvts_n_f32_s32(*(&self->mData.indent + 1), 3uLL);
  [v22 setDefaultTab:v13];
  [v22 setAlign:HIBYTE(self->mData.defaultTab) & 0xF];
  v14 = [v6 fontFaceCache];
  v15 = [v14 countedFeatureAtIndex:*(&self->mData + 8)];
  v16 = [v15 feature];
  [v22 setLatinFont:v16];

  *&v17 = vcvts_n_f32_s32(self->mData.fontFaceIndex, 3uLL);
  [v22 setSize:v17];
  v18 = objc_alloc_init(OADSolidFill);
  v19 = [v6 colorCache];
  v20 = [v19 countedFeatureAtIndex:self->mData.fontSize];
  v21 = [v20 feature];
  [(OADSolidFill *)v18 setColor:v21];

  [v22 setFill:v18];
  [v22 setIsBold:self->mData.fontColorIndex & 1];
  [v22 setIsItalic:(self->mData.fontColorIndex >> 1) & 1];
  [v22 setUnderlineType:(LOBYTE(self->mData.fontColorIndex) >> 2) & 0x1F];
  [v22 setFormatType:(self->mData.fontColorIndex >> 7) & 3];
  [v22 setFormatKerningType:(self->mData.fontColorIndex >> 9) & 3];
  [v22 setStrikeThroughType:(self->mData.fontColorIndex >> 11) & 3];
  [v22 setCaps:(self->mData.fontColorIndex >> 13) & 3];
}

@end
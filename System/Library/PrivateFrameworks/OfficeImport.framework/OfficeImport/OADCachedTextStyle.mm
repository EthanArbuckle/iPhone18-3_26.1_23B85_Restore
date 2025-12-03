@interface OADCachedTextStyle
- (BOOL)isEqual:(id)equal;
- (OADCachedTextStyle)initWithTextBodyProperties:(id)properties paragraphProperties:(id)paragraphProperties characterProperties:(id)characterProperties colorContext:(id)context graphicStyleCache:(id)cache;
- (void)applyToParagraphProperties:(id)properties graphicStyleCache:(id)cache;
@end

@implementation OADCachedTextStyle

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  v6 = equalCopy;
  v7 = objc_opt_class();
  v10 = v7 == objc_opt_class() && *(&selfCopy->mData + 3) == v6[4] && *&selfCopy->mData == v6[1] && *&selfCopy->mData.leftMargin == v6[2] && *(&selfCopy->mData + 2) == v6[3];

  return v10;
}

- (OADCachedTextStyle)initWithTextBodyProperties:(id)properties paragraphProperties:(id)paragraphProperties characterProperties:(id)characterProperties colorContext:(id)context graphicStyleCache:(id)cache
{
  propertiesCopy = properties;
  paragraphPropertiesCopy = paragraphProperties;
  characterPropertiesCopy = characterProperties;
  contextCopy = context;
  cacheCopy = cache;
  v48.receiver = self;
  v48.super_class = OADCachedTextStyle;
  v16 = [(OADCachedTextStyle *)&v48 init];
  if (v16)
  {
    v16[8] = v16[8] & 0xF8 | [propertiesCopy textAnchorType] & 7;
    lineSpacing = [paragraphPropertiesCopy lineSpacing];
    *(v16 + 9) = OADTextCachedSpacingWithSpacing(lineSpacing);

    beforeSpacing = [paragraphPropertiesCopy beforeSpacing];
    *(v16 + 11) = OADTextCachedSpacingWithSpacing(beforeSpacing);

    afterSpacing = [paragraphPropertiesCopy afterSpacing];
    *(v16 + 13) = OADTextCachedSpacingWithSpacing(afterSpacing);

    [paragraphPropertiesCopy leftMargin];
    *(v16 + 15) = llroundf(v20 * 8.0);
    [paragraphPropertiesCopy rightMargin];
    *(v16 + 17) = llroundf(v21 * 8.0);
    [paragraphPropertiesCopy indent];
    *(v16 + 19) = llroundf(v22 * 8.0);
    [paragraphPropertiesCopy defaultTab];
    *(v16 + 21) = llroundf(v23 * 8.0);
    v16[23] = v16[23] & 0xF0 | [paragraphPropertiesCopy align] & 0xF;
    if ([characterPropertiesCopy hasLatinFont])
    {
      [characterPropertiesCopy latinFont];
    }

    else
    {
      [paragraphPropertiesCopy latinFont];
    }
    v46 = ;
    fontFaceCache = [cacheCopy fontFaceCache];
    *(v16 + 12) = [fontFaceCache cacheFeature:v46];

    if ([characterPropertiesCopy hasSize])
    {
      v25 = characterPropertiesCopy;
    }

    else
    {
      v25 = paragraphPropertiesCopy;
    }

    [v25 size];
    *(v16 + 13) = llroundf(v26 * 8.0);
    if ([characterPropertiesCopy hasFill])
    {
      [characterPropertiesCopy fill];
    }

    else
    {
      [paragraphPropertiesCopy fill];
    }
    v45 = ;
    v27 = objc_opt_class();
    v28 = TSUDynamicCast(v27, v45);
    color = [v28 color];

    if (!color)
    {
      color = [OADSchemeColor schemeColorWithIndex:1];
    }

    v30 = [contextCopy map];
    scheme = [contextCopy scheme];
    palette = [contextCopy palette];
    v33 = [OADColor rgbColorWithColor:color colorMap:v30 colorScheme:scheme colorPalette:palette];

    propertiesCopy = v44;
    colorCache = [cacheCopy colorCache];
    *(v16 + 14) = [colorCache cacheFeature:v33];

    if ([characterPropertiesCopy hasIsBold])
    {
      v35 = characterPropertiesCopy;
    }

    else
    {
      v35 = paragraphPropertiesCopy;
    }

    *(v16 + 15) = *(v16 + 15) & 0xFFFE | [v35 isBold];
    if ([characterPropertiesCopy hasIsItalic])
    {
      v36 = characterPropertiesCopy;
    }

    else
    {
      v36 = paragraphPropertiesCopy;
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
    if ([characterPropertiesCopy hasUnderlineType])
    {
      v38 = characterPropertiesCopy;
    }

    else
    {
      v38 = paragraphPropertiesCopy;
    }

    *(v16 + 15) = *(v16 + 15) & 0xFF83 | (4 * ([v38 underlineType] & 0x1F));
    if ([characterPropertiesCopy hasFormatType])
    {
      v39 = characterPropertiesCopy;
    }

    else
    {
      v39 = paragraphPropertiesCopy;
    }

    *(v16 + 15) = *(v16 + 15) & 0xFE7F | (([v39 formatType] & 3) << 7);
    if ([characterPropertiesCopy hasFormatKerningType])
    {
      v40 = characterPropertiesCopy;
    }

    else
    {
      v40 = paragraphPropertiesCopy;
    }

    *(v16 + 15) = *(v16 + 15) & 0xF9FF | (([v40 formatKerningType] & 3) << 9);
    if ([characterPropertiesCopy hasStrikeThroughType])
    {
      v41 = characterPropertiesCopy;
    }

    else
    {
      v41 = paragraphPropertiesCopy;
    }

    *(v16 + 15) = *(v16 + 15) & 0xE7FF | (([v41 strikeThroughType] & 3) << 11);
    if ([characterPropertiesCopy hasCaps])
    {
      v42 = characterPropertiesCopy;
    }

    else
    {
      v42 = paragraphPropertiesCopy;
    }

    *(v16 + 15) = *(v16 + 15) & 0x9FFF | (([v42 caps] & 3) << 13);
    *(v16 + 4) = TSUHash(v16 + 8, 24);
  }

  return v16;
}

- (void)applyToParagraphProperties:(id)properties graphicStyleCache:(id)cache
{
  propertiesCopy = properties;
  cacheCopy = cache;
  v7 = OADTextSpacingWithCachedSpacing(*(&self->mData + 1));
  [propertiesCopy setLineSpacing:v7];

  v8 = OADTextSpacingWithCachedSpacing(*(&self->mData.lineSpacing + 1));
  [propertiesCopy setBeforeSpacing:v8];

  v9 = OADTextSpacingWithCachedSpacing(*(&self->mData.beforeSpacing + 1));
  [propertiesCopy setAfterSpacing:v9];

  *&v10 = vcvts_n_f32_s32(*(&self->mData.afterSpacing + 1), 3uLL);
  [propertiesCopy setLeftMargin:v10];
  *&v11 = vcvts_n_f32_s32(*(&self->mData.leftMargin + 1), 3uLL);
  [propertiesCopy setRightMargin:v11];
  *&v12 = vcvts_n_f32_s32(*(&self->mData.rightMargin + 1), 3uLL);
  [propertiesCopy setIndent:v12];
  *&v13 = vcvts_n_f32_s32(*(&self->mData.indent + 1), 3uLL);
  [propertiesCopy setDefaultTab:v13];
  [propertiesCopy setAlign:HIBYTE(self->mData.defaultTab) & 0xF];
  fontFaceCache = [cacheCopy fontFaceCache];
  v15 = [fontFaceCache countedFeatureAtIndex:*(&self->mData + 8)];
  feature = [v15 feature];
  [propertiesCopy setLatinFont:feature];

  *&v17 = vcvts_n_f32_s32(self->mData.fontFaceIndex, 3uLL);
  [propertiesCopy setSize:v17];
  v18 = objc_alloc_init(OADSolidFill);
  colorCache = [cacheCopy colorCache];
  v20 = [colorCache countedFeatureAtIndex:self->mData.fontSize];
  feature2 = [v20 feature];
  [(OADSolidFill *)v18 setColor:feature2];

  [propertiesCopy setFill:v18];
  [propertiesCopy setIsBold:self->mData.fontColorIndex & 1];
  [propertiesCopy setIsItalic:(self->mData.fontColorIndex >> 1) & 1];
  [propertiesCopy setUnderlineType:(LOBYTE(self->mData.fontColorIndex) >> 2) & 0x1F];
  [propertiesCopy setFormatType:(self->mData.fontColorIndex >> 7) & 3];
  [propertiesCopy setFormatKerningType:(self->mData.fontColorIndex >> 9) & 3];
  [propertiesCopy setStrikeThroughType:(self->mData.fontColorIndex >> 11) & 3];
  [propertiesCopy setCaps:(self->mData.fontColorIndex >> 13) & 3];
}

@end
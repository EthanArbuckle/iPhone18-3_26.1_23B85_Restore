@interface PBParagraphProperties
+ (int)pptAlignmentTypeWithOADTextAlignType:(unsigned __int8)type;
+ (int)pptFontAlignWithOADTextFontAlign:(unsigned __int8)align;
+ (signed)pptTextSpacingWithOADParaSpacing:(id)spacing defaultPptParaSpacing:(signed __int16)paraSpacing;
+ (void)readAlign:(id)align pptAlignmentType:(int)type;
+ (void)readParagraphProperties:(id)properties paragraphProperty:(void *)property bulletStyle:(PptParaProperty9 *)style isMaster:(BOOL)master state:(id)state;
+ (void)readParagraphProperties:(id)properties paragraphPropertyRun:(void *)run bulletStyle:(PptParaProperty9 *)style state:(id)state;
@end

@implementation PBParagraphProperties

+ (void)readParagraphProperties:(id)properties paragraphPropertyRun:(void *)run bulletStyle:(PptParaProperty9 *)style state:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  [propertiesCopy setLevel:*(run + 2)];
  [self readParagraphProperties:propertiesCopy paragraphProperty:run + 8 bulletStyle:style isMaster:0 state:stateCopy];
}

+ (void)readParagraphProperties:(id)properties paragraphProperty:(void *)property bulletStyle:(PptParaProperty9 *)style isMaster:(BOOL)master state:(id)state
{
  propertiesCopy = properties;
  stateCopy = state;
  if ((*(property + 3) & 8) != 0)
  {
    v14 = *(property + 5);
    if (v14 < 1)
    {
      v17 = [[OADPointBulletSize alloc] initWithPoints:-v14];
    }

    else
    {
      v15 = [OADPercentBulletSize alloc];
      *&v16 = v14;
      v17 = [(OADPercentBulletSize *)v15 initWithPercent:v16];
    }

    v13 = v17;
    [propertiesCopy setBulletSize:v17];
  }

  else
  {
    v13 = objc_alloc_init(OADBulletSizeFollowText);
    [propertiesCopy setBulletSize:v13];
  }

  if ((*(property + 3) & 4) != 0)
  {
    v19 = *(property + 5);
    if (v19 == 255)
    {
      goto LABEL_15;
    }

    if (v19 == 254)
    {
      v20 = *(property + 7);
      v21 = *(property + 8);
      v22 = *(property + 9);
      v23 = [OADRgbColor alloc];
      *&v24 = v20;
      *&v25 = v21;
      *&v26 = v22;
      v27 = [(OADRgbColor *)v23 initWithRedByte:v24 greenByte:v25 blueByte:v26];
    }

    else
    {
      v27 = [[OADSchemeColor alloc] initWithSchemeColorIndex:[PBColorScheme oadSchemeColorValueForEshSchemeColorIndex:*(property + 5)]];
    }

    v18 = v27;
    TCVerifyInputMeetsCondition(v27 != 0);
    v28 = [[OADBulletColorSpecification alloc] initWithBulletColor:v18];
    [propertiesCopy setBulletColor:v28];
  }

  else
  {
    v18 = objc_alloc_init(OADBulletColorFollowText);
    [propertiesCopy setBulletColor:v18];
  }

LABEL_15:
  if ((*(property + 3) & 2) != 0)
  {
    v29 = [stateCopy fontEntityAtIndex:*(property + 4)];
    TCVerifyInputMeetsCondition(v29 != 0);
    v30 = [OADBulletFontSpecification alloc];
    faceName = [(OADBulletFontFollowText *)v29 faceName];
    v32 = [(OADBulletFontSpecification *)v30 initWithFont:faceName];

    [propertiesCopy setBulletFont:v32];
    [propertiesCopy setBulletCharSet:{-[OADBulletFontFollowText charSet](v29, "charSet")}];
  }

  else
  {
    v29 = objc_alloc_init(OADBulletFontFollowText);
    [propertiesCopy setBulletFont:v29];
  }

  if (*(property + 3))
  {
    if (!style || ([PBBulletProperties readBulletProperties:style state:stateCopy], (v33 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v63 = *(property + 3);
      v34 = [MEMORY[0x277CCACA8] stringWithCharacters:&v63 length:1];
      v33 = [[OADCharacterBulletProperties alloc] initWithBullet:v34];
    }
  }

  else
  {
    v33 = objc_alloc_init(OADNullBulletProperties);
  }

  [propertiesCopy setBulletProperties:v33];
  v35 = *property;
  if ((*property & 0x800) != 0)
  {
    v36 = *(property + 12);
    if ((v36 & 0x80000000) != 0)
    {
      v39 = [[OADPointTextSpacing alloc] initWithPoints:-v36 >> 3];
    }

    else
    {
      v37 = [OADPercentTextSpacing alloc];
      *&v38 = v36;
      v39 = [(OADPercentTextSpacing *)v37 initWithPercent:v38];
    }

    v40 = v39;
    [propertiesCopy setLineSpacing:v39];

    v35 = *property;
  }

  if ((v35 & 0x1000) != 0)
  {
    v41 = *(property + 13);
    if ((v41 & 0x80000000) != 0)
    {
      v44 = [[OADPointTextSpacing alloc] initWithPoints:-v41 >> 3];
    }

    else
    {
      v42 = [OADPercentTextSpacing alloc];
      *&v43 = v41;
      v44 = [(OADPercentTextSpacing *)v42 initWithPercent:v43];
    }

    v45 = v44;
    [propertiesCopy setBeforeSpacing:v44];

    v35 = *property;
  }

  if ((v35 & 0x2000) != 0)
  {
    v46 = *(property + 14);
    if ((v46 & 0x80000000) != 0)
    {
      v49 = [[OADPointTextSpacing alloc] initWithPoints:-v46 >> 3];
    }

    else
    {
      v47 = [OADPercentTextSpacing alloc];
      *&v48 = v46;
      v49 = [(OADPercentTextSpacing *)v47 initWithPercent:v48];
    }

    v50 = v49;
    [propertiesCopy setAfterSpacing:v49];
  }

  [self readAlign:propertiesCopy pptAlignmentType:*(property + 4) & 0xF];
  *&v51 = vcvts_n_f32_s32(*(property + 15), 3uLL);
  [propertiesCopy setLeftMargin:v51];
  v53 = *(property + 5);
  if (v53)
  {
    v61 = stateCopy;
    v54 = v53[1] - *v53;
    v55 = (v54 >> 3);
    v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v55];
    if ((v54 & 0x7FFFFFFF8) != 0)
    {
      v57 = 0;
      do
      {
        v58 = objc_alloc_init(OADTabStop);
        v59 = *(*v53 + 8 * v57);
        [(OADTabStop *)v58 setAlign:v59];
        [(OADTabStop *)v58 setPosition:((WORD2(v59) + ((((v59 >> 16) >> 16) >> 28) & 7)) >> 3)];
        [v56 addObject:v58];

        ++v57;
      }

      while (v55 != v57);
    }

    [propertiesCopy setTabStops:{v56, v61}];

    stateCopy = v62;
  }

  *&v52 = vcvts_n_f32_s32(*(property + 16) - *(property + 15), 3uLL);
  [propertiesCopy setIndent:v52];
  *&v60 = vcvts_n_f32_s32(*(property + 17), 3uLL);
  [propertiesCopy setDefaultTab:v60];
}

+ (void)readAlign:(id)align pptAlignmentType:(int)type
{
  alignCopy = align;
  v6 = 0x503020100uLL >> (8 * type);
  if (type >= 5)
  {
    LOBYTE(v6) = 0;
  }

  v7 = alignCopy;
  [alignCopy setAlign:v6 & 7];
}

+ (signed)pptTextSpacingWithOADParaSpacing:(id)spacing defaultPptParaSpacing:(signed __int16)paraSpacing
{
  LOWORD(v4) = paraSpacing;
  spacingCopy = spacing;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [spacingCopy percent];
    v4 = v6;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOWORD(v4) = -8 * [spacingCopy points];
    }
  }

  return v4;
}

+ (int)pptAlignmentTypeWithOADTextAlignType:(unsigned __int8)type
{
  if ((type - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_25D70F400[(type - 1)];
  }
}

+ (int)pptFontAlignWithOADTextFontAlign:(unsigned __int8)align
{
  if (align == 2)
  {
    return 2;
  }

  else
  {
    return align == 1;
  }
}

@end
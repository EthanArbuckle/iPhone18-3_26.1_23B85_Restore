@interface NTKBatteryTimelineEntryModel
- (id)_graphicExtraLargeCircularTemplate;
- (id)_levelTintColor;
- (id)_newBatteryTemplateForFamily:(int64_t)a3;
- (id)_newUtilitarianLargeTemplate;
- (id)_newUtilitarianSmallFlatTemplate;
- (id)_ringTextProvider;
- (id)_signatureBezelTemplate;
- (id)_signatureCircularTemplate;
- (id)_signatureCornerTemplate;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKBatteryTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)a3
{
  v5 = 0;
  if (a3 > 6)
  {
    if (a3 > 8)
    {
      switch(a3)
      {
        case 9:
          v6 = [(NTKBatteryTimelineEntryModel *)self _signatureBezelTemplate];
          break;
        case 10:
          v6 = [(NTKBatteryTimelineEntryModel *)self _signatureCircularTemplate];
          break;
        case 12:
          v6 = [(NTKBatteryTimelineEntryModel *)self _graphicExtraLargeCircularTemplate];
          break;
        default:
          goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (a3 != 7)
    {
      v6 = [(NTKBatteryTimelineEntryModel *)self _signatureCornerTemplate];
LABEL_18:
      v5 = v6;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = [(NTKBatteryTimelineEntryModel *)self _newUtilitarianLargeTemplate];
      goto LABEL_18;
    }

    if (a3 != 4)
    {
      if (a3 != 6)
      {
        goto LABEL_19;
      }

      v6 = [(NTKBatteryTimelineEntryModel *)self _newUtilitarianSmallFlatTemplate];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!a3 || a3 == 2)
  {
LABEL_17:
    v6 = [(NTKBatteryTimelineEntryModel *)self _newBatteryTemplateForFamily:a3];
    goto LABEL_18;
  }

LABEL_19:
  if (*MEMORY[0x277CBB668] == a3)
  {
    v7 = [(NTKBatteryTimelineEntryModel *)self _newBatteryTemplateForFamily:a3];

    v5 = v7;
  }

  return v5;
}

- (id)_newUtilitarianSmallFlatTemplate
{
  [(NTKBatteryTimelineEntryModel *)self level];
  v2 = [NTKRing fillFractionStringWithSymbolForFillFraction:?];
  v3 = [MEMORY[0x277CBBB88] finalizedTextProviderWithText:v2];
  v4 = [MEMORY[0x277CBBA90] templateWithTextProvider:v3];
  [v4 finalize];

  return v4;
}

- (id)_newUtilitarianLargeTemplate
{
  *&v2 = self->_level;
  v4 = [NTKRing fillFractionStringWithSymbolForFillFraction:v2];
  v5 = [NTKBatteryUtilities chargingStringForState:self->_state];
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 uppercaseStringWithLocale:v6];

  v8 = NTKClockFaceLocalizedString(@"BATTERY_FORMAT", @"%@ %@");
  v9 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v8, v4, v7];
  v10 = MEMORY[0x277CBBB58];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__NTKBatteryTimelineEntryModel__newUtilitarianLargeTemplate__block_invoke;
  v15[3] = &unk_278784F28;
  v15[4] = self;
  v16 = v4;
  v11 = v4;
  v12 = [v10 textProviderWithText:v9 overrideBlock:v15];
  v13 = [MEMORY[0x277CBBA80] templateWithTextProvider:v12];

  return v13;
}

id __60__NTKBatteryTimelineEntryModel__newUtilitarianLargeTemplate__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v7];
    v10 = [*(a1 + 32) _levelTintColor];
    v11 = v10;
    if (v10)
    {
      v20 = *MEMORY[0x277D740C0];
      v21[0] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v13 = [v7 rangeOfString:*(a1 + 40)];
      [v9 setAttributes:v12 range:{v13, v14}];
    }

    v18 = *MEMORY[0x277D740A8];
    v15 = [v8 font];
    v19 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v9 setAttributes:v16 range:{0, objc_msgSend(v7, "length")}];
  }

  return v9;
}

- (id)_newBatteryTemplateForFamily:(int64_t)a3
{
  v5 = MEMORY[0x277CBB730];
  v6 = [(NTKBatteryTimelineEntryModel *)self _ringTextProvider];
  [(NTKBatteryTimelineEntryModel *)self level];
  v8 = [v5 templateWithFamily:a3 textProvider:v6 level:+[NTKBatteryUtilities chargingForState:](NTKBatteryUtilities charging:{"chargingForState:", -[NTKBatteryTimelineEntryModel state](self, "state")), v7}];

  return v8;
}

- (id)_signatureCornerTemplate
{
  v3 = [(NTKBatteryTimelineEntryModel *)self _levelTintColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] systemGreenColor];
  }

  v6 = v5;

  v7 = MEMORY[0x277CBBB78];
  [(NTKBatteryTimelineEntryModel *)self level];
  v8 = [v7 gaugeProviderWithStyle:1 gaugeColor:v6 fillFraction:?];
  [(NTKBatteryTimelineEntryModel *)self level];
  v9 = [NTKRing fillFractionStringWithSymbolForFillFraction:?];
  v10 = [MEMORY[0x277CBBB88] textProviderWithText:v9];
  v11 = [MEMORY[0x277CBB8D0] templateWithGaugeProvider:v8 outerTextProvider:v10];

  return v11;
}

- (id)_signatureCircularTemplate
{
  v3 = [(NTKBatteryTimelineEntryModel *)self _levelTintColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] systemGreenColor];
  }

  v6 = v5;

  v7 = MEMORY[0x277CBBB78];
  [(NTKBatteryTimelineEntryModel *)self level];
  v8 = [v7 gaugeProviderWithStyle:1 gaugeColor:v6 fillFraction:?];
  [(NTKBatteryTimelineEntryModel *)self level];
  v9 = [NTKRing fillFractionStringForFillFraction:?];
  v10 = [MEMORY[0x277CBBB88] textProviderWithText:v9];
  v11 = [MEMORY[0x277CBB838] templateWithGaugeProvider:v8 centerTextProvider:v10];

  return v11;
}

- (id)_graphicExtraLargeCircularTemplate
{
  v3 = [(NTKBatteryTimelineEntryModel *)self _levelTintColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] systemGreenColor];
  }

  v6 = v5;

  v7 = MEMORY[0x277CBBB78];
  [(NTKBatteryTimelineEntryModel *)self level];
  v8 = [v7 gaugeProviderWithStyle:1 gaugeColor:v6 fillFraction:?];
  [(NTKBatteryTimelineEntryModel *)self level];
  v9 = [NTKRing fillFractionStringForFillFraction:?];
  v10 = [MEMORY[0x277CBBB88] textProviderWithText:v9];
  v11 = [MEMORY[0x277CBB920] templateWithGaugeProvider:v8 centerTextProvider:v10];

  return v11;
}

- (id)_signatureBezelTemplate
{
  v2 = MEMORY[0x277CBB810];
  v3 = [(NTKBatteryTimelineEntryModel *)self _signatureCircularTemplate];
  v4 = [v2 templateWithCircularTemplate:v3];

  return v4;
}

- (id)_levelTintColor
{
  [(NTKBatteryTimelineEntryModel *)self level];
  v4 = v3;
  v5 = [(NTKBatteryTimelineEntryModel *)self state];
  LODWORD(v6) = v4;

  return [NTKBatteryUtilities colorForLevel:v5 andState:v6];
}

- (id)_ringTextProvider
{
  v2 = MEMORY[0x277CBBB88];
  [(NTKBatteryTimelineEntryModel *)self level];
  v3 = [NTKRing fillFractionStringForFillFraction:?];
  v4 = [v2 textProviderWithText:v3];

  return v4;
}

@end
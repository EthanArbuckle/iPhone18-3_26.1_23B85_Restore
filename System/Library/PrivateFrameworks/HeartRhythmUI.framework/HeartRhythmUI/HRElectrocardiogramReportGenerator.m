@interface HRElectrocardiogramReportGenerator
- (BOOL)_didMultilineBulletFlowIntoSectionThree:(id)a3 remainingRange:(_NSRange)a4;
- (CGPoint)_birthdateLeadingOrigin;
- (CGPoint)_nameLeadingOrigin;
- (CGPoint)_sampleDateTrailingOrigin;
- (CGRect)_chartRowOneAxisBox;
- (CGRect)_chartRowOneGridBox;
- (CGRect)_chartRowThreeAxisBox;
- (CGRect)_chartRowThreeGridBox;
- (CGRect)_chartRowTwoAxisBox;
- (CGRect)_chartRowTwoGridBox;
- (CGRect)_footerBox;
- (CGRect)_pdfCropBox;
- (CGRect)_pdfMediaBox;
- (CGRect)_sectionOneBox;
- (CGRect)_sectionThreeBox;
- (CGRect)_sectionTwoBox;
- (HRElectrocardiogramReportDataSource)dataSource;
- (HRElectrocardiogramReportGenerator)initWithDataSource:(id)a3;
- (_NSRange)_drawAttributedText:(id)a3 inRect:(CGRect)a4 distanceToFirstBaseline:(double)a5 drawHeartGlyph:(BOOL)a6 mustFitInRect:(BOOL)a7;
- (id)_appleWatchModelText;
- (id)_averageHeartRateSectionTitleAttributedTextWithText:(id)a3;
- (id)_averageHeartRateTitleText;
- (id)_birthdateAttributedText;
- (id)_birthdateText;
- (id)_bulletedDescriptionAttributedTextWithBullets:(id)a3;
- (id)_bulletedDescriptionTextAttributes;
- (id)_descriptionAttributedTextWithText:(id)a3;
- (id)_footerAttributedText;
- (id)_iOSVersionText;
- (id)_nameAttributedText;
- (id)_nameText;
- (id)_rhythmClassificationDescriptionText;
- (id)_rhythmClassificationTitleText;
- (id)_sampleAlgorithmVersionText;
- (id)_sampleDateAttributedText;
- (id)_sampleDateText;
- (id)_samplingRateText;
- (id)_sectionOneAttributedText;
- (id)_sectionThreeAttributedTextWithRemainingSectionTwoAttributedText:(id)a3;
- (id)_sectionTitleAttributedTextWithText:(id)a3;
- (id)_sectionTwoAttributedText;
- (id)_symptomsDescriptionText;
- (id)_watchOSVersionText;
- (id)generatePDF;
- (void)_drawAttributedText:(id)a3 atOrigin:(CGPoint)a4 leftAligned:(BOOL)a5;
- (void)_drawElectrocardiogramChartWithWaveformPathIndex:(int64_t)a3 gridRect:(CGRect)a4 axisRect:(CGRect)a5 axisStartingIndex:(int64_t)a6 displayControlSignal:(BOOL)a7;
- (void)_drawHorizontalSeparatorAt:(double)a3;
- (void)_drawRect:(CGRect)a3;
- (void)_drawUIKitContentAtDocumentOrigin:(CGPoint)a3 drawingBlock:(id)a4;
@end

@implementation HRElectrocardiogramReportGenerator

- (HRElectrocardiogramReportGenerator)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HRElectrocardiogramReportGenerator;
  v5 = [(HRElectrocardiogramReportGenerator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

- (id)generatePDF
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v4 = CGDataConsumerCreateWithCFData(v3);
  [(HRElectrocardiogramReportGenerator *)self _pdfMediaBox];
  v79.origin.x = v5;
  v79.origin.y = v6;
  v79.size.width = v7;
  v79.size.height = v8;
  v9 = CGPDFContextCreate(v4, &v79, 0);
  [(HRElectrocardiogramReportGenerator *)self setPdfContext:v9];
  CGPDFContextBeginPage(v9, 0);
  v10 = [(HRElectrocardiogramReportGenerator *)self _nameAttributedText];
  [(HRElectrocardiogramReportGenerator *)self _nameLeadingOrigin];
  [(HRElectrocardiogramReportGenerator *)self _drawAttributedText:v10 atOrigin:1 leftAligned:?];

  v11 = [(HRElectrocardiogramReportGenerator *)self _birthdateAttributedText];
  [(HRElectrocardiogramReportGenerator *)self _birthdateLeadingOrigin];
  [(HRElectrocardiogramReportGenerator *)self _drawAttributedText:v11 atOrigin:1 leftAligned:?];

  v12 = [(HRElectrocardiogramReportGenerator *)self _sampleDateAttributedText];
  [(HRElectrocardiogramReportGenerator *)self _sampleDateTrailingOrigin];
  [(HRElectrocardiogramReportGenerator *)self _drawAttributedText:v12 atOrigin:0 leftAligned:?];

  [(HRElectrocardiogramReportGenerator *)self _horizontalSeparatorY];
  [(HRElectrocardiogramReportGenerator *)self _drawHorizontalSeparatorAt:?];
  [(HRElectrocardiogramReportGenerator *)self descriptionTextSizeAdjustment];
  if (v13 < -4.0)
  {
LABEL_4:
    v19 = [(HRElectrocardiogramReportGenerator *)self _sectionOneAttributedText];
    [(HRElectrocardiogramReportGenerator *)self _sectionOneBox];
    [HRElectrocardiogramReportGenerator _drawAttributedText:"_drawAttributedText:inRect:distanceToFirstBaseline:drawHeartGlyph:mustFitInRect:" inRect:v19 distanceToFirstBaseline:1 drawHeartGlyph:0 mustFitInRect:?];
  }

  else
  {
    while (1)
    {
      v14 = [(HRElectrocardiogramReportGenerator *)self _sectionOneAttributedText];
      [(HRElectrocardiogramReportGenerator *)self _sectionOneBox];
      [HRElectrocardiogramReportGenerator _drawAttributedText:"_drawAttributedText:inRect:distanceToFirstBaseline:drawHeartGlyph:mustFitInRect:" inRect:v14 distanceToFirstBaseline:1 drawHeartGlyph:1 mustFitInRect:?];
      v16 = v15;

      if (!v16)
      {
        break;
      }

      [(HRElectrocardiogramReportGenerator *)self descriptionTextSizeAdjustment];
      [(HRElectrocardiogramReportGenerator *)self setDescriptionTextSizeAdjustment:v17 + -0.5];
      [(HRElectrocardiogramReportGenerator *)self descriptionTextSizeAdjustment];
      if (v18 < -4.0)
      {
        goto LABEL_4;
      }
    }
  }

  [(HRElectrocardiogramReportGenerator *)self setDescriptionTextSizeAdjustment:0.0];
  v20 = [(HRElectrocardiogramReportGenerator *)self _sectionTwoAttributedText];
  [(HRElectrocardiogramReportGenerator *)self _sectionTwoBox];
  v21 = [HRElectrocardiogramReportGenerator _drawAttributedText:"_drawAttributedText:inRect:distanceToFirstBaseline:drawHeartGlyph:mustFitInRect:" inRect:v20 distanceToFirstBaseline:0 drawHeartGlyph:0 mustFitInRect:?];
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = [v20 attributedSubstringFromRange:{v21, v22}];
    if ([(HRElectrocardiogramReportGenerator *)self _didMultilineBulletFlowIntoSectionThree:v20 remainingRange:v23, v24])
    {
      v26 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v25];
      v27 = objc_alloc(MEMORY[0x277CCA898]);
      v28 = [(HRElectrocardiogramReportGenerator *)self _bulletedDescriptionTextAttributes];
      v29 = [v27 initWithString:@"\t" attributes:v28];
      [v26 insertAttributedString:v29 atIndex:0];

      v30 = [v26 copy];
      v25 = v30;
    }

    v31 = [(HRElectrocardiogramReportGenerator *)self _sectionThreeAttributedTextWithRemainingSectionTwoAttributedText:v25];
    [(HRElectrocardiogramReportGenerator *)self _sectionThreeBox];
    [HRElectrocardiogramReportGenerator _drawAttributedText:"_drawAttributedText:inRect:distanceToFirstBaseline:drawHeartGlyph:mustFitInRect:" inRect:v31 distanceToFirstBaseline:0 drawHeartGlyph:0 mustFitInRect:?];
  }

  [(HRElectrocardiogramReportGenerator *)self _chartRowOneGridBox];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [(HRElectrocardiogramReportGenerator *)self _chartRowOneAxisBox];
  [(HRElectrocardiogramReportGenerator *)self _drawElectrocardiogramChartWithWaveformPathIndex:0 gridRect:0 axisRect:1 axisStartingIndex:v33 displayControlSignal:v35, v37, v39, v40, v41, v42, v43];
  [(HRElectrocardiogramReportGenerator *)self _chartRowTwoGridBox];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  [(HRElectrocardiogramReportGenerator *)self _chartRowTwoAxisBox];
  [(HRElectrocardiogramReportGenerator *)self _drawElectrocardiogramChartWithWaveformPathIndex:1 gridRect:10 axisRect:0 axisStartingIndex:v45 displayControlSignal:v47, v49, v51, v52, v53, v54, v55];
  [(HRElectrocardiogramReportGenerator *)self _chartRowThreeGridBox];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  [(HRElectrocardiogramReportGenerator *)self _chartRowThreeAxisBox];
  [(HRElectrocardiogramReportGenerator *)self _drawElectrocardiogramChartWithWaveformPathIndex:2 gridRect:20 axisRect:0 axisStartingIndex:v57 displayControlSignal:v59, v61, v63, v64, v65, v66, v67];
  [(HRElectrocardiogramReportGenerator *)self _footerBox];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = [(HRElectrocardiogramReportGenerator *)self _footerAttributedText];
  [(HRElectrocardiogramReportGenerator *)self _drawAttributedText:v76 inRect:0 distanceToFirstBaseline:0 drawHeartGlyph:v69 mustFitInRect:v71, v73, v75, 26.0];

  CGPDFContextEndPage(v9);
  CGContextRelease(v9);
  CGDataConsumerRelease(v4);
  v77 = [MEMORY[0x277CBEA90] dataWithData:v3];

  return v77;
}

- (CGRect)_pdfMediaBox
{
  v2 = 792.0;
  v3 = 612.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_pdfCropBox
{
  v2 = 40.0;
  v3 = 712.0;
  v4 = 532.0;
  v5 = 40.0;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v5;
  result.origin.x = v2;
  return result;
}

- (CGPoint)_nameLeadingOrigin
{
  [(HRElectrocardiogramReportGenerator *)self _pdfCropBox];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MinX = CGRectGetMinX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v7 = CGRectGetMaxY(v11) + -14.0;
  v8 = MinX;
  result.y = v7;
  result.x = v8;
  return result;
}

- (CGPoint)_birthdateLeadingOrigin
{
  [(HRElectrocardiogramReportGenerator *)self _nameLeadingOrigin];
  v4 = v3 + -14.0;
  result.y = v4;
  result.x = v2;
  return result;
}

- (CGPoint)_sampleDateTrailingOrigin
{
  [(HRElectrocardiogramReportGenerator *)self _birthdateLeadingOrigin];
  v4 = v3;
  [(HRElectrocardiogramReportGenerator *)self _pdfCropBox];
  MaxX = CGRectGetMaxX(v8);
  v6 = v4;
  result.y = v6;
  result.x = MaxX;
  return result;
}

- (CGRect)_sectionOneBox
{
  [(HRElectrocardiogramReportGenerator *)self _horizontalSeparatorY];
  v4 = v3;
  [(HRElectrocardiogramReportGenerator *)self _birthdateLeadingOrigin];
  v6 = v4 + -122.0;
  v7 = 210.0;
  v8 = 122.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_sectionTwoBox
{
  [(HRElectrocardiogramReportGenerator *)self _horizontalSeparatorY];
  v4 = v3;
  [(HRElectrocardiogramReportGenerator *)self _sectionOneBox];
  v5 = CGRectGetMaxX(v9) + 40.0;
  v6 = v4 + -122.0;
  v7 = 210.0;
  v8 = 122.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_sectionThreeBox
{
  [(HRElectrocardiogramReportGenerator *)self _horizontalSeparatorY];
  v4 = v3;
  [(HRElectrocardiogramReportGenerator *)self _sectionTwoBox];
  v5 = CGRectGetMaxX(v9) + 40.0;
  v6 = v4 + -122.0;
  v7 = 210.0;
  v8 = 122.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_chartRowOneGridBox
{
  [(HRElectrocardiogramReportGenerator *)self _sectionOneBox];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v6 = CGRectGetMinY(v11) + -20.0;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MinX = CGRectGetMinX(v12);
  v8 = v6 + -85.0395;
  v9 = 708.6625;
  v10 = 85.0395;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = MinX;
  return result;
}

- (CGRect)_chartRowOneAxisBox
{
  [(HRElectrocardiogramReportGenerator *)self _chartRowOneGridBox];
  v4 = v3 + -8.50395;
  v5 = 708.6625;
  v6 = 8.50395;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v2;
  return result;
}

- (CGRect)_chartRowTwoGridBox
{
  [(HRElectrocardiogramReportGenerator *)self _chartRowOneGridBox];
  v6 = v5 + -104.54345;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v2;
  return result;
}

- (CGRect)_chartRowTwoAxisBox
{
  [(HRElectrocardiogramReportGenerator *)self _chartRowTwoGridBox];
  v4 = v3 + -8.50395;
  v5 = 708.6625;
  v6 = 8.50395;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v2;
  return result;
}

- (CGRect)_chartRowThreeGridBox
{
  [(HRElectrocardiogramReportGenerator *)self _chartRowTwoGridBox];
  v6 = v5 + -104.54345;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v2;
  return result;
}

- (CGRect)_chartRowThreeAxisBox
{
  [(HRElectrocardiogramReportGenerator *)self _chartRowThreeGridBox];
  v4 = v3 + -8.50395;
  v5 = 708.6625;
  v6 = 8.50395;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v2;
  return result;
}

- (CGRect)_footerBox
{
  [(HRElectrocardiogramReportGenerator *)self _chartRowThreeAxisBox];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MinX = CGRectGetMinX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v7 = CGRectGetWidth(v12);
  v8 = 0.0;
  v9 = MinX;
  v10 = y;
  result.size.height = v10;
  result.size.width = v7;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (id)_nameAttributedText
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277D740A8];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];
  v11[0] = v3;
  v10[1] = *MEMORY[0x277D740C0];
  v4 = [(HRElectrocardiogramReportGenerator *)self _blackColorWithFraction:1.0];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = objc_alloc(MEMORY[0x277CCA898]);
  v7 = [(HRElectrocardiogramReportGenerator *)self _nameText];
  v8 = [v6 initWithString:v7 attributes:v5];

  return v8;
}

- (id)_nameText
{
  v3 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v4 = [v3 firstName];
  if (v4)
  {

LABEL_4:
    v7 = objc_alloc_init(MEMORY[0x277CCAC08]);
    [v7 setStyle:0];
    v8 = objc_alloc_init(MEMORY[0x277CCAC00]);
    v9 = [(HRElectrocardiogramReportGenerator *)self dataSource];
    v10 = [v9 firstName];
    [v8 setGivenName:v10];

    v11 = [(HRElectrocardiogramReportGenerator *)self dataSource];
    v12 = [v11 lastName];
    [v8 setFamilyName:v12];

    v13 = [v7 stringFromPersonNameComponents:v8];

    goto LABEL_5;
  }

  v5 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v6 = [v5 lastName];

  if (v6)
  {
    goto LABEL_4;
  }

  v13 = HRUIECGLocalizedString(@"NAME_BLANK");
LABEL_5:

  return v13;
}

- (id)_birthdateAttributedText
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277D740A8];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:*MEMORY[0x277D74418]];
  v11[0] = v3;
  v10[1] = *MEMORY[0x277D740C0];
  v4 = [(HRElectrocardiogramReportGenerator *)self _blackColorWithFraction:0.6];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = objc_alloc(MEMORY[0x277CCA898]);
  v7 = [(HRElectrocardiogramReportGenerator *)self _birthdateText];
  v8 = [v6 initWithString:v7 attributes:v5];

  return v8;
}

- (id)_birthdateText
{
  v2 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v3 = [v2 dateOfBirthComponents];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v4 setDateStyle:2];
    [v4 setTimeStyle:0];
    v5 = [v3 calendar];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    }

    v9 = v7;

    v10 = [v9 dateFromComponents:v3];
    v11 = [v4 stringFromDate:v10];
    v12 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [v9 components:4 fromDate:v10 toDate:v13 options:0];

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "year")}];
    v16 = [v12 stringFromNumber:v15];

    v17 = HRUIECGLocalizedString(@"DATE_OF_BIRTH_%@_AGE_%@");
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:v17, v11, v16];
  }

  else
  {
    v8 = HRUIECGLocalizedString(@"DATE_OF_BIRTH_BLANK");
  }

  return v8;
}

- (id)_sampleDateAttributedText
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277D740A8];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:*MEMORY[0x277D74418]];
  v11[0] = v3;
  v10[1] = *MEMORY[0x277D740C0];
  v4 = [(HRElectrocardiogramReportGenerator *)self _blackColorWithFraction:0.6];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = objc_alloc(MEMORY[0x277CCA898]);
  v7 = [(HRElectrocardiogramReportGenerator *)self _sampleDateText];
  v8 = [v6 initWithString:v7 attributes:v5];

  return v8;
}

- (id)_sampleDateText
{
  v2 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v3 = [v2 sample];
  v4 = [v3 startDate];

  v5 = HKLocalizedStringForDateAndTemplateWithFormattingContext();
  v6 = HKLocalizedStringForDateAndTemplateWithFormattingContext();
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateStyle:0];
  [v7 setTimeStyle:1];
  [v7 setFormattingContext:5];
  [v7 setLocalizedDateFormatFromTemplate:@"j"];
  v8 = [v7 stringFromDate:v4];
  v9 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v10 = [v9 invertedSet];

  v11 = [v8 componentsSeparatedByCharactersInSet:v10];
  v12 = [v11 componentsJoinedByString:&stru_2864680B0];

  v13 = objc_alloc(MEMORY[0x277CCABB8]);
  v14 = [v13 numberFromString:v12];

  if (v14)
  {
    v15 = [v14 integerValue];
  }

  else
  {
    v16 = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [v16 component:32 fromDate:v4];
  }

  if (v15 == 1)
  {
    v17 = @"SAMPLE_RECORDED_DATE_TIME_SINGULAR_HOUR_%@_%@";
  }

  else
  {
    v17 = @"SAMPLE_RECORDED_DATE_TIME_PLURAL_HOUR_%@_%@";
  }

  v18 = HRUIECGLocalizedString(v17);
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:v18, v5, v6];

  return v19;
}

- (id)_sectionOneAttributedText
{
  v3 = [(HRElectrocardiogramReportGenerator *)self _rhythmClassificationTitleText];
  v4 = HRUIECGLocalizedString(@"CLASSIFICATION_AND_AVG_HEART_RATE_SEPARATOR");
  v5 = [v3 stringByAppendingString:v4];

  v6 = [(HRElectrocardiogramReportGenerator *)self _averageHeartRateTitleText];
  v7 = [v6 stringByAppendingString:@"\n"];

  -[HRElectrocardiogramReportGenerator setHeartGlyphPositionInFirstSectionText:](self, "setHeartGlyphPositionInFirstSectionText:", [v5 length]);
  v8 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v9 = [(HRElectrocardiogramReportGenerator *)self _sectionTitleAttributedTextWithText:v5];
  [v8 appendAttributedString:v9];

  v10 = [(HRElectrocardiogramReportGenerator *)self _averageHeartRateSectionTitleAttributedTextWithText:v7];
  [v8 appendAttributedString:v10];

  v11 = [(HRElectrocardiogramReportGenerator *)self _rhythmClassificationDescriptionText];
  v12 = [(HRElectrocardiogramReportGenerator *)self _descriptionAttributedTextWithText:v11];
  [v8 appendAttributedString:v12];

  v13 = [v8 copy];

  return v13;
}

- (id)_sectionTwoAttributedText
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v4 = [(HRElectrocardiogramReportGenerator *)self _symptomsDescriptionText];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(HRElectrocardiogramReportGenerator *)self _symtpomsTitleText];
    v7 = [v6 stringByAppendingString:@"\n"];
    v8 = [(HRElectrocardiogramReportGenerator *)self _sectionTitleAttributedTextWithText:v7];
    [v3 appendAttributedString:v8];

    v9 = [(HRElectrocardiogramReportGenerator *)self _symptomsDescriptionText];
    v10 = [(HRElectrocardiogramReportGenerator *)self _bulletedDescriptionAttributedTextWithBullets:v9];
    [v3 appendAttributedString:v10];

    v11 = [v3 copy];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CCA898]);
  }

  v12 = v11;

  return v12;
}

- (id)_sectionThreeAttributedTextWithRemainingSectionTwoAttributedText:(id)a3
{
  v4 = MEMORY[0x277CCAB48];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(HRElectrocardiogramReportGenerator *)self _symptomsContinuedTitleText];
  v8 = [v7 stringByAppendingString:@"\n"];
  v9 = [(HRElectrocardiogramReportGenerator *)self _sectionTitleAttributedTextWithText:v8];
  [v6 appendAttributedString:v9];

  [v6 appendAttributedString:v5];
  v10 = [v6 copy];

  return v10;
}

- (id)_sectionTitleAttributedTextWithText:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D740A8];
  v4 = MEMORY[0x277D74300];
  v5 = *MEMORY[0x277D743F8];
  v6 = a3;
  v7 = [v4 systemFontOfSize:10.0 weight:v5];
  v13[0] = v7;
  v12[1] = *MEMORY[0x277D740C0];
  v8 = [(HRElectrocardiogramReportGenerator *)self _blackColorWithFraction:1.0];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v9];

  return v10;
}

- (id)_averageHeartRateSectionTitleAttributedTextWithText:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  *&v16.version = xmmword_2522259C0;
  v16.getAscent = HeartGlyphAscent;
  v16.getDescent = HeartGlyphDescent;
  v16.getWidth = HeartGlyphWidth;
  v4 = a3;
  v5 = CTRunDelegateCreate(&v16, 0);
  v19 = *MEMORY[0x277CC4A00];
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:{1, *&v16.version, v16.getAscent, v16.getDescent, v16.getWidth}];
  v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" " attributes:v6];
  v8 = [@" " stringByAppendingString:v4];

  v17[0] = *MEMORY[0x277D740A8];
  v9 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:*MEMORY[0x277D743F8]];
  v18[0] = v9;
  v17[1] = *MEMORY[0x277D740C0];
  v10 = [(HRElectrocardiogramReportGenerator *)self _blackColorWithFraction:0.6];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8 attributes:v11];
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v7];
  [v13 appendAttributedString:v12];
  v14 = [v13 copy];

  return v14;
}

- (id)_rhythmClassificationTitleText
{
  v3 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v4 = [v3 sample];
  v5 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v6 = [v4 _localizedClassificationWithActiveAlgorithmVersion:{objc_msgSend(v5, "activeAlgorithmVersion")}];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_2864680B0;
  }

  v9 = v8;

  return v8;
}

- (id)_averageHeartRateTitleText
{
  v2 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v3 = [v2 sample];
  v4 = [v3 hk_localizedAverageBPM];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_2864680B0;
  }

  v7 = v6;

  return v6;
}

- (id)_descriptionAttributedTextWithText:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D74240];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setParagraphSpacingBefore:5.0];
  [v6 setLineSpacing:3.0];
  v15[0] = *MEMORY[0x277D740A8];
  v7 = MEMORY[0x277D74300];
  [(HRElectrocardiogramReportGenerator *)self descriptionTextSizeAdjustment];
  v9 = [v7 systemFontOfSize:v8 + 10.0 weight:*MEMORY[0x277D74418]];
  v16[0] = v9;
  v15[1] = *MEMORY[0x277D740C0];
  v10 = [(HRElectrocardiogramReportGenerator *)self _blackColorWithFraction:0.6];
  v16[1] = v10;
  v15[2] = *MEMORY[0x277D74118];
  v11 = [v6 copy];
  v16[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v12];

  return v13;
}

- (id)_bulletedDescriptionAttributedTextWithBullets:(id)a3
{
  v4 = a3;
  v5 = [(HRElectrocardiogramReportGenerator *)self _bulletedDescriptionTextAttributes];
  v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"•" attributes:v5];
  v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\t" attributes:v5];
  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n" attributes:v5];
  v9 = objc_alloc_init(MEMORY[0x277CCAB48]);
  if ([v4 count])
  {
    v10 = 0;
    do
    {
      [v9 appendAttributedString:v6];
      [v9 appendAttributedString:v7];
      v11 = objc_alloc(MEMORY[0x277CCA898]);
      v12 = [v4 objectAtIndexedSubscript:v10];
      v13 = [v11 initWithString:v12 attributes:v5];
      [v9 appendAttributedString:v13];

      [v9 appendAttributedString:v8];
      ++v10;
    }

    while (v10 < [v4 count]);
  }

  return v9;
}

- (id)_rhythmClassificationDescriptionText
{
  v3 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v4 = [v3 sample];
  v5 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v6 = [v4 hrui_classificationShortBodyTextWithActiveAlgorithmVersion:objc_msgSend(v5 isSharedData:{"activeAlgorithmVersion"), 0}];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_2864680B0;
  }

  v9 = v8;

  return v8;
}

- (id)_symptomsDescriptionText
{
  v2 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v3 = [v2 sample];
  v4 = [v3 _localizedSymptoms];

  return v4;
}

- (id)_footerAttributedText
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D740A8];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:8.0 weight:*MEMORY[0x277D74418]];
  v21[0] = v3;
  v20[1] = *MEMORY[0x277D740C0];
  v4 = [(HRElectrocardiogramReportGenerator *)self _blackColorWithFraction:0.6];
  v21[1] = v4;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v19 = HRUIECGLocalizedString(@"FOOTER_FORMAT_STRING_V2_%1$@_%2$@_%3$@_%4$@_%5$@_%6$@_%7$@_%8$@_%9$@");
  v17 = MEMORY[0x277CCACA8];
  v5 = [(HRElectrocardiogramReportGenerator *)self _horizontalChartResolutionText];
  v6 = [(HRElectrocardiogramReportGenerator *)self _verticalChartResolutionText];
  v7 = [(HRElectrocardiogramReportGenerator *)self _leadNameText];
  v8 = [(HRElectrocardiogramReportGenerator *)self _samplingRateText];
  v9 = [(HRElectrocardiogramReportGenerator *)self _iOSVersionText];
  v10 = [(HRElectrocardiogramReportGenerator *)self _watchOSVersionText];
  v11 = [(HRElectrocardiogramReportGenerator *)self _appleWatchModelText];
  v12 = [(HRElectrocardiogramReportGenerator *)self _sampleAlgorithmVersionText];
  v13 = [(HRElectrocardiogramReportGenerator *)self _informationalText];
  v14 = [v17 stringWithFormat:v19, v5, v6, v7, v8, v9, v10, v11, v12, v13];

  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v14 attributes:v18];

  return v15;
}

- (id)_samplingRateText
{
  v2 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v3 = [v2 sample];
  v4 = [v3 samplingFrequency];
  v5 = [v4 _foundationMeasurement];

  v6 = objc_alloc_init(MEMORY[0x277CCAB18]);
  v7 = HKIntegerFormatter();
  [v6 setNumberFormatter:v7];

  [v6 setUnitStyle:1];
  [v6 setUnitOptions:1];
  if (v5)
  {
    v8 = [v6 stringFromMeasurement:v5];
  }

  else
  {
    v8 = &stru_2864680B0;
  }

  return v8;
}

- (id)_appleWatchModelText
{
  v3 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v4 = [v3 hk_hfeModeEnabled];

  if (v4)
  {
    v5 = &stru_2864680B0;
  }

  else
  {
    v6 = [(HRElectrocardiogramReportGenerator *)self dataSource];
    v7 = [v6 sample];
    v8 = [v7 device];
    v9 = [v8 hardwareVersion];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = HRUIECGLocalizedString(@"UNKNOWN_WATCH_MODEL");
    }

    v5 = v11;
  }

  return v5;
}

- (id)_iOSVersionText
{
  v2 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v3 = [v2 hk_hfeModeEnabled];

  if (v3)
  {
    v4 = &stru_2864680B0;
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = HRUIECGLocalizedString(@"IOS_VERSION_PREFIX");
    v7 = [MEMORY[0x277CCDD30] currentOSVersion];
    v4 = [v5 stringWithFormat:@"%@ %@", v6, v7];
  }

  return v4;
}

- (id)_sampleAlgorithmVersionText
{
  v2 = [(HRElectrocardiogramReportGenerator *)self dataSource];
  v3 = [v2 sample];
  v4 = [v3 _algorithmVersion];

  if (!v4)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = HRUIECGLocalizedString(@"ALGORITHM_VERSION_PREFIX");
  v7 = [v5 stringWithFormat:@"%@ %@", v6, v4];

  return v7;
}

- (id)_watchOSVersionText
{
  v3 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v4 = [v3 hk_hfeModeEnabled];

  if (v4)
  {
    v5 = &stru_2864680B0;
  }

  else
  {
    v6 = [(HRElectrocardiogramReportGenerator *)self dataSource];
    v7 = [v6 sample];
    v8 = [v7 device];
    v9 = [v8 softwareVersion];

    if (v9)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = HRUIECGLocalizedString(@"WATCHOS_VERSION_PREFIX");
      v12 = [(HRElectrocardiogramReportGenerator *)self dataSource];
      v13 = [v12 sample];
      v14 = [v13 device];
      v15 = [v14 softwareVersion];
      v5 = [v10 stringWithFormat:@"%@ %@", v11, v15];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_drawHorizontalSeparatorAt:(double)a3
{
  v5 = [(HRElectrocardiogramReportGenerator *)self pdfContext];
  v6 = [(HRElectrocardiogramReportGenerator *)self _blackColorWithFraction:0.2];
  CGContextSetStrokeColorWithColor(v5, [v6 CGColor]);

  CGContextSetLineWidth([(HRElectrocardiogramReportGenerator *)self pdfContext], 0.5);
  CGContextBeginPath([(HRElectrocardiogramReportGenerator *)self pdfContext]);
  v7 = [(HRElectrocardiogramReportGenerator *)self pdfContext];
  [(HRElectrocardiogramReportGenerator *)self _pdfCropBox];
  MinX = CGRectGetMinX(v13);
  CGContextMoveToPoint(v7, MinX, a3);
  v9 = [(HRElectrocardiogramReportGenerator *)self pdfContext];
  [(HRElectrocardiogramReportGenerator *)self _pdfCropBox];
  MaxX = CGRectGetMaxX(v14);
  CGContextAddLineToPoint(v9, MaxX, a3);
  v11 = [(HRElectrocardiogramReportGenerator *)self pdfContext];

  CGContextDrawPath(v11, kCGPathStroke);
}

- (void)_drawAttributedText:(id)a3 atOrigin:(CGPoint)a4 leftAligned:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v9 = CTLineCreateWithAttributedString(a3);
  v10 = v9;
  if (!a5)
  {
    x = x - CTLineGetTypographicBounds(v9, 0, 0, 0);
  }

  CGContextSetTextPosition([(HRElectrocardiogramReportGenerator *)self pdfContext], x, y);
  CTLineDraw(v10, [(HRElectrocardiogramReportGenerator *)self pdfContext]);

  CFRelease(v10);
}

- (_NSRange)_drawAttributedText:(id)a3 inRect:(CGRect)a4 distanceToFirstBaseline:(double)a5 drawHeartGlyph:(BOOL)a6 mustFitInRect:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v63 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = [(HRElectrocardiogramReportGenerator *)self pdfContext];
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v62.a = *MEMORY[0x277CBF2C0];
  *&v62.c = v17;
  *&v62.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(v16, &v62);
  v60 = v15;
  v18 = CTFramesetterCreateWithAttributedString(v15);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  v19 = CGPathCreateWithRect(v70, 0);
  v65.location = 0;
  v65.length = 0;
  Frame = CTFramesetterCreateFrame(v18, v65, v19, 0);
  Lines = CTFrameGetLines(Frame);
  Count = CFArrayGetCount(Lines);
  v59 = v18;
  if (Count < 1)
  {
    v25 = Count;
    v58 = v19;
  }

  else
  {
    *&v62.a = *MEMORY[0x277CBF348];
    v66.location = 0;
    v66.length = 1;
    CTFrameGetLineOrigins(Frame, v66, &v62);
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    v23 = height - (a5 - (CGRectGetHeight(v71) - v62.b));
    CFRelease(Frame);
    CFRelease(v19);
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = v23;
    v24 = CGPathCreateWithRect(v72, 0);
    v67.location = 0;
    v67.length = 0;
    v58 = v24;
    Frame = CTFramesetterCreateFrame(v18, v67, v24, 0);
    Lines = CTFrameGetLines(Frame);
    v25 = CFArrayGetCount(Lines);
  }

  length = CTFrameGetStringRange(Frame).length;
  VisibleStringRange = CTFrameGetVisibleStringRange(Frame);
  location = VisibleStringRange.location;
  v28 = VisibleStringRange.length;
  if (!v7 || length == VisibleStringRange.length)
  {
    CTFrameDraw(Frame, [(HRElectrocardiogramReportGenerator *)self pdfContext]);
    if (v8 && v25 >= 1)
    {
      v29 = 0;
      v55 = VisibleStringRange.length;
      v56 = length;
      v54 = v25;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Lines, v29);
        GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
        v31 = CFArrayGetCount(GlyphRuns);
        if (v31 >= 1)
        {
          break;
        }

LABEL_14:
        ++v29;
        v28 = v55;
        length = v56;
        if (v29 >= v54)
        {
          goto LABEL_17;
        }
      }

      v32 = v31;
      v33 = 0;
      while (1)
      {
        v34 = CFArrayGetValueAtIndex(GlyphRuns, v33);
        StringRange = CTRunGetStringRange(v34);
        if (StringRange.location <= [(HRElectrocardiogramReportGenerator *)self heartGlyphPositionInFirstSectionText]&& StringRange.location + StringRange.length > [(HRElectrocardiogramReportGenerator *)self heartGlyphPositionInFirstSectionText])
        {
          break;
        }

        if (++v33 >= v32)
        {
          goto LABEL_14;
        }
      }

      descent = 0.0;
      v62.a = 0.0;
      v68.location = 0;
      v68.length = 0;
      TypographicBounds = CTRunGetTypographicBounds(v34, v68, &v62.a, &descent, 0);
      v37 = v62.a + descent;
      v38 = CTRunGetStringRange(v34).location;
      OffsetForStringIndex = CTLineGetOffsetForStringIndex(ValueAtIndex, v38, 0);
      MEMORY[0x28223BE20]();
      v41 = (&v52 - 2 * v40);
      v69.location = 0;
      v69.length = 0;
      CTFrameGetLineOrigins(Frame, v69, v41);
      p_x = &v41[v29].x;
      v43 = OffsetForStringIndex + x + *p_x;
      v44 = y + p_x[1] - descent;
      v45 = MEMORY[0x277D755B8];
      v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v47 = [v45 imageNamed:@"bpm.pdf" inBundle:v46 compatibleWithTraitCollection:0];

      v48 = [(HRElectrocardiogramReportGenerator *)self pdfContext];
      v49 = [v47 CGImage];
      v73.origin.x = v43;
      v73.origin.y = v44;
      v73.size.width = TypographicBounds;
      v73.size.height = v37;
      CGContextDrawImage(v48, v73, v49);

      v28 = v55;
      length = v56;
    }
  }

LABEL_17:
  CFRelease(Frame);
  CFRelease(v59);
  CFRelease(v58);

  v50 = length - v28;
  v51 = location + v28;
  result.length = v50;
  result.location = v51;
  return result;
}

- (void)_drawElectrocardiogramChartWithWaveformPathIndex:(int64_t)a3 gridRect:(CGRect)a4 axisRect:(CGRect)a5 axisStartingIndex:(int64_t)a6 displayControlSignal:(BOOL)a7
{
  v7 = a7;
  height = a5.size.height;
  y = a5.origin.y;
  width = a5.size.width;
  x = a5.origin.x;
  v10 = a4.size.height;
  v11 = a4.size.width;
  v12 = a4.origin.y;
  v13 = a4.origin.x;
  v16 = objc_alloc(MEMORY[0x277D12860]);
  v17 = [MEMORY[0x277D12860] printedGridOptions];
  v18 = [v16 initWithGridSize:v17 gridOptions:{2.83465, 2.83465}];

  v19 = [(HRElectrocardiogramReportGenerator *)self waveformPaths];

  if (!v19)
  {
    v52 = height;
    v20 = [(HRElectrocardiogramReportGenerator *)self dataSource];
    v21 = [v20 sample];
    [v18 pointsPerSecond];
    v23 = v22;
    [v18 pointsPerMillivolt];
    v27 = v26;
    v28 = 0.0;
    if (v7)
    {
      [v18 controlSignalDuration];
      v28 = v29;
    }

    LODWORD(v24) = *MEMORY[0x277D12740];
    LODWORD(v25) = *MEMORY[0x277D12738];
    v30 = [v21 hk_waveformPathsWithPointsPerSecond:v23 pointsPerMillivolt:v27 wrappingDuration:10.0 omittingInitialDuration:v28 minimumValueInMillivolts:v24 maximumValueInMillivolts:v25];
    [(HRElectrocardiogramReportGenerator *)self setWaveformPaths:v30];

    height = v52;
  }

  v31 = [(HRElectrocardiogramReportGenerator *)self waveformPaths];
  if ([v31 count] <= a3)
  {
    v33 = objc_alloc_init(MEMORY[0x277D75208]);
  }

  else
  {
    v32 = [(HRElectrocardiogramReportGenerator *)self waveformPaths];
    v33 = [v32 objectAtIndexedSubscript:a3];
  }

  v53 = v33;

  [v18 setWaveformPath:v33];
  [v18 setDisplayControlSignal:v7];
  [v18 setLineWidth:1.0];
  v34 = [MEMORY[0x277D75348] colorWithRed:0.803921569 green:0.0392156863 blue:0.125490196 alpha:1.0];
  [v18 setLineColor:v34];

  [v18 setFrame:{v13, v12, v11, v10}];
  [v18 setNeedsLayout];
  [v18 layoutIfNeeded];
  v63.origin.x = v13;
  v63.origin.y = v12;
  v63.size.width = v11;
  v63.size.height = v10;
  MaxY = CGRectGetMaxY(v63);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __144__HRElectrocardiogramReportGenerator__drawElectrocardiogramChartWithWaveformPathIndex_gridRect_axisRect_axisStartingIndex_displayControlSignal___block_invoke;
  v60[3] = &unk_2796FBA58;
  v61 = v18;
  v62 = self;
  v36 = v18;
  [(HRElectrocardiogramReportGenerator *)self _drawUIKitContentAtDocumentOrigin:v60 drawingBlock:v13, MaxY];
  v51 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v37 = [MEMORY[0x277D75348] hk_chartAxisLabelColor];
  v38 = [v37 resolvedColorWithTraitCollection:v51];

  v39 = objc_alloc(MEMORY[0x277D12848]);
  v40 = [MEMORY[0x277D74300] systemFontOfSize:5.0 weight:*MEMORY[0x277D74420]];
  v41 = [v36 gridOptions];
  v42 = [v41 firstObject];
  v43 = [v42 lineColor];
  v44 = [v36 gridOptions];
  v45 = [v44 firstObject];
  [v45 lineWidth];
  v46 = [v39 initWithAxisLabelFont:v40 axisLabelTextColor:v38 scaleMetricsAutomatically:0 lineColor:v43 lineWidth:? axisLineToLabelSpacing:? topBaselineMargin:? bottomBaselineMargin:?];

  v47 = objc_alloc(MEMORY[0x277D12850]);
  [v36 pointsPerSecond];
  v48 = [v47 initWithAxisSpacing:v46 options:a6 startingIndex:?];
  [v48 setFrame:{x, y, width, height}];
  [v48 setNeedsLayout];
  [v48 layoutIfNeeded];
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  v49 = CGRectGetMaxY(v64);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __144__HRElectrocardiogramReportGenerator__drawElectrocardiogramChartWithWaveformPathIndex_gridRect_axisRect_axisStartingIndex_displayControlSignal___block_invoke_2;
  v57[3] = &unk_2796FBA58;
  v58 = v48;
  v59 = self;
  v50 = v48;
  [(HRElectrocardiogramReportGenerator *)self _drawUIKitContentAtDocumentOrigin:v57 drawingBlock:x, v49];
}

void __144__HRElectrocardiogramReportGenerator__drawElectrocardiogramChartWithWaveformPathIndex_gridRect_axisRect_axisStartingIndex_displayControlSignal___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 renderInContext:{objc_msgSend(*(a1 + 40), "pdfContext")}];
}

void __144__HRElectrocardiogramReportGenerator__drawElectrocardiogramChartWithWaveformPathIndex_gridRect_axisRect_axisStartingIndex_displayControlSignal___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 renderInContext:{objc_msgSend(*(a1 + 40), "pdfContext")}];
}

- (void)_drawUIKitContentAtDocumentOrigin:(CGPoint)a3 drawingBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  CGContextTranslateCTM([(HRElectrocardiogramReportGenerator *)self pdfContext], 0.0, 612.0);
  CGContextScaleCTM([(HRElectrocardiogramReportGenerator *)self pdfContext], 1.0, -1.0);
  v8 = 612.0 - y;
  CGContextTranslateCTM([(HRElectrocardiogramReportGenerator *)self pdfContext], x, v8);
  v7[2](v7);

  CGContextTranslateCTM([(HRElectrocardiogramReportGenerator *)self pdfContext], -x, -v8);
  CGContextScaleCTM([(HRElectrocardiogramReportGenerator *)self pdfContext], 1.0, -1.0);
  v9 = [(HRElectrocardiogramReportGenerator *)self pdfContext];

  CGContextTranslateCTM(v9, 0.0, -612.0);
}

- (void)_drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSetRGBStrokeColor([(HRElectrocardiogramReportGenerator *)self pdfContext], 1.0, 0.0, 0.0, 1.0);
  v8 = [(HRElectrocardiogramReportGenerator *)self pdfContext];
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  CGContextStrokeRectWithWidth(v8, *&v9, 2.0);
}

- (id)_bulletedDescriptionTextAttributes
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D74240]);
  [v3 setParagraphSpacingBefore:5.0];
  [v3 setLineSpacing:3.0];
  [v3 setHeadIndent:8.0];
  v4 = objc_alloc(MEMORY[0x277D742E0]);
  v5 = [v4 initWithTextAlignment:4 location:MEMORY[0x277CBEC10] options:8.0];
  v14[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v3 setTabStops:v6];

  v7 = [MEMORY[0x277D74300] systemFontOfSize:10.0 weight:{*MEMORY[0x277D74418], *MEMORY[0x277D740A8]}];
  v13[0] = v7;
  v12[1] = *MEMORY[0x277D740C0];
  v8 = [(HRElectrocardiogramReportGenerator *)self _blackColorWithFraction:0.6];
  v13[1] = v8;
  v12[2] = *MEMORY[0x277D74118];
  v9 = [v3 copy];
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (BOOL)_didMultilineBulletFlowIntoSectionThree:(id)a3 remainingRange:(_NSRange)a4
{
  if (!a4.length)
  {
    return 0;
  }

  v4 = [a3 attributedSubstringFromRange:{0, a4.location}];
  v5 = [v4 string];

  v6 = [v5 rangeOfString:@"\n" options:4];
  v7 = [v5 rangeOfString:@"•" options:4];
  v10 = v7 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0x7FFFFFFFFFFFFFFFLL && v7 > v6;

  return v10;
}

- (HRElectrocardiogramReportDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end
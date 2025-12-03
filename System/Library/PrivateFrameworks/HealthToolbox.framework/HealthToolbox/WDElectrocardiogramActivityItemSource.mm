@interface WDElectrocardiogramActivityItemSource
- (WDElectrocardiogramActivityItemSource)initWithPDFData:(id)data sampleDate:(id)date firstName:(id)name lastName:(id)lastName provenance:(unint64_t)provenance;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)pdfFileNameForSampleDate:(id)date firstName:(id)name lastName:(id)lastName;
- (void)dealloc;
@end

@implementation WDElectrocardiogramActivityItemSource

- (id)pdfFileNameForSampleDate:(id)date firstName:(id)name lastName:(id)lastName
{
  dateCopy = date;
  nameCopy = name;
  lastNameCopy = lastName;
  v10 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v10 setDateFormat:@"yyyy-MM-dd"];
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateFormat:@"HH.mm"];
  v12 = *MEMORY[0x277CBE5C0];
  v13 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v10 setCalendar:v13];

  v51 = v11;
  v14 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v12];
  [v11 setCalendar:v14];

  v15 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v15 setDateStyle:0];
  [v15 setTimeStyle:1];
  [v15 setFormattingContext:5];
  [v15 setLocalizedDateFormatFromTemplate:@"j"];
  v16 = [v15 stringFromDate:dateCopy];
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v49 = invertedSet;
  v50 = v16;
  v19 = [v16 componentsSeparatedByCharactersInSet:invertedSet];
  v20 = [v19 componentsJoinedByString:&stru_28641D9B8];

  v21 = objc_alloc(MEMORY[0x277CCABB8]);
  v48 = v20;
  v22 = [v21 numberFromString:v20];

  v47 = v22;
  if (v22)
  {
    v23 = dateCopy;
    integerValue = [v22 integerValue];
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v23 = dateCopy;
    integerValue = [currentCalendar component:32 fromDate:dateCopy];
  }

  v52 = lastNameCopy;
  v53 = nameCopy;
  if ([nameCopy length] || objc_msgSend(lastNameCopy, "length"))
  {
    v26 = objc_alloc_init(MEMORY[0x277CCAC00]);
    [v26 setGivenName:nameCopy];
    [v26 setFamilyName:lastNameCopy];
    v27 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v26 style:2 options:0];
    v28 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@":/\\""];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v27, "UTF8String")}];
    v30 = [v29 hk_stringByRemovingCharactersInSet:v28];
  }

  else
  {
    v30 = 0;
  }

  v31 = [v30 length];
  v32 = MEMORY[0x277CCACA8];
  v33 = WDBundle();
  v34 = v33;
  v46 = v10;
  if (v31)
  {
    if (integerValue == 1)
    {
      v35 = @"PDF_FILE_NAME_SINGULAR_HOUR";
    }

    else
    {
      v35 = @"PDF_FILE_NAME_PLURAL_HOUR";
    }

    v36 = [v33 localizedStringForKey:v35 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v37 = HKConditionallyRedactedHeartRhythmString();
    [v10 stringFromDate:v23];
    v39 = v38 = v23;
    v40 = v51;
    v41 = [v51 stringFromDate:v38];
    [v32 stringWithFormat:v37, v30, v39, v41];
  }

  else
  {
    if (integerValue == 1)
    {
      v42 = @"PDF_FILE_NAME_SINGULAR_HOUR_WITHOUT_NAME";
    }

    else
    {
      v42 = @"PDF_FILE_NAME_PLURAL_HOUR_WITHOUT_NAME";
    }

    v36 = [v33 localizedStringForKey:v42 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v37 = HKConditionallyRedactedHeartRhythmString();
    [v10 stringFromDate:v23];
    v39 = v38 = v23;
    v40 = v51;
    v41 = [v51 stringFromDate:v38];
    [v32 stringWithFormat:v37, v39, v41, v45];
  }
  v43 = ;

  return v43;
}

- (WDElectrocardiogramActivityItemSource)initWithPDFData:(id)data sampleDate:(id)date firstName:(id)name lastName:(id)lastName provenance:(unint64_t)provenance
{
  dataCopy = data;
  dateCopy = date;
  nameCopy = name;
  lastNameCopy = lastName;
  v37.receiver = self;
  v37.super_class = WDElectrocardiogramActivityItemSource;
  v16 = [(WDElectrocardiogramActivityItemSource *)&v37 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_11;
  }

  provenanceCopy = provenance;
  v18 = [(WDElectrocardiogramActivityItemSource *)v16 pdfFileNameForSampleDate:dateCopy firstName:nameCopy lastName:lastNameCopy];
  v19 = NSTemporaryDirectory();
  v20 = [v19 stringByAppendingPathComponent:v18];
  v21 = [v20 stringByAppendingPathExtension:@"pdf"];

  v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v21];
  pdfTemporaryFileURL = v17->_pdfTemporaryFileURL;
  v17->_pdfTemporaryFileURL = v22;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v20) = [defaultManager fileExistsAtPath:v21];

  if (!v20)
  {
    goto LABEL_6;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  pdfTemporaryFileURL = [(WDElectrocardiogramActivityItemSource *)v17 pdfTemporaryFileURL];
  v36 = 0;
  [defaultManager2 removeItemAtURL:pdfTemporaryFileURL error:&v36];
  v27 = v36;

  if (!v27)
  {
LABEL_6:
    pdfTemporaryFileURL2 = [(WDElectrocardiogramActivityItemSource *)v17 pdfTemporaryFileURL];
    v35 = 0;
    [dataCopy writeToURL:pdfTemporaryFileURL2 options:536870913 error:&v35];
    v27 = v35;

    if (v27)
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [WDElectrocardiogramActivityItemSource initWithPDFData:v27 sampleDate:v30 firstName:? lastName:? provenance:?];
      }

      goto LABEL_9;
    }

    v17->_provenance = provenanceCopy;

LABEL_11:
    v32 = v17;
    goto LABEL_12;
  }

  _HKInitializeLogging();
  v28 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [WDElectrocardiogramActivityItemSource initWithPDFData:v27 sampleDate:v28 firstName:? lastName:? provenance:?];
  }

LABEL_9:
  v31 = v17->_pdfTemporaryFileURL;
  v17->_pdfTemporaryFileURL = 0;

  v32 = 0;
LABEL_12:

  return v32;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  mEMORY[0x277D130C0] = [MEMORY[0x277D130C0] sharedManager];
  [mEMORY[0x277D130C0] trackElectrocardiogramPDFSharedFrom:{-[WDElectrocardiogramActivityItemSource provenance](self, "provenance")}];
  pdfTemporaryFileURL = [(WDElectrocardiogramActivityItemSource *)self pdfTemporaryFileURL];

  return pdfTemporaryFileURL;
}

- (void)dealloc
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  pdfTemporaryFileURL = [(WDElectrocardiogramActivityItemSource *)self pdfTemporaryFileURL];
  [defaultManager removeItemAtURL:pdfTemporaryFileURL error:0];

  v5.receiver = self;
  v5.super_class = WDElectrocardiogramActivityItemSource;
  [(WDElectrocardiogramActivityItemSource *)&v5 dealloc];
}

- (void)initWithPDFData:(uint64_t)a1 sampleDate:(NSObject *)a2 firstName:lastName:provenance:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "Could not delete existing PDF temporary file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithPDFData:(uint64_t)a1 sampleDate:(NSObject *)a2 firstName:lastName:provenance:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "Could not write PDF temporary file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
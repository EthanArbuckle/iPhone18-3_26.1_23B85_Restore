@interface WDElectrocardiogramPDFViewController
- (WDElectrocardiogramPDFViewController)initWithPDFData:(id)data sampleDate:(id)date firstName:(id)name lastName:(id)lastName;
- (void)didTapShare:(id)share;
- (void)loadView;
@end

@implementation WDElectrocardiogramPDFViewController

- (WDElectrocardiogramPDFViewController)initWithPDFData:(id)data sampleDate:(id)date firstName:(id)name lastName:(id)lastName
{
  dataCopy = data;
  dateCopy = date;
  nameCopy = name;
  lastNameCopy = lastName;
  v27.receiver = self;
  v27.super_class = WDElectrocardiogramPDFViewController;
  v15 = [(WDElectrocardiogramPDFViewController *)&v27 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pdfData, data);
    objc_storeStrong(&v16->_sampleDate, date);
    v17 = [objc_alloc(MEMORY[0x277CD93D8]) initWithData:dataCopy];
    pdfDocument = v16->_pdfDocument;
    v16->_pdfDocument = v17;

    objc_storeStrong(&v16->_firstName, name);
    objc_storeStrong(&v16->_lastName, lastName);
    v19 = WDBundle();
    v20 = [v19 localizedStringForKey:@"PDF_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v21 = HKConditionallyRedactedHeartRhythmString();
    [(WDElectrocardiogramPDFViewController *)v16 setTitle:v21];

    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v16 action:sel_didTapDone];
    navigationItem = [(WDElectrocardiogramPDFViewController *)v16 navigationItem];
    [navigationItem setLeftBarButtonItem:v22];

    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:v16 action:sel_didTapShare_];
    navigationItem2 = [(WDElectrocardiogramPDFViewController *)v16 navigationItem];
    [navigationItem2 setRightBarButtonItem:v24];
  }

  return v16;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277CD93F8]);
  [(WDElectrocardiogramPDFViewController *)self setView:v3];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(WDElectrocardiogramPDFViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  pdfDocument = [(WDElectrocardiogramPDFViewController *)self pdfDocument];
  pdfView = [(WDElectrocardiogramPDFViewController *)self pdfView];
  [pdfView setDocument:pdfDocument];

  pdfDocument2 = [(WDElectrocardiogramPDFViewController *)self pdfDocument];
  string = [pdfDocument2 string];
  pdfView2 = [(WDElectrocardiogramPDFViewController *)self pdfView];
  [pdfView2 setAccessibilityValue:string];

  pdfView3 = [(WDElectrocardiogramPDFViewController *)self pdfView];
  [pdfView3 setAutoScales:1];
}

- (void)didTapShare:(id)share
{
  v18[1] = *MEMORY[0x277D85DE8];
  shareCopy = share;
  v5 = [WDElectrocardiogramActivityItemSource alloc];
  pdfData = [(WDElectrocardiogramPDFViewController *)self pdfData];
  sampleDate = [(WDElectrocardiogramPDFViewController *)self sampleDate];
  firstName = [(WDElectrocardiogramPDFViewController *)self firstName];
  lastName = [(WDElectrocardiogramPDFViewController *)self lastName];
  v10 = [(WDElectrocardiogramActivityItemSource *)v5 initWithPDFData:pdfData sampleDate:sampleDate firstName:firstName lastName:lastName provenance:1];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D546D8]);
    v18[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v13 = [v11 initWithActivityItems:v12 applicationActivities:0];

    popoverPresentationController = [v13 popoverPresentationController];
    [popoverPresentationController setSourceItem:shareCopy];

    v17 = *MEMORY[0x277D54730];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v13 setExcludedActivityTypes:v15];

    [(WDElectrocardiogramPDFViewController *)self presentViewController:v13 animated:1 completion:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
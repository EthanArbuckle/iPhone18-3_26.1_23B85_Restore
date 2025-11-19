@interface WDElectrocardiogramPDFViewController
- (WDElectrocardiogramPDFViewController)initWithPDFData:(id)a3 sampleDate:(id)a4 firstName:(id)a5 lastName:(id)a6;
- (void)didTapShare:(id)a3;
- (void)loadView;
@end

@implementation WDElectrocardiogramPDFViewController

- (WDElectrocardiogramPDFViewController)initWithPDFData:(id)a3 sampleDate:(id)a4 firstName:(id)a5 lastName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = WDElectrocardiogramPDFViewController;
  v15 = [(WDElectrocardiogramPDFViewController *)&v27 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pdfData, a3);
    objc_storeStrong(&v16->_sampleDate, a4);
    v17 = [objc_alloc(MEMORY[0x277CD93D8]) initWithData:v11];
    pdfDocument = v16->_pdfDocument;
    v16->_pdfDocument = v17;

    objc_storeStrong(&v16->_firstName, a5);
    objc_storeStrong(&v16->_lastName, a6);
    v19 = WDBundle();
    v20 = [v19 localizedStringForKey:@"PDF_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v21 = HKConditionallyRedactedHeartRhythmString();
    [(WDElectrocardiogramPDFViewController *)v16 setTitle:v21];

    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v16 action:sel_didTapDone];
    v23 = [(WDElectrocardiogramPDFViewController *)v16 navigationItem];
    [v23 setLeftBarButtonItem:v22];

    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:v16 action:sel_didTapShare_];
    v25 = [(WDElectrocardiogramPDFViewController *)v16 navigationItem];
    [v25 setRightBarButtonItem:v24];
  }

  return v16;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277CD93F8]);
  [(WDElectrocardiogramPDFViewController *)self setView:v3];

  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  v5 = [(WDElectrocardiogramPDFViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(WDElectrocardiogramPDFViewController *)self pdfDocument];
  v7 = [(WDElectrocardiogramPDFViewController *)self pdfView];
  [v7 setDocument:v6];

  v8 = [(WDElectrocardiogramPDFViewController *)self pdfDocument];
  v9 = [v8 string];
  v10 = [(WDElectrocardiogramPDFViewController *)self pdfView];
  [v10 setAccessibilityValue:v9];

  v11 = [(WDElectrocardiogramPDFViewController *)self pdfView];
  [v11 setAutoScales:1];
}

- (void)didTapShare:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [WDElectrocardiogramActivityItemSource alloc];
  v6 = [(WDElectrocardiogramPDFViewController *)self pdfData];
  v7 = [(WDElectrocardiogramPDFViewController *)self sampleDate];
  v8 = [(WDElectrocardiogramPDFViewController *)self firstName];
  v9 = [(WDElectrocardiogramPDFViewController *)self lastName];
  v10 = [(WDElectrocardiogramActivityItemSource *)v5 initWithPDFData:v6 sampleDate:v7 firstName:v8 lastName:v9 provenance:1];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D546D8]);
    v18[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v13 = [v11 initWithActivityItems:v12 applicationActivities:0];

    v14 = [v13 popoverPresentationController];
    [v14 setSourceItem:v4];

    v17 = *MEMORY[0x277D54730];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v13 setExcludedActivityTypes:v15];

    [(WDElectrocardiogramPDFViewController *)self presentViewController:v13 animated:1 completion:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
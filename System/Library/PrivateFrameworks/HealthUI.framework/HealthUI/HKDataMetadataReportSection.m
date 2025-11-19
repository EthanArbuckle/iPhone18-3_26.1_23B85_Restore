@interface HKDataMetadataReportSection
- (HKDataMetadataReportSection)initWithSample:(id)a3 healthStore:(id)a4;
- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4;
- (id)documentImageForXMLFiles;
- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5;
@end

@implementation HKDataMetadataReportSection

- (HKDataMetadataReportSection)initWithSample:(id)a3 healthStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HKDataMetadataReportSection;
  v9 = [(HKDataMetadataReportSection *)&v15 init];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [v7 hasAssociatedReport];
  v11 = 0;
  if (v8 && v10)
  {
    v12 = [v7 detailedReportName];
    detailedReportName = v9->_detailedReportName;
    v9->_detailedReportName = v12;

    objc_storeStrong(&v9->_sample, a3);
    objc_storeStrong(&v9->_healthStore, a4);
LABEL_5:
    v11 = v9;
  }

  return v11;
}

- (id)documentImageForXMLFiles
{
  if (documentImageForXMLFiles_oncePredicate != -1)
  {
    [HKDataMetadataReportSection documentImageForXMLFiles];
  }

  v3 = documentImageForXMLFiles__CachedImage;

  return v3;
}

void __55__HKDataMetadataReportSection_documentImageForXMLFiles__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
  v5 = [v0 systemImageNamed:@"text.document" withConfiguration:v1];

  v2 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:82.0];
  v3 = [v5 imageByApplyingSymbolConfiguration:v2];
  v4 = documentImageForXMLFiles__CachedImage;
  documentImageForXMLFiles__CachedImage = v3;
}

- (id)cellForIndex:(unint64_t)a3 tableView:(id)a4
{
  v5 = [a4 dequeueReusableCellWithIdentifier:@"report_cell_identifier"];
  if (!v5)
  {
    v5 = objc_alloc_init(_HKReportTableViewCell);
  }

  detailedReportName = self->_detailedReportName;
  v7 = [(HKDataMetadataReportSection *)self documentImageForXMLFiles];
  [(_HKReportTableViewCell *)v5 setReportName:detailedReportName reportImage:v7];

  return v5;
}

- (void)selectCellForIndex:(unint64_t)a3 navigationController:(id)a4 animated:(BOOL)a5
{
  v7 = a4;
  objc_initWeak(&location, v7);
  sample = self->_sample;
  healthStore = self->_healthStore;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__HKDataMetadataReportSection_selectCellForIndex_navigationController_animated___block_invoke;
  v10[3] = &unk_1E81B6CA8;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  v12 = a5;
  [(HKSample *)sample fetchDetailedReportWithHealthStore:healthStore reportDataBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __80__HKDataMetadataReportSection_selectCellForIndex_navigationController_animated___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && !a3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__HKDataMetadataReportSection_selectCellForIndex_navigationController_animated___block_invoke_2;
    v9[3] = &unk_1E81B6C80;
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    objc_copyWeak(&v12, (a1 + 40));
    v13 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v9);
    objc_destroyWeak(&v12);
  }
}

void __80__HKDataMetadataReportSection_selectCellForIndex_navigationController_animated___block_invoke_2(uint64_t a1)
{
  v3 = [[HKCDADocumentDetailViewController alloc] initWithReportData:*(a1 + 32)];
  [(HKCDADocumentDetailViewController *)v3 setTitle:*(*(a1 + 40) + 16)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained pushViewController:v3 animated:*(a1 + 56)];
}

@end
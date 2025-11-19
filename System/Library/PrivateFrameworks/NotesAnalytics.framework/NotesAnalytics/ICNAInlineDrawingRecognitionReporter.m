@interface ICNAInlineDrawingRecognitionReporter
+ (id)sharedReporter;
- (ICNAInlineDrawingRecognitionReporter)init;
- (void)analyticsSessionWillEnd:(id)a3;
- (void)createReportForDrawing:(id)a3 drawingID:(id)a4 attachment:(id)a5 insideNote:(id)a6;
- (void)dealloc;
- (void)reportNotification:(id)a3;
- (void)submitReportsWithEventReporter:(id)a3;
@end

@implementation ICNAInlineDrawingRecognitionReporter

+ (id)sharedReporter
{
  if (s_onceToken_0 != -1)
  {
    +[ICNAInlineDrawingRecognitionReporter sharedReporter];
  }

  v3 = sharedReporter_s_instance_0;

  return v3;
}

uint64_t __54__ICNAInlineDrawingRecognitionReporter_sharedReporter__block_invoke()
{
  sharedReporter_s_instance_0 = objc_alloc_init(ICNAInlineDrawingRecognitionReporter);

  return MEMORY[0x2821F96F8]();
}

- (ICNAInlineDrawingRecognitionReporter)init
{
  v8.receiver = self;
  v8.super_class = ICNAInlineDrawingRecognitionReporter;
  v2 = [(ICNAInlineDrawingRecognitionReporter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    stagedReports = v2->_stagedReports;
    v2->_stagedReports = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_reportNotification_ name:*MEMORY[0x277D36520] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_analyticsSessionWillEnd_ name:@"ICNASessionWillEndNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNAInlineDrawingRecognitionReporter;
  [(ICNAInlineDrawingRecognitionReporter *)&v4 dealloc];
}

- (void)reportNotification:(id)a3
{
  v14 = [a3 userInfo];
  objc_opt_class();
  v4 = [v14 objectForKeyedSubscript:*MEMORY[0x277D36530]];
  v5 = ICDynamicCast();

  objc_opt_class();
  v6 = [v14 objectForKeyedSubscript:*MEMORY[0x277D36538]];
  v7 = ICDynamicCast();

  objc_opt_class();
  v8 = [v14 objectForKeyedSubscript:*MEMORY[0x277D36528]];
  v9 = ICDynamicCast();

  objc_opt_class();
  v10 = [v14 objectForKeyedSubscript:*MEMORY[0x277D36540]];
  v11 = ICDynamicCast();

  if (v5)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && v11 != 0)
  {
    [(ICNAInlineDrawingRecognitionReporter *)self createReportForDrawing:v5 drawingID:v7 attachment:v9 insideNote:v11];
  }
}

- (void)createReportForDrawing:(id)a3 drawingID:(id)a4 attachment:(id)a5 insideNote:(id)a6
{
  v10 = a6;
  v11 = a5;
  v40 = a4;
  v12 = a3;
  v41 = objc_alloc_init(ICNAInlineDrawingRecognitionReport);
  v13 = [(ICNAObject *)self eventReporter];
  v14 = [v13 noteDataForModernNote:v10];
  [(ICNAInlineDrawingRecognitionReport *)v41 setNoteData:v14];

  v15 = [(ICNAObject *)self eventReporter];
  v16 = [v15 noteAccessDataForModernNote:v10];
  [(ICNAInlineDrawingRecognitionReport *)v41 setNoteAccessData:v16];

  v17 = [(ICNAObject *)self eventReporter];
  v18 = [v10 account];

  v19 = [v17 accountDataForModernAccount:v18];
  [(ICNAInlineDrawingRecognitionReport *)v41 setAccountData:v19];

  v20 = +[ICNAIdentityManager sharedManager];
  v38 = [v20 saltedID:v40 forClass:objc_opt_class()];

  v21 = [(ICNAObject *)self eventReporter];
  v22 = [v21 pencilStrokeCountForDrawing:v12];

  v23 = [v12 strokes];

  v24 = [v23 count] - v22;
  v25 = [v11 handwritingSummary];

  v39 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v26 = [(__CFString *)v25 componentsSeparatedByCharactersInSet:v39];
  v27 = [v26 componentsJoinedByString:&stru_286E361B0];

  v28 = [v27 length];
  v29 = [(__CFString *)v25 ic_numberOfLines];
  v43.length = [(__CFString *)v25 length];
  v43.location = 0;
  v30 = CFStringTokenizerCopyBestStringLanguage(v25, v43);
  v31 = [ICASDrawingRecognitionData alloc];
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v22)];
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v24)];
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v28)];
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v29)];
  v36 = [(ICASDrawingRecognitionData *)v31 initWithCountOfPencilStrokes:v32 countOfFingerStrokes:v33 countOfRecognizedHandwrittenCharacters:v34 countOfRecognizedLines:v35 handwritingLanguage:v30 drawingID:v38];
  [(ICNAInlineDrawingRecognitionReport *)v41 setDrawingRecognitionData:v36];

  v37 = [(ICNAInlineDrawingRecognitionReporter *)self stagedReports];
  [v37 setObject:v41 forKeyedSubscript:v40];
}

- (void)analyticsSessionWillEnd:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v10 = ICDynamicCast();

  if (v10)
  {
    v6 = [ICNAEventReporter alloc];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(ICNAEventReporter *)v6 initWithSubTrackerName:v8 windowScene:v10];

    [(ICNAInlineDrawingRecognitionReporter *)self submitReportsWithEventReporter:v9];
  }
}

- (void)submitReportsWithEventReporter:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = self;
  obj = [(ICNAInlineDrawingRecognitionReporter *)self stagedReports];
  objc_sync_enter(obj);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(ICNAInlineDrawingRecognitionReporter *)self stagedReports];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v21 = v4;
    v22 = *v27;
    do
    {
      v25 = v5;
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v21);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [(ICNAInlineDrawingRecognitionReporter *)v24 stagedReports];
        v9 = [v8 objectForKeyedSubscript:v7];

        v10 = +[ICNAController sharedController];
        v11 = objc_opt_class();
        v12 = [v9 noteData];
        v30[0] = v12;
        v13 = [v9 noteAccessData];
        v30[1] = v13;
        v14 = [v9 accountData];
        v30[2] = v14;
        v15 = [v9 drawingRecognitionData];
        v30[3] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
        v17 = [v23 subTracker];
        [v10 submitEventOfType:v11 pushThenPopDataObjects:v16 subTracker:v17];
      }

      v4 = v21;
      v5 = [v21 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  v18 = [(ICNAInlineDrawingRecognitionReporter *)v24 stagedReports];
  [v18 removeAllObjects];

  objc_sync_exit(obj);
  v19 = *MEMORY[0x277D85DE8];
}

@end
@interface ICNAInlineDrawingRecognitionReporter
+ (id)sharedReporter;
- (ICNAInlineDrawingRecognitionReporter)init;
- (void)analyticsSessionWillEnd:(id)end;
- (void)createReportForDrawing:(id)drawing drawingID:(id)d attachment:(id)attachment insideNote:(id)note;
- (void)dealloc;
- (void)reportNotification:(id)notification;
- (void)submitReportsWithEventReporter:(id)reporter;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_reportNotification_ name:*MEMORY[0x277D36520] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_analyticsSessionWillEnd_ name:@"ICNASessionWillEndNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNAInlineDrawingRecognitionReporter;
  [(ICNAInlineDrawingRecognitionReporter *)&v4 dealloc];
}

- (void)reportNotification:(id)notification
{
  userInfo = [notification userInfo];
  objc_opt_class();
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D36530]];
  v5 = ICDynamicCast();

  objc_opt_class();
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D36538]];
  v7 = ICDynamicCast();

  objc_opt_class();
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D36528]];
  v9 = ICDynamicCast();

  objc_opt_class();
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D36540]];
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

- (void)createReportForDrawing:(id)drawing drawingID:(id)d attachment:(id)attachment insideNote:(id)note
{
  noteCopy = note;
  attachmentCopy = attachment;
  dCopy = d;
  drawingCopy = drawing;
  v41 = objc_alloc_init(ICNAInlineDrawingRecognitionReport);
  eventReporter = [(ICNAObject *)self eventReporter];
  v14 = [eventReporter noteDataForModernNote:noteCopy];
  [(ICNAInlineDrawingRecognitionReport *)v41 setNoteData:v14];

  eventReporter2 = [(ICNAObject *)self eventReporter];
  v16 = [eventReporter2 noteAccessDataForModernNote:noteCopy];
  [(ICNAInlineDrawingRecognitionReport *)v41 setNoteAccessData:v16];

  eventReporter3 = [(ICNAObject *)self eventReporter];
  account = [noteCopy account];

  v19 = [eventReporter3 accountDataForModernAccount:account];
  [(ICNAInlineDrawingRecognitionReport *)v41 setAccountData:v19];

  v20 = +[ICNAIdentityManager sharedManager];
  v38 = [v20 saltedID:dCopy forClass:objc_opt_class()];

  eventReporter4 = [(ICNAObject *)self eventReporter];
  v22 = [eventReporter4 pencilStrokeCountForDrawing:drawingCopy];

  strokes = [drawingCopy strokes];

  v24 = [strokes count] - v22;
  handwritingSummary = [attachmentCopy handwritingSummary];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v26 = [(__CFString *)handwritingSummary componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  v27 = [v26 componentsJoinedByString:&stru_286E361B0];

  v28 = [v27 length];
  ic_numberOfLines = [(__CFString *)handwritingSummary ic_numberOfLines];
  v43.length = [(__CFString *)handwritingSummary length];
  v43.location = 0;
  v30 = CFStringTokenizerCopyBestStringLanguage(handwritingSummary, v43);
  v31 = [ICASDrawingRecognitionData alloc];
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v22)];
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v24)];
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(v28)];
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:ICNARoundTo2SigFigsInt(ic_numberOfLines)];
  v36 = [(ICASDrawingRecognitionData *)v31 initWithCountOfPencilStrokes:v32 countOfFingerStrokes:v33 countOfRecognizedHandwrittenCharacters:v34 countOfRecognizedLines:v35 handwritingLanguage:v30 drawingID:v38];
  [(ICNAInlineDrawingRecognitionReport *)v41 setDrawingRecognitionData:v36];

  stagedReports = [(ICNAInlineDrawingRecognitionReporter *)self stagedReports];
  [stagedReports setObject:v41 forKeyedSubscript:dCopy];
}

- (void)analyticsSessionWillEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  object = [endCopy object];

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

- (void)submitReportsWithEventReporter:(id)reporter
{
  v32 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  selfCopy = self;
  obj = [(ICNAInlineDrawingRecognitionReporter *)self stagedReports];
  objc_sync_enter(obj);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  stagedReports = [(ICNAInlineDrawingRecognitionReporter *)self stagedReports];
  v5 = [stagedReports countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v21 = stagedReports;
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
        stagedReports2 = [(ICNAInlineDrawingRecognitionReporter *)selfCopy stagedReports];
        v9 = [stagedReports2 objectForKeyedSubscript:v7];

        v10 = +[ICNAController sharedController];
        v11 = objc_opt_class();
        noteData = [v9 noteData];
        v30[0] = noteData;
        noteAccessData = [v9 noteAccessData];
        v30[1] = noteAccessData;
        accountData = [v9 accountData];
        v30[2] = accountData;
        drawingRecognitionData = [v9 drawingRecognitionData];
        v30[3] = drawingRecognitionData;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
        subTracker = [reporterCopy subTracker];
        [v10 submitEventOfType:v11 pushThenPopDataObjects:v16 subTracker:subTracker];
      }

      stagedReports = v21;
      v5 = [v21 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  stagedReports3 = [(ICNAInlineDrawingRecognitionReporter *)selfCopy stagedReports];
  [stagedReports3 removeAllObjects];

  objc_sync_exit(obj);
  v19 = *MEMORY[0x277D85DE8];
}

@end
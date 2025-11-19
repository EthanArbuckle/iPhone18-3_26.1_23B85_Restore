@interface IKAppDocument
- (IKAppDocument)initWithAppContext:(id)a3 document:(id)a4 owner:(id)a5 extraInfo:(id)a6;
- (IKJSNavigationDocument)navigationDocument;
- (NSString)debugDescription;
- (id)retrieveJSElementForViewElement:(id)a3 jsContext:(id)a4;
- (void)dealloc;
- (void)dispatchDocumentCallback:(id)a3 eventType:(unint64_t)a4;
- (void)onAppear;
- (void)onDisappear;
- (void)onImpressionsChange:(id)a3;
- (void)onLoad;
- (void)onNeedsUpdateWithCompletion:(id)a3;
- (void)onPerformanceMetricsChange:(id)a3;
- (void)onUnload;
- (void)onUpdate;
- (void)onViewAttributesChangeWithArguments:(id)a3 completion:(id)a4;
- (void)recordImpressionsForViewElements:(id)a3;
- (void)snapshotImpressionsForViewElements:(id)a3;
@end

@implementation IKAppDocument

- (IKAppDocument)initWithAppContext:(id)a3 document:(id)a4 owner:(id)a5 extraInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = IKAppDocument;
  v14 = [(IKAppDocument *)&v25 init];
  v15 = v14;
  if (v14)
  {
    v14->_isViewElementRegistryDirty = 1;
    objc_storeWeak(&v14->_appContext, v10);
    objc_storeWeak(&v15->_owner, v12);
    v16 = objc_storeWeak(&v15->_jsDocument, v11);
    [v11 prepareForPresentationWithExtraInfo:v13];

    WeakRetained = objc_loadWeakRetained(&v15->_jsDocument);
    [WeakRetained setAppBridge:v15];

    v18 = objc_loadWeakRetained(&v15->_jsDocument);
    [(IKAppDocument *)v15 _updateWithXML:v18];

    v19 = objc_loadWeakRetained(&v15->_appContext);
    v20 = [v19 jsContext];
    v21 = [v20 virtualMachine];
    v22 = objc_loadWeakRetained(&v15->_jsDocument);
    v23 = objc_loadWeakRetained(&v15->_owner);
    [v21 addManagedReference:v22 withOwner:v23];

    if (+[IKPreference logDocumentXML])
    {
      NSLog(&cfstr_CreatedXmlDocu.isa, v11);
    }
  }

  return v15;
}

- (void)dealloc
{
  objc_copyWeak(&to, &self->_owner);
  objc_copyWeak(&from, &self->_jsDocument);
  WeakRetained = objc_loadWeakRetained(&self->_appContext);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__IKAppDocument_dealloc__block_invoke;
  v5[3] = &unk_2797999D8;
  objc_copyWeak(&v6, &to);
  objc_copyWeak(&v7, &from);
  [WeakRetained evaluate:v5 completionBlock:0];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&to);
  v4.receiver = self;
  v4.super_class = IKAppDocument;
  [(IKAppDocument *)&v4 dealloc];
}

void __24__IKAppDocument_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained((a1 + 40));

    if (v5)
    {
      v6 = [v9 virtualMachine];
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = objc_loadWeakRetained((a1 + 32));
      [v6 removeManagedReference:v7 withOwner:v8];
    }
  }
}

- (NSString)debugDescription
{
  v2 = [(IKAppDocument *)self templateElement];
  v3 = [v2 debugDescription];

  return v3;
}

- (IKJSNavigationDocument)navigationDocument
{
  v2 = [(IKAppDocument *)self jsDocument];
  v3 = [v2 navigationDocument];

  return v3;
}

- (void)dispatchDocumentCallback:(id)a3 eventType:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(IKAppDocument *)self appContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__IKAppDocument_dispatchDocumentCallback_eventType___block_invoke;
    v9[3] = &unk_279799A00;
    v9[4] = self;
    v10 = v6;
    [v7 evaluate:v9 completionBlock:0];
  }

  if (a4)
  {
    v8 = [(IKAppDocument *)self templateElement];
    [v8 dispatchEventOfType:a4 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }
}

void __52__IKAppDocument_dispatchDocumentCallback_eventType___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) jsDocument];
  v2 = [v3 invokeMethod:*(a1 + 40) withArguments:0];
}

- (void)onLoad
{
  [(IKAppDocument *)self dispatchDocumentCallback:@"onLoad" eventType:7];
  v4 = [(IKAppDocument *)self appContext];
  v3 = [v4 webInspectorController];
  [v3 appDocumentDidLoad:self];
}

- (void)onUnload
{
  [(IKAppDocument *)self dispatchDocumentCallback:@"onUnload" eventType:8];
  v4 = [(IKAppDocument *)self appContext];
  v3 = [v4 webInspectorController];
  [v3 appDocumentDidUnload:self];
}

- (void)onAppear
{
  [(IKAppDocument *)self dispatchDocumentCallback:@"onAppear" eventType:9];
  v4 = [(IKAppDocument *)self appContext];
  v3 = [v4 webInspectorController];
  [v3 appDocumentDidAppear:self];
}

- (void)onDisappear
{
  [(IKAppDocument *)self dispatchDocumentCallback:@"onDisappear" eventType:10];
  v4 = [(IKAppDocument *)self appContext];
  v3 = [v4 webInspectorController];
  [v3 appDocumentDidDisappear:self];
}

- (void)onNeedsUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IKAppDocument *)self appContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__IKAppDocument_onNeedsUpdateWithCompletion___block_invoke;
  v7[3] = &unk_279799A50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 evaluate:v7 completionBlock:0];
}

void __45__IKAppDocument_onNeedsUpdateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD4658];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__IKAppDocument_onNeedsUpdateWithCompletion___block_invoke_2;
  v12[3] = &unk_279799A28;
  v13 = *(a1 + 40);
  v5 = a2;
  v6 = MEMORY[0x259C21BA0](v12);
  v7 = [v4 valueWithObject:v6 inContext:v5];

  v8 = [*(a1 + 32) jsDocument];
  v14[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v10 = [v8 invokeMethod:@"onUpdate" withArguments:v9];

  v11 = *MEMORY[0x277D85DE8];
}

void __45__IKAppDocument_onNeedsUpdateWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__IKAppDocument_onNeedsUpdateWithCompletion___block_invoke_3;
  block[3] = &unk_279799A28;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)onUpdate
{
  v3 = [(IKAppDocument *)self appContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__IKAppDocument_onUpdate__block_invoke;
  v5[3] = &unk_2797998D0;
  v5[4] = self;
  [v3 evaluate:v5 completionBlock:0];

  v4 = [(IKAppDocument *)self templateElement];
  [v4 dispatchEventOfType:12 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

void __25__IKAppDocument_onUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) jsDocument];
  v1 = [v2 invokeMethod:@"onDidUpdate" withArguments:0];
}

- (void)onImpressionsChange:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v12 = @"impressions";
    v13[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [(IKAppDocument *)self appContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__IKAppDocument_onImpressionsChange___block_invoke;
    v10[3] = &unk_279799A00;
    v10[4] = self;
    v11 = v5;
    v7 = v5;
    [v6 evaluate:v10 completionBlock:0];

    v8 = [(IKAppDocument *)self templateElement];
    [v8 dispatchEvent:@"onImpressionsChange" eventAttribute:0 canBubble:1 isCancelable:0 extraInfo:v7 completionBlock:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __37__IKAppDocument_onImpressionsChange___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) jsDocument];
  v6[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 invokeMethod:@"onImpressionsChange" withArguments:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)onPerformanceMetricsChange:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v11 = @"metrics";
    v12[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = [(IKAppDocument *)self appContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__IKAppDocument_onPerformanceMetricsChange___block_invoke;
    v9[3] = &unk_279799A00;
    v9[4] = self;
    v10 = v5;
    v7 = v5;
    [v6 evaluate:v9 completionBlock:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __44__IKAppDocument_onPerformanceMetricsChange___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) jsDocument];
  v6[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 invokeMethod:@"onPerformanceMetricsChange" withArguments:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)onViewAttributesChangeWithArguments:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKAppDocument *)self appContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__IKAppDocument_onViewAttributesChangeWithArguments_completion___block_invoke;
  v11[3] = &unk_279799A78;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 evaluate:v11 completionBlock:0];
}

void __64__IKAppDocument_onViewAttributesChangeWithArguments_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) jsDocument];
  v3 = [v2 invokeMethod:@"onViewAttributesChange" withArguments:*(a1 + 40)];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__IKAppDocument_onViewAttributesChangeWithArguments_completion___block_invoke_2;
    block[3] = &unk_279799A28;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

- (void)recordImpressionsForViewElements:(id)a3
{
  v4 = a3;
  v5 = [(IKAppDocument *)self impressions];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IKAppDocument *)self setImpressions:v6];
  }

  v13.tv_sec = 0;
  *&v13.tv_usec = 0;
  gettimeofday(&v13, 0);
  v7 = v13.tv_sec + v13.tv_usec * 0.000001;
  [(IKAppDocument *)self impressionThreshold];
  v9 = (v8 * -1000.0 + v7 * 1000.0);
  v10 = [(IKAppDocument *)self appContext];
  v11 = [(IKAppDocument *)self impressions];
  v12 = [IKJSImpression impressionsMapForViewElements:v4 appContext:v10 timestamp:v9 existingImpressionsMap:v11];

  [(IKAppDocument *)self onImpressionsChange:v12];
}

- (void)snapshotImpressionsForViewElements:(id)a3
{
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  v4 = a3;
  gettimeofday(&v8, 0);
  v5 = ((v8.tv_sec + v8.tv_usec * 0.000001) * 1000.0);
  v6 = [(IKAppDocument *)self appContext];
  v7 = [IKJSImpression impressionsMapForViewElements:v4 appContext:v6 timestamp:v5];

  [(IKAppDocument *)self setCachedSnapshotImpressionsMap:v7];
}

- (id)retrieveJSElementForViewElement:(id)a3 jsContext:(id)a4
{
  v5 = a3;
  v6 = [(IKAppDocument *)self jsDocument];
  v7 = MEMORY[0x277CCACA8];
  v8 = [v5 itmlID];
  }

LABEL_7:
  [(IKCSSToken *)v7 setStringValue:v8];
  *a4 = v9;

  return v7;
}

@end
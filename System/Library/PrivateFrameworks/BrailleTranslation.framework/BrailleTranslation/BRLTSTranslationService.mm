@interface BRLTSTranslationService
- (BRLTSTranslationService)init;
- (void)brailleForText:(id)a3 parameters:(id)a4 withReply:(id)a5;
- (void)loadBrailleBundleForIdentifier:(id)a3;
- (void)textForBraille:(id)a3 parameters:(id)a4 withReply:(id)a5;
@end

@implementation BRLTSTranslationService

- (BRLTSTranslationService)init
{
  v7.receiver = self;
  v7.super_class = BRLTSTranslationService;
  v2 = [(BRLTSTranslationService *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.accessibility.BrailleTranslation.BrailleTranslationService.serviceQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)brailleForText:(id)a3 parameters:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BRLTSTranslationService *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__BRLTSTranslationService_brailleForText_parameters_withReply___block_invoke;
  v15[3] = &unk_278D20AB8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __63__BRLTSTranslationService_brailleForText_parameters_withReply___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) queueTranslator];
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v7 = 0;
    v5 = [v2 brailleForText:v3 parameters:v4 locations:&v7];
    v6 = v7;

    (*(*(a1 + 56) + 16))();
  }
}

- (void)textForBraille:(id)a3 parameters:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BRLTSTranslationService *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__BRLTSTranslationService_textForBraille_parameters_withReply___block_invoke;
  v15[3] = &unk_278D20AB8;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __63__BRLTSTranslationService_textForBraille_parameters_withReply___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) textPositionsRange];
    v3 = [*(a1 + 40) queueTranslator];
    v4 = v3;
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    if (v2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v3 textForBraille:v5 parameters:v6 locations:0];

      v8 = 0;
    }

    else
    {
      v9 = 0;
      v7 = [v3 textForBraille:v5 parameters:v6 locations:&v9];
      v8 = v9;
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)loadBrailleBundleForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BRLTSTranslationService *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__BRLTSTranslationService_loadBrailleBundleForIdentifier___block_invoke;
  v7[3] = &unk_278D20AE0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__BRLTSTranslationService_loadBrailleBundleForIdentifier___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CCA8D8] brl_brailleTableBundleWithIdentifier:*(a1 + 32)];
  v2 = [*(a1 + 40) queueTranslator];
  v3 = [v2 bundle];
  v4 = [v3 isEqual:v6];

  if ((v4 & 1) == 0)
  {
    v5 = [[BRLTSTranslator alloc] initWithBundle:v6];
    [*(a1 + 40) setQueueTranslator:v5];
  }
}

@end
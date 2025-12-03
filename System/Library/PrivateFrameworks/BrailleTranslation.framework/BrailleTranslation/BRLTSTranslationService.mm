@interface BRLTSTranslationService
- (BRLTSTranslationService)init;
- (void)brailleForText:(id)text parameters:(id)parameters withReply:(id)reply;
- (void)loadBrailleBundleForIdentifier:(id)identifier;
- (void)textForBraille:(id)braille parameters:(id)parameters withReply:(id)reply;
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

- (void)brailleForText:(id)text parameters:(id)parameters withReply:(id)reply
{
  textCopy = text;
  parametersCopy = parameters;
  replyCopy = reply;
  queue = [(BRLTSTranslationService *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__BRLTSTranslationService_brailleForText_parameters_withReply___block_invoke;
  v15[3] = &unk_278D20AB8;
  v15[4] = self;
  v16 = textCopy;
  v17 = parametersCopy;
  v18 = replyCopy;
  v12 = parametersCopy;
  v13 = textCopy;
  v14 = replyCopy;
  dispatch_async(queue, v15);
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

- (void)textForBraille:(id)braille parameters:(id)parameters withReply:(id)reply
{
  brailleCopy = braille;
  parametersCopy = parameters;
  replyCopy = reply;
  queue = [(BRLTSTranslationService *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__BRLTSTranslationService_textForBraille_parameters_withReply___block_invoke;
  v15[3] = &unk_278D20AB8;
  v16 = parametersCopy;
  selfCopy = self;
  v18 = brailleCopy;
  v19 = replyCopy;
  v12 = brailleCopy;
  v13 = parametersCopy;
  v14 = replyCopy;
  dispatch_async(queue, v15);
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

- (void)loadBrailleBundleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(BRLTSTranslationService *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__BRLTSTranslationService_loadBrailleBundleForIdentifier___block_invoke;
  v7[3] = &unk_278D20AE0;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
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
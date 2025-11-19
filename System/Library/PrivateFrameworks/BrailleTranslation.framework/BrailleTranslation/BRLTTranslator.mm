@interface BRLTTranslator
- (BRLTTranslator)initWithDelegate:(id)a3 tableIdentifier:(id)a4;
- (id)_backTranslate:(id)a3;
- (id)_translate:(id)a3 isTechnical:(BOOL)a4 textFormattingRanges:(id)a5;
- (id)arrayFromData:(id)a3;
@end

@implementation BRLTTranslator

- (BRLTTranslator)initWithDelegate:(id)a3 tableIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BRLTTranslator;
  v9 = [(BRLTTranslator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_translationDelegate, a3);
    objc_storeStrong(&v10->_tableIdentifier, a4);
  }

  return v10;
}

- (id)_translate:(id)a3 isTechnical:(BOOL)a4 textFormattingRanges:(id)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = 4;
  if (!a4)
  {
    v6 = 1;
  }

  translationDelegate = self->_translationDelegate;
  v15 = 0;
  v8 = [(BRLTBrailleTranslationDelegateProtocol *)translationDelegate printBrailleForText:a3 language:0 mode:v6 textPositionsRange:0x7FFFFFFFFFFFFFFFLL locations:0 textFormattingRanges:&v15, a5];
  v9 = v15;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2853FD1A8;
  }

  v16[0] = @"braille";
  v16[1] = @"locations";
  v17[0] = v10;
  v11 = [(BRLTTranslator *)self arrayFromData:v9];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_backTranslate:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  translationDelegate = self->_translationDelegate;
  v12 = 0;
  v5 = [(BRLTBrailleTranslationDelegateProtocol *)translationDelegate textForPrintBraille:a3 language:0 mode:1 locations:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2853FD1A8;
  }

  v13[0] = @"text";
  v13[1] = @"locations";
  v14[0] = v7;
  v8 = [(BRLTTranslator *)self arrayFromData:v6];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)arrayFromData:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = v4 >> 3;
  v6 = [v3 bytes];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4 >> 3];
  if (v4 >= 8)
  {
    do
    {
      v8 = *v6++;
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      [v7 addObject:v9];

      --v5;
    }

    while (v5);
  }

  return v7;
}

@end
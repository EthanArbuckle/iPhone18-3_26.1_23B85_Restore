@interface MSDCodeEntryView
+ (id)generatorFieldFont;
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (MSDCodeEntryView)initWithDelegate:(id)delegate;
- (void)_syncStringValueToLabels;
- (void)clearEntry;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)jiggleAView;
- (void)updateConstraints;
@end

@implementation MSDCodeEntryView

+ (id)generatorFieldFont
{
  v2 = *MEMORY[0x277D76A08];
  v3 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A08]];
  [v3 scaledValueForValue:24.0];
  v5 = v4;

  v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v2 addingSymbolicTraits:0 options:2];
  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:v5];

  return v7;
}

- (MSDCodeEntryView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = MSDCodeEntryView;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(MSDCodeEntryView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(MSDCodeEntryView *)v9 setStringValue:v10];

    [(MSDCodeEntryView *)v9 setActiveConstraints:0];
    [(MSDCodeEntryView *)v9 setDelegate:delegateCopy];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    generatorFieldFont = [objc_opt_class() generatorFieldFont];
    [(MSDCodeEntryView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = 6;
    do
    {
      v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v14 setFont:generatorFieldFont];
      [v14 setText:@"–"];
      [v14 setTextAlignment:1];
      [(MSDCodeEntryView *)v9 addSubview:v14];
      [v11 addObject:v14];

      --v13;
    }

    while (v13);
    v15 = [v11 copy];
    [(MSDCodeEntryView *)v9 setGeneratorFields:v15];

    LODWORD(v16) = 1144750080;
    [(MSDCodeEntryView *)v9 setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1144750080;
    [(MSDCodeEntryView *)v9 setContentHuggingPriority:0 forAxis:v17];
    LODWORD(v18) = 1144750080;
    [(MSDCodeEntryView *)v9 setContentCompressionResistancePriority:1 forAxis:v18];
    LODWORD(v19) = 1132068864;
    [(MSDCodeEntryView *)v9 setContentHuggingPriority:1 forAxis:v19];
  }

  return v9;
}

- (void)clearEntry
{
  stringValue = [(MSDCodeEntryView *)self stringValue];
  [stringValue setString:&stru_286AE2298];

  [(MSDCodeEntryView *)self _syncStringValueToLabels];
}

- (void)jiggleAView
{
  layer = [(MSDCodeEntryView *)self layer];
  animation = [MEMORY[0x277CD9FA0] animation];
  [animation setMass:1.20000005];
  [animation setStiffness:1200.0];
  [animation setDamping:12.0];
  [animation setDuration:1.39999998];
  [animation setVelocity:0.0];
  [animation setFillMode:*MEMORY[0x277CDA228]];
  [animation setDelegate:self];
  LODWORD(v4) = 30.0;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [animation setFromValue:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [animation setToValue:v6];

  v7 = [MEMORY[0x277CDA008] functionWithName:*MEMORY[0x277CDA9C8]];
  [animation setValueFunction:v7];

  LODWORD(v8) = 1028389654;
  LODWORD(v9) = 990057071;
  LODWORD(v10) = 1059712716;
  LODWORD(v11) = 1.0;
  v12 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v8 :v9 :v10 :v11];
  [animation setTimingFunction:v12];

  [animation setKeyPath:@"transform"];
  [layer addAnimation:animation forKey:@"shake"];
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = MSDCodeEntryView;
  becomeFirstResponder = [(MSDCodeEntryView *)&v5 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
    [activeKeyboard setReturnKeyEnabled:0];
  }

  return becomeFirstResponder;
}

- (BOOL)hasText
{
  stringValue = [(MSDCodeEntryView *)self stringValue];
  v3 = [stringValue length] != 0;

  return v3;
}

- (void)insertText:(id)text
{
  textCopy = text;
  stringValue = [(MSDCodeEntryView *)self stringValue];
  v6 = [stringValue length];

  if (v6 != 6 && ([textCopy isEqualToString:@"\n"] & 1) == 0)
  {
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];

    if ([textCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([textCopy length])
      {
        stringValue2 = [(MSDCodeEntryView *)self stringValue];
        [stringValue2 appendString:textCopy];

        [(MSDCodeEntryView *)self _syncStringValueToLabels];
        stringValue3 = [(MSDCodeEntryView *)self stringValue];
        v11 = [stringValue3 length];

        if (v11 == 6)
        {
          v12 = dispatch_get_global_queue(21, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __31__MSDCodeEntryView_insertText___block_invoke;
          block[3] = &unk_2798F1C48;
          block[4] = self;
          dispatch_async(v12, block);
        }
      }
    }
  }
}

void __31__MSDCodeEntryView_insertText___block_invoke(uint64_t a1)
{
  sleep(1u);
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) stringValue];
  [v3 didEnterCode:v2 forEntry:*(a1 + 32)];
}

- (void)deleteBackward
{
  stringValue = [(MSDCodeEntryView *)self stringValue];
  v4 = [stringValue length];

  if (v4)
  {
    stringValue2 = [(MSDCodeEntryView *)self stringValue];
    stringValue3 = [(MSDCodeEntryView *)self stringValue];
    [stringValue2 deleteCharactersInRange:{objc_msgSend(stringValue3, "length") - 1, 1}];

    [(MSDCodeEntryView *)self _syncStringValueToLabels];
  }
}

- (void)updateConstraints
{
  v34[1] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = MSDCodeEntryView;
  [(MSDCodeEntryView *)&v32 updateConstraints];
  activeConstraints = [(MSDCodeEntryView *)self activeConstraints];

  v4 = 0x277CCA000uLL;
  if (activeConstraints)
  {
    v5 = MEMORY[0x277CCAAD0];
    activeConstraints2 = [(MSDCodeEntryView *)self activeConstraints];
    [v5 deactivateConstraints:activeConstraints2];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = 0;
  v9 = *MEMORY[0x277D76A08];
  do
  {
    v10 = v4;
    v11 = *(v4 + 2768);
    if (v8)
    {
      generatorFields = [(MSDCodeEntryView *)self generatorFields];
      v13 = [generatorFields objectAtIndexedSubscript:v8];
      generatorFields2 = [(MSDCodeEntryView *)self generatorFields];
      firstObject = [generatorFields2 firstObject];
      v16 = [v11 constraintWithItem:v13 attribute:11 relatedBy:0 toItem:firstObject attribute:11 multiplier:1.0 constant:0.0];
      [v7 addObject:v16];
    }

    else
    {
      v33 = @"generatorLabel";
      generatorFields = [(MSDCodeEntryView *)self generatorFields];
      v13 = [generatorFields objectAtIndexedSubscript:0];
      v34[0] = v13;
      generatorFields2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      firstObject = [v11 constraintsWithVisualFormat:@"V:|[generatorLabel]|" options:0 metrics:0 views:generatorFields2];
      [v7 addObjectsFromArray:firstObject];
    }

    v4 = v10;
    v17 = *(v10 + 2768);
    generatorFields3 = [(MSDCodeEntryView *)self generatorFields];
    v19 = [generatorFields3 objectAtIndexedSubscript:v8];
    v20 = [MEMORY[0x277D75520] metricsForTextStyle:v9];
    [v20 scaledValueForValue:14.5];
    v22 = [v17 constraintWithItem:v19 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v21];
    [v7 addObject:v22];

    generatorFields4 = [(MSDCodeEntryView *)self generatorFields];
    v24 = [generatorFields4 objectAtIndexedSubscript:v8];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"codeGeneratorLabel%d", v8];
    [v31 setObject:v24 forKey:v25];

    ++v8;
  }

  while (v8 != 6);
  v26 = [*(v10 + 2768) constraintsWithVisualFormat:@"|[codeGeneratorLabel0]-(DIGIT_SPACING)-[codeGeneratorLabel1]-(DIGIT_SPACING)-[codeGeneratorLabel2]-(GROUP_SEPARATOR_SPACING)-[codeGeneratorLabel3]-(DIGIT_SPACING)-[codeGeneratorLabel4]-(DIGIT_SPACING)-[codeGeneratorLabel5]|" options:0x10000 metrics:&unk_286AEA368 views:v31];
  [v7 addObjectsFromArray:v26];
  v27 = [v7 copy];
  [(MSDCodeEntryView *)self setActiveConstraints:v27];

  v28 = *(v10 + 2768);
  activeConstraints3 = [(MSDCodeEntryView *)self activeConstraints];
  [v28 activateConstraints:activeConstraints3];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_syncStringValueToLabels
{
  for (i = 0; i != 6; ++i)
  {
    stringValue = [(MSDCodeEntryView *)self stringValue];
    v5 = [stringValue length];

    if (i >= v5)
    {
      generatorFields = [(MSDCodeEntryView *)self generatorFields];
      v7 = [generatorFields objectAtIndexedSubscript:i];
      [v7 setText:@"–"];
    }

    else
    {
      generatorFields = [(MSDCodeEntryView *)self stringValue];
      v7 = [generatorFields substringWithRange:{i, 1}];
      generatorFields2 = [(MSDCodeEntryView *)self generatorFields];
      v9 = [generatorFields2 objectAtIndexedSubscript:i];
      [v9 setText:v7];
    }
  }

  [(MSDCodeEntryView *)self setNeedsUpdateConstraints];
}

@end
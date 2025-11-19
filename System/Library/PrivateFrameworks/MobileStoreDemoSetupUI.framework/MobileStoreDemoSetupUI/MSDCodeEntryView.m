@interface MSDCodeEntryView
+ (id)generatorFieldFont;
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (MSDCodeEntryView)initWithDelegate:(id)a3;
- (void)_syncStringValueToLabels;
- (void)clearEntry;
- (void)deleteBackward;
- (void)insertText:(id)a3;
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

- (MSDCodeEntryView)initWithDelegate:(id)a3
{
  v4 = a3;
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
    [(MSDCodeEntryView *)v9 setDelegate:v4];
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [objc_opt_class() generatorFieldFont];
    [(MSDCodeEntryView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = 6;
    do
    {
      v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v14 setFont:v12];
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
  v3 = [(MSDCodeEntryView *)self stringValue];
  [v3 setString:&stru_286AE2298];

  [(MSDCodeEntryView *)self _syncStringValueToLabels];
}

- (void)jiggleAView
{
  v13 = [(MSDCodeEntryView *)self layer];
  v3 = [MEMORY[0x277CD9FA0] animation];
  [v3 setMass:1.20000005];
  [v3 setStiffness:1200.0];
  [v3 setDamping:12.0];
  [v3 setDuration:1.39999998];
  [v3 setVelocity:0.0];
  [v3 setFillMode:*MEMORY[0x277CDA228]];
  [v3 setDelegate:self];
  LODWORD(v4) = 30.0;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [v3 setFromValue:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [v3 setToValue:v6];

  v7 = [MEMORY[0x277CDA008] functionWithName:*MEMORY[0x277CDA9C8]];
  [v3 setValueFunction:v7];

  LODWORD(v8) = 1028389654;
  LODWORD(v9) = 990057071;
  LODWORD(v10) = 1059712716;
  LODWORD(v11) = 1.0;
  v12 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v8 :v9 :v10 :v11];
  [v3 setTimingFunction:v12];

  [v3 setKeyPath:@"transform"];
  [v13 addAnimation:v3 forKey:@"shake"];
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = MSDCodeEntryView;
  v2 = [(MSDCodeEntryView *)&v5 becomeFirstResponder];
  if (v2)
  {
    v3 = [MEMORY[0x277D75658] activeKeyboard];
    [v3 setReturnKeyEnabled:0];
  }

  return v2;
}

- (BOOL)hasText
{
  v2 = [(MSDCodeEntryView *)self stringValue];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(MSDCodeEntryView *)self stringValue];
  v6 = [v5 length];

  if (v6 != 6 && ([v4 isEqualToString:@"\n"] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v8 = [v7 invertedSet];

    if ([v4 rangeOfCharacterFromSet:v8] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v4 length])
      {
        v9 = [(MSDCodeEntryView *)self stringValue];
        [v9 appendString:v4];

        [(MSDCodeEntryView *)self _syncStringValueToLabels];
        v10 = [(MSDCodeEntryView *)self stringValue];
        v11 = [v10 length];

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
  v3 = [(MSDCodeEntryView *)self stringValue];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(MSDCodeEntryView *)self stringValue];
    v6 = [(MSDCodeEntryView *)self stringValue];
    [v5 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];

    [(MSDCodeEntryView *)self _syncStringValueToLabels];
  }
}

- (void)updateConstraints
{
  v34[1] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = MSDCodeEntryView;
  [(MSDCodeEntryView *)&v32 updateConstraints];
  v3 = [(MSDCodeEntryView *)self activeConstraints];

  v4 = 0x277CCA000uLL;
  if (v3)
  {
    v5 = MEMORY[0x277CCAAD0];
    v6 = [(MSDCodeEntryView *)self activeConstraints];
    [v5 deactivateConstraints:v6];
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
      v12 = [(MSDCodeEntryView *)self generatorFields];
      v13 = [v12 objectAtIndexedSubscript:v8];
      v14 = [(MSDCodeEntryView *)self generatorFields];
      v15 = [v14 firstObject];
      v16 = [v11 constraintWithItem:v13 attribute:11 relatedBy:0 toItem:v15 attribute:11 multiplier:1.0 constant:0.0];
      [v7 addObject:v16];
    }

    else
    {
      v33 = @"generatorLabel";
      v12 = [(MSDCodeEntryView *)self generatorFields];
      v13 = [v12 objectAtIndexedSubscript:0];
      v34[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v15 = [v11 constraintsWithVisualFormat:@"V:|[generatorLabel]|" options:0 metrics:0 views:v14];
      [v7 addObjectsFromArray:v15];
    }

    v4 = v10;
    v17 = *(v10 + 2768);
    v18 = [(MSDCodeEntryView *)self generatorFields];
    v19 = [v18 objectAtIndexedSubscript:v8];
    v20 = [MEMORY[0x277D75520] metricsForTextStyle:v9];
    [v20 scaledValueForValue:14.5];
    v22 = [v17 constraintWithItem:v19 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v21];
    [v7 addObject:v22];

    v23 = [(MSDCodeEntryView *)self generatorFields];
    v24 = [v23 objectAtIndexedSubscript:v8];
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
  v29 = [(MSDCodeEntryView *)self activeConstraints];
  [v28 activateConstraints:v29];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_syncStringValueToLabels
{
  for (i = 0; i != 6; ++i)
  {
    v4 = [(MSDCodeEntryView *)self stringValue];
    v5 = [v4 length];

    if (i >= v5)
    {
      v6 = [(MSDCodeEntryView *)self generatorFields];
      v7 = [v6 objectAtIndexedSubscript:i];
      [v7 setText:@"–"];
    }

    else
    {
      v6 = [(MSDCodeEntryView *)self stringValue];
      v7 = [v6 substringWithRange:{i, 1}];
      v8 = [(MSDCodeEntryView *)self generatorFields];
      v9 = [v8 objectAtIndexedSubscript:i];
      [v9 setText:v7];
    }
  }

  [(MSDCodeEntryView *)self setNeedsUpdateConstraints];
}

@end
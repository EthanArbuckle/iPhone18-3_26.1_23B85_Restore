@interface DDConversionAction
+ (BOOL)actionAvailableForResult:(__DDResult *)a3;
+ (id)allActionsForResult:(__DDResult *)a3 context:(id)a4;
+ (id)allActionsForResult:(__DDResult *)a3 context:(id)a4 onlyTest:(BOOL)a5 forceSubMenu:(BOOL)a6;
- (BOOL)conversionFailed;
- (DDConversionAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (DDConversionAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 targetUnit:(id)a6;
- (DDConversionAction)initWithValue:(double)a3 unit:(id)a4 targetUnit:(id)a5 context:(id)a6 ambiguousDetection:(BOOL)a7 result:(__DDResult *)a8;
- (id)_titleWithValue;
- (id)calculateResult;
- (id)commonInitWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 targetUnit:(id)a6;
- (id)iconName;
- (id)localizedName;
- (id)menuIcon;
- (id)menuName;
- (id)quickActionTitle;
- (id)specialCaseActions;
- (id)subtitle;
- (unint64_t)menuItemattributes;
- (void)performFromView:(id)a3;
@end

@implementation DDConversionAction

+ (BOOL)actionAvailableForResult:(__DDResult *)a3
{
  if (a3)
  {
    v5 = [a1 isAvailable];
    if (v5)
    {
      v6 = *MEMORY[0x277D04140];
      if (DDResultHasType())
      {
        v7 = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = [v7 bundleIdentifier];
        v9 = [v8 isEqualToString:@"com.apple.quicklook.extension.previewUI"];

        if (v9)
        {
          LOBYTE(v5) = 0;
        }

        else
        {
          DDResultCurrencyExtraction();
          LOBYTE(v5) = 0;
        }
      }

      else
      {
        v10 = [a1 allActionsForResult:a3 context:0 onlyTest:1 forceSubMenu:0];
        v11 = [(DDActionGroup *)v10 count]!= 0;

        LOBYTE(v5) = v11;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)allActionsForResult:(__DDResult *)a3 context:(id)a4
{
  v4 = [a1 allActionsForResult:a3 context:a4 onlyTest:0 forceSubMenu:0];
  v5 = [(DDActionGroup *)v4 flattenedActions:?];

  return v5;
}

+ (id)allActionsForResult:(__DDResult *)a3 context:(id)a4 onlyTest:(BOOL)a5 forceSubMenu:(BOOL)a6
{
  v16 = a5;
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a3)
  {
    v8 = *MEMORY[0x277D04168];
    if ((DDResultHasType() & 1) != 0 || (v9 = *MEMORY[0x277D04140], DDResultHasType()))
    {
      v15 = +[DDActionGroup emptyGroup];
      v10 = [v7 objectForKeyedSubscript:@"kDDContextNoRoomForSubtitlesKey"];
      [v10 BOOLValue];

      v11 = specialCaseResultForResult(a3);
      if (v11)
      {
        v12 = [DDConversionAction allActionsForResult:v11 context:v7 onlyTest:v16 forceSubMenu:1];
        [(DDActionGroup *)v12 setInlinedGroup:?];
      }

      else
      {
        v12 = 0;
      }

      DDResultPhysicalUnitsExtraction();
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return 0;
}

- (DDConversionAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    v12.receiver = self;
    v12.super_class = DDConversionAction;
    v10 = [(DDAction *)&v12 initWithURL:v8 result:a4 context:v9];
    self = v10;
    if (v10)
    {
      a4 = [(DDConversionAction *)v10 commonInitWithURL:v8 result:a4 context:v9 targetUnit:0];
    }

    else
    {
      a4 = 0;
    }
  }

  return a4;
}

- (DDConversionAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 targetUnit:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4)
  {
    v15.receiver = self;
    v15.super_class = DDConversionAction;
    v13 = [(DDAction *)&v15 initWithURL:v10 result:a4 context:v11];
    self = v13;
    if (v13)
    {
      a4 = [(DDConversionAction *)v13 commonInitWithURL:v10 result:a4 context:v11 targetUnit:v12];
    }

    else
    {
      a4 = 0;
    }
  }

  return a4;
}

- (id)commonInitWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 targetUnit:(id)a6
{
  v7 = a6;
  v8 = *MEMORY[0x277D04168];
  if (DDResultHasType())
  {
    DDResultPhysicalUnitsExtraction();
  }

  else
  {
    v9 = *MEMORY[0x277D04140];
    if (DDResultHasType())
    {
      DDResultCurrencyExtraction();
    }
  }

  return self;
}

- (DDConversionAction)initWithValue:(double)a3 unit:(id)a4 targetUnit:(id)a5 context:(id)a6 ambiguousDetection:(BOOL)a7 result:(__DDResult *)a8
{
  v15 = a4;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = DDConversionAction;
  v17 = [(DDAction *)&v20 initWithURL:0 result:0 context:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_targetUnit, a5);
    objc_storeStrong(&v18->_extractedUnit, a4);
    v18->_extractedValue = a3;
    v18->_ambiguousDetection = a7;
    if (a8)
    {
      v18->super._result = CFRetain(a8);
    }
  }

  return v18;
}

- (unint64_t)menuItemattributes
{
  if (([(DDAction *)self calloutFlavor]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return [(DDConversionAction *)self conversionFailed];
  }
}

- (id)localizedName
{
  if ([(DDAction *)self calloutFlavor]|| self->_extractedCurrency)
  {
    v3 = [(DDConversionAction *)self _titleWithValue];
  }

  else if (self->_calculateString)
  {
    v5 = [(DDConversionAction *)self calculateResult];
    v6 = [v5 terms];
    v7 = [v6 firstObject];
    v8 = [v7 formattedUnit];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = DDLocalizedStringFromTable(@"Cannot Convert Value", @"Generic value conversion action menu title", @"Cannot Convert Value", @"Conversion");
    }

    v11 = v10;

    v3 = v11;
  }

  else
  {
    v3 = [(DDUIPhysicalUnit *)self->_targetUnit localizedUnitNameWithValue:self->_extractedUnit unit:self->_extractedValue];
  }

  return v3;
}

- (id)_titleWithValue
{
  if (self->_calculateString)
  {
    v2 = [(DDConversionAction *)self calculateResult];
    v3 = [v2 formattedResult];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = DDLocalizedStringFromTable(@"Cannot Convert Value", @"Generic value conversion action menu title", @"Cannot Convert Value", @"Conversion");
    }

    v8 = v5;

    v6 = v8;
  }

  else
  {
    v6 = [(DDUIPhysicalUnit *)self->_targetUnit localizedConvertedValueFrom:self->_extractedUnit unit:self->_extractedValue];
  }

  return v6;
}

- (id)subtitle
{
  if (([(DDAction *)self calloutFlavor]& 1) != 0)
  {
    v3 = 0;
  }

  else if ([(DDConversionAction *)self conversionFailed])
  {
    v3 = 0;
  }

  else if (self->_extractedCurrency)
  {
    v3 = @"yahoo! finance";
  }

  else
  {
    v3 = [(DDConversionAction *)self _titleWithValue];
  }

  return v3;
}

- (id)quickActionTitle
{
  if (self->_calculateString || self->_ambiguousDetection)
  {
    v2 = self->super._result;
    v3 = DDResultGetMatchedString();
  }

  else
  {
    v3 = [(DDUIPhysicalUnit *)self->_extractedUnit localizedConvertedValueFrom:self->_extractedValue unit:?];
  }

  return v3;
}

- (id)calculateResult
{
  v18[1] = *MEMORY[0x277D85DE8];
  calculateString = self->_calculateString;
  if (!calculateString || self->_calculateDidRun)
  {
    goto LABEL_9;
  }

  v4 = MEMORY[0x277CF70F0];
  v17 = *MEMORY[0x277CF70E0];
  v18[0] = &unk_282C2BCC8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v6 = [v4 evaluate:calculateString options:v5];

  v7 = [v6 bestConversion];
  if (!v7)
  {
    if (self->_calculateResult)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [v6 convertedTo:v7];
  calculateResult = self->_calculateResult;
  self->_calculateResult = v8;

  if (!self->_calculateResult)
  {
LABEL_5:
    v10 = [v6 conversions];
    v11 = [v10 firstObject];
    v12 = self->_calculateResult;
    self->_calculateResult = v11;
  }

LABEL_6:
  if (!self->_extractedCurrency)
  {
    v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v13 setMaximumFractionDigits:3];
    [v13 setUsesGroupingSeparator:1];
    [(CalculateResult *)self->_calculateResult setNumberFormatter:v13];
  }

  self->_calculateDidRun = 1;

LABEL_9:
  v14 = self->_calculateResult;
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)performFromView:(id)a3
{
  v4 = a3;
  if (![(DDConversionAction *)self conversionFailed])
  {
    if (self->_extractedCurrency)
    {
      [(DDConversionAction *)self _titleWithValue];
    }

    else
    {
      [(DDConversionAction *)self subtitle];
    }
    v5 = ;
    v6 = MEMORY[0x277D75810];
    v7 = [v4 _dataOwnerForCopy];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__DDConversionAction_performFromView___block_invoke;
    v9[3] = &unk_278290B50;
    v10 = v5;
    v8 = v5;
    [v6 _performAsDataOwner:v7 block:v9];
  }
}

void __38__DDConversionAction_performFromView___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) length])
  {
    v2 = [*MEMORY[0x277CE1EB0] identifier];
    v3 = *(a1 + 32);
    v8 = v2;
    v9 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [MEMORY[0x277D75810] generalPasteboard];
  [v6 setItems:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)conversionFailed
{
  if (!self->_calculateString)
  {
    return 0;
  }

  v2 = [(DDConversionAction *)self calculateResult];
  v3 = v2 == 0;

  return v3;
}

- (id)iconName
{
  if ([(DDConversionAction *)self conversionFailed])
  {
    return 0;
  }

  else
  {
    return @"doc.on.doc";
  }
}

- (id)menuIcon
{
  v3 = MEMORY[0x277D755B8];
  v4 = [(DDUIPhysicalUnit *)self->_extractedUnit group];
  v5 = [v4 symbolNameForValue:self->_extractedUnit unit:self->_extractedValue];
  v6 = [v3 _systemImageNamed:v5];

  return v6;
}

- (id)menuName
{
  v3 = [(DDUIPhysicalUnit *)self->_extractedUnit localizedMenuTitleFormat:@"x"];
  v4 = [(DDUIPhysicalUnit *)self->_extractedUnit localizedMenuTitleFormat:@"x"];
  v5 = DDLocalizedStringFromTable(v3, &stru_282C1E0A8, v4, @"Conversion");

  return v5;
}

- (id)specialCaseActions
{
  v3 = specialCaseResultForResult(self->super._result);
  if (v3)
  {
    v3 = [DDConversionAction allActionsForResult:v3 context:self->super._context onlyTest:0 forceSubMenu:0];
  }

  return v3;
}

@end
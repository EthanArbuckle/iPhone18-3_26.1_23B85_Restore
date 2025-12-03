@interface DDConversionPreviewAction
- (id)commitURL;
- (id)createViewController;
@end

@implementation DDConversionPreviewAction

- (id)createViewController
{
  if ([DDConversionAction actionAvailableForResult:self->super.super._result])
  {
    v3 = [[DDConversionAction alloc] initWithURL:0 result:self->super.super._result context:self->super.super._context];
    calculateResult = [(DDConversionAction *)v3 calculateResult];
    formattedExpression = [calculateResult formattedExpression];

    calculateResult2 = [(DDConversionAction *)v3 calculateResult];
    formattedResult = [calculateResult2 formattedResult];

    v8 = 0;
    if (formattedExpression)
    {
      v9 = formattedResult == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = [DDConversionPreviewController alloc];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ =", formattedExpression];
      v12 = self->super.super._result;
      v13 = *MEMORY[0x277D04140];
      v8 = [(DDConversionPreviewController *)v10 initWithTitle:v11 subTitle:formattedResult finance:DDResultHasType()];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)commitURL
{
  v3 = self->super.super._result;
  if (v3)
  {
    v4 = *MEMORY[0x277D04140];
    if (DDResultHasType())
    {
      v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://finance.yahoo.com/currency-converter/"];
    }

    else
    {
      v3 = 0;
    }

    v2 = vars8;
  }

  return v3;
}

@end
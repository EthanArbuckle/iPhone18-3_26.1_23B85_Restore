@interface DDMoneyPreviewAction
+ (BOOL)actionAvailableForResult:(__DDResult *)a3 url:(id)a4 context:(id)a5;
- (id)menuActions;
- (void)performFromView:(id)a3;
@end

@implementation DDMoneyPreviewAction

- (void)performFromView:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0.0;
  result = self->super.super.super._result;
  if (DDResultCurrencyExtraction())
  {
    if (v11 > 0.0 && v10 != 0)
    {
      v5 = +[DDAction clientActionsDelegate];
      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v6 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v11];
        v12[0] = v10;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
        [v5 handleMoneyActionWithAmount:v6 currencies:v7];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No money action delegate set, can't perform the action", v9, 2u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)actionAvailableForResult:(__DDResult *)a3 url:(id)a4 context:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a5;
  v6 = +[DDAction clientActionsDelegate];
  if (!v6 || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = [v5 objectForKeyedSubscript:@"shouldShowMoneyActionWithAmount"];
  v8 = [v7 isEqualToString:@"YES"];

  if ((v8 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      DDResultCurrencyExtraction();
    }

    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)menuActions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([DDMoneyPreviewAction actionAvailableForResult:self->super.super.super._result url:self->super.super.super._url context:self->super.super.super._context])
  {
    v4 = [(DDAction *)DDMoneyPreviewAction actionWithURL:self->super.super.super._url result:self->super.super.super._result context:self->super.super.super._context];
    [v3 addObject:v4];
  }

  v5 = [DDActionGroup groupWithActions:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[DDActionGroup emptyGroup];
  }

  v8 = v7;

  v9 = [DDConversionAction actionAvailableForResult:self->super.super.super._result];
  url = self->super.super.super._url;
  v11 = self->super.super.super._result;
  context = self->super.super.super._context;
  if (v9)
  {
    v13 = [(DDAction *)DDConversionAction actionWithURL:url result:v11 context:context];
    [(DDActionGroup *)v8 appendAction:v13];
    v14 = [v13 specialCaseActions];
    [(DDActionGroup *)v14 setInlinedGroup:?];
    [(DDActionGroup *)v8 appendGroup:v14];
  }

  else
  {
    v13 = [DDCopyAction actionWithURL:url result:v11 context:context];
    [(DDActionGroup *)v8 appendAction:v13];
  }

  return v8;
}

@end
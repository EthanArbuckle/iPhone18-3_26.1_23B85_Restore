@interface DDMessagesCustomAction
+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4;
- (id)localizedName;
- (void)performFromView:(id)a3;
@end

@implementation DDMessagesCustomAction

+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4
{
  HasType = a4;
  if (a4)
  {
    v5 = +[DDDetectionController messagesActionHandler];
    if (v5)
    {
      v6 = *MEMORY[0x277D04140];
      HasType = DDResultHasType();
    }

    else
    {
      HasType = 0;
    }
  }

  return HasType;
}

- (id)localizedName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DDLocalizedString(@"Send %@");
  v5 = self->super._result;
  v6 = [v3 stringWithFormat:v4, DDResultGetMatchedString()];

  return v6;
}

- (void)performFromView:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->super._result)
  {
    v4 = +[DDDetectionController messagesActionHandler];
    if (v4)
    {
      result = self->super._result;
      v6 = *MEMORY[0x277D04140];
      if (DDResultHasType())
      {
        v7 = self->super._result;
        DDResultCurrencyExtraction();
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end
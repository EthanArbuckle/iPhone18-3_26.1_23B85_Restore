@interface DDChatBotAction
+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4;
- (id)commitURL;
- (id)menuActions;
- (id)sheetActions;
@end

@implementation DDChatBotAction

+ (BOOL)handlesUrl:(id)a3 result:(__DDResult *)a4
{
  v5 = a3;
  if (!v5)
  {
    if (_DDResultIsURL(a4))
    {
      v5 = _DDURLFromResult(a4);
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = dd_emailFromMailtoScheme(v5);
  IsChatBot = dd_handleIsChatBot(v6);

  if (IsChatBot)
  {
    v8 = 1;
  }

  else
  {
    v12 = 0;
    v9 = [(NSURL *)v5 dd_phoneNumberFromTelSchemeAndExtractBody:&v12 serviceID:0 suggestions:?];
    v10 = v12;
    v8 = v10 != 0;
  }

  return v8;
}

- (id)menuActions
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(DDAction *)self url];
  if (v3 || [(DDAction *)self result]&& (_DDURLFromResult([(DDAction *)self result]), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{3, 0}];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [objc_alloc(*(*(&v16 + 1) + 8 * i)) initWithURL:v4 result:self->super.super._result context:self->super.super._context];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = [DDActionGroup groupWithActions:v5];

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = 0;
    v15 = *MEMORY[0x277D85DE8];
  }

  return v12;
}

- (id)sheetActions
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(DDAction *)self url];
  if (v3 || [(DDAction *)self result]&& (_DDURLFromResult([(DDAction *)self result]), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:{3, 0}];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [objc_alloc(*(*(&v15 + 1) + 8 * i)) initWithURL:v4 result:self->super.super._result context:self->super.super._context];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = 0;
    v14 = *MEMORY[0x277D85DE8];
  }

  return v5;
}

- (id)commitURL
{
  v3 = self->super.super._url;
  if (!v3)
  {
    v4 = self->super.super._result;
    if (v4)
    {
      v3 = _DDURLFromResult(v4);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = [[DDTextMessageAction alloc] initWithURL:v3 result:self->super.super._result context:self->super.super._context];
  v6 = [(DDTextMessageAction *)v5 notificationURL];

  return v6;
}

@end
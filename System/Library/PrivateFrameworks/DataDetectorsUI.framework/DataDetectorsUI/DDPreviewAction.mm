@interface DDPreviewAction
+ (id)previewActionForURL:(id)l result:(__DDResult *)result context:(id)context;
- (CGSize)suggestedContentSize;
- (id)expandViewController;
- (id)menuActions;
- (id)previewViewController;
- (id)viewController;
- (void)dealloc;
@end

@implementation DDPreviewAction

- (void)dealloc
{
  viewController = self->super._viewController;
  self->super._viewController = 0;

  v4.receiver = self;
  v4.super_class = DDPreviewAction;
  [(DDAction *)&v4 dealloc];
}

+ (id)previewActionForURL:(id)l result:(__DDResult *)result context:(id)context
{
  lCopy = l;
  contextCopy = context;
  v9 = contextCopy;
  if (lCopy | result)
  {
    if (!result)
    {
      goto LABEL_35;
    }

    Category = DDResultGetCategory();
    if (Category > 2)
    {
      if (Category == 3)
      {
        v14 = DDMapAction;
        goto LABEL_54;
      }

      if (Category == 4)
      {
        v14 = DDTimeLineAction;
        goto LABEL_54;
      }

      if (Category != 5)
      {
LABEL_33:
        v21 = Category;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [DDPreviewAction previewActionForURL:result result:lCopy context:v21];
        }

        goto LABEL_35;
      }
    }

    else if (Category)
    {
      if (Category != 1)
      {
        if (Category == 2)
        {
          v14 = DDPersonAction;
LABEL_54:
          v15 = [[v14 alloc] initWithURL:lCopy result:result context:v9];
          goto LABEL_55;
        }

        goto LABEL_33;
      }

      if ([DDNewsPreviewAction handlesUrl:lCopy result:result])
      {
        goto LABEL_36;
      }

      if ([DDURLPreviewAction handlesUrl:lCopy result:result])
      {
        goto LABEL_38;
      }

      if ([DDChatBotAction handlesUrl:lCopy result:result])
      {
        goto LABEL_48;
      }

      if ([DDPersonAction handlesUrl:lCopy result:result])
      {
        goto LABEL_50;
      }

LABEL_35:
      if ([DDNewsPreviewAction handlesUrl:lCopy result:result])
      {
LABEL_36:
        v14 = DDNewsPreviewAction;
        goto LABEL_54;
      }

      if ([DDURLPreviewAction handlesUrl:lCopy result:result])
      {
LABEL_38:
        v14 = DDURLPreviewAction;
        goto LABEL_54;
      }

      if ([DDMapAction handlesUrl:lCopy result:result])
      {
        v14 = DDMapAction;
        goto LABEL_54;
      }

      if ([DDChatBotAction handlesUrl:lCopy result:result])
      {
LABEL_48:
        v14 = DDChatBotAction;
        goto LABEL_54;
      }

      if ([DDPersonAction handlesUrl:lCopy result:result])
      {
LABEL_50:
        v14 = DDPersonAction;
        goto LABEL_54;
      }

LABEL_51:
      v15 = 0;
      goto LABEL_55;
    }

    Type = DDResultGetType();
    if (CFStringCompare(Type, *MEMORY[0x277D041B0], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D04108], 0) == kCFCompareEqualTo)
    {
      v14 = DDURLPreviewAction;
      goto LABEL_54;
    }

    if (CFStringCompare(Type, *MEMORY[0x277D040D0], 0) == kCFCompareEqualTo)
    {
      v14 = DDFlightPreviewAction;
      goto LABEL_54;
    }

    if (CFStringCompare(Type, *MEMORY[0x277D04158], 0) == kCFCompareEqualTo)
    {
      v14 = DDParsecPreviewAction;
      goto LABEL_54;
    }

    if (CFStringCompare(Type, *MEMORY[0x277D04048], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D04140], 0) == kCFCompareEqualTo)
    {
      goto LABEL_51;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDPreviewAction previewActionForURL:lCopy result:? context:?];
    }

    goto LABEL_35;
  }

  v10 = [contextCopy objectForKeyedSubscript:@"Contact"];
  v11 = v10;
  if (v10)
  {
    if (DDContactHasNameInfo(v10) || ![DDMapAction actionAvailableForContact:v11])
    {
      v12 = DDPersonAction;
    }

    else
    {
      v12 = DDMapAction;
    }

    v15 = [[v12 alloc] initWithURL:0 result:0 context:v9];
  }

  else
  {
    v16 = [v9 objectForKeyedSubscript:@"ICS"];
    if ([v16 length] && ((objc_msgSend(v9, "objectForKeyedSubscript:", 0x282C1E0C8), (v17 = objc_claimAutoreleasedReturnValue()) != 0) || (+[DDAddEventAction cachedEventForICSString:](DDAddEventAction, "cachedEventForICSString:", v16), (v17 = objc_claimAutoreleasedReturnValue()) != 0)))
    {
      v18 = v17;
      v19 = [DDAction contextByAddingValue:v17 toKey:0x282C1E0C8 inContext:v9];

      v15 = [(DDAction *)[DDTimeLineAction alloc] initWithURL:0 result:0 context:v19];
      v9 = v19;
    }

    else
    {
      v15 = 0;
    }
  }

LABEL_55:

  return v15;
}

- (id)viewController
{
  if (self->super._viewController)
  {
    viewController = self->super._viewController;
  }

  else
  {
    createViewController = [(DDPreviewAction *)self createViewController];
    v6 = self->super._viewController;
    self->super._viewController = createViewController;

    viewController = self->super._viewController;
  }

  return viewController;
}

- (id)previewViewController
{
  if ([(DDPreviewAction *)self menuHeaderReplacesPreview])
  {
    goto LABEL_2;
  }

  isDeviceLocked = dd_isDeviceLocked();
  viewController = [(DDPreviewAction *)self viewController];
  if (!isDeviceLocked)
  {
LABEL_3:

    return viewController;
  }

  v6 = viewController;
  if (([viewController _canShowWhileLocked] & 1) == 0)
  {

LABEL_2:
    viewController = 0;
    goto LABEL_3;
  }

  viewController = v6;

  return viewController;
}

- (id)expandViewController
{
  [(DDPreviewAction *)self setPreviewMode:0];

  return [(DDPreviewAction *)self viewController];
}

- (id)menuActions
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(DDPreviewAction *)self menuActionClasses];
  v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  v3 = 0;
  if (v18)
  {
    v17 = *v25;
    do
    {
      v4 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v4;
        v5 = *(*(&v24 + 1) + 8 * v4);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v21 == v9)
              {
                v11 = *(*(&v20 + 1) + 8 * i);
                if (![v11 isAvailable])
                {
                  continue;
                }
              }

              else
              {
                objc_enumerationMutation(v6);
                v11 = *(*(&v20 + 1) + 8 * i);
                if (![v11 isAvailable])
                {
                  continue;
                }
              }

              v12 = [[v11 alloc] initWithURL:self->super._url result:self->super._result context:self->super._context];
              if (v12)
              {
                if (!v3)
                {
                  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                [v3 addObject:v12];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v8);
        }

        v4 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  v13 = [DDActionGroup groupWithActions:v3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (CGSize)suggestedContentSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (void)previewActionForURL:(uint64_t)a1 result:(uint64_t)a2 context:.cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown result type %@ in the Misc category; no actions found (URL %@)", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)previewActionForURL:(uint64_t)a1 result:(uint64_t)a2 context:(int)a3 .cold.2(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4[0] = 67109634;
  v4[1] = a3;
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown DDResult category %d for result %@; could not find any actions for URL %@", v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

@end
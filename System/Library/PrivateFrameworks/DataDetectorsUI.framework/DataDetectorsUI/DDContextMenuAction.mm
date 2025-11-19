@interface DDContextMenuAction
+ (BOOL)validateContext:(id)a3 silent:(BOOL)a4;
+ (id)buttonActionsForURL:(id)a3 result:(__DDResult *)a4 contact:(id)a5 icsString:(id)a6 context:(id)a7 view:(id)a8 identifier:(id)a9 suggestedActions:(id)a10 defaultAction:(id *)a11;
+ (id)contextMenuConfigurationAtIndex:(unint64_t)a3 inTextStorage:(id)a4 inView:(id)a5 context:(id)a6 menuIdentifier:(id)a7;
+ (id)contextMenuConfigurationForURL:(id)a3 identifier:(id)a4 selectedText:(id)a5 results:(id)a6 inView:(id)a7 context:(id)a8 menuIdentifier:(id)a9;
+ (id)contextMenuConfigurationWithRVItem:(id)a3 inView:(id)a4 context:(id)a5 menuIdentifier:(id)a6;
+ (id)contextMenuConfigurationWithResult:(__DDResult *)a3 inView:(id)a4 context:(id)a5 menuIdentifier:(id)a6;
+ (id)contextMenuConfigurationWithURL:(id)a3 inView:(id)a4 context:(id)a5 menuIdentifier:(id)a6;
+ (id)defaultActionWithResult:(__DDResult *)a3 context:(id)a4;
+ (id)defaultActionWithURL:(id)a3 context:(id)a4;
+ (id)filterResultsForQuickActions:(id)a3;
+ (id)identificationStringsForMenuElement:(id)a3 useDefault:(BOOL)a4;
+ (id)previewActionForResult:(__DDResult *)a3 URL:(id)a4 context:(id)a5;
+ (id)previewViewProviderForPreviewAction:(id)a3 context:(id)a4;
+ (id)previewViewProviderForResult:(__DDResult *)a3 context:(id)a4;
+ (id)previewViewProviderForURL:(id)a3 context:(id)a4;
+ (id)updateContext:(id)a3 withSourceRect:(CGRect)a4;
+ (void)performAction:(id)a3 fromView:(id)a4 alertController:(id)a5 interactionDelegate:(id)a6;
+ (void)performDefaultActionWithResult:(__DDResult *)a3 inView:(id)a4 atLocation:(CGPoint)a5 withMenuInteraction:(id)a6 context:(id)a7;
+ (void)performDefaultActionWithURL:(id)a3 inView:(id)a4 atLocation:(CGPoint)a5 withMenuInteraction:(id)a6 context:(id)a7;
- (DDContextMenuAction)initWithRVItem:(id)a3;
- (DDContextMenuAction)initWithResult:(__DDResult *)a3 URL:(id)a4;
- (id)_rawContextMenuContentForView:(id)a3 interactionDelegate:(id)a4 context:(id)a5 elements:(id)a6 defaultAction:(id *)a7 overriddenMenuActionProvider:(id *)a8 options:(int64_t)a9;
- (id)_updateMenuElementItems:(id)a3 withActions:(id)a4 view:(id)a5 interactionDelegate:(id)a6 options:(int64_t)a7 level:(unint64_t)a8 parent:(id)a9;
- (id)contextMenuConfigurationWithIdentifier:(id)a3 inView:(id)a4 context:(id)a5;
- (id)contextMenuConfigurationWithIdentifier:(id)a3 inView:(id)a4 context:(id)a5 defaultAction:(id *)a6 menuProvider:(id *)a7 options:(int64_t)a8;
- (id)initAtIndex:(unint64_t)a3 inTextStorage:(id)a4;
- (void)commonInitWithResult:(__DDResult *)a3 URL:(id)a4;
- (void)dealloc;
@end

@implementation DDContextMenuAction

+ (void)performAction:(id)a3 fromView:(id)a4 alertController:(id)a5 interactionDelegate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 interactionType])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__DDContextMenuAction_performAction_fromView_alertController_interactionDelegate___block_invoke;
    v14[3] = &unk_278290DF0;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }

  else
  {
    v13 = +[DDDetectionController sharedController];
    [v13 performAction:v9 fromView:v10 alertController:v11 interactionDelegate:v12];
  }
}

void __82__DDContextMenuAction_performAction_fromView_alertController_interactionDelegate___block_invoke(void *a1)
{
  v2 = +[DDDetectionController sharedController];
  [v2 performAction:a1[4] fromView:a1[5] alertController:a1[6] interactionDelegate:a1[7]];
}

+ (BOOL)validateContext:(id)a3 silent:(BOOL)a4
{
  v5 = [a3 objectForKeyedSubscript:@"SourceRect"];

  if (v5 || a4 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    return v5 != 0;
  }

  +[DDContextMenuAction validateContext:silent:];
  return 0;
}

+ (id)updateContext:(id)a3 withSourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a3)
  {
    v8 = [a3 mutableCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = v8;
  v10 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [v9 setObject:v10 forKey:@"SourceRect"];

  [v9 setObject:MEMORY[0x277CBEC38] forKey:@"defaultHttpActionRequested"];

  return v9;
}

+ (id)contextMenuConfigurationAtIndex:(unint64_t)a3 inTextStorage:(id)a4 inView:(id)a5 context:(id)a6 menuIdentifier:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = [[DDContextMenuAction alloc] initAtIndex:a3 inTextStorage:v11];
  v16 = v15[1];
  v17 = v15[2];
  v18 = [DDDetectionController updateContext:v14 forResult:v17 atIndex:a3 ofStorage:v11];

  if (!+[DDDetectionController largeScreenIdiom])
  {
    goto LABEL_4;
  }

  v19 = [v18 objectForKeyedSubscript:@"SourceRect"];

  if (!v19)
  {
    v21 = [v11 layoutManagers];
    v22 = [v21 firstObject];

    if (!v22)
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [v12 layoutManager];
      }

      else
      {
        v22 = 0;
      }
    }

    v23 = [v22 textContainers];
    v50 = [v23 firstObject];

    if (v17)
    {
      RangeForURLification = DDResultGetRangeForURLification();
      if (RangeForURLification == -1)
      {
LABEL_24:
        v35 = v50;
        goto LABEL_25;
      }
    }

    else
    {
      v26 = [v16 scheme];
      if ([v26 isEqualToString:@"x-apple-data-detectors-clientdefined"])
      {
        v27 = [v18 objectForKeyedSubscript:?];

        if (v27)
        {
          v28 = [v16 path];
          v29 = [v28 integerValue];

          v30 = [v18 objectForKeyedSubscript:@"CustomActionRanges"];
          if ([v30 count] <= v29)
          {
            v49 = 0;
            RangeForURLification = -1;
          }

          else
          {
            v31 = [v30 objectAtIndexedSubscript:v29];
            RangeForURLification = [v31 rangeValue];
            v49 = v32;
          }

          v24 = v49;
          if (RangeForURLification == -1)
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }
      }

      else
      {
      }

      v52 = 0;
      v53 = 0;
      v33 = [v11 attribute:*MEMORY[0x277D740E8] atIndex:a3 effectiveRange:&v52];

      if (!v33)
      {
        goto LABEL_24;
      }

      RangeForURLification = v52;
      v24 = v53;
      if (v52 == -1)
      {
        goto LABEL_24;
      }
    }

LABEL_19:
    v34 = [v22 glyphRangeForCharacterRange:RangeForURLification actualCharacterRange:{v24, 0}];
    v35 = v50;
    [v22 boundingRectForGlyphRange:v34 inTextContainer:{v36, v50}];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 textContainerInset];
      v38 = v45 + v38;
      v40 = v46 + v40;
    }

    v47 = [DDContextMenuAction updateContext:v18 withSourceRect:v38, v40, v42, v44];

    v18 = v47;
LABEL_25:

    if ([a1 validateContext:v18 silent:0])
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  if ([a1 validateContext:v18 silent:0])
  {
LABEL_4:
    v20 = [v15 contextMenuConfigurationWithIdentifier:v13 inView:v12 context:v18];
    goto LABEL_27;
  }

LABEL_26:
  v20 = 0;
LABEL_27:

  return v20;
}

+ (id)contextMenuConfigurationForURL:(id)a3 identifier:(id)a4 selectedText:(id)a5 results:(id)a6 inView:(id)a7 context:(id)a8 menuIdentifier:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if ([a1 validateContext:v20 silent:0] && (dd_urlLooksSuspicious(v15) & 1) == 0)
  {
    v23 = +[DDDetectionController sharedController];
    v28 = 0;
    v24 = [v23 resultForURL:v15 identifier:v16 selectedText:v17 results:v18 context:v20 extendedContext:&v28];
    v25 = v28;

    v26 = [[DDContextMenuAction alloc] initWithResult:v24 URL:v15];
    v22 = [(DDContextMenuAction *)v26 contextMenuConfigurationWithIdentifier:v21 inView:v19 context:v25];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)contextMenuConfigurationWithResult:(__DDResult *)a3 inView:(id)a4 context:(id)a5 menuIdentifier:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([a1 validateContext:v11 silent:0])
  {
    v13 = [[DDContextMenuAction alloc] initWithResult:a3 URL:0];
    v14 = [(DDContextMenuAction *)v13 contextMenuConfigurationWithIdentifier:v12 inView:v10 context:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)contextMenuConfigurationWithURL:(id)a3 inView:(id)a4 context:(id)a5 menuIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([a1 validateContext:v12 silent:0] && (dd_urlLooksSuspicious(v10) & 1) == 0)
  {
    v15 = [[DDContextMenuAction alloc] initWithResult:0 URL:v10];
    v14 = [(DDContextMenuAction *)v15 contextMenuConfigurationWithIdentifier:v13 inView:v11 context:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)contextMenuConfigurationWithRVItem:(id)a3 inView:(id)a4 context:(id)a5 menuIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([a1 validateContext:v12 silent:0])
  {
    v14 = [[DDContextMenuAction alloc] initWithRVItem:v10];
    v15 = [(DDContextMenuAction *)v14 contextMenuConfigurationWithIdentifier:v13 inView:v11 context:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)defaultActionWithResult:(__DDResult *)a3 context:(id)a4
{
  v6 = a4;
  if ([a1 validateContext:v6 silent:0])
  {
    v7 = +[DDDetectionController sharedController];
    if ([v7 _shouldImmediatelyShowActionSheetForCoreResult:a3])
    {
      v8 = 0;
    }

    else
    {
      v9 = [MEMORY[0x277D04218] resultFromCoreResult:a3];
      v10 = v7[7];
      v11 = [v9 url];
      v8 = [v10 defaultActionForURL:v11 result:a3 context:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)defaultActionWithURL:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 validateContext:v7 silent:0])
  {
    v8 = +[DDDetectionController sharedController];
    if ([v8 _shouldImmediatelyShowActionSheetForURL:v6])
    {
      v9 = 0;
    }

    else
    {
      v9 = [v8[7] defaultActionForURL:v6 result:0 context:v7];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)previewViewProviderForPreviewAction:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 allKeys];
  v8 = [v7 containsObject:@"kDDContextMenuWantsPreviewKey"];

  if (v8)
  {
    v9 = [v6 objectForKey:@"kDDContextMenuWantsPreviewKey"];
    v10 = [v9 BOOLValue];

    v11 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 1;
    v11 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v10)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__DDContextMenuAction_previewViewProviderForPreviewAction_context___block_invoke;
    aBlock[3] = &unk_2782914B0;
    v15 = v5;
    v11 = _Block_copy(aBlock);
  }

LABEL_7:
  v12 = _Block_copy(v11);

  return v12;
}

id __67__DDContextMenuAction_previewViewProviderForPreviewAction_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) url];
  if (v2 && [DDClientPreviewAction clientCanPerformActionWithUrl:v2])
  {
    if (dd_isDeviceLocked())
    {
      v3 = 0;
    }

    else
    {
      v5 = [DDClientPreviewAction alloc];
      v6 = [*(a1 + 32) context];
      v7 = [(DDAction *)v5 initWithURL:v2 result:0 context:v6];
      v3 = [(DDClientPreviewAction *)v7 viewController];
    }
  }

  else
  {
    v3 = [*(a1 + 32) previewViewController];
  }

  return v3;
}

+ (id)buttonActionsForURL:(id)a3 result:(__DDResult *)a4 contact:(id)a5 icsString:(id)a6 context:(id)a7 view:(id)a8 identifier:(id)a9 suggestedActions:(id)a10 defaultAction:(id *)a11
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (v16 || a4 || v17 || v18)
  {
    if (dd_urlLooksSuspicious(v16))
    {
      v23 = 0;
      goto LABEL_21;
    }

    if (_DDResultIsURL(a4))
    {
      v24 = _DDURLFromResult(a4);
      v25 = v24;
      if (!v24 || (dd_urlLooksSuspicious(v24) & 1) != 0)
      {

        v23 = 0;
        goto LABEL_21;
      }
    }

    v26 = [DDDetectionController barcodeContext:v19 preview:1 contact:v17 ics:v18];

    v27 = [[DDContextMenuAction alloc] initWithResult:a4 URL:v16];
    v33 = 0;
    v28 = [v26 objectForKeyedSubscript:@"kDDContextUsePlaceholderDefaultActionKey"];
    if ([v28 BOOLValue])
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    v30 = [(DDContextMenuAction *)v27 contextMenuConfigurationWithIdentifier:v21 inView:v20 context:v26 defaultAction:a11 menuProvider:&v33 options:v29];
    v31 = v33;

    if (v31)
    {
      v23 = v31[2](v31, v22);
    }

    else
    {
      v23 = 0;
    }

    v19 = v26;
    goto LABEL_21;
  }

  v23 = 0;
  if (a11)
  {
    *a11 = 0;
  }

LABEL_21:

  return v23;
}

- (id)_rawContextMenuContentForView:(id)a3 interactionDelegate:(id)a4 context:(id)a5 elements:(id)a6 defaultAction:(id *)a7 overriddenMenuActionProvider:(id *)a8 options:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  item = self->_item;
  if (!item)
  {
    v23 = [DDContextMenuAction previewActionForResult:self->_result URL:self->_url context:v17];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (a8)
    {
      if (isKindOfClass)
      {
        v30 = [DDClientPreviewAction clientMenuActionProviderForUrl:self->_url context:v17];
        *a8 = v30;
        if (v30)
        {
          v31 = 0;
          goto LABEL_26;
        }
      }
    }

    v24 = v23;
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_20:
    v48 = v24;
    v37 = v16;
    v38 = v15;
    v39 = +[DDDetectionController sharedController];
    v40 = [v39 actionsForResult:self->_result context:v17];
    v27 = [DDActionGroup groupWithActions:v40];

    if (![(DDActionGroup *)v27 count])
    {
      v15 = v38;
      v16 = v37;
      v24 = v48;
      goto LABEL_25;
    }

    v15 = v38;
    v41 = v38;
    v16 = v37;
    v28 = [(DDContextMenuAction *)self _updateMenuElementItems:v18 withActions:v27 view:v41 interactionDelegate:v37 options:a9 level:0 parent:0];
    v24 = v48;
    goto LABEL_24;
  }

  if ([(RVItem *)item normalizedType]== 6)
  {
    v20 = [DDLookupAction alloc];
    v21 = [(RVItem *)self->_item query];
    v22 = [(DDLookupAction *)v20 initWithRVQuery:v21 context:v17];
  }

  else
  {
    v32 = [(RVItem *)self->_item highlightRange];
    if (v32 == 0x7FFFFFFFFFFFFFFFLL || (v34 = v32 + v33, -[RVItem text](self->_item, "text"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 length], v35, v34 > v36))
    {
      v23 = 0;
      v31 = 0;
      goto LABEL_26;
    }

    v45 = [DDLookupAction alloc];
    v21 = [(RVItem *)self->_item text];
    v46 = [(RVItem *)self->_item highlightRange];
    v22 = [(DDLookupAction *)v45 initWithQueryString:v21 range:v46 context:v47, v17];
  }

  v23 = v22;

  if (+[(DDParsecAction *)DDLookupAction])
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (([v23 showMenuTitle] & 1) == 0)
  {
    menuTitle = self->_menuTitle;
    self->_menuTitle = 0;
  }

  v26 = [v23 menuActions];
  if (v26)
  {
    v27 = v26;
    v28 = [(DDContextMenuAction *)self _updateMenuElementItems:v18 withActions:v26 view:v15 interactionDelegate:v16 options:a9 level:0 parent:0];
LABEL_24:
    *a7 = v28;
    goto LABEL_25;
  }

  v49 = a7;
  v42 = +[DDDetectionController sharedController];
  v43 = [v42 actionsForResult:self->_result context:v17];
  v27 = [DDActionGroup groupWithActions:v43];

  if ([(DDActionGroup *)v27 count])
  {
    v28 = [(DDContextMenuAction *)self _updateMenuElementItems:v18 withActions:v27 view:v15 interactionDelegate:v16 options:a9 level:0 parent:0];
    a7 = v49;
    goto LABEL_24;
  }

LABEL_25:

  v31 = v24;
LABEL_26:

  return v31;
}

+ (id)filterResultsForQuickActions:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        if (_DDResultIsURL([v9 coreResult]))
        {
          v10 = [v9 url];
          v11 = v10;
          if (!v10 || dd_urlLooksSuspicious(v10))
          {

            continue;
          }
        }

        if (([v9 ddui_canBeCombinedToOthers] & 1) == 0)
        {
          v12 = objc_autoreleasePoolPush();
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = v4;
          v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                if ([v9 ddui_isEquivalentToResult:*(*(&v21 + 1) + 8 * j)])
                {

                  objc_autoreleasePoolPop(v12);
                  goto LABEL_7;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          objc_autoreleasePoolPop(v12);
        }

        [v4 addObject:v9];
        if ([v4 count] == 50)
        {
          goto LABEL_26;
        }

LABEL_7:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

LABEL_26:

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)identificationStringsForMenuElement:(id)a3 useDefault:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 identifier];
    if (!v7 && !v4)
    {
      goto LABEL_14;
    }

    if (v7 == 0 && v4)
    {
      v8 = @"none";
    }

    else
    {
      v8 = v7;
    }

    goto LABEL_13;
  }

  if (v4)
  {
    v9 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [v5 action];
      if (v11)
      {
        v12 = NSStringFromSelector(v11);
        [v6 addObject:v12];
      }

      v13 = [v5 fallbackAction];
      if (v13)
      {
        v8 = NSStringFromSelector(v13);
LABEL_13:
        [v6 addObject:v8];
      }
    }
  }

LABEL_14:
  if ([v6 count])
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)contextMenuConfigurationWithIdentifier:(id)a3 inView:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 objectForKeyedSubscript:@"kDDContextUsePlaceholderDefaultActionKey"];
  if ([v11 BOOLValue])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(DDContextMenuAction *)self contextMenuConfigurationWithIdentifier:v10 inView:v9 context:v8 defaultAction:0 menuProvider:0 options:v12];

  return v13;
}

- (id)contextMenuConfigurationWithIdentifier:(id)a3 inView:(id)a4 context:(id)a5 defaultAction:(id *)a6 menuProvider:(id *)a7 options:(int64_t)a8
{
  v60 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self->_result;
  if (v15)
  {
    v16 = DDCreateUpdatedResultWithContext(v15, v14);
    if (v16)
    {
      v17 = self->_result;
      self->_result = v16;
      CFRelease(v17);
    }
  }

  v18 = [v14 objectForKeyedSubscript:@"ICS"];
  if ([v18 length])
  {
    v19 = [DDAddEventAction cachedEventForICSString:v18];
    if (v19)
    {
      v20 = [DDAction contextByAddingValue:v19 toKey:0x282C1E0C8 inContext:v14];

      v14 = v20;
    }
  }

  v21 = [v14 copy];

  v56 = v18;
  if (self->_originalItem)
  {
    v22 = [[DDRVInteractionDelegate alloc] initWithItem:self->_originalItem];
  }

  else
  {
    v22 = 0;
  }

  objc_initWeak(location, v13);
  v23 = [MEMORY[0x277CBEB18] array];
  v78 = 0;
  v79 = 0;
  v57 = v22;
  v58 = v21;
  v24 = [(DDContextMenuAction *)self _rawContextMenuContentForView:v13 interactionDelegate:v22 context:v21 elements:v23 defaultAction:&v79 overriddenMenuActionProvider:&v78 options:a8];
  v59 = v79;
  v25 = v78;
  if (v25)
  {
    v26 = [v24 previewViewController];
    v27 = v26;
    if (v26)
    {
      v28 = v76;
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke;
      v76[3] = &unk_2782914B0;
      v21 = &v77;
      v77 = v26;
    }

    else
    {
      v28 = 0;
    }

    v37 = [(UIContextMenuConfiguration *)DDContextMenuConfiguration configurationWithIdentifier:v60 previewProvider:v28 actionProvider:v25];
    if (!v27)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (![v23 count])
  {
    v37 = 0;
    goto LABEL_48;
  }

  if (self->_additionalLookupItem && +[(DDParsecAction *)DDLookupAction])
  {
    v29 = [(RVItem *)self->_additionalLookupItem ddResult];
    v53 = [v29 value];

    if ([v53 length])
    {
      v30 = -[DDLookupAction initWithQueryString:range:context:]([DDLookupAction alloc], "initWithQueryString:range:context:", v53, 0, [v53 length], v58);
      v31 = [DDActionGroup groupWithAction:v30];
      v32 = [(DDContextMenuAction *)self _updateMenuElementItems:v23 withActions:v31 view:v13 interactionDelegate:v22 options:a8 level:0 parent:0];
    }
  }

  v33 = a8 & 1;
  if ([v24 menuHasHeaderView])
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_2;
    v74[3] = &unk_2782914D8;
    v75 = v24;
    v34 = [DDUICustomViewMenuElement elementWithViewProvider:v74];
    [v23 insertObject:v34 atIndex:0];

    v35 = 0;
    v36 = v75;
LABEL_22:

    goto LABEL_31;
  }

  if (a8)
  {
    v35 = 0;
    goto LABEL_31;
  }

  v35 = [(NSAttributedString *)self->_menuTitle string];
  if ([v35 length] >= 0x100)
  {
    v36 = [v35 substringToIndex:255];
    v38 = [v36 stringByAppendingString:@"…"];

    v35 = v38;
    goto LABEL_22;
  }

LABEL_31:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_3;
  aBlock[3] = &unk_278291500;
  v69 = v23;
  v73 = v33;
  v39 = v58;
  v70 = v39;
  v27 = v35;
  v71 = v27;
  v40 = v60;
  v72 = v40;
  v54 = _Block_copy(aBlock);
  if (a7)
  {
    *a7 = [v54 copy];
  }

  v41 = [objc_opt_class() previewViewProviderForPreviewAction:v24 context:v39];
  v37 = [(UIContextMenuConfiguration *)DDContextMenuConfiguration configurationWithIdentifier:v40 previewProvider:v41 actionProvider:v54];

  if (v24)
  {
    v42 = [v24 commitURL];
    [v37 setInteractionURL:v42];

    if (([v24 wantsSeamlessCommit] & 1) != 0 || objc_msgSend(v24, "wantsCustomViewControllerCommit"))
    {
      v43 = dd_isDeviceLocked() ^ 1;
    }

    else
    {
      v43 = 0;
    }

    [v37 setExpandPreviewOnInteraction:v43];
    if (v43)
    {
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_4;
      v65[3] = &unk_278291528;
      objc_copyWeak(&v67, location);
      v66 = v24;
      [v37 setInteractionViewControllerProvider:v65];

      objc_destroyWeak(&v67);
    }

    [v37 setPrefersActionMenuStyle:{objc_msgSend(v24, "prefersActionMenuStyle")}];
  }

  if (a6)
  {
    v44 = [v59 defaultAction];

    if (v44)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_5;
      v61[3] = &unk_278291550;
      objc_copyWeak(&v64, location);
      v45 = v44;
      v62 = v45;
      v63 = v57;
      v52 = _Block_copy(v61);
      v59 = v45;
      v46 = [v45 compactTitle];
      v47 = [v45 compactIcon];
      v48 = [v45 generateIdentifier];
      v49 = [DDUIAction actionWithTitle:v46 image:v47 identifier:v48 handler:v52];

      [v49 setDd_action:v59];
      [v49 setDd_handler:v52];
      v50 = v49;
      *a6 = v49;

      objc_destroyWeak(&v64);
    }

    else
    {
      v59 = 0;
      *a6 = 0;
    }
  }

  v21 = &v69;

LABEL_46:
LABEL_47:

LABEL_48:
  objc_destroyWeak(location);

  return v37;
}

id __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_3(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v37 = [MEMORY[0x277CBEB18] arrayWithArray:*(a1 + 32)];
  if (+[(DDParsecAction *)DDLookupAction])
  {
    v36 = &unk_282C2CAF0;
    if (*(a1 + 64) != 1)
    {
      goto LABEL_3;
    }

LABEL_15:
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v12 = [v37 copy];
    v13 = [v12 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (!v13)
    {
      goto LABEL_46;
    }

    v14 = v13;
    v34 = v3;
    v35 = a1;
    v15 = *v51;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        v18 = [DDContextMenuAction identificationStringsForMenuElement:v17 useDefault:0, v34];
        v19 = [v18 firstObject];

        if (v19)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v20 = [&unk_282C2CB08 countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v47;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v47 != v22)
                {
                  objc_enumerationMutation(&unk_282C2CB08);
                }

                if ([v19 hasPrefix:*(*(&v46 + 1) + 8 * j)])
                {
                  [v37 removeObject:v17];
                  goto LABEL_20;
                }
              }

              v21 = [&unk_282C2CB08 countByEnumeratingWithState:&v46 objects:v56 count:16];
            }

            while (v21);
          }
        }

LABEL_20:
      }

      v14 = [v12 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v14);
    v3 = v34;
    goto LABEL_45;
  }

  v36 = [&unk_282C2CAF0 arrayByAddingObject:*MEMORY[0x277D76D08]];
  if (*(a1 + 64) == 1)
  {
    goto LABEL_15;
  }

LABEL_3:
  v35 = a1;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    do
    {
      for (k = 0; k != v6; ++k)
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v42 + 1) + 8 * k);
        v10 = [DDContextMenuAction identificationStringsForMenuElement:v9 useDefault:0];
        v11 = [v10 firstObject];

        if (!v11 || ([v36 containsObject:v11] & 1) == 0)
        {
          [v37 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v6);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  a1 = v35;
  v12 = [*(v35 + 40) objectForKey:@"kDDContextMenuActionsKey"];
  v24 = [v12 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v39;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v12);
        }

        v28 = *(*(&v38 + 1) + 8 * m);
        v29 = [DDContextMenuAction identificationStringsForMenuElement:v28 useDefault:0];
        v30 = [v29 firstObject];

        if (!v30 || ([v36 containsObject:v30] & 1) == 0)
        {
          [v37 addObject:v28];
        }
      }

      v25 = [v12 countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v25);
LABEL_45:
    a1 = v35;
  }

LABEL_46:

  v31 = [MEMORY[0x277D75710] menuWithTitle:*(a1 + 48) image:0 identifier:*(a1 + 56) options:*(a1 + 64) children:v37];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

id __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) expandViewController];
  v4 = [v3 popoverPresentationController];
  [*(a1 + 32) setupPopoverPresentationController:v4 view:WeakRetained];

  return v3;
}

uint64_t __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [DDContextMenuAction performAction:*(a1 + 32) fromView:WeakRetained alertController:0 interactionDelegate:*(a1 + 40)];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)initAtIndex:(unint64_t)a3 inTextStorage:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = DDContextMenuAction;
  v7 = [(DDContextMenuAction *)&v16 init];
  if (v7)
  {
    v8 = +[DDDetectionController sharedController];
    v9 = [v8 resultForLinkAtIndex:a3 inTextStorage:v6];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v11 = +[DDDetectionController sharedController];
      v10 = [v11 linkAtIndex:a3 inTextStorage:v6];
    }

    [(DDContextMenuAction *)v7 commonInitWithResult:v9 URL:v10];
    v12 = +[DDDetectionController sharedController];
    v13 = [v12 attributedTitleForResultAtIndex:a3 ofStorage:v6 updaterBlock:0];
    menuTitle = v7->_menuTitle;
    v7->_menuTitle = v13;
  }

  return v7;
}

- (DDContextMenuAction)initWithResult:(__DDResult *)a3 URL:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = DDContextMenuAction;
  v7 = [(DDContextMenuAction *)&v13 init];
  v8 = v7;
  if (v7)
  {
    [(DDContextMenuAction *)v7 commonInitWithResult:a3 URL:v6];
    if (a3)
    {
      v9 = +[DDDetectionController sharedController];
      v10 = [v9 attributedTitleForResult:a3 updaterBlock:0];
LABEL_6:
      menuTitle = v8->_menuTitle;
      v8->_menuTitle = v10;

      goto LABEL_7;
    }

    if (v6)
    {
      v9 = +[DDDetectionController sharedController];
      v10 = [v9 attributedTitleForURL:v6 updaterBlock:0];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v8;
}

- (DDContextMenuAction)initWithRVItem:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_originalItem, a3);
  v6 = [v5 normalizedType];
  if (v6 > 2)
  {
    if (v6 == 6)
    {
      goto LABEL_12;
    }

    if (v6 != 3)
    {
      goto LABEL_30;
    }

    v7 = [v5 ddResult];
    v8 = [v7 category];

    if (v8 == 1)
    {
      goto LABEL_18;
    }

    v9 = [v5 ddResult];
    v10 = [v9 type];
    if ([v10 isEqualToString:*MEMORY[0x277D04158]])
    {
      v11 = 0;
    }

    else
    {
      v11 = v5;
    }

    objc_storeStrong(&self->_additionalLookupItem, v11);

    v12 = [v5 ddResult];
    v13 = -[DDContextMenuAction initWithResult:URL:](self, "initWithResult:URL:", [v12 coreResult], 0);
    goto LABEL_24;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_30;
    }

LABEL_12:
    v30.receiver = self;
    v30.super_class = DDContextMenuAction;
    self = [(DDContextMenuAction *)&v30 init];
    if (self)
    {
      v14 = [v5 query];
      v15 = [v14 title];

      if ([(__CFString *)v15 length])
      {
        if (![(__CFString *)v15 length])
        {
LABEL_20:
          v21 = [v5 text];

          v22 = [v5 highlightRange];
          v24 = v23;
          if ([v21 length] && v22 + v24 <= objc_msgSend(v21, "length"))
          {
            v15 = [v21 substringWithRange:{v22, v24}];
          }

          else
          {
            v15 = 0;
          }
        }
      }

      else
      {
        v19 = [v5 ddResult];
        v20 = [v19 matchedString];

        v15 = v20;
        if (![(__CFString *)v20 length])
        {
          goto LABEL_20;
        }
      }

      v25 = &stru_282C1E0A8;
      if (v15)
      {
        v25 = v15;
      }

      v26 = v25;

      objc_storeStrong(&self->_item, a3);
      v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v26];

      menuTitle = self->_menuTitle;
      self->_menuTitle = v27;
    }

LABEL_30:
    self = self;
    v16 = self;
    goto LABEL_31;
  }

  v16 = [v5 normalizedURL];
  if (v16)
  {
    v17 = [v5 normalizedURL];
    v18 = dd_urlLooksSuspicious(v17);

    if (v18)
    {
LABEL_18:
      v16 = 0;
      goto LABEL_31;
    }

    v12 = [v5 normalizedURL];
    v13 = [(DDContextMenuAction *)self initWithResult:0 URL:v12];
LABEL_24:
    self = v13;

    v16 = self;
  }

LABEL_31:

  return v16;
}

- (void)commonInitWithResult:(__DDResult *)a3 URL:(id)a4
{
  v7 = a4;
  if (a3)
  {
    v9 = v7;
    self->_result = CFRetain(a3);
    v8 = +[DDDetectionController sharedController];
    [v8 interactionDidStartForResult:a3];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    v9 = v7;
    objc_storeStrong(&self->_url, a4);
    v8 = +[DDDetectionController sharedController];
    [v8 interactionDidStartForURL:v9];
  }

  v7 = v9;
LABEL_6:
}

- (void)dealloc
{
  result = self->_result;
  if (result)
  {
    CFRelease(result);
  }

  v4.receiver = self;
  v4.super_class = DDContextMenuAction;
  [(DDContextMenuAction *)&v4 dealloc];
}

- (id)_updateMenuElementItems:(id)a3 withActions:(id)a4 view:(id)a5 interactionDelegate:(id)a6 options:(int64_t)a7 level:(unint64_t)a8 parent:(id)a9
{
  v87 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v68 = a6;
  v61 = a9;
  v62 = v12;
  v69 = v13;
  v60 = v14;
  if (!v12)
  {
    v17 = 0;
    goto LABEL_74;
  }

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __105__DDContextMenuAction__updateMenuElementItems_withActions_view_interactionDelegate_options_level_parent___block_invoke;
  v83[3] = &unk_278291578;
  v15 = v14;
  v84 = v15;
  [(DDActionGroup *)v13 finalizeWithFilter:v83];
  if ([(DDActionGroup *)v13 count])
  {
    objc_initWeak(&location, v15);
    v16 = [(DDActionGroup *)v13 children];

    v58 = a7 & 5;
    if (v16)
    {
      v64 = [MEMORY[0x277CBEB18] array];
      if (a8)
      {
        v59 = [(DDActionGroup *)v13 inlinedGroup];
      }

      else
      {
        v59 = 0;
      }

      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v78 = 0u;
      v22 = [(DDActionGroup *)v13 children];
      v23 = 0;
      v19 = 0;
      v24 = [v22 countByEnumeratingWithState:&v78 objects:v86 count:16];
      if (v24)
      {
        v25 = *v79;
        do
        {
          v26 = v22;
          v27 = 0;
          v28 = v23;
          v29 = v19;
          do
          {
            if (*v79 != v25)
            {
              objc_enumerationMutation(v26);
            }

            v23 = [(DDContextMenuAction *)self _updateMenuElementItems:v64 withActions:*(*(&v78 + 1) + 8 * v27) view:v15 interactionDelegate:v68 options:a7 level:(v59 ^ 1) + a8 parent:v69];

            v19 = selectDefaultAction(v29, v23);

            ++v27;
            v28 = v23;
            v29 = v19;
          }

          while (v24 != v27);
          v22 = v26;
          v24 = [v26 countByEnumeratingWithState:&v78 objects:v86 count:16];
        }

        while (v24);
      }

      if (!a8)
      {
        if (v64)
        {
          [v62 addObjectsFromArray:?];
        }

        goto LABEL_67;
      }

      v21 = [(DDActionGroup *)v69 mainAction];

      [v21 setTreatAsMenu:1];
      if (v59)
      {
        v30 = 0;
      }

      else
      {
        if (a8 == 1)
        {
          v31 = [v21 menuName];
        }

        else
        {
          if (v58 == 5)
          {
            [v21 serviceCompactName];
          }

          else
          {
            [v21 serviceName];
          }
          v31 = ;
        }

        v30 = v31;
      }

      v32 = MEMORY[0x277D75710];
      v33 = [v21 menuIcon];
      v34 = [v21 generateIdentifier];
      v35 = [v32 menuWithTitle:v30 image:v33 identifier:v34 options:v59 children:v64];
      [v62 addObject:v35];

      [v21 setTreatAsMenu:0];
LABEL_66:

      v23 = v21;
LABEL_67:

      v18 = v64;
LABEL_68:

      if ((a7 & 2) != 0 && [v19 isMemberOfClass:objc_opt_class()])
      {
        v55 = objc_alloc_init(DDPlaceholderAction);
      }

      else
      {
        v55 = v19;
      }

      v17 = v55;

      objc_destroyWeak(&location);
      goto LABEL_73;
    }

    v18 = [(DDActionGroup *)v13 ddAction];
    if (!v18)
    {
      v19 = 0;
      goto LABEL_68;
    }

    v19 = selectDefaultAction(0, v18);
    v65 = [v18 menuItemattributes];
    if ([v18 menuItemNameCanFallbackToServiceName])
    {
      if (a8 == 2)
      {
        v36 = [(DDActionGroup *)v61 children];
        v37 = v18;
        v38 = [v36 count] > 1;

        if (v38)
        {
          v39 = [v18 _serviceIdentifier];
          if (!v39)
          {
LABEL_78:
            if (v58 == 5)
            {
              [v18 serviceCompactName];
            }

            else
            {
              [v18 serviceName];
            }
            v20 = ;
LABEL_13:
            v21 = v20;
            if (v20)
            {
              goto LABEL_52;
            }

            goto LABEL_48;
          }

          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v40 = [(DDActionGroup *)v61 children];
          v41 = [v40 countByEnumeratingWithState:&v74 objects:v85 count:16];
          if (v41)
          {
            v42 = *v75;
            while (2)
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v75 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = [(DDActionGroup *)*(*(&v74 + 1) + 8 * i) ddAction];
                v45 = [v44 _serviceIdentifier];
                v46 = [v45 isEqualToString:v39];

                if ((v46 & 1) == 0)
                {

                  v18 = v37;
                  goto LABEL_78;
                }
              }

              v41 = [v40 countByEnumeratingWithState:&v74 objects:v85 count:16];
              if (v41)
              {
                continue;
              }

              break;
            }
          }

          v18 = v37;
        }
      }

      else if (a8 == 1)
      {
        v20 = [v18 menuName];
        goto LABEL_13;
      }
    }

LABEL_48:
    if (v58 == 5)
    {
      [v18 oneLinerLocalizedSubItemName];
    }

    else
    {
      [v18 localizedSubItemName];
    }
    v21 = ;
LABEL_52:
    v47 = v18;
    v48 = MEMORY[0x277D750C8];
    if (v65)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v49 = [(DDActionGroup *)v61 extractedActions];
      if (v49)
      {
        [v47 menuIcon];
      }

      else
      {
        [v47 icon];
      }
      v51 = ;
      v50 = v49 ^ 1;
    }

    v52 = [v47 generateIdentifier];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __105__DDContextMenuAction__updateMenuElementItems_withActions_view_interactionDelegate_options_level_parent___block_invoke_2;
    v70[3] = &unk_2782915A0;
    v64 = v47;
    v71 = v64;
    objc_copyWeak(&v73, &location);
    v72 = v68;
    v53 = [v48 actionWithTitle:v21 image:v51 identifier:v52 handler:v70];

    if (v50)
    {
    }

    if (v49)
    {
    }

    if ([(DDActionGroup *)v61 extractedActions])
    {
      [v64 extractedActionSubtitle];
    }

    else
    {
      [v64 subtitle];
    }
    v54 = ;
    [v53 setSubtitle:v54];

    [v53 setAttributes:{objc_msgSend(v64, "menuItemattributes")}];
    [v62 addObject:v53];

    objc_destroyWeak(&v73);
    v30 = v71;
    goto LABEL_66;
  }

  v17 = 0;
LABEL_73:

LABEL_74:
  v56 = *MEMORY[0x277D85DE8];

  return v17;
}

void __105__DDContextMenuAction__updateMenuElementItems_withActions_view_interactionDelegate_options_level_parent___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [DDContextMenuAction performAction:v2 fromView:WeakRetained alertController:0 interactionDelegate:*(a1 + 40)];
}

+ (id)previewActionForResult:(__DDResult *)a3 URL:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 | v7)
  {
    if (a3)
    {
      Category = DDResultGetCategory();
      if (Category > 2)
      {
        if (Category <= 4)
        {
          if (Category == 3)
          {
            v10 = DDMapAction;
          }

          else
          {
            v10 = DDTimeLineAction;
          }

          goto LABEL_65;
        }

        if (Category != 5)
        {
          if (Category == 6)
          {
            v10 = DDMoneyPreviewAction;
            goto LABEL_65;
          }

LABEL_31:
          v15 = Category;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [DDContextMenuAction previewActionForResult:a3 URL:v15 context:?];
            v14 = 0;
            goto LABEL_68;
          }

          goto LABEL_32;
        }

        goto LABEL_18;
      }

      if (!Category)
      {
LABEL_18:
        Type = DDResultGetType();
        if (CFStringCompare(Type, *MEMORY[0x277D041B0], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D04108], 0) == kCFCompareEqualTo)
        {
          v10 = DDURLPreviewAction;
          goto LABEL_65;
        }

        if (CFStringCompare(Type, *MEMORY[0x277D040D0], 0) == kCFCompareEqualTo)
        {
          v10 = DDFlightPreviewAction;
          goto LABEL_65;
        }

        if (CFStringCompare(Type, *MEMORY[0x277D04158], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D04068], 0) == kCFCompareEqualTo)
        {
          v10 = DDParsecPreviewAction;
          goto LABEL_65;
        }

        if (CFStringCompare(Type, *MEMORY[0x277D04048], 0))
        {
          if (CFStringCompare(Type, *MEMORY[0x277D04168], 0) == kCFCompareEqualTo)
          {
            v10 = DDConversionPreviewAction;
            goto LABEL_65;
          }

          if (CFStringCompare(Type, *MEMORY[0x277D04140], 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [DDContextMenuAction previewActionForResult:? URL:? context:?];
            v14 = 0;
            goto LABEL_68;
          }
        }

        goto LABEL_32;
      }

      if (Category != 1)
      {
        if (Category == 2)
        {
          v10 = DDPersonAction;
LABEL_65:
          v16 = [v10 alloc];
          v17 = 0;
          v18 = a3;
          goto LABEL_66;
        }

        goto LABEL_31;
      }

      if ([DDNewsPreviewAction handlesUrl:0 result:a3])
      {
        v10 = DDNewsPreviewAction;
        goto LABEL_65;
      }

      if ([DDLinkPresentationAction handlesUrl:0 result:a3])
      {
        v10 = DDLinkPresentationAction;
        goto LABEL_65;
      }

      if ([DDMapAction handlesUrl:0 result:a3])
      {
        v10 = DDMapAction;
        goto LABEL_65;
      }

      if ([DDURLPreviewAction handlesUrl:0 result:a3])
      {
        v10 = DDURLPreviewAction;
        goto LABEL_65;
      }

      if ([DDChatBotAction handlesUrl:0 result:a3])
      {
        v10 = DDChatBotAction;
        goto LABEL_65;
      }

      if ([DDPersonAction handlesUrl:0 result:a3])
      {
        v10 = DDPersonAction;
        goto LABEL_65;
      }

      if ([DDGenericURLPreviewAction handlesUrl:0 result:a3])
      {
        v10 = DDGenericURLPreviewAction;
        goto LABEL_65;
      }
    }

    else if (v7)
    {
      if ([DDClientPreviewAction clientCanPerformActionWithUrl:v7])
      {
        v12 = DDClientPreviewAction;
      }

      else if ([DDNewsPreviewAction handlesUrl:v7 result:0])
      {
        v12 = DDNewsPreviewAction;
      }

      else if ([DDLinkPresentationAction handlesUrl:v7 result:0])
      {
        v12 = DDLinkPresentationAction;
      }

      else if ([DDMapAction handlesUrl:v7 result:0])
      {
        v12 = DDMapAction;
      }

      else if ([DDURLPreviewAction handlesUrl:v7 result:0])
      {
        v12 = DDURLPreviewAction;
      }

      else if ([DDChatBotAction handlesUrl:v7 result:0])
      {
        v12 = DDChatBotAction;
      }

      else if ([DDPersonAction handlesUrl:v7 result:0])
      {
        v12 = DDPersonAction;
      }

      else
      {
        if (![DDGenericURLPreviewAction handlesUrl:v7 result:0])
        {
          goto LABEL_32;
        }

        v12 = DDGenericURLPreviewAction;
      }

      v16 = [v12 alloc];
      v17 = v7;
      v18 = 0;
LABEL_66:
      v11 = [v16 initWithURL:v17 result:v18 context:v8];
      goto LABEL_67;
    }

LABEL_32:
    v14 = 0;
    goto LABEL_68;
  }

  v11 = [DDPreviewAction previewActionForURL:0 result:0 context:v8];
LABEL_67:
  v14 = v11;
LABEL_68:

  return v14;
}

+ (void)performDefaultActionWithResult:(__DDResult *)a3 inView:(id)a4 atLocation:(CGPoint)a5 withMenuInteraction:(id)a6 context:(id)a7
{
  y = a5.y;
  x = a5.x;
  v12 = MEMORY[0x277D46C40];
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = [v12 alloc];
  v17 = [objc_alloc(MEMORY[0x277D04218]) initWithCoreResult:a3];
  v18 = [v16 initWithDDResult:v17];

  [DDRevealBridge _revealItem:v18 view:v15 location:v14 menuInteraction:v13 context:x, y];
}

+ (void)performDefaultActionWithURL:(id)a3 inView:(id)a4 atLocation:(CGPoint)a5 withMenuInteraction:(id)a6 context:(id)a7
{
  y = a5.y;
  x = a5.x;
  v12 = MEMORY[0x277D46C40];
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [v12 alloc];
  v18 = [v16 absoluteString];
  v19 = [v17 initWithURL:v16 rangeInContext:{0, objc_msgSend(v18, "length")}];

  [DDRevealBridge _revealItem:v19 view:v15 location:v14 menuInteraction:v13 context:x, y];
}

+ (id)previewViewProviderForURL:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a1 previewActionForResult:0 URL:a3 context:v6];
  v8 = [a1 previewViewProviderForPreviewAction:v7 context:v6];

  return v8;
}

+ (id)previewViewProviderForResult:(__DDResult *)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a1 previewActionForResult:a3 URL:0 context:v6];
  v8 = [a1 previewViewProviderForPreviewAction:v7 context:v6];

  return v8;
}

+ (void)previewActionForResult:(uint64_t)a1 URL:context:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown result type %@ in the Misc category; no actions found", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)previewActionForResult:(uint64_t)a1 URL:(int)a2 context:.cold.2(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown DDResult category %d for result %@; could not find any actions", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end
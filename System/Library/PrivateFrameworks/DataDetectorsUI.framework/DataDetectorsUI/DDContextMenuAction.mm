@interface DDContextMenuAction
+ (BOOL)validateContext:(id)context silent:(BOOL)silent;
+ (id)buttonActionsForURL:(id)l result:(__DDResult *)result contact:(id)contact icsString:(id)string context:(id)context view:(id)view identifier:(id)identifier suggestedActions:(id)self0 defaultAction:(id *)self1;
+ (id)contextMenuConfigurationAtIndex:(unint64_t)index inTextStorage:(id)storage inView:(id)view context:(id)context menuIdentifier:(id)identifier;
+ (id)contextMenuConfigurationForURL:(id)l identifier:(id)identifier selectedText:(id)text results:(id)results inView:(id)view context:(id)context menuIdentifier:(id)menuIdentifier;
+ (id)contextMenuConfigurationWithRVItem:(id)item inView:(id)view context:(id)context menuIdentifier:(id)identifier;
+ (id)contextMenuConfigurationWithResult:(__DDResult *)result inView:(id)view context:(id)context menuIdentifier:(id)identifier;
+ (id)contextMenuConfigurationWithURL:(id)l inView:(id)view context:(id)context menuIdentifier:(id)identifier;
+ (id)defaultActionWithResult:(__DDResult *)result context:(id)context;
+ (id)defaultActionWithURL:(id)l context:(id)context;
+ (id)filterResultsForQuickActions:(id)actions;
+ (id)identificationStringsForMenuElement:(id)element useDefault:(BOOL)default;
+ (id)previewActionForResult:(__DDResult *)result URL:(id)l context:(id)context;
+ (id)previewViewProviderForPreviewAction:(id)action context:(id)context;
+ (id)previewViewProviderForResult:(__DDResult *)result context:(id)context;
+ (id)previewViewProviderForURL:(id)l context:(id)context;
+ (id)updateContext:(id)context withSourceRect:(CGRect)rect;
+ (void)performAction:(id)action fromView:(id)view alertController:(id)controller interactionDelegate:(id)delegate;
+ (void)performDefaultActionWithResult:(__DDResult *)result inView:(id)view atLocation:(CGPoint)location withMenuInteraction:(id)interaction context:(id)context;
+ (void)performDefaultActionWithURL:(id)l inView:(id)view atLocation:(CGPoint)location withMenuInteraction:(id)interaction context:(id)context;
- (DDContextMenuAction)initWithRVItem:(id)item;
- (DDContextMenuAction)initWithResult:(__DDResult *)result URL:(id)l;
- (id)_rawContextMenuContentForView:(id)view interactionDelegate:(id)delegate context:(id)context elements:(id)elements defaultAction:(id *)action overriddenMenuActionProvider:(id *)provider options:(int64_t)options;
- (id)_updateMenuElementItems:(id)items withActions:(id)actions view:(id)view interactionDelegate:(id)delegate options:(int64_t)options level:(unint64_t)level parent:(id)parent;
- (id)contextMenuConfigurationWithIdentifier:(id)identifier inView:(id)view context:(id)context;
- (id)contextMenuConfigurationWithIdentifier:(id)identifier inView:(id)view context:(id)context defaultAction:(id *)action menuProvider:(id *)provider options:(int64_t)options;
- (id)initAtIndex:(unint64_t)index inTextStorage:(id)storage;
- (void)commonInitWithResult:(__DDResult *)result URL:(id)l;
- (void)dealloc;
@end

@implementation DDContextMenuAction

+ (void)performAction:(id)action fromView:(id)view alertController:(id)controller interactionDelegate:(id)delegate
{
  actionCopy = action;
  viewCopy = view;
  controllerCopy = controller;
  delegateCopy = delegate;
  if ([actionCopy interactionType])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__DDContextMenuAction_performAction_fromView_alertController_interactionDelegate___block_invoke;
    v14[3] = &unk_278290DF0;
    v15 = actionCopy;
    v16 = viewCopy;
    v17 = controllerCopy;
    v18 = delegateCopy;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }

  else
  {
    v13 = +[DDDetectionController sharedController];
    [v13 performAction:actionCopy fromView:viewCopy alertController:controllerCopy interactionDelegate:delegateCopy];
  }
}

void __82__DDContextMenuAction_performAction_fromView_alertController_interactionDelegate___block_invoke(void *a1)
{
  v2 = +[DDDetectionController sharedController];
  [v2 performAction:a1[4] fromView:a1[5] alertController:a1[6] interactionDelegate:a1[7]];
}

+ (BOOL)validateContext:(id)context silent:(BOOL)silent
{
  v5 = [context objectForKeyedSubscript:@"SourceRect"];

  if (v5 || silent || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    return v5 != 0;
  }

  +[DDContextMenuAction validateContext:silent:];
  return 0;
}

+ (id)updateContext:(id)context withSourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (context)
  {
    dictionary = [context mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = dictionary;
  v10 = [MEMORY[0x277CCAE60] valueWithCGRect:{x, y, width, height}];
  [v9 setObject:v10 forKey:@"SourceRect"];

  [v9 setObject:MEMORY[0x277CBEC38] forKey:@"defaultHttpActionRequested"];

  return v9;
}

+ (id)contextMenuConfigurationAtIndex:(unint64_t)index inTextStorage:(id)storage inView:(id)view context:(id)context menuIdentifier:(id)identifier
{
  storageCopy = storage;
  viewCopy = view;
  identifierCopy = identifier;
  contextCopy = context;
  v15 = [[DDContextMenuAction alloc] initAtIndex:index inTextStorage:storageCopy];
  v16 = v15[1];
  v17 = v15[2];
  v18 = [DDDetectionController updateContext:contextCopy forResult:v17 atIndex:index ofStorage:storageCopy];

  if (!+[DDDetectionController largeScreenIdiom])
  {
    goto LABEL_4;
  }

  v19 = [v18 objectForKeyedSubscript:@"SourceRect"];

  if (!v19)
  {
    layoutManagers = [storageCopy layoutManagers];
    firstObject = [layoutManagers firstObject];

    if (!firstObject)
    {
      if (objc_opt_respondsToSelector())
      {
        firstObject = [viewCopy layoutManager];
      }

      else
      {
        firstObject = 0;
      }
    }

    textContainers = [firstObject textContainers];
    firstObject2 = [textContainers firstObject];

    if (v17)
    {
      RangeForURLification = DDResultGetRangeForURLification();
      if (RangeForURLification == -1)
      {
LABEL_24:
        v35 = firstObject2;
        goto LABEL_25;
      }
    }

    else
    {
      scheme = [v16 scheme];
      if ([scheme isEqualToString:@"x-apple-data-detectors-clientdefined"])
      {
        v27 = [v18 objectForKeyedSubscript:?];

        if (v27)
        {
          path = [v16 path];
          integerValue = [path integerValue];

          v30 = [v18 objectForKeyedSubscript:@"CustomActionRanges"];
          if ([v30 count] <= integerValue)
          {
            v49 = 0;
            RangeForURLification = -1;
          }

          else
          {
            v31 = [v30 objectAtIndexedSubscript:integerValue];
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
      v33 = [storageCopy attribute:*MEMORY[0x277D740E8] atIndex:index effectiveRange:&v52];

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
    v34 = [firstObject glyphRangeForCharacterRange:RangeForURLification actualCharacterRange:{v24, 0}];
    v35 = firstObject2;
    [firstObject boundingRectForGlyphRange:v34 inTextContainer:{v36, firstObject2}];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [viewCopy textContainerInset];
      v38 = v45 + v38;
      v40 = v46 + v40;
    }

    v47 = [DDContextMenuAction updateContext:v18 withSourceRect:v38, v40, v42, v44];

    v18 = v47;
LABEL_25:

    if ([self validateContext:v18 silent:0])
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  if ([self validateContext:v18 silent:0])
  {
LABEL_4:
    v20 = [v15 contextMenuConfigurationWithIdentifier:identifierCopy inView:viewCopy context:v18];
    goto LABEL_27;
  }

LABEL_26:
  v20 = 0;
LABEL_27:

  return v20;
}

+ (id)contextMenuConfigurationForURL:(id)l identifier:(id)identifier selectedText:(id)text results:(id)results inView:(id)view context:(id)context menuIdentifier:(id)menuIdentifier
{
  lCopy = l;
  identifierCopy = identifier;
  textCopy = text;
  resultsCopy = results;
  viewCopy = view;
  contextCopy = context;
  menuIdentifierCopy = menuIdentifier;
  if ([self validateContext:contextCopy silent:0] && (dd_urlLooksSuspicious(lCopy) & 1) == 0)
  {
    v23 = +[DDDetectionController sharedController];
    v28 = 0;
    v24 = [v23 resultForURL:lCopy identifier:identifierCopy selectedText:textCopy results:resultsCopy context:contextCopy extendedContext:&v28];
    v25 = v28;

    v26 = [[DDContextMenuAction alloc] initWithResult:v24 URL:lCopy];
    v22 = [(DDContextMenuAction *)v26 contextMenuConfigurationWithIdentifier:menuIdentifierCopy inView:viewCopy context:v25];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)contextMenuConfigurationWithResult:(__DDResult *)result inView:(id)view context:(id)context menuIdentifier:(id)identifier
{
  viewCopy = view;
  contextCopy = context;
  identifierCopy = identifier;
  if ([self validateContext:contextCopy silent:0])
  {
    v13 = [[DDContextMenuAction alloc] initWithResult:result URL:0];
    v14 = [(DDContextMenuAction *)v13 contextMenuConfigurationWithIdentifier:identifierCopy inView:viewCopy context:contextCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)contextMenuConfigurationWithURL:(id)l inView:(id)view context:(id)context menuIdentifier:(id)identifier
{
  lCopy = l;
  viewCopy = view;
  contextCopy = context;
  identifierCopy = identifier;
  if ([self validateContext:contextCopy silent:0] && (dd_urlLooksSuspicious(lCopy) & 1) == 0)
  {
    v15 = [[DDContextMenuAction alloc] initWithResult:0 URL:lCopy];
    v14 = [(DDContextMenuAction *)v15 contextMenuConfigurationWithIdentifier:identifierCopy inView:viewCopy context:contextCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)contextMenuConfigurationWithRVItem:(id)item inView:(id)view context:(id)context menuIdentifier:(id)identifier
{
  itemCopy = item;
  viewCopy = view;
  contextCopy = context;
  identifierCopy = identifier;
  if ([self validateContext:contextCopy silent:0])
  {
    v14 = [[DDContextMenuAction alloc] initWithRVItem:itemCopy];
    v15 = [(DDContextMenuAction *)v14 contextMenuConfigurationWithIdentifier:identifierCopy inView:viewCopy context:contextCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)defaultActionWithResult:(__DDResult *)result context:(id)context
{
  contextCopy = context;
  if ([self validateContext:contextCopy silent:0])
  {
    v7 = +[DDDetectionController sharedController];
    if ([v7 _shouldImmediatelyShowActionSheetForCoreResult:result])
    {
      v8 = 0;
    }

    else
    {
      v9 = [MEMORY[0x277D04218] resultFromCoreResult:result];
      v10 = v7[7];
      v11 = [v9 url];
      v8 = [v10 defaultActionForURL:v11 result:result context:contextCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)defaultActionWithURL:(id)l context:(id)context
{
  lCopy = l;
  contextCopy = context;
  if ([self validateContext:contextCopy silent:0])
  {
    v8 = +[DDDetectionController sharedController];
    if ([v8 _shouldImmediatelyShowActionSheetForURL:lCopy])
    {
      v9 = 0;
    }

    else
    {
      v9 = [v8[7] defaultActionForURL:lCopy result:0 context:contextCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)previewViewProviderForPreviewAction:(id)action context:(id)context
{
  actionCopy = action;
  contextCopy = context;
  allKeys = [contextCopy allKeys];
  v8 = [allKeys containsObject:@"kDDContextMenuWantsPreviewKey"];

  if (v8)
  {
    v9 = [contextCopy objectForKey:@"kDDContextMenuWantsPreviewKey"];
    bOOLValue = [v9 BOOLValue];

    v11 = 0;
    if (!actionCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    bOOLValue = 1;
    v11 = 0;
    if (!actionCopy)
    {
      goto LABEL_7;
    }
  }

  if (bOOLValue)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__DDContextMenuAction_previewViewProviderForPreviewAction_context___block_invoke;
    aBlock[3] = &unk_2782914B0;
    v15 = actionCopy;
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

+ (id)buttonActionsForURL:(id)l result:(__DDResult *)result contact:(id)contact icsString:(id)string context:(id)context view:(id)view identifier:(id)identifier suggestedActions:(id)self0 defaultAction:(id *)self1
{
  lCopy = l;
  contactCopy = contact;
  stringCopy = string;
  contextCopy = context;
  viewCopy = view;
  identifierCopy = identifier;
  actionsCopy = actions;
  if (lCopy || result || contactCopy || stringCopy)
  {
    if (dd_urlLooksSuspicious(lCopy))
    {
      v23 = 0;
      goto LABEL_21;
    }

    if (_DDResultIsURL(result))
    {
      v24 = _DDURLFromResult(result);
      v25 = v24;
      if (!v24 || (dd_urlLooksSuspicious(v24) & 1) != 0)
      {

        v23 = 0;
        goto LABEL_21;
      }
    }

    v26 = [DDDetectionController barcodeContext:contextCopy preview:1 contact:contactCopy ics:stringCopy];

    v27 = [[DDContextMenuAction alloc] initWithResult:result URL:lCopy];
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

    v30 = [(DDContextMenuAction *)v27 contextMenuConfigurationWithIdentifier:identifierCopy inView:viewCopy context:v26 defaultAction:action menuProvider:&v33 options:v29];
    v31 = v33;

    if (v31)
    {
      v23 = v31[2](v31, actionsCopy);
    }

    else
    {
      v23 = 0;
    }

    contextCopy = v26;
    goto LABEL_21;
  }

  v23 = 0;
  if (action)
  {
    *action = 0;
  }

LABEL_21:

  return v23;
}

- (id)_rawContextMenuContentForView:(id)view interactionDelegate:(id)delegate context:(id)context elements:(id)elements defaultAction:(id *)action overriddenMenuActionProvider:(id *)provider options:(int64_t)options
{
  viewCopy = view;
  delegateCopy = delegate;
  contextCopy = context;
  elementsCopy = elements;
  item = self->_item;
  if (!item)
  {
    v23 = [DDContextMenuAction previewActionForResult:self->_result URL:self->_url context:contextCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (provider)
    {
      if (isKindOfClass)
      {
        v30 = [DDClientPreviewAction clientMenuActionProviderForUrl:self->_url context:contextCopy];
        *provider = v30;
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
    v37 = delegateCopy;
    v38 = viewCopy;
    v39 = +[DDDetectionController sharedController];
    v40 = [v39 actionsForResult:self->_result context:contextCopy];
    v27 = [DDActionGroup groupWithActions:v40];

    if (![(DDActionGroup *)v27 count])
    {
      viewCopy = v38;
      delegateCopy = v37;
      v24 = v48;
      goto LABEL_25;
    }

    viewCopy = v38;
    v41 = v38;
    delegateCopy = v37;
    v28 = [(DDContextMenuAction *)self _updateMenuElementItems:elementsCopy withActions:v27 view:v41 interactionDelegate:v37 options:options level:0 parent:0];
    v24 = v48;
    goto LABEL_24;
  }

  if ([(RVItem *)item normalizedType]== 6)
  {
    v20 = [DDLookupAction alloc];
    query = [(RVItem *)self->_item query];
    contextCopy = [(DDLookupAction *)v20 initWithRVQuery:query context:contextCopy];
  }

  else
  {
    highlightRange = [(RVItem *)self->_item highlightRange];
    if (highlightRange == 0x7FFFFFFFFFFFFFFFLL || (v34 = highlightRange + v33, -[RVItem text](self->_item, "text"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 length], v35, v34 > v36))
    {
      v23 = 0;
      v31 = 0;
      goto LABEL_26;
    }

    v45 = [DDLookupAction alloc];
    query = [(RVItem *)self->_item text];
    highlightRange2 = [(RVItem *)self->_item highlightRange];
    contextCopy = [(DDLookupAction *)v45 initWithQueryString:query range:highlightRange2 context:v47, contextCopy];
  }

  v23 = contextCopy;

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

  menuActions = [v23 menuActions];
  if (menuActions)
  {
    v27 = menuActions;
    v28 = [(DDContextMenuAction *)self _updateMenuElementItems:elementsCopy withActions:menuActions view:viewCopy interactionDelegate:delegateCopy options:options level:0 parent:0];
LABEL_24:
    *action = v28;
    goto LABEL_25;
  }

  actionCopy = action;
  v42 = +[DDDetectionController sharedController];
  v43 = [v42 actionsForResult:self->_result context:contextCopy];
  v27 = [DDActionGroup groupWithActions:v43];

  if ([(DDActionGroup *)v27 count])
  {
    v28 = [(DDContextMenuAction *)self _updateMenuElementItems:elementsCopy withActions:v27 view:viewCopy interactionDelegate:delegateCopy options:options level:0 parent:0];
    action = actionCopy;
    goto LABEL_24;
  }

LABEL_25:

  v31 = v24;
LABEL_26:

  return v31;
}

+ (id)filterResultsForQuickActions:(id)actions
{
  v31 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = actionsCopy;
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

+ (id)identificationStringsForMenuElement:(id)element useDefault:(BOOL)default
{
  defaultCopy = default;
  elementCopy = element;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  if (objc_opt_respondsToSelector())
  {
    identifier = [elementCopy identifier];
    if (!identifier && !defaultCopy)
    {
      goto LABEL_14;
    }

    if (identifier == 0 && defaultCopy)
    {
      v8 = @"none";
    }

    else
    {
      v8 = identifier;
    }

    goto LABEL_13;
  }

  if (defaultCopy)
  {
    v9 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      action = [elementCopy action];
      if (action)
      {
        v12 = NSStringFromSelector(action);
        [v6 addObject:v12];
      }

      fallbackAction = [elementCopy fallbackAction];
      if (fallbackAction)
      {
        v8 = NSStringFromSelector(fallbackAction);
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

- (id)contextMenuConfigurationWithIdentifier:(id)identifier inView:(id)view context:(id)context
{
  contextCopy = context;
  viewCopy = view;
  identifierCopy = identifier;
  v11 = [contextCopy objectForKeyedSubscript:@"kDDContextUsePlaceholderDefaultActionKey"];
  if ([v11 BOOLValue])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(DDContextMenuAction *)self contextMenuConfigurationWithIdentifier:identifierCopy inView:viewCopy context:contextCopy defaultAction:0 menuProvider:0 options:v12];

  return v13;
}

- (id)contextMenuConfigurationWithIdentifier:(id)identifier inView:(id)view context:(id)context defaultAction:(id *)action menuProvider:(id *)provider options:(int64_t)options
{
  identifierCopy = identifier;
  viewCopy = view;
  contextCopy = context;
  v15 = self->_result;
  if (v15)
  {
    v16 = DDCreateUpdatedResultWithContext(v15, contextCopy);
    if (v16)
    {
      v17 = self->_result;
      self->_result = v16;
      CFRelease(v17);
    }
  }

  v18 = [contextCopy objectForKeyedSubscript:@"ICS"];
  if ([v18 length])
  {
    v19 = [DDAddEventAction cachedEventForICSString:v18];
    if (v19)
    {
      v20 = [DDAction contextByAddingValue:v19 toKey:0x282C1E0C8 inContext:contextCopy];

      contextCopy = v20;
    }
  }

  v21 = [contextCopy copy];

  v56 = v18;
  if (self->_originalItem)
  {
    v22 = [[DDRVInteractionDelegate alloc] initWithItem:self->_originalItem];
  }

  else
  {
    v22 = 0;
  }

  objc_initWeak(location, viewCopy);
  array = [MEMORY[0x277CBEB18] array];
  v78 = 0;
  v79 = 0;
  v57 = v22;
  v58 = v21;
  v24 = [(DDContextMenuAction *)self _rawContextMenuContentForView:viewCopy interactionDelegate:v22 context:v21 elements:array defaultAction:&v79 overriddenMenuActionProvider:&v78 options:options];
  v59 = v79;
  v25 = v78;
  if (v25)
  {
    previewViewController = [v24 previewViewController];
    v27 = previewViewController;
    if (previewViewController)
    {
      v28 = v76;
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke;
      v76[3] = &unk_2782914B0;
      v21 = &v77;
      v77 = previewViewController;
    }

    else
    {
      v28 = 0;
    }

    v37 = [(UIContextMenuConfiguration *)DDContextMenuConfiguration configurationWithIdentifier:identifierCopy previewProvider:v28 actionProvider:v25];
    if (!v27)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (![array count])
  {
    v37 = 0;
    goto LABEL_48;
  }

  if (self->_additionalLookupItem && +[(DDParsecAction *)DDLookupAction])
  {
    ddResult = [(RVItem *)self->_additionalLookupItem ddResult];
    value = [ddResult value];

    if ([value length])
    {
      v30 = -[DDLookupAction initWithQueryString:range:context:]([DDLookupAction alloc], "initWithQueryString:range:context:", value, 0, [value length], v58);
      v31 = [DDActionGroup groupWithAction:v30];
      v32 = [(DDContextMenuAction *)self _updateMenuElementItems:array withActions:v31 view:viewCopy interactionDelegate:v22 options:options level:0 parent:0];
    }
  }

  v33 = options & 1;
  if ([v24 menuHasHeaderView])
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_2;
    v74[3] = &unk_2782914D8;
    v75 = v24;
    v34 = [DDUICustomViewMenuElement elementWithViewProvider:v74];
    [array insertObject:v34 atIndex:0];

    string = 0;
    v36 = v75;
LABEL_22:

    goto LABEL_31;
  }

  if (options)
  {
    string = 0;
    goto LABEL_31;
  }

  string = [(NSAttributedString *)self->_menuTitle string];
  if ([string length] >= 0x100)
  {
    v36 = [string substringToIndex:255];
    v38 = [v36 stringByAppendingString:@"…"];

    string = v38;
    goto LABEL_22;
  }

LABEL_31:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_3;
  aBlock[3] = &unk_278291500;
  v69 = array;
  v73 = v33;
  v39 = v58;
  v70 = v39;
  v27 = string;
  v71 = v27;
  v40 = identifierCopy;
  v72 = v40;
  v54 = _Block_copy(aBlock);
  if (provider)
  {
    *provider = [v54 copy];
  }

  v41 = [objc_opt_class() previewViewProviderForPreviewAction:v24 context:v39];
  v37 = [(UIContextMenuConfiguration *)DDContextMenuConfiguration configurationWithIdentifier:v40 previewProvider:v41 actionProvider:v54];

  if (v24)
  {
    commitURL = [v24 commitURL];
    [v37 setInteractionURL:commitURL];

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

  if (action)
  {
    defaultAction = [v59 defaultAction];

    if (defaultAction)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __112__DDContextMenuAction_contextMenuConfigurationWithIdentifier_inView_context_defaultAction_menuProvider_options___block_invoke_5;
      v61[3] = &unk_278291550;
      objc_copyWeak(&v64, location);
      v45 = defaultAction;
      v62 = v45;
      v63 = v57;
      v52 = _Block_copy(v61);
      v59 = v45;
      compactTitle = [v45 compactTitle];
      compactIcon = [v45 compactIcon];
      generateIdentifier = [v45 generateIdentifier];
      v49 = [DDUIAction actionWithTitle:compactTitle image:compactIcon identifier:generateIdentifier handler:v52];

      [v49 setDd_action:v59];
      [v49 setDd_handler:v52];
      v50 = v49;
      *action = v49;

      objc_destroyWeak(&v64);
    }

    else
    {
      v59 = 0;
      *action = 0;
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

- (id)initAtIndex:(unint64_t)index inTextStorage:(id)storage
{
  storageCopy = storage;
  v16.receiver = self;
  v16.super_class = DDContextMenuAction;
  v7 = [(DDContextMenuAction *)&v16 init];
  if (v7)
  {
    v8 = +[DDDetectionController sharedController];
    v9 = [v8 resultForLinkAtIndex:index inTextStorage:storageCopy];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v11 = +[DDDetectionController sharedController];
      v10 = [v11 linkAtIndex:index inTextStorage:storageCopy];
    }

    [(DDContextMenuAction *)v7 commonInitWithResult:v9 URL:v10];
    v12 = +[DDDetectionController sharedController];
    v13 = [v12 attributedTitleForResultAtIndex:index ofStorage:storageCopy updaterBlock:0];
    menuTitle = v7->_menuTitle;
    v7->_menuTitle = v13;
  }

  return v7;
}

- (DDContextMenuAction)initWithResult:(__DDResult *)result URL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = DDContextMenuAction;
  v7 = [(DDContextMenuAction *)&v13 init];
  v8 = v7;
  if (v7)
  {
    [(DDContextMenuAction *)v7 commonInitWithResult:result URL:lCopy];
    if (result)
    {
      v9 = +[DDDetectionController sharedController];
      v10 = [v9 attributedTitleForResult:result updaterBlock:0];
LABEL_6:
      menuTitle = v8->_menuTitle;
      v8->_menuTitle = v10;

      goto LABEL_7;
    }

    if (lCopy)
    {
      v9 = +[DDDetectionController sharedController];
      v10 = [v9 attributedTitleForURL:lCopy updaterBlock:0];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v8;
}

- (DDContextMenuAction)initWithRVItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_originalItem, item);
  normalizedType = [itemCopy normalizedType];
  if (normalizedType > 2)
  {
    if (normalizedType == 6)
    {
      goto LABEL_12;
    }

    if (normalizedType != 3)
    {
      goto LABEL_30;
    }

    ddResult = [itemCopy ddResult];
    category = [ddResult category];

    if (category == 1)
    {
      goto LABEL_18;
    }

    ddResult2 = [itemCopy ddResult];
    type = [ddResult2 type];
    if ([type isEqualToString:*MEMORY[0x277D04158]])
    {
      v11 = 0;
    }

    else
    {
      v11 = itemCopy;
    }

    objc_storeStrong(&self->_additionalLookupItem, v11);

    ddResult3 = [itemCopy ddResult];
    v13 = -[DDContextMenuAction initWithResult:URL:](self, "initWithResult:URL:", [ddResult3 coreResult], 0);
    goto LABEL_24;
  }

  if (normalizedType != 1)
  {
    if (normalizedType != 2)
    {
      goto LABEL_30;
    }

LABEL_12:
    v30.receiver = self;
    v30.super_class = DDContextMenuAction;
    self = [(DDContextMenuAction *)&v30 init];
    if (self)
    {
      query = [itemCopy query];
      title = [query title];

      if ([(__CFString *)title length])
      {
        if (![(__CFString *)title length])
        {
LABEL_20:
          text = [itemCopy text];

          highlightRange = [itemCopy highlightRange];
          v24 = v23;
          if ([text length] && highlightRange + v24 <= objc_msgSend(text, "length"))
          {
            title = [text substringWithRange:{highlightRange, v24}];
          }

          else
          {
            title = 0;
          }
        }
      }

      else
      {
        ddResult4 = [itemCopy ddResult];
        matchedString = [ddResult4 matchedString];

        title = matchedString;
        if (![(__CFString *)matchedString length])
        {
          goto LABEL_20;
        }
      }

      v25 = &stru_282C1E0A8;
      if (title)
      {
        v25 = title;
      }

      v26 = v25;

      objc_storeStrong(&self->_item, item);
      v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v26];

      menuTitle = self->_menuTitle;
      self->_menuTitle = v27;
    }

LABEL_30:
    self = self;
    selfCopy2 = self;
    goto LABEL_31;
  }

  selfCopy2 = [itemCopy normalizedURL];
  if (selfCopy2)
  {
    normalizedURL = [itemCopy normalizedURL];
    v18 = dd_urlLooksSuspicious(normalizedURL);

    if (v18)
    {
LABEL_18:
      selfCopy2 = 0;
      goto LABEL_31;
    }

    ddResult3 = [itemCopy normalizedURL];
    v13 = [(DDContextMenuAction *)self initWithResult:0 URL:ddResult3];
LABEL_24:
    self = v13;

    selfCopy2 = self;
  }

LABEL_31:

  return selfCopy2;
}

- (void)commonInitWithResult:(__DDResult *)result URL:(id)l
{
  lCopy = l;
  if (result)
  {
    v9 = lCopy;
    self->_result = CFRetain(result);
    v8 = +[DDDetectionController sharedController];
    [v8 interactionDidStartForResult:result];
  }

  else
  {
    if (!lCopy)
    {
      goto LABEL_6;
    }

    v9 = lCopy;
    objc_storeStrong(&self->_url, l);
    v8 = +[DDDetectionController sharedController];
    [v8 interactionDidStartForURL:v9];
  }

  lCopy = v9;
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

- (id)_updateMenuElementItems:(id)items withActions:(id)actions view:(id)view interactionDelegate:(id)delegate options:(int64_t)options level:(unint64_t)level parent:(id)parent
{
  v87 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  actionsCopy = actions;
  viewCopy = view;
  delegateCopy = delegate;
  parentCopy = parent;
  v62 = itemsCopy;
  v69 = actionsCopy;
  v60 = viewCopy;
  if (!itemsCopy)
  {
    v17 = 0;
    goto LABEL_74;
  }

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __105__DDContextMenuAction__updateMenuElementItems_withActions_view_interactionDelegate_options_level_parent___block_invoke;
  v83[3] = &unk_278291578;
  v15 = viewCopy;
  v84 = v15;
  [(DDActionGroup *)actionsCopy finalizeWithFilter:v83];
  if ([(DDActionGroup *)actionsCopy count])
  {
    objc_initWeak(&location, v15);
    children = [(DDActionGroup *)actionsCopy children];

    v58 = options & 5;
    if (children)
    {
      array = [MEMORY[0x277CBEB18] array];
      if (level)
      {
        inlinedGroup = [(DDActionGroup *)actionsCopy inlinedGroup];
      }

      else
      {
        inlinedGroup = 0;
      }

      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v78 = 0u;
      children2 = [(DDActionGroup *)actionsCopy children];
      v23 = 0;
      v19 = 0;
      v24 = [children2 countByEnumeratingWithState:&v78 objects:v86 count:16];
      if (v24)
      {
        v25 = *v79;
        do
        {
          v26 = children2;
          v27 = 0;
          v28 = v23;
          v29 = v19;
          do
          {
            if (*v79 != v25)
            {
              objc_enumerationMutation(v26);
            }

            v23 = [(DDContextMenuAction *)self _updateMenuElementItems:array withActions:*(*(&v78 + 1) + 8 * v27) view:v15 interactionDelegate:delegateCopy options:options level:(inlinedGroup ^ 1) + level parent:v69];

            v19 = selectDefaultAction(v29, v23);

            ++v27;
            v28 = v23;
            v29 = v19;
          }

          while (v24 != v27);
          children2 = v26;
          v24 = [v26 countByEnumeratingWithState:&v78 objects:v86 count:16];
        }

        while (v24);
      }

      if (!level)
      {
        if (array)
        {
          [v62 addObjectsFromArray:?];
        }

        goto LABEL_67;
      }

      mainAction = [(DDActionGroup *)v69 mainAction];

      [mainAction setTreatAsMenu:1];
      if (inlinedGroup)
      {
        v30 = 0;
      }

      else
      {
        if (level == 1)
        {
          menuName = [mainAction menuName];
        }

        else
        {
          if (v58 == 5)
          {
            [mainAction serviceCompactName];
          }

          else
          {
            [mainAction serviceName];
          }
          menuName = ;
        }

        v30 = menuName;
      }

      v32 = MEMORY[0x277D75710];
      menuIcon = [mainAction menuIcon];
      generateIdentifier = [mainAction generateIdentifier];
      v35 = [v32 menuWithTitle:v30 image:menuIcon identifier:generateIdentifier options:inlinedGroup children:array];
      [v62 addObject:v35];

      [mainAction setTreatAsMenu:0];
LABEL_66:

      v23 = mainAction;
LABEL_67:

      ddAction = array;
LABEL_68:

      if ((options & 2) != 0 && [v19 isMemberOfClass:objc_opt_class()])
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

    ddAction = [(DDActionGroup *)actionsCopy ddAction];
    if (!ddAction)
    {
      v19 = 0;
      goto LABEL_68;
    }

    v19 = selectDefaultAction(0, ddAction);
    menuItemattributes = [ddAction menuItemattributes];
    if ([ddAction menuItemNameCanFallbackToServiceName])
    {
      if (level == 2)
      {
        children3 = [(DDActionGroup *)parentCopy children];
        v37 = ddAction;
        v38 = [children3 count] > 1;

        if (v38)
        {
          _serviceIdentifier = [ddAction _serviceIdentifier];
          if (!_serviceIdentifier)
          {
LABEL_78:
            if (v58 == 5)
            {
              [ddAction serviceCompactName];
            }

            else
            {
              [ddAction serviceName];
            }
            menuName2 = ;
LABEL_13:
            mainAction = menuName2;
            if (menuName2)
            {
              goto LABEL_52;
            }

            goto LABEL_48;
          }

          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          children4 = [(DDActionGroup *)parentCopy children];
          v41 = [children4 countByEnumeratingWithState:&v74 objects:v85 count:16];
          if (v41)
          {
            v42 = *v75;
            while (2)
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v75 != v42)
                {
                  objc_enumerationMutation(children4);
                }

                ddAction2 = [(DDActionGroup *)*(*(&v74 + 1) + 8 * i) ddAction];
                _serviceIdentifier2 = [ddAction2 _serviceIdentifier];
                v46 = [_serviceIdentifier2 isEqualToString:_serviceIdentifier];

                if ((v46 & 1) == 0)
                {

                  ddAction = v37;
                  goto LABEL_78;
                }
              }

              v41 = [children4 countByEnumeratingWithState:&v74 objects:v85 count:16];
              if (v41)
              {
                continue;
              }

              break;
            }
          }

          ddAction = v37;
        }
      }

      else if (level == 1)
      {
        menuName2 = [ddAction menuName];
        goto LABEL_13;
      }
    }

LABEL_48:
    if (v58 == 5)
    {
      [ddAction oneLinerLocalizedSubItemName];
    }

    else
    {
      [ddAction localizedSubItemName];
    }
    mainAction = ;
LABEL_52:
    v47 = ddAction;
    v48 = MEMORY[0x277D750C8];
    if (menuItemattributes)
    {
      extractedActions = 0;
      v50 = 0;
      v51 = 0;
    }

    else
    {
      extractedActions = [(DDActionGroup *)parentCopy extractedActions];
      if (extractedActions)
      {
        [v47 menuIcon];
      }

      else
      {
        [v47 icon];
      }
      v51 = ;
      v50 = extractedActions ^ 1;
    }

    generateIdentifier2 = [v47 generateIdentifier];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __105__DDContextMenuAction__updateMenuElementItems_withActions_view_interactionDelegate_options_level_parent___block_invoke_2;
    v70[3] = &unk_2782915A0;
    array = v47;
    v71 = array;
    objc_copyWeak(&v73, &location);
    v72 = delegateCopy;
    v53 = [v48 actionWithTitle:mainAction image:v51 identifier:generateIdentifier2 handler:v70];

    if (v50)
    {
    }

    if (extractedActions)
    {
    }

    if ([(DDActionGroup *)parentCopy extractedActions])
    {
      [array extractedActionSubtitle];
    }

    else
    {
      [array subtitle];
    }
    v54 = ;
    [v53 setSubtitle:v54];

    [v53 setAttributes:{objc_msgSend(array, "menuItemattributes")}];
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

+ (id)previewActionForResult:(__DDResult *)result URL:(id)l context:(id)context
{
  lCopy = l;
  contextCopy = context;
  if (result | lCopy)
  {
    if (result)
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
            [DDContextMenuAction previewActionForResult:result URL:v15 context:?];
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
          resultCopy = result;
          goto LABEL_66;
        }

        goto LABEL_31;
      }

      if ([DDNewsPreviewAction handlesUrl:0 result:result])
      {
        v10 = DDNewsPreviewAction;
        goto LABEL_65;
      }

      if ([DDLinkPresentationAction handlesUrl:0 result:result])
      {
        v10 = DDLinkPresentationAction;
        goto LABEL_65;
      }

      if ([DDMapAction handlesUrl:0 result:result])
      {
        v10 = DDMapAction;
        goto LABEL_65;
      }

      if ([DDURLPreviewAction handlesUrl:0 result:result])
      {
        v10 = DDURLPreviewAction;
        goto LABEL_65;
      }

      if ([DDChatBotAction handlesUrl:0 result:result])
      {
        v10 = DDChatBotAction;
        goto LABEL_65;
      }

      if ([DDPersonAction handlesUrl:0 result:result])
      {
        v10 = DDPersonAction;
        goto LABEL_65;
      }

      if ([DDGenericURLPreviewAction handlesUrl:0 result:result])
      {
        v10 = DDGenericURLPreviewAction;
        goto LABEL_65;
      }
    }

    else if (lCopy)
    {
      if ([DDClientPreviewAction clientCanPerformActionWithUrl:lCopy])
      {
        v12 = DDClientPreviewAction;
      }

      else if ([DDNewsPreviewAction handlesUrl:lCopy result:0])
      {
        v12 = DDNewsPreviewAction;
      }

      else if ([DDLinkPresentationAction handlesUrl:lCopy result:0])
      {
        v12 = DDLinkPresentationAction;
      }

      else if ([DDMapAction handlesUrl:lCopy result:0])
      {
        v12 = DDMapAction;
      }

      else if ([DDURLPreviewAction handlesUrl:lCopy result:0])
      {
        v12 = DDURLPreviewAction;
      }

      else if ([DDChatBotAction handlesUrl:lCopy result:0])
      {
        v12 = DDChatBotAction;
      }

      else if ([DDPersonAction handlesUrl:lCopy result:0])
      {
        v12 = DDPersonAction;
      }

      else
      {
        if (![DDGenericURLPreviewAction handlesUrl:lCopy result:0])
        {
          goto LABEL_32;
        }

        v12 = DDGenericURLPreviewAction;
      }

      v16 = [v12 alloc];
      v17 = lCopy;
      resultCopy = 0;
LABEL_66:
      v11 = [v16 initWithURL:v17 result:resultCopy context:contextCopy];
      goto LABEL_67;
    }

LABEL_32:
    v14 = 0;
    goto LABEL_68;
  }

  v11 = [DDPreviewAction previewActionForURL:0 result:0 context:contextCopy];
LABEL_67:
  v14 = v11;
LABEL_68:

  return v14;
}

+ (void)performDefaultActionWithResult:(__DDResult *)result inView:(id)view atLocation:(CGPoint)location withMenuInteraction:(id)interaction context:(id)context
{
  y = location.y;
  x = location.x;
  v12 = MEMORY[0x277D46C40];
  contextCopy = context;
  interactionCopy = interaction;
  viewCopy = view;
  v16 = [v12 alloc];
  v17 = [objc_alloc(MEMORY[0x277D04218]) initWithCoreResult:result];
  v18 = [v16 initWithDDResult:v17];

  [DDRevealBridge _revealItem:v18 view:viewCopy location:interactionCopy menuInteraction:contextCopy context:x, y];
}

+ (void)performDefaultActionWithURL:(id)l inView:(id)view atLocation:(CGPoint)location withMenuInteraction:(id)interaction context:(id)context
{
  y = location.y;
  x = location.x;
  v12 = MEMORY[0x277D46C40];
  contextCopy = context;
  interactionCopy = interaction;
  viewCopy = view;
  lCopy = l;
  v17 = [v12 alloc];
  absoluteString = [lCopy absoluteString];
  v19 = [v17 initWithURL:lCopy rangeInContext:{0, objc_msgSend(absoluteString, "length")}];

  [DDRevealBridge _revealItem:v19 view:viewCopy location:interactionCopy menuInteraction:contextCopy context:x, y];
}

+ (id)previewViewProviderForURL:(id)l context:(id)context
{
  contextCopy = context;
  v7 = [self previewActionForResult:0 URL:l context:contextCopy];
  v8 = [self previewViewProviderForPreviewAction:v7 context:contextCopy];

  return v8;
}

+ (id)previewViewProviderForResult:(__DDResult *)result context:(id)context
{
  contextCopy = context;
  v7 = [self previewActionForResult:result URL:0 context:contextCopy];
  v8 = [self previewViewProviderForPreviewAction:v7 context:contextCopy];

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
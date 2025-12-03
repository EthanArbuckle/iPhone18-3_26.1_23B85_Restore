@interface TabDocumentDropHandler
+ (BOOL)canAddTab:(id)tab toSessionWithDragItems:(id)items;
+ (BOOL)canHandleSession:(id)session;
+ (BOOL)canPinAllItemsInSession:(id)session;
+ (id)commonPinnedStateForDragItems:(id)items;
+ (unint64_t)proposedOperationForSession:(id)session intoWindowWithPrivateBrowsingEnabled:(BOOL)enabled;
- (TabDocumentDropHandler)initWithAlertPresentationViewController:(id)controller;
- (TabDocumentDropHandler)initWithMaximumNumberOfTabs:(unint64_t)tabs alertPresentationViewController:(id)controller;
- (UIViewController)alertPresentationViewController;
- (unint64_t)_minimumNumberOfNewTabsRequiringConfirmation;
- (void)dropItemsForSession:(id)session withInsertionHandler:(id)handler completionHandler:(id)completionHandler;
- (void)promptIfNeededToConfirmNumberOfNavigationIntents:(unint64_t)intents withCompletionHandler:(id)handler;
@end

@implementation TabDocumentDropHandler

- (TabDocumentDropHandler)initWithAlertPresentationViewController:(id)controller
{
  controllerCopy = controller;
  v5 = +[Application sharedApplication];
  v6 = -[TabDocumentDropHandler initWithMaximumNumberOfTabs:alertPresentationViewController:](self, "initWithMaximumNumberOfTabs:alertPresentationViewController:", [v5 maximumTabCount], controllerCopy);

  return v6;
}

- (TabDocumentDropHandler)initWithMaximumNumberOfTabs:(unint64_t)tabs alertPresentationViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = TabDocumentDropHandler;
  v7 = [(TabDocumentDropHandler *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_maximumNumberOfTabs = tabs;
    objc_storeWeak(&v7->_alertPresentationViewController, controllerCopy);
    v9 = v8;
  }

  return v8;
}

- (void)dropItemsForSession:(id)session withInsertionHandler:(id)handler completionHandler:(id)completionHandler
{
  v41 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = sessionCopy;
  items = [sessionCopy items];
  v10 = [items countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v37;
    v30 = *v37;
    v31 = items;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(items);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        safari_localTab = [v15 safari_localTab];
        if (safari_localTab)
        {
          [array addObject:v15];
        }

        else
        {
          _sf_localBookmark = [v15 _sf_localBookmark];
          if ([_sf_localBookmark isFolder])
          {
            v18 = v12;
            safariBookmarkCollection = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
            v20 = [safariBookmarkCollection descendantsOfBookmarkFolder:_sf_localBookmark];
            v21 = [v20 count];

            if (v21)
            {
              v22 = v21;
              v12 = v18;
              do
              {
                [array addObject:v15];
                --v22;
              }

              while (v22);
            }

            else
            {
              v12 = v18;
            }

            v13 = v30;
            items = v31;
          }

          else
          {
            [array addObject:v15];
            v21 = 1;
          }

          v12 += v21;
        }
      }

      v11 = [items countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __85__TabDocumentDropHandler_dropItemsForSession_withInsertionHandler_completionHandler___block_invoke;
  v32[3] = &unk_2781DB590;
  v34 = completionHandlerCopy;
  v35 = handlerCopy;
  v33 = array;
  v23 = array;
  v24 = handlerCopy;
  v25 = completionHandlerCopy;
  [(TabDocumentDropHandler *)self promptIfNeededToConfirmNumberOfNavigationIntents:v12 withCompletionHandler:v32];
}

uint64_t __85__TabDocumentDropHandler_dropItemsForSession_withInsertionHandler_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)promptIfNeededToConfirmNumberOfNavigationIntents:(unint64_t)intents withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_alertPresentationViewController);
  if (WeakRetained && [(TabDocumentDropHandler *)self _minimumNumberOfNewTabsRequiringConfirmation]<= intents)
  {
    if (intents == 1)
    {
      intents = _WBSLocalizedString();
      intents2 = _WBSLocalizedString();
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = _WBSLocalizedString();
      intents = [v10 localizedStringWithFormat:v11, intents];

      v12 = MEMORY[0x277CCACA8];
      v13 = _WBSLocalizedString();
      intents2 = [v12 localizedStringWithFormat:v13, intents];
    }

    v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:intents preferredStyle:1];
    v15 = MEMORY[0x277D750F8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __97__TabDocumentDropHandler_promptIfNeededToConfirmNumberOfNavigationIntents_withCompletionHandler___block_invoke;
    v23[3] = &unk_2781D9E10;
    v16 = handlerCopy;
    v24 = v16;
    v17 = [v15 actionWithTitle:intents2 style:0 handler:v23];
    v18 = MEMORY[0x277D750F8];
    v19 = _WBSLocalizedString();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __97__TabDocumentDropHandler_promptIfNeededToConfirmNumberOfNavigationIntents_withCompletionHandler___block_invoke_2;
    v21[3] = &unk_2781D9E10;
    v22 = v16;
    v20 = [v18 actionWithTitle:v19 style:1 handler:v21];

    [v14 addAction:v17];
    [v14 addAction:v20];
    [WeakRetained presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

- (unint64_t)_minimumNumberOfNewTabsRequiringConfirmation
{
  maximumNumberOfTabs = self->_maximumNumberOfTabs;
  v3 = 50;
  if (maximumNumberOfTabs < 0x32)
  {
    v3 = 20;
  }

  if (maximumNumberOfTabs >= 0xA)
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

+ (unint64_t)proposedOperationForSession:(id)session intoWindowWithPrivateBrowsingEnabled:(BOOL)enabled
{
  sessionCopy = session;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  items = [sessionCopy items];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__TabDocumentDropHandler_proposedOperationForSession_intoWindowWithPrivateBrowsingEnabled___block_invoke;
  v11[3] = &unk_2781DB5B8;
  v11[4] = &v13;
  enabledCopy = enabled;
  v7 = [items safari_containsObjectPassingTest:v11];

  v8 = 2;
  if (!v7)
  {
    v8 = 3;
  }

  if (*(v14 + 24))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  _Block_object_dispose(&v13, 8);

  return v9;
}

BOOL __91__TabDocumentDropHandler_proposedOperationForSession_intoWindowWithPrivateBrowsingEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_localWBTab];
  v4 = v3;
  if (v3 && (*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40) != [v3 isPrivateBrowsing];
  }

  return v4 == 0;
}

+ (BOOL)canHandleSession:(id)session
{
  sessionCopy = session;
  if ([MEMORY[0x277D28F40] canCreateNavigationIntentForDropSession:sessionCopy])
  {
    v5 = 1;
  }

  else
  {
    items = [sessionCopy items];
    v7 = [self tabsForDragItems:items];
    v5 = [v7 count] != 0;
  }

  return v5;
}

+ (BOOL)canPinAllItemsInSession:(id)session
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  localDragSession = [session localDragSession];
  items = [localDragSession items];

  v5 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        safari_localWBTab = [v9 safari_localWBTab];
        safari_localBrowserController = [v9 safari_localBrowserController];
        v12 = safari_localBrowserController;
        if (safari_localWBTab)
        {
          v13 = safari_localBrowserController == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13 && ![v9 safari_localTabIsPinnable])
        {

          v14 = 0;
          goto LABEL_15;
        }
      }

      v6 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_15:

  return v14;
}

+ (BOOL)canAddTab:(id)tab toSessionWithDragItems:(id)items
{
  tabCopy = tab;
  itemsCopy = items;
  if ([tabCopy canSetPinned])
  {
    v7 = 1;
  }

  else
  {
    v8 = [TabDocumentDropHandler commonPinnedStateForDragItems:itemsCopy];
    v7 = 0;
    if (v8)
    {
      isPinned = [tabCopy isPinned];
      if (isPinned == [v8 BOOLValue])
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

+ (id)commonPinnedStateForDragItems:(id)items
{
  v21 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(itemsCopy);
        }

        safari_localWBTab = [*(*(&v16 + 1) + 8 * i) safari_localWBTab];
        isPinned = [safari_localWBTab isPinned];
        v6 += isPinned ^ 1;
        v7 += isPinned;
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
    if (v7 >= 1 && v6 == 0)
    {
      v13 = MEMORY[0x277CBEC38];
      goto LABEL_21;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = v6 <= -1;
  }

  if (v14)
  {
    v13 = 0;
  }

  else
  {
    v13 = MEMORY[0x277CBEC28];
  }

LABEL_21:

  return v13;
}

- (UIViewController)alertPresentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertPresentationViewController);

  return WeakRetained;
}

@end
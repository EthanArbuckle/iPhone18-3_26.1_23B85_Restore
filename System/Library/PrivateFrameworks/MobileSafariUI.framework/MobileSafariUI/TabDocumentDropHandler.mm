@interface TabDocumentDropHandler
+ (BOOL)canAddTab:(id)a3 toSessionWithDragItems:(id)a4;
+ (BOOL)canHandleSession:(id)a3;
+ (BOOL)canPinAllItemsInSession:(id)a3;
+ (id)commonPinnedStateForDragItems:(id)a3;
+ (unint64_t)proposedOperationForSession:(id)a3 intoWindowWithPrivateBrowsingEnabled:(BOOL)a4;
- (TabDocumentDropHandler)initWithAlertPresentationViewController:(id)a3;
- (TabDocumentDropHandler)initWithMaximumNumberOfTabs:(unint64_t)a3 alertPresentationViewController:(id)a4;
- (UIViewController)alertPresentationViewController;
- (unint64_t)_minimumNumberOfNewTabsRequiringConfirmation;
- (void)dropItemsForSession:(id)a3 withInsertionHandler:(id)a4 completionHandler:(id)a5;
- (void)promptIfNeededToConfirmNumberOfNavigationIntents:(unint64_t)a3 withCompletionHandler:(id)a4;
@end

@implementation TabDocumentDropHandler

- (TabDocumentDropHandler)initWithAlertPresentationViewController:(id)a3
{
  v4 = a3;
  v5 = +[Application sharedApplication];
  v6 = -[TabDocumentDropHandler initWithMaximumNumberOfTabs:alertPresentationViewController:](self, "initWithMaximumNumberOfTabs:alertPresentationViewController:", [v5 maximumTabCount], v4);

  return v6;
}

- (TabDocumentDropHandler)initWithMaximumNumberOfTabs:(unint64_t)a3 alertPresentationViewController:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = TabDocumentDropHandler;
  v7 = [(TabDocumentDropHandler *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_maximumNumberOfTabs = a3;
    objc_storeWeak(&v7->_alertPresentationViewController, v6);
    v9 = v8;
  }

  return v8;
}

- (void)dropItemsForSession:(id)a3 withInsertionHandler:(id)a4 completionHandler:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v27 = a4;
  v26 = a5;
  v8 = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = v7;
  v9 = [v7 items];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v37;
    v30 = *v37;
    v31 = v9;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [v15 safari_localTab];
        if (v16)
        {
          [v8 addObject:v15];
        }

        else
        {
          v17 = [v15 _sf_localBookmark];
          if ([v17 isFolder])
          {
            v18 = v12;
            v19 = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
            v20 = [v19 descendantsOfBookmarkFolder:v17];
            v21 = [v20 count];

            if (v21)
            {
              v22 = v21;
              v12 = v18;
              do
              {
                [v8 addObject:v15];
                --v22;
              }

              while (v22);
            }

            else
            {
              v12 = v18;
            }

            v13 = v30;
            v9 = v31;
          }

          else
          {
            [v8 addObject:v15];
            v21 = 1;
          }

          v12 += v21;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
  v34 = v26;
  v35 = v27;
  v33 = v8;
  v23 = v8;
  v24 = v27;
  v25 = v26;
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

- (void)promptIfNeededToConfirmNumberOfNavigationIntents:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_alertPresentationViewController);
  if (WeakRetained && [(TabDocumentDropHandler *)self _minimumNumberOfNewTabsRequiringConfirmation]<= a3)
  {
    if (a3 == 1)
    {
      v8 = _WBSLocalizedString();
      v9 = _WBSLocalizedString();
    }

    else
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = _WBSLocalizedString();
      v8 = [v10 localizedStringWithFormat:v11, a3];

      v12 = MEMORY[0x277CCACA8];
      v13 = _WBSLocalizedString();
      v9 = [v12 localizedStringWithFormat:v13, a3];
    }

    v14 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v8 preferredStyle:1];
    v15 = MEMORY[0x277D750F8];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __97__TabDocumentDropHandler_promptIfNeededToConfirmNumberOfNavigationIntents_withCompletionHandler___block_invoke;
    v23[3] = &unk_2781D9E10;
    v16 = v6;
    v24 = v16;
    v17 = [v15 actionWithTitle:v9 style:0 handler:v23];
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
    (*(v6 + 2))(v6, 1);
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

+ (unint64_t)proposedOperationForSession:(id)a3 intoWindowWithPrivateBrowsingEnabled:(BOOL)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = [v5 items];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__TabDocumentDropHandler_proposedOperationForSession_intoWindowWithPrivateBrowsingEnabled___block_invoke;
  v11[3] = &unk_2781DB5B8;
  v11[4] = &v13;
  v12 = a4;
  v7 = [v6 safari_containsObjectPassingTest:v11];

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

+ (BOOL)canHandleSession:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D28F40] canCreateNavigationIntentForDropSession:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 items];
    v7 = [a1 tabsForDragItems:v6];
    v5 = [v7 count] != 0;
  }

  return v5;
}

+ (BOOL)canPinAllItemsInSession:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a3 localDragSession];
  v4 = [v3 items];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 safari_localWBTab];
        v11 = [v9 safari_localBrowserController];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
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

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (BOOL)canAddTab:(id)a3 toSessionWithDragItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 canSetPinned])
  {
    v7 = 1;
  }

  else
  {
    v8 = [TabDocumentDropHandler commonPinnedStateForDragItems:v6];
    v7 = 0;
    if (v8)
    {
      v9 = [v5 isPinned];
      if (v9 == [v8 BOOLValue])
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

+ (id)commonPinnedStateForDragItems:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) safari_localWBTab];
        v11 = [v10 isPinned];
        v6 += v11 ^ 1;
        v7 += v11;
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
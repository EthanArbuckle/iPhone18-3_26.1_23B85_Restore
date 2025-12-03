@interface NMUKeepLocalAlertConfiguration
+ (id)requiredPropertiesForModelKind:(id)kind;
- (id)_cancelAction;
- (id)_downloadNowOffPowerActionWithOptions:(id)options;
- (id)_downloadNowOffPowerOnCellularActionWithOptions:(id)options;
- (id)_okAction;
- (id)alertViewControllerWithKeepLocalBlock:(id)block;
@end

@implementation NMUKeepLocalAlertConfiguration

- (id)alertViewControllerWithKeepLocalBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:self->_title message:self->_message preferredStyle:1];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  obj = self->_actions;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = MEMORY[0x277D750F8];
        title = [v10 title];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __72__NMUKeepLocalAlertConfiguration_alertViewControllerWithKeepLocalBlock___block_invoke;
        v27[3] = &unk_27993BE78;
        v13 = blockCopy;
        v27[4] = v10;
        v28 = v13;
        v14 = [v11 actionWithTitle:title style:0 handler:v27];
        [v5 addAction:v14];
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  cancelAction = selfCopy->_cancelAction;
  if (cancelAction)
  {
    v16 = cancelAction;
    v17 = MEMORY[0x277D750F8];
    title2 = [(NMUKeepLocalAlertAction *)v16 title];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__NMUKeepLocalAlertConfiguration_alertViewControllerWithKeepLocalBlock___block_invoke_2;
    v24[3] = &unk_27993BE78;
    v25 = v16;
    v26 = blockCopy;
    v19 = v16;
    v20 = [v17 actionWithTitle:title2 style:1 handler:v24];
    [v5 addAction:v20];
  }

  return v5;
}

+ (id)requiredPropertiesForModelKind:(id)kind
{
  v15[1] = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  identityKind = [MEMORY[0x277CD5E48] identityKind];
  v5 = [kindCopy isEqual:identityKind];

  if (v5)
  {
    v6 = MEMORY[0x277CD6018];
    v15[0] = *MEMORY[0x277CD5960];
    v7 = MEMORY[0x277CBEA60];
    v8 = v15;
LABEL_5:
    v11 = [v7 arrayWithObjects:v8 count:1];
    emptyPropertySet = [v6 propertySetWithProperties:v11];

    goto LABEL_7;
  }

  identityKind2 = [MEMORY[0x277CD5F08] identityKind];
  v10 = [kindCopy isEqual:identityKind2];

  v6 = MEMORY[0x277CD6018];
  if (v10)
  {
    v14 = *MEMORY[0x277CD59B8];
    v7 = MEMORY[0x277CBEA60];
    v8 = &v14;
    goto LABEL_5;
  }

  emptyPropertySet = [MEMORY[0x277CD6018] emptyPropertySet];
LABEL_7:

  return emptyPropertySet;
}

- (id)_okAction
{
  nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v3 = [nanoMediaBridgeUIBundle localizedStringForKey:@"ACTION_TITLE_OK" value:@"OK" table:0];
  v4 = [NMUKeepLocalAlertAction actionWithTitle:v3 shouldPerformKeepLocalRequest:0 keepLocalRequestOptions:0 downloadAction:0];

  return v4;
}

- (id)_cancelAction
{
  nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v3 = [nanoMediaBridgeUIBundle localizedStringForKey:@"ACTION_TITLE_CANCEL" value:@"Cancel" table:0];
  v4 = [NMUKeepLocalAlertAction actionWithTitle:v3 shouldPerformKeepLocalRequest:0 keepLocalRequestOptions:0 downloadAction:1];

  return v4;
}

- (id)_downloadNowOffPowerActionWithOptions:(id)options
{
  v3 = [options copy];
  [v3 setPowerPolicy:1];
  nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v5 = [nanoMediaBridgeUIBundle localizedStringForKey:@"ACTION_TITLE_DOWNLOAD_NOW" value:@"Download Now" table:0];
  v6 = [NMUKeepLocalAlertAction actionWithTitle:v5 shouldPerformKeepLocalRequest:1 keepLocalRequestOptions:v3 downloadAction:2];

  return v6;
}

- (id)_downloadNowOffPowerOnCellularActionWithOptions:(id)options
{
  v3 = [options copy];
  [v3 setPowerPolicy:1];
  [v3 setCellularPolicy:1];
  nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v5 = [nanoMediaBridgeUIBundle localizedStringForKey:@"ACTION_TITLE_DOWNLOAD_NOW" value:@"Download Now" table:0];
  v6 = [NMUKeepLocalAlertAction actionWithTitle:v5 shouldPerformKeepLocalRequest:1 keepLocalRequestOptions:v3 downloadAction:3];

  return v6;
}

@end
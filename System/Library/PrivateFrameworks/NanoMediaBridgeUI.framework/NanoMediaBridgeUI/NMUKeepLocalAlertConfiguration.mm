@interface NMUKeepLocalAlertConfiguration
+ (id)requiredPropertiesForModelKind:(id)a3;
- (id)_cancelAction;
- (id)_downloadNowOffPowerActionWithOptions:(id)a3;
- (id)_downloadNowOffPowerOnCellularActionWithOptions:(id)a3;
- (id)_okAction;
- (id)alertViewControllerWithKeepLocalBlock:(id)a3;
@end

@implementation NMUKeepLocalAlertConfiguration

- (id)alertViewControllerWithKeepLocalBlock:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:self->_title message:self->_message preferredStyle:1];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = self;
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
        v12 = [v10 title];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __72__NMUKeepLocalAlertConfiguration_alertViewControllerWithKeepLocalBlock___block_invoke;
        v27[3] = &unk_27993BE78;
        v13 = v4;
        v27[4] = v10;
        v28 = v13;
        v14 = [v11 actionWithTitle:v12 style:0 handler:v27];
        [v5 addAction:v14];
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  cancelAction = v22->_cancelAction;
  if (cancelAction)
  {
    v16 = cancelAction;
    v17 = MEMORY[0x277D750F8];
    v18 = [(NMUKeepLocalAlertAction *)v16 title];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__NMUKeepLocalAlertConfiguration_alertViewControllerWithKeepLocalBlock___block_invoke_2;
    v24[3] = &unk_27993BE78;
    v25 = v16;
    v26 = v4;
    v19 = v16;
    v20 = [v17 actionWithTitle:v18 style:1 handler:v24];
    [v5 addAction:v20];
  }

  return v5;
}

+ (id)requiredPropertiesForModelKind:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CD5E48] identityKind];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = MEMORY[0x277CD6018];
    v15[0] = *MEMORY[0x277CD5960];
    v7 = MEMORY[0x277CBEA60];
    v8 = v15;
LABEL_5:
    v11 = [v7 arrayWithObjects:v8 count:1];
    v12 = [v6 propertySetWithProperties:v11];

    goto LABEL_7;
  }

  v9 = [MEMORY[0x277CD5F08] identityKind];
  v10 = [v3 isEqual:v9];

  v6 = MEMORY[0x277CD6018];
  if (v10)
  {
    v14 = *MEMORY[0x277CD59B8];
    v7 = MEMORY[0x277CBEA60];
    v8 = &v14;
    goto LABEL_5;
  }

  v12 = [MEMORY[0x277CD6018] emptyPropertySet];
LABEL_7:

  return v12;
}

- (id)_okAction
{
  v2 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v3 = [v2 localizedStringForKey:@"ACTION_TITLE_OK" value:@"OK" table:0];
  v4 = [NMUKeepLocalAlertAction actionWithTitle:v3 shouldPerformKeepLocalRequest:0 keepLocalRequestOptions:0 downloadAction:0];

  return v4;
}

- (id)_cancelAction
{
  v2 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v3 = [v2 localizedStringForKey:@"ACTION_TITLE_CANCEL" value:@"Cancel" table:0];
  v4 = [NMUKeepLocalAlertAction actionWithTitle:v3 shouldPerformKeepLocalRequest:0 keepLocalRequestOptions:0 downloadAction:1];

  return v4;
}

- (id)_downloadNowOffPowerActionWithOptions:(id)a3
{
  v3 = [a3 copy];
  [v3 setPowerPolicy:1];
  v4 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v5 = [v4 localizedStringForKey:@"ACTION_TITLE_DOWNLOAD_NOW" value:@"Download Now" table:0];
  v6 = [NMUKeepLocalAlertAction actionWithTitle:v5 shouldPerformKeepLocalRequest:1 keepLocalRequestOptions:v3 downloadAction:2];

  return v6;
}

- (id)_downloadNowOffPowerOnCellularActionWithOptions:(id)a3
{
  v3 = [a3 copy];
  [v3 setPowerPolicy:1];
  [v3 setCellularPolicy:1];
  v4 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
  v5 = [v4 localizedStringForKey:@"ACTION_TITLE_DOWNLOAD_NOW" value:@"Download Now" table:0];
  v6 = [NMUKeepLocalAlertAction actionWithTitle:v5 shouldPerformKeepLocalRequest:1 keepLocalRequestOptions:v3 downloadAction:3];

  return v6;
}

@end
@interface SUUIEditProfileSettingDescription
- (BOOL)_validateHandle:(id)handle;
- (BOOL)_validateName:(id)name;
- (BOOL)commitEdits:(id)edits;
- (NSString)handle;
- (NSString)name;
- (SUUIEditProfileSettingDescription)initWithViewElement:(id)element parent:(id)parent;
- (UIImage)photo;
- (void)_authenticateOnCompletion:(id)completion;
- (void)_displayFooter:(id)footer;
- (void)_displayRules:(BOOL)rules;
- (void)_displaySuggestedHandles:(id)handles;
- (void)_enterEditMode;
- (void)_fetchAccountInfo;
- (void)_fetchProfilePhoto;
- (void)_fetchSuggestedHandles;
- (void)_finalizeCommitWithSuccess:(BOOL)success error:(id)error;
- (void)_hideFooter;
- (void)_leaveEditMode;
- (void)_reloadData;
- (void)_updateAccountInfo;
- (void)_updateValidity;
- (void)_uploadProfileImage:(id)image;
- (void)chooseNewProfilePhoto;
- (void)dealloc;
- (void)discardEdits;
- (void)profileImagePicker:(id)picker didPickProfileImage:(id)image withCropRect:(id)rect;
- (void)setHandle:(id)handle;
- (void)setName:(id)name;
- (void)setPhoto:(id)photo withCropRect:(CGRect)rect;
- (void)suggestedHandlesSettingsHeaderFooterDescription:(id)description didSelectSuggestedHandle:(id)handle;
@end

@implementation SUUIEditProfileSettingDescription

- (SUUIEditProfileSettingDescription)initWithViewElement:(id)element parent:(id)parent
{
  v10.receiver = self;
  v10.super_class = SUUIEditProfileSettingDescription;
  v4 = [(SUUISettingDescription *)&v10 initWithViewElement:element parent:parent];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v4->_operationQueue;
    v4->_operationQueue = v5;

    [(NSOperationQueue *)v4->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v4->_operationQueue setQualityOfService:25];
    v7 = objc_alloc_init(SUUISettingValueStore);
    valueStore = v4->_valueStore;
    v4->_valueStore = v7;

    [(SUUIEditProfileSettingDescription *)v4 _reloadData];
  }

  return v4;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = SUUIEditProfileSettingDescription;
  [(SUUIEditProfileSettingDescription *)&v3 dealloc];
}

- (void)chooseNewProfilePhoto
{
  v3 = [SUUIProfileImagePicker alloc];
  parent = [(SUUISettingDescription *)self parent];
  clientContext = [parent clientContext];
  v6 = [(SUUIProfileImagePicker *)v3 initWithClientContext:clientContext];

  [(SUUIProfileImagePicker *)v6 setDelegate:self];
  [(SUUISettingDescription *)self _presentViewController:v6 animated:1 completion:0];
}

- (NSString)handle
{
  v2 = [(SUUISettingValueStore *)self->_valueStore resolvedValueForKey:@"handle"];
  v3 = [v2 copy];

  return v3;
}

- (NSString)name
{
  v2 = [(SUUISettingValueStore *)self->_valueStore resolvedValueForKey:@"name"];
  v3 = [v2 copy];

  return v3;
}

- (UIImage)photo
{
  v2 = [(SUUISettingValueStore *)self->_valueStore resolvedValueForKey:@"photo"];
  v3 = [v2 copy];

  v4 = [[SUUIStyledImageDataConsumer alloc] initWithSize:10 treatment:56.0, 56.0];
  v5 = [(SUUIStyledImageDataConsumer *)v4 imageForImage:v3];

  return v5;
}

- (void)setHandle:(id)handle
{
  v4 = MEMORY[0x277CCA900];
  handleCopy = handle;
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [handleCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  [(SUUISettingValueStore *)self->_valueStore setModifiedValue:v7 forKey:@"handle"];
  [(SUUIEditProfileSettingDescription *)self _updateValidity];
}

- (void)setName:(id)name
{
  v4 = MEMORY[0x277CCA900];
  nameCopy = name;
  whitespaceAndNewlineCharacterSet = [v4 whitespaceAndNewlineCharacterSet];
  v7 = [nameCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  [(SUUISettingValueStore *)self->_valueStore setModifiedValue:v7 forKey:@"name"];
  [(SUUIEditProfileSettingDescription *)self _updateValidity];
}

- (void)setPhoto:(id)photo withCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  photoCopy = photo;
  v12.width = width;
  v12.height = height;
  UIGraphicsBeginImageContextWithOptions(v12, 1, 1.0);
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, -1.0, -1.0);
  [photoCopy drawAtPoint:{vaddq_f64(*&v11.tx, vmlaq_n_f64(vmulq_n_f64(*&v11.c, y), *&v11.a, x))}];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(SUUISettingValueStore *)self->_valueStore setModifiedValue:v8 forKey:@"photo"];
}

- (void)profileImagePicker:(id)picker didPickProfileImage:(id)image withCropRect:(id)rect
{
  rectCopy = rect;
  imageCopy = image;
  [(SUUISettingDescription *)self _dismissViewController:picker animated:1 completion:0];
  [rectCopy CGRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(SUUIEditProfileSettingDescription *)self setPhoto:imageCopy withCropRect:v11, v13, v15, v17];

  [(SUUISettingDescription *)self _reloadSetting];
}

- (BOOL)commitEdits:(id)edits
{
  v4 = [edits copy];
  commitBlock = self->_commitBlock;
  self->_commitBlock = v4;

  hasChanges = [(SUUISettingValueStore *)self->_valueStore hasChanges];
  if (hasChanges)
  {
    modifiedKeys = [(SUUISettingValueStore *)self->_valueStore modifiedKeys];
    if ([modifiedKeys containsObject:@"photo"])
    {
      v8 = [(SUUISettingValueStore *)self->_valueStore resolvedValueForKey:@"photo"];
      [(SUUIEditProfileSettingDescription *)self _uploadProfileImage:v8];
    }

    else
    {
      [(SUUIEditProfileSettingDescription *)self _updateAccountInfo];
    }
  }

  else
  {
    [(SUUIEditProfileSettingDescription *)self _finalizeCommitWithSuccess:1 error:0];
  }

  return hasChanges;
}

- (void)discardEdits
{
  [(SUUISettingValueStore *)self->_valueStore discardChanges];

  [(SUUIEditProfileSettingDescription *)self _leaveEditMode];
}

- (void)suggestedHandlesSettingsHeaderFooterDescription:(id)description didSelectSuggestedHandle:(id)handle
{
  valueStore = self->_valueStore;
  v6 = [handle copy];
  [(SUUISettingValueStore *)valueStore setModifiedValue:v6 forKey:@"handle"];

  [(SUUISettingDescription *)self _reloadSetting];
}

- (void)_authenticateOnCompletion:(id)completion
{
  completionCopy = completion;
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    contextForSignIn = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:activeAccount];
    [contextForSignIn setPromptStyle:1];
    [contextForSignIn setShouldCreateNewSession:1];
  }

  else
  {
    contextForSignIn = [MEMORY[0x277D69BC8] contextForSignIn];
  }

  v7 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:contextForSignIn];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SUUIEditProfileSettingDescription__authenticateOnCompletion___block_invoke;
  v9[3] = &unk_2798F6940;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 startWithAuthenticateResponseBlock:v9];
}

void __63__SUUIEditProfileSettingDescription__authenticateOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SUUIEditProfileSettingDescription__authenticateOnCompletion___block_invoke_2;
  v5[3] = &unk_2798F6030;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __63__SUUIEditProfileSettingDescription__authenticateOnCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) authenticateResponseType];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_displayFooter:(id)footer
{
  footerCopy = footer;
  parent = [(SUUISettingDescription *)self parent];
  [parent setFooterDescription:footerCopy];

  v5 = [[SUUISettingsDescriptionUpdate alloc] initWithUpdateType:2];
  index = [parent index];
  v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
  [(SUUISettingsDescriptionUpdate *)v5 setIndexSet:v7];

  [parent dispatchUpdate:v5];
}

- (void)_displayRules:(BOOL)rules
{
  rulesCopy = rules;
  v5 = [SUUIHandleRulesSettingsHeaderFooterDescription alloc];
  parent = [(SUUISettingDescription *)self parent];
  clientContext = [parent clientContext];
  v8 = [(SUUIHandleRulesSettingsHeaderFooterDescription *)v5 initWithClientContext:clientContext];

  [(SUUIHandleRulesSettingsHeaderFooterDescription *)v8 setShowInvalid:rulesCopy];
  [(SUUIEditProfileSettingDescription *)self _displayFooter:v8];
}

- (void)_displaySuggestedHandles:(id)handles
{
  self->_suggestedHandlesDisplayed = 1;
  handlesCopy = handles;
  v5 = [SUUISuggestedHandlesSettingsHeaderFooterDescription alloc];
  parent = [(SUUISettingDescription *)self parent];
  clientContext = [parent clientContext];
  v8 = [(SUUISuggestedHandlesSettingsHeaderFooterDescription *)v5 initWithSuggestedHandles:handlesCopy clientContext:clientContext delegate:self];

  [(SUUIEditProfileSettingDescription *)self _displayFooter:v8];
}

- (void)_enterEditMode
{
  self->_editing = 1;
  [(SUUIEditProfileSettingDescription *)self _displayRules:0];
  [(SUUIEditProfileSettingDescription *)self _updateValidity];

  [(SUUISettingDescription *)self _reloadSetting];
}

- (void)_fetchAccountInfo
{
  v3 = +[SUUIMediaSocialProfileCoordinator sharedCoordinator];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SUUIEditProfileSettingDescription__fetchAccountInfo__block_invoke;
  v4[3] = &unk_2798FE5F0;
  objc_copyWeak(&v5, &location);
  [v3 getProfileWithOptions:0 profileBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __54__SUUIEditProfileSettingDescription__fetchAccountInfo__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__SUUIEditProfileSettingDescription__fetchAccountInfo__block_invoke_2;
    v6[3] = &unk_2798F7560;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v8);
  }
}

void __54__SUUIEditProfileSettingDescription__fetchAccountInfo__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained _valueStore];
    v4 = [*(a1 + 32) handle];
    v5 = [v4 copy];
    [v3 setOriginalValue:v5 forKey:@"handle"];

    v6 = [*(a1 + 32) name];
    v7 = [v6 copy];
    [v3 setOriginalValue:v7 forKey:@"name"];

    WeakRetained = v8;
  }
}

- (void)_fetchProfilePhoto
{
  parent = [(SUUISettingDescription *)self parent];
  clientContext = [parent clientContext];

  v5 = [[SUUIMediaSocialLoadProfilePhotoOperation alloc] initWithClientContext:clientContext];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __55__SUUIEditProfileSettingDescription__fetchProfilePhoto__block_invoke;
  v9 = &unk_2798FE618;
  objc_copyWeak(&v10, &location);
  [(SUUIMediaSocialLoadProfilePhotoOperation *)v5 setOutputBlock:&v6];
  [(NSOperationQueue *)self->_operationQueue addOperation:v5, v6, v7, v8, v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __55__SUUIEditProfileSettingDescription__fetchProfilePhoto__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained _valueStore];
    v9 = v8;
    if ((a3 & 1) != 0 || ([v8 originalValueForKey:@"photo"], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v11 = [v5 copy];
      [v9 setOriginalValue:v11 forKey:@"photo"];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__SUUIEditProfileSettingDescription__fetchProfilePhoto__block_invoke_2;
      block[3] = &unk_2798F5BE8;
      block[4] = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_fetchSuggestedHandles
{
  parent = [(SUUISettingDescription *)self parent];
  clientContext = [parent clientContext];

  v5 = [[SUUIMediaSocialSuggestedHandlesOperation alloc] initWithClientContext:clientContext];
  v6 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = [(SUUISettingValueStore *)self->_valueStore resolvedValueForKey:@"name"];
  v8 = [(SUUISettingValueStore *)self->_valueStore resolvedValueForKey:@"handle"];
  v9 = [v6 initWithObjects:{v7, v8, 0}];

  [(SUUIMediaSocialSuggestedHandlesOperation *)v5 setWords:v9];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__SUUIEditProfileSettingDescription__fetchSuggestedHandles__block_invoke;
  v10[3] = &unk_2798F6CB8;
  objc_copyWeak(&v11, &location);
  [(SUUIMediaSocialSuggestedHandlesOperation *)v5 setOutputBlock:v10];
  [(NSOperationQueue *)self->_operationQueue addOperation:v5];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __59__SUUIEditProfileSettingDescription__fetchSuggestedHandles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SUUIEditProfileSettingDescription__fetchSuggestedHandles__block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __59__SUUIEditProfileSettingDescription__fetchSuggestedHandles__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v4 = WeakRetained;
  [WeakRetained _displaySuggestedHandles:v3];
}

- (void)_finalizeCommitWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  [(SUUISettingValueStore *)self->_valueStore clearValueForKey:@"photoUpload"];
  commitBlock = self->_commitBlock;
  if (commitBlock)
  {
    commitBlock[2](commitBlock, successCopy);
    v7 = self->_commitBlock;
    self->_commitBlock = 0;
  }

  if (successCopy)
  {
    [(SUUIEditProfileSettingDescription *)self _leaveEditMode];
    [(SUUIEditProfileSettingDescription *)self _reloadData];
  }

  else
  {
    v8 = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_11;
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:@"SUUIErrorDomain"])
    {
      code = [errorCopy code];

      v8 = errorCopy;
      if (code != 5)
      {
        goto LABEL_11;
      }

      [(SUUIEditProfileSettingDescription *)self _fetchSuggestedHandles];
    }

    else
    {
    }
  }

  v8 = errorCopy;
LABEL_11:
}

- (void)_hideFooter
{
  self->_suggestedHandlesDisplayed = 0;
  parent = [(SUUISettingDescription *)self parent];
  [parent setFooterDescription:0];
  v2 = [[SUUISettingsDescriptionUpdate alloc] initWithUpdateType:2];
  index = [parent index];
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
  [(SUUISettingsDescriptionUpdate *)v2 setIndexSet:v4];

  [parent dispatchUpdate:v2];
}

- (void)_leaveEditMode
{
  self->_editing = 0;
  [(SUUIEditProfileSettingDescription *)self _hideFooter];

  [(SUUISettingDescription *)self _reloadSetting];
}

- (void)_reloadData
{
  [(SUUIEditProfileSettingDescription *)self _fetchAccountInfo];

  [(SUUIEditProfileSettingDescription *)self _fetchProfilePhoto];
}

- (void)_updateAccountInfo
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [SUUIMediaSocialUpdateProfileOperation alloc];
  val = self;
  parent = [(SUUISettingDescription *)self parent];
  clientContext = [parent clientContext];
  v23 = [(SUUIMediaSocialUpdateProfileOperation *)v3 initWithClientContext:clientContext];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  modifiedKeys = [(SUUISettingValueStore *)self->_valueStore modifiedKeys];
  v7 = [modifiedKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(modifiedKeys);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [(__CFString *)v10 isEqualToString:@"handle"];
        v12 = SUUIMediaSocialUpdateProfileFieldHandle;
        if (v11 & 1) != 0 || (v13 = [(__CFString *)v10 isEqualToString:@"name"], v12 = SUUIMediaSocialUpdateProfileFieldName, (v13) || (v14 = [(__CFString *)v10 isEqualToString:@"photoUpload"], v12 = &SUUIMediaSocialUpdateProfileFieldProfileImage, v14))
        {
          v15 = *v12;

          if (!v15)
          {
            goto LABEL_16;
          }

          null = [(SUUISettingValueStore *)val->_valueStore resolvedValueForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = null;
            null = v17;
            if ([v17 isEqualToString:&stru_286AECDE0])
            {
              null = [MEMORY[0x277CBEB68] null];
            }
          }

          [(SUUIMediaSocialUpdateProfileOperation *)v23 setValue:null forProfileField:v15];
        }

        else
        {
          v15 = v10;
        }

LABEL_16:
        ++v9;
      }

      while (v7 != v9);
      v18 = [modifiedKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
      v7 = v18;
    }

    while (v18);
  }

  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  uniqueIdentifier = [activeAccount uniqueIdentifier];
  [(SUUIMediaSocialUpdateProfileOperation *)v23 setIdentifier:uniqueIdentifier];

  [(SUUIMediaSocialUpdateProfileOperation *)v23 setEntityType:@"user"];
  objc_initWeak(&location, val);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __55__SUUIEditProfileSettingDescription__updateAccountInfo__block_invoke;
  v24[3] = &unk_2798F6AF8;
  objc_copyWeak(&v25, &location);
  [(SUUIMediaSocialUpdateProfileOperation *)v23 setOutputBlock:v24];
  [(NSOperationQueue *)val->_operationQueue addOperation:v23];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __55__SUUIEditProfileSettingDescription__updateAccountInfo__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2)
  {
    v8 = [v5 domain];
    if ([v8 isEqualToString:@"SUUIErrorDomain"])
    {
      v9 = [v5 code];

      if (v9 == 5)
      {
        [WeakRetained _fetchSuggestedHandles];
        [WeakRetained _finalizeCommitWithSuccess:0 error:0];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = [v5 domain];
    if ([v10 isEqualToString:@"SUUIErrorDomain"])
    {
      v11 = [v5 code];

      if (v11 == 3)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __55__SUUIEditProfileSettingDescription__updateAccountInfo__block_invoke_3;
        v13[3] = &unk_2798FCFC8;
        objc_copyWeak(&v14, (a1 + 32));
        v13[4] = WeakRetained;
        [WeakRetained _authenticateOnCompletion:v13];
        objc_destroyWeak(&v14);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__SUUIEditProfileSettingDescription__updateAccountInfo__block_invoke_4;
    v12[3] = &unk_2798F5BE8;
    v12[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v12);
    goto LABEL_12;
  }

  v7 = +[SUUIMediaSocialProfileCoordinator sharedCoordinator];
  [v7 reset];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUUIEditProfileSettingDescription__updateAccountInfo__block_invoke_2;
  block[3] = &unk_2798F5BE8;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_12:
}

void __55__SUUIEditProfileSettingDescription__updateAccountInfo__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _updateAccountInfo];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 _finalizeCommitWithSuccess:0 error:0];
  }
}

- (void)_uploadProfileImage:(id)image
{
  imageCopy = image;
  v5 = [SUUIMediaSocialSaveProfilePhotoOperation alloc];
  parent = [(SUUISettingDescription *)self parent];
  clientContext = [parent clientContext];
  v8 = [(SUUIMediaSocialSaveProfilePhotoOperation *)v5 initWithClientContext:clientContext];

  [(SUUIMediaSocialSaveProfilePhotoOperation *)v8 setPhoto:imageCopy];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__SUUIEditProfileSettingDescription__uploadProfileImage___block_invoke;
  v10[3] = &unk_2798FE640;
  objc_copyWeak(&v12, &location);
  v9 = imageCopy;
  v11 = v9;
  [(SUUIMediaSocialSaveProfilePhotoOperation *)v8 setOutputBlock:v10];
  [(NSOperationQueue *)self->_operationQueue addOperation:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __57__SUUIEditProfileSettingDescription__uploadProfileImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v5 || v6)
  {
    v10 = [v6 domain];
    if ([v10 isEqualToString:@"SUUIErrorDomain"])
    {
      v11 = [v6 code];

      if (v11 == 3)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __57__SUUIEditProfileSettingDescription__uploadProfileImage___block_invoke_2;
        v12[3] = &unk_2798F6918;
        objc_copyWeak(&v15, (a1 + 40));
        v13 = *(a1 + 32);
        v14 = WeakRetained;
        [WeakRetained _authenticateOnCompletion:v12];

        objc_destroyWeak(&v15);
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = +[SUUIMediaSocialProfileCoordinator sharedCoordinator];
    [v8 reset];
    v9 = [WeakRetained _valueStore];
    [v9 setModifiedValue:v5 forKey:@"photoUpload"];
    [WeakRetained _updateAccountInfo];
  }
}

void __57__SUUIEditProfileSettingDescription__uploadProfileImage___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _uploadProfileImage:*(a1 + 32)];
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 _finalizeCommitWithSuccess:0 error:0];
  }
}

- (void)_updateValidity
{
  v4 = [(SUUISettingValueStore *)self->_valueStore resolvedValueForKey:@"name"];
  v3 = [(SUUISettingValueStore *)self->_valueStore resolvedValueForKey:@"handle"];
  [(SUUISettingDescription *)self _setEditsValid:[(SUUIEditProfileSettingDescription *)self _validateName:v4]& [(SUUIEditProfileSettingDescription *)self _validateHandle:v3]];
}

- (BOOL)_validateHandle:(id)handle
{
  handleCopy = handle;
  v5 = handleCopy;
  if (!handleCopy || ([handleCopy isEqualToString:&stru_286AECDE0] & 1) != 0 || objc_msgSend(v5, "length") > 0x20)
  {
    v11 = 0;
  }

  else
  {
    if (!self->_handleValidation)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"[A-Za-z0-9_]+" options:0 error:0];
      handleValidation = self->_handleValidation;
      self->_handleValidation = v6;
    }

    v8 = [v5 length];
    if ([(NSRegularExpression *)self->_handleValidation rangeOfFirstMatchInString:v5 options:0 range:0, v8])
    {
      v10 = 0;
    }

    else
    {
      v10 = v8 == v9;
    }

    v11 = v10;
  }

  self->_handleValid = v11;

  return v11;
}

- (BOOL)_validateName:(id)name
{
  if (name)
  {
    return [name isEqualToString:&stru_286AECDE0] ^ 1;
  }

  else
  {
    return 0;
  }
}

@end
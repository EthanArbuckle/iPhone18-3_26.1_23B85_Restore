@interface HighlightManager
- (void)_handleRemovalOfHighlights:(id)highlights;
- (void)loadLinkMetadataForMessageWithGUID:(id)d completionHandler:(id)handler;
- (void)setPresenter:(id)presenter forHighlightIdentifier:(id)identifier;
@end

@implementation HighlightManager

- (void)loadLinkMetadataForMessageWithGUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v7 = objc_alloc_init(SafariSandboxBrokerConnection);
  [(WBSUISafariSandboxBrokerConnection *)v7 getLinkMetadataForMessageWithGUID:dCopy completionHandler:handlerCopy];
}

- (void)setPresenter:(id)presenter forHighlightIdentifier:(id)identifier
{
  presenterCopy = presenter;
  identifierCopy = identifier;
  highlightToPresentersMap = self->_highlightToPresentersMap;
  if (!highlightToPresentersMap)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_highlightToPresentersMap;
    self->_highlightToPresentersMap = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    highlightToBackForwardListItemsMap = self->_highlightToBackForwardListItemsMap;
    self->_highlightToBackForwardListItemsMap = dictionary2;

    highlightToPresentersMap = self->_highlightToPresentersMap;
  }

  v12 = [(NSMutableDictionary *)highlightToPresentersMap objectForKeyedSubscript:identifierCopy];

  if (!v12)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_highlightToPresentersMap setObject:weakObjectsHashTable forKeyedSubscript:identifierCopy];

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_highlightToBackForwardListItemsMap setObject:weakObjectsHashTable2 forKeyedSubscript:identifierCopy];
  }

  v15 = [(NSMutableDictionary *)self->_highlightToPresentersMap objectForKeyedSubscript:identifierCopy];
  [v15 addObject:presenterCopy];

  v16 = [(NSMutableDictionary *)self->_highlightToBackForwardListItemsMap objectForKeyedSubscript:identifierCopy];
  currentBackForwardListItem = [presenterCopy currentBackForwardListItem];
  [v16 addObject:currentBackForwardListItem];
}

- (void)_handleRemovalOfHighlights:(id)highlights
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = highlights;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v32;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = [(NSMutableDictionary *)self->_highlightToPresentersMap objectForKeyedSubscript:v7];
        allObjects = [v8 allObjects];

        v10 = [allObjects countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            v13 = 0;
            do
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(allObjects);
              }

              [*(*(&v27 + 1) + 8 * v13++) hideBannerForHighlightIdentifier:v7];
            }

            while (v11 != v13);
            v11 = [allObjects countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v11);
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = [(NSMutableDictionary *)self->_highlightToBackForwardListItemsMap objectForKeyedSubscript:v7];
        allObjects2 = [v14 allObjects];

        v16 = [allObjects2 countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v24;
          do
          {
            v19 = 0;
            do
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(allObjects2);
              }

              [*(*(&v23 + 1) + 8 * v19++) safari_setHighlight:0];
            }

            while (v17 != v19);
            v17 = [allObjects2 countByEnumeratingWithState:&v23 objects:v35 count:16];
          }

          while (v17);
        }

        [(NSMutableDictionary *)self->_highlightToPresentersMap setObject:0 forKeyedSubscript:v7];
        [(NSMutableDictionary *)self->_highlightToBackForwardListItemsMap setObject:0 forKeyedSubscript:v7];
        mEMORY[0x277D28C90] = [MEMORY[0x277D28C90] sharedTracker];
        [mEMORY[0x277D28C90] unblockBannerForHighlight:v7];

        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v5);
  }
}

@end
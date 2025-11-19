@interface HighlightManager
- (void)_handleRemovalOfHighlights:(id)a3;
- (void)loadLinkMetadataForMessageWithGUID:(id)a3 completionHandler:(id)a4;
- (void)setPresenter:(id)a3 forHighlightIdentifier:(id)a4;
@end

@implementation HighlightManager

- (void)loadLinkMetadataForMessageWithGUID:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SafariSandboxBrokerConnection);
  [(WBSUISafariSandboxBrokerConnection *)v7 getLinkMetadataForMessageWithGUID:v6 completionHandler:v5];
}

- (void)setPresenter:(id)a3 forHighlightIdentifier:(id)a4
{
  v18 = a3;
  v6 = a4;
  highlightToPresentersMap = self->_highlightToPresentersMap;
  if (!highlightToPresentersMap)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_highlightToPresentersMap;
    self->_highlightToPresentersMap = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    highlightToBackForwardListItemsMap = self->_highlightToBackForwardListItemsMap;
    self->_highlightToBackForwardListItemsMap = v10;

    highlightToPresentersMap = self->_highlightToPresentersMap;
  }

  v12 = [(NSMutableDictionary *)highlightToPresentersMap objectForKeyedSubscript:v6];

  if (!v12)
  {
    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_highlightToPresentersMap setObject:v13 forKeyedSubscript:v6];

    v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_highlightToBackForwardListItemsMap setObject:v14 forKeyedSubscript:v6];
  }

  v15 = [(NSMutableDictionary *)self->_highlightToPresentersMap objectForKeyedSubscript:v6];
  [v15 addObject:v18];

  v16 = [(NSMutableDictionary *)self->_highlightToBackForwardListItemsMap objectForKeyedSubscript:v6];
  v17 = [v18 currentBackForwardListItem];
  [v16 addObject:v17];
}

- (void)_handleRemovalOfHighlights:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a3;
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
        v9 = [v8 allObjects];

        v10 = [v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
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
                objc_enumerationMutation(v9);
              }

              [*(*(&v27 + 1) + 8 * v13++) hideBannerForHighlightIdentifier:v7];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v11);
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = [(NSMutableDictionary *)self->_highlightToBackForwardListItemsMap objectForKeyedSubscript:v7];
        v15 = [v14 allObjects];

        v16 = [v15 countByEnumeratingWithState:&v23 objects:v35 count:16];
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
                objc_enumerationMutation(v15);
              }

              [*(*(&v23 + 1) + 8 * v19++) safari_setHighlight:0];
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v23 objects:v35 count:16];
          }

          while (v17);
        }

        [(NSMutableDictionary *)self->_highlightToPresentersMap setObject:0 forKeyedSubscript:v7];
        [(NSMutableDictionary *)self->_highlightToBackForwardListItemsMap setObject:0 forKeyedSubscript:v7];
        v20 = [MEMORY[0x277D28C90] sharedTracker];
        [v20 unblockBannerForHighlight:v7];

        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v5);
  }
}

@end
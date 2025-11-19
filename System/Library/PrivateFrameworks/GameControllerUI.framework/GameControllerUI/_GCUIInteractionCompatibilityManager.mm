@interface _GCUIInteractionCompatibilityManager
+ (id)sharedInstance;
- (_GCUIInteractionCompatibilityManager)init;
- (id)_init;
- (void)_installInteractionOnWindow:(id)a3;
- (void)_windowDidBecomeKey:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation _GCUIInteractionCompatibilityManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[_GCUIInteractionCompatibilityManager sharedInstance];
  }

  v3 = sharedInstance_SharedInstance;

  return v3;
}

- (_GCUIInteractionCompatibilityManager)init
{
  [(_GCUIInteractionCompatibilityManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setEnabled:(BOOL)a3
{
  v25 = *MEMORY[0x277D85DE8];
  installedInteractions = self->_installedInteractions;
  if (!a3)
  {
    if (installedInteractions)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = installedInteractions;
      v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            v16 = [v15 view];
            [v16 removeInteraction:v15];
          }

          v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v12);
      }

      v17 = self->_installedInteractions;
      self->_installedInteractions = 0;

      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      [v18 removeObserver:self name:*MEMORY[0x277D77280] object:0];
    }

    goto LABEL_17;
  }

  if (installedInteractions)
  {
LABEL_17:
    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = objc_opt_new();
  v6 = self->_installedInteractions;
  self->_installedInteractions = v5;

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__windowDidBecomeKey_ name:*MEMORY[0x277D77280] object:0];

  v8 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  if (v8)
  {
    [(_GCUIInteractionCompatibilityManager *)self _installInteractionOnWindow:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  MEMORY[0x2821F96F8]();
}

- (void)_installInteractionOnWindow:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = a3;
  v4 = [v17 interactions];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(NSMutableSet *)self->_installedInteractions containsObject:v11];
          v13 = v11;
          if (v12)
          {
            v14 = v8;
          }

          else
          {
            v14 = v7;
          }

          if (v12)
          {
            v8 = v13;
          }

          else
          {
            v7 = v13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (!(v8 | v7))
  {
    v15 = objc_opt_new();
    [v15 setHandledEventTypes:1];
    [(NSMutableSet *)self->_installedInteractions addObject:v15];
    [v17 addInteraction:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_windowDidBecomeKey:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_GCUIInteractionCompatibilityManager *)self _installInteractionOnWindow:v5];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_installedInteractions;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v7)
    {
      v9 = v6;
      goto LABEL_16;
    }

    v8 = v7;
    v15 = self;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 view];

        if (!v13)
        {
          if (!v9)
          {
            v9 = [MEMORY[0x277CBEB58] set];
          }

          [v9 addObject:v12];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);

    if (v9)
    {
      [(NSMutableSet *)v15->_installedInteractions minusSet:v9];
LABEL_16:
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_init
{
  if (result)
  {
    v1.receiver = result;
    v1.super_class = _GCUIInteractionCompatibilityManager;
    return objc_msgSendSuper2(&v1, sel_init);
  }

  return result;
}

@end
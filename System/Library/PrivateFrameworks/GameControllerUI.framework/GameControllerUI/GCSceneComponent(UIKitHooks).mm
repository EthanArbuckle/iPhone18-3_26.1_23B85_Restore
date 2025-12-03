@interface GCSceneComponent(UIKitHooks)
- (void)prepareSystemUIWithView:()UIKitHooks;
@end

@implementation GCSceneComponent(UIKitHooks)

- (void)prepareSystemUIWithView:()UIKitHooks
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  interactions = [v3 interactions];
  v5 = [interactions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {

LABEL_13:
    v12 = objc_alloc_init(MEMORY[0x277CCB058]);
    [v12 setHandledEventTypes:0];
    [v3 addInteraction:v12];

    v7 = 0;
    goto LABEL_14;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v15;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(interactions);
      }

      v10 = *(*(&v14 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;

        v7 = v11;
      }
    }

    v6 = [interactions countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v6);

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
}

@end
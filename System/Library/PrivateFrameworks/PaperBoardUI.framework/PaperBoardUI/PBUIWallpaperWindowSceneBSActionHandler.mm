@interface PBUIWallpaperWindowSceneBSActionHandler
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation PBUIWallpaperWindowSceneBSActionHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  iSceneCopy = iScene;
  v9 = [actionsCopy mutableCopy];
  v10 = objc_opt_class();
  v11 = iSceneCopy;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v22 = v11;
    v23 = actionsCopy;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = actionsCopy;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = v15;
    v17 = *v25;
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
          [v13 _handleUpdateLocationsAction:v20];
          [v9 removeObject:v20];

          continue;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 _handleUpdateAndPrewarmAction:v19];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v13 _handlePreheatAction:v19];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 _handleImageSlotRequestAction:v19];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              [v13 _handleWallpaperEffectImageRequestAction:v19];
            }
          }
        }

        [v9 removeObject:{v19, v22, v23, v24}];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v16)
      {
LABEL_25:

        v11 = v22;
        actionsCopy = v23;
        break;
      }
    }
  }

  return v9;
}

@end
@interface HUCCMosaicArranger
- (HUCCMosaicArranger)initWithCCMosaicType:(unint64_t)a3;
- (id)calculateOrderingForItems:(id)a3;
- (void)_configureForLandscapeGrid;
- (void)_configureForPortraitGrid;
@end

@implementation HUCCMosaicArranger

- (HUCCMosaicArranger)initWithCCMosaicType:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = HUCCMosaicArranger;
  v4 = [(HUCCMosaicArranger *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    layouts = v4->_layouts;
    v4->_layouts = v5;

    if (a3 == 1)
    {
      [(HUCCMosaicArranger *)v4 _configureForLandscapeGrid];
    }

    else
    {
      [(HUCCMosaicArranger *)v4 _configureForPortraitGrid];
    }
  }

  return v4;
}

- (void)_configureForPortraitGrid
{
  v3 = +[HUCCMosaicLayout allPortraitLayouts];
  [(HUCCMosaicArranger *)self setLayouts:v3];

  v4 = +[HUCCMosaicLayout maxItemsNeededForPortrait];

  [(HUCCMosaicArranger *)self setNumberOfItemsNeeded:v4];
}

- (void)_configureForLandscapeGrid
{
  v3 = +[HUCCMosaicLayout allLandscapeLayouts];
  [(HUCCMosaicArranger *)self setLayouts:v3];

  v4 = +[HUCCMosaicLayout maxItemsNeededForLandscape];

  [(HUCCMosaicArranger *)self setNumberOfItemsNeeded:v4];
}

- (id)calculateOrderingForItems:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = 0;
    while (v5 < [(HUCCMosaicArranger *)self numberOfItemsNeeded])
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = [(HUCCMosaicArranger *)self layouts];
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
LABEL_6:
        v11 = 0;
        while (1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          [v12 addItem:v6];
          if ([v12 priority] == 2 && (objc_msgSend(v12, "isComplete") & 1) != 0)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
            if (v9)
            {
              goto LABEL_6;
            }

            goto LABEL_13;
          }
        }

        v13 = v12;

        if (!v13)
        {
          goto LABEL_15;
        }

        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v13;
          _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Mosaic Layout %@ filled, breaking.", buf, 0xCu);
        }

        goto LABEL_18;
      }

LABEL_13:

LABEL_15:
      if (++v5 >= [v4 count])
      {
        break;
      }
    }
  }

  v14 = [(HUCCMosaicArranger *)self layouts];
  v13 = [v14 lastObject];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "Unable to calculate correct mosaic layout", buf, 2u);
  }

LABEL_18:

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v13;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Mosaic Layout chosen is %@", buf, 0xCu);
  }

  if (v13)
  {
    v16 = [v13 layoutType];
  }

  else
  {
    v16 = 0;
  }

  [(HUCCMosaicArranger *)self setChosenLayoutType:v16];
  v17 = [v13 arrangedItems];

  return v17;
}

@end
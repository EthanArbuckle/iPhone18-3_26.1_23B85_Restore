@interface HUCCMosaicArranger
- (HUCCMosaicArranger)initWithCCMosaicType:(unint64_t)type;
- (id)calculateOrderingForItems:(id)items;
- (void)_configureForLandscapeGrid;
- (void)_configureForPortraitGrid;
@end

@implementation HUCCMosaicArranger

- (HUCCMosaicArranger)initWithCCMosaicType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = HUCCMosaicArranger;
  v4 = [(HUCCMosaicArranger *)&v8 init];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    layouts = v4->_layouts;
    v4->_layouts = array;

    if (type == 1)
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

- (id)calculateOrderingForItems:(id)items
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v5 = 0;
    while (v5 < [(HUCCMosaicArranger *)self numberOfItemsNeeded])
    {
      v6 = [itemsCopy objectAtIndexedSubscript:v5];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      layouts = [(HUCCMosaicArranger *)self layouts];
      v8 = [layouts countByEnumeratingWithState:&v20 objects:v26 count:16];
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
            objc_enumerationMutation(layouts);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          [v12 addItem:v6];
          if ([v12 priority] == 2 && (objc_msgSend(v12, "isComplete") & 1) != 0)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [layouts countByEnumeratingWithState:&v20 objects:v26 count:16];
            if (v9)
            {
              goto LABEL_6;
            }

            goto LABEL_13;
          }
        }

        lastObject = v12;

        if (!lastObject)
        {
          goto LABEL_15;
        }

        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = lastObject;
          _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Mosaic Layout %@ filled, breaking.", buf, 0xCu);
        }

        goto LABEL_18;
      }

LABEL_13:

LABEL_15:
      if (++v5 >= [itemsCopy count])
      {
        break;
      }
    }
  }

  layouts2 = [(HUCCMosaicArranger *)self layouts];
  lastObject = [layouts2 lastObject];

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
    v25 = lastObject;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "Mosaic Layout chosen is %@", buf, 0xCu);
  }

  if (lastObject)
  {
    layoutType = [lastObject layoutType];
  }

  else
  {
    layoutType = 0;
  }

  [(HUCCMosaicArranger *)self setChosenLayoutType:layoutType];
  arrangedItems = [lastObject arrangedItems];

  return arrangedItems;
}

@end
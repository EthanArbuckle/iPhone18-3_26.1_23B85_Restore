@interface HKOverlayContextSection
- (HKOverlayContextSection)initWithSectionTitle:(id)title overlayContextItems:(id)items;
- (HKOverlayContextSection)initWithSectionTitle:(id)title overlayContextItems:(id)items accessoryButtonAction:(id)action;
- (NSArray)items;
- (void)items;
@end

@implementation HKOverlayContextSection

- (HKOverlayContextSection)initWithSectionTitle:(id)title overlayContextItems:(id)items accessoryButtonAction:(id)action
{
  titleCopy = title;
  itemsCopy = items;
  actionCopy = action;
  v15.receiver = self;
  v15.super_class = HKOverlayContextSection;
  v12 = [(HKOverlayContextSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localizedSectionTitle, title);
    objc_storeStrong(&v13->_overlayContextItems, items);
    objc_storeStrong(&v13->_accessoryButtonAction, action);
  }

  return v13;
}

- (HKOverlayContextSection)initWithSectionTitle:(id)title overlayContextItems:(id)items
{
  titleCopy = title;
  itemsCopy = items;
  v13.receiver = self;
  v13.super_class = HKOverlayContextSection;
  v9 = [(HKOverlayContextSection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedSectionTitle, title);
    accessoryButtonAction = v10->_accessoryButtonAction;
    v10->_accessoryButtonAction = 0;

    objc_storeStrong(&v10->_overlayContextItems, items);
  }

  return v10;
}

- (NSArray)items
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  overlayContextItems = [(HKOverlayContextSection *)self overlayContextItems];
  v6 = [overlayContextItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(overlayContextItems);
        }

        contextItemForLastUpdate = [*(*(&v12 + 1) + 8 * v9) contextItemForLastUpdate];
        if (!contextItemForLastUpdate)
        {
          [(HKOverlayContextSection *)a2 items];
        }

        [v4 addObject:contextItemForLastUpdate];

        ++v9;
      }

      while (v7 != v9);
      v7 = [overlayContextItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)items
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKOverlayRoomViewController.m" lineNumber:3435 description:@"Context items should not be nil"];
}

@end
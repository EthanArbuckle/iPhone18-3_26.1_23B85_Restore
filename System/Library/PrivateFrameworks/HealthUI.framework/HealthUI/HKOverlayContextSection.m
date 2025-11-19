@interface HKOverlayContextSection
- (HKOverlayContextSection)initWithSectionTitle:(id)a3 overlayContextItems:(id)a4;
- (HKOverlayContextSection)initWithSectionTitle:(id)a3 overlayContextItems:(id)a4 accessoryButtonAction:(id)a5;
- (NSArray)items;
- (void)items;
@end

@implementation HKOverlayContextSection

- (HKOverlayContextSection)initWithSectionTitle:(id)a3 overlayContextItems:(id)a4 accessoryButtonAction:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKOverlayContextSection;
  v12 = [(HKOverlayContextSection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_localizedSectionTitle, a3);
    objc_storeStrong(&v13->_overlayContextItems, a4);
    objc_storeStrong(&v13->_accessoryButtonAction, a5);
  }

  return v13;
}

- (HKOverlayContextSection)initWithSectionTitle:(id)a3 overlayContextItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HKOverlayContextSection;
  v9 = [(HKOverlayContextSection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedSectionTitle, a3);
    accessoryButtonAction = v10->_accessoryButtonAction;
    v10->_accessoryButtonAction = 0;

    objc_storeStrong(&v10->_overlayContextItems, a4);
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
  v5 = [(HKOverlayContextSection *)self overlayContextItems];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) contextItemForLastUpdate];
        if (!v10)
        {
          [(HKOverlayContextSection *)a2 items];
        }

        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)items
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomViewController.m" lineNumber:3435 description:@"Context items should not be nil"];
}

@end
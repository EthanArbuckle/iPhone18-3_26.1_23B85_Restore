@interface HUCCMosaicItem
- (HUCCMosaicItem)init;
- (HUCCMosaicItem)initWithBaseItem:(id)a3;
@end

@implementation HUCCMosaicItem

- (HUCCMosaicItem)initWithBaseItem:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HUCCMosaicItem;
  v5 = [(HUCCMosaicItem *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(HUCCMosaicItem *)v5 setBaseItem:v4];
    v7 = [(HUCCMosaicItem *)v6 baseItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = v6;
    if (isKindOfClass)
    {
      v10 = 0;
    }

    else
    {
      v11 = [(HUCCMosaicItem *)v6 baseItem];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      v9 = v6;
      if (v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HUCCMosaicItem *)v6 baseItem];
        v14 = [v13 conformsToProtocol:&unk_28251B0C8];

        v9 = v6;
        if (v14)
        {
          v10 = 2;
        }

        else
        {
          v15 = [(HUCCMosaicItem *)v6 baseItem];
          objc_opt_class();
          v16 = objc_opt_isKindOfClass();

          v9 = v6;
          if ((v16 & 1) == 0)
          {
            v18 = [(HUCCMosaicItem *)v6 baseItem];
            NSLog(&cfstr_UnknownMosaicB.isa, v18);

            goto LABEL_11;
          }

          v10 = 3;
        }
      }
    }

    [(HUCCMosaicItem *)v9 setItemType:v10];
  }

LABEL_11:

  return v6;
}

- (HUCCMosaicItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUCCMosaicItem.m" lineNumber:44 description:{@"%s is unavailable; use %@ instead", "-[HUCCMosaicItem init]", v5}];

  return 0;
}

@end
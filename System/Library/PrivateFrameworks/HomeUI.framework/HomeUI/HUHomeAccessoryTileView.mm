@interface HUHomeAccessoryTileView
- (HFServiceLikeItem)item;
- (HUHomeAccessoryTileView)initWithFrame:(CGRect)a3 categoryType:(id)a4;
- (HUHomeAccessoryTileView)initWithFrame:(CGRect)a3 item:(id)a4 iconOnlyTile:(BOOL)a5;
- (void)layoutSubviews;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUHomeAccessoryTileView

- (HUHomeAccessoryTileView)initWithFrame:(CGRect)a3 item:(id)a4 iconOnlyTile:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v51.receiver = self;
  v51.super_class = HUHomeAccessoryTileView;
  v12 = [(HUHomeAccessoryTileView *)&v51 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    v12->_iconOnlyTile = v5;
    v14 = objc_alloc_init(MEMORY[0x277D755E8]);
    homeView = v13->_homeView;
    v13->_homeView = v14;

    [(UIImageView *)v13->_homeView setContentMode:1];
    [(UIImageView *)v13->_homeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUHomeAccessoryTileView *)v13 addSubview:v13->_homeView];
    objc_initWeak(&location, v13);
    v16 = MEMORY[0x277D755B8];
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
    v19 = v18;
    v20 = [(HUHomeAccessoryTileView *)v13 traitCollection];
    v21 = [v16 hu_homeAppIconWithSize:objc_msgSend(v20 scale:"userInterfaceStyle") userInterfaceStyle:{256.0, 256.0, v19}];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __59__HUHomeAccessoryTileView_initWithFrame_item_iconOnlyTile___block_invoke;
    v48[3] = &unk_277DC1CF0;
    objc_copyWeak(&v49, &location);
    v22 = [v21 addSuccessBlock:v48];

    v23 = objc_alloc_init(HUGridServiceCell);
    tileView = v13->_tileView;
    v13->_tileView = v23;

    v25 = &unk_28251B0C8;
    v26 = v11;
    if ([v26 conformsToProtocol:v25])
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      v29 = objc_alloc(MEMORY[0x277D14C30]);
      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __59__HUHomeAccessoryTileView_initWithFrame_item_iconOnlyTile___block_invoke_2;
      v45 = &unk_277DB8F10;
      v46 = v28;
      v47 = v26;
      v30 = [v29 initWithSourceItem:v47 transformationBlock:&v42];
      [(HUGridServiceCell *)v13->_tileView setItem:v30, v42, v43, v44, v45];
    }

    else
    {
      [(HUGridServiceCell *)v13->_tileView setItem:v26];
    }

    v31 = [HUGridServiceCellLayoutOptions defaultOptionsForCellSizeSubclass:1];
    [v31 setContentColorStyle:1];
    [v31 setShowIconOnly:v5];
    [v31 setShowDescription:0];
    if (v5)
    {
      [v31 setCellCornerRadius:12.0];
    }

    [(HUGridCell *)v13->_tileView setLayoutOptions:v31];
    [(HUGridServiceCell *)v13->_tileView setShouldShowRoomName:0];
    [(HUGridServiceCell *)v13->_tileView setShouldColorDescription:0];
    v32 = [MEMORY[0x277D75348] systemBlackColor];
    [(HUGridServiceCell *)v13->_tileView setDefaultDescriptionColor:v32];

    v33 = [MEMORY[0x277D75348] blackColor];
    v34 = [v33 CGColor];
    v35 = [(HUGridServiceCell *)v13->_tileView layer];
    [v35 setShadowColor:v34];

    v36 = [(HUGridServiceCell *)v13->_tileView layer];
    [v36 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

    v37 = [(HUGridServiceCell *)v13->_tileView layer];
    LODWORD(v38) = 0.25;
    [v37 setShadowOpacity:v38];

    v39 = [(HUGridServiceCell *)v13->_tileView layer];
    [v39 setShadowRadius:10.0];

    v40 = [(HUGridServiceCell *)v13->_tileView layer];
    [v40 setMasksToBounds:0];

    [(HUHomeAccessoryTileView *)v13 updateUIWithAnimation:0];
    [(HUHomeAccessoryTileView *)v13 addSubview:v13->_tileView];

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __59__HUHomeAccessoryTileView_initWithFrame_item_iconOnlyTile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[52] setImage:v3];
}

id __59__HUHomeAccessoryTileView_initWithFrame_item_iconOnlyTile___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = objc_alloc(MEMORY[0x277D14AE0]);
  v5 = [*(a1 + 32) homeKitObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_opt_class();
    v7 = v5;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v7;
      if (v8)
      {
        goto LABEL_9;
      }

      v10 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
    }

    v9 = 0;
LABEL_9:

    v12 = [v9 hf_userFriendlyLocalizedCapitalizedDescription];
LABEL_19:

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_opt_class();
    v14 = v5;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v9 = v14;
      if (v15)
      {
        goto LABEL_18;
      }

      v16 = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v13, objc_opt_class()}];
    }

    v9 = 0;
LABEL_18:

    v18 = MEMORY[0x277CD1650];
    v19 = [v9 category];
    v20 = [v19 categoryType];
    v12 = [v18 hf_userFriendlyLocalizedCapitalizedDescription:v20];

    goto LABEL_19;
  }

  v12 = 0;
LABEL_21:

  v21 = [v4 initWithRawServiceName:v12 rawRoomName:0];
  [v3 na_safeSetObject:v21 forKey:*MEMORY[0x277D13F00]];
  [v3 setObject:&unk_282491E80 forKey:*MEMORY[0x277D14068]];
  objc_opt_class();
  v22 = *(a1 + 40);
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (v24)
  {
    v25 = [v24 accessory];
    v26 = [MEMORY[0x277D14AC0] iconDescriptorForAccessory:v25];
    [v3 setObject:v26 forKeyedSubscript:*MEMORY[0x277D13E88]];
  }

  return v3;
}

- (HUHomeAccessoryTileView)initWithFrame:(CGRect)a3 categoryType:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18[2] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D14B38];
  v10 = a4;
  v11 = [v9 alloc];
  v17[0] = *MEMORY[0x277D13E88];
  v12 = [MEMORY[0x277D14AC0] iconDescriptorForAccessoryCategoryOrServiceType:v10];

  v17[1] = *MEMORY[0x277D14068];
  v18[0] = v12;
  v18[1] = &unk_282491E80;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v11 initWithResults:v13];

  v15 = [(HUHomeAccessoryTileView *)self initWithFrame:v14 item:1 iconOnlyTile:x, y, width, height];
  return v15;
}

- (HFServiceLikeItem)item
{
  v2 = [(HUHomeAccessoryTileView *)self tileView];
  v3 = [v2 item];
  if ([v3 conformsToProtocol:&unk_28251B0C8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = [(HUHomeAccessoryTileView *)self tileView];
  v6 = [v5 item];
  v7 = [v6 updateWithOptions:MEMORY[0x277CBEC10]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HUHomeAccessoryTileView_updateUIWithAnimation___block_invoke;
  v9[3] = &unk_277DC1D18;
  objc_copyWeak(&v10, &location);
  v11 = a3;
  v8 = [v7 addCompletionBlock:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __49__HUHomeAccessoryTileView_updateUIWithAnimation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tileView];
  [v2 updateUIWithAnimation:*(a1 + 40)];
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = HUHomeAccessoryTileView;
  [(HUHomeAccessoryTileView *)&v39 layoutSubviews];
  [(HUHomeAccessoryTileView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(HUHomeAccessoryTileView *)self iconOnlyTile])
  {
    v11 = HURoundToScreenScale(v10 * 0.9);
    v12 = v10;
  }

  else
  {
    v12 = HURoundToScreenScale(v8 / 0.9);
    v11 = v8;
  }

  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  MidX = CGRectGetMidX(v40);
  v38 = HURoundToScreenScale(MidX - v11 * 0.5);
  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  MidY = CGRectGetMidY(v41);
  v37 = HURoundToScreenScale(MidY - v12 * 0.5);
  [(HUHomeAccessoryTileView *)self iconOnlyTile];
  v15 = HURoundToScreenScale(v11);
  v16 = HURoundToScreenScale(v15 / 1.08);
  v17 = [(HUHomeAccessoryTileView *)self homeView];
  [v17 setFrame:{v38, v37, v15, v16}];

  v18 = [(HUHomeAccessoryTileView *)self homeView];
  [v18 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(HUHomeAccessoryTileView *)self iconOnlyTile];
  v28 = 2.7;
  if (v27)
  {
    v28 = 2.48;
  }

  v29 = v12;
  v30 = HURoundToScreenScale(v11 / v28);
  v31 = HURoundToScreenScale(v30);
  v42.origin.x = v20;
  v42.origin.y = v22;
  v42.size.width = v24;
  v42.size.height = v26;
  v32 = CGRectGetMidX(v42);
  v33 = HURoundToScreenScale(v32 - v30 * 0.5);
  v43.origin.y = v37;
  v43.origin.x = v38;
  v43.size.width = v11;
  v43.size.height = v29;
  MaxY = CGRectGetMaxY(v43);
  v35 = HURoundToScreenScale(MaxY - v31);
  v36 = [(HUHomeAccessoryTileView *)self tileView];
  [v36 setFrame:{v33, v35, v30, v31}];
}

@end
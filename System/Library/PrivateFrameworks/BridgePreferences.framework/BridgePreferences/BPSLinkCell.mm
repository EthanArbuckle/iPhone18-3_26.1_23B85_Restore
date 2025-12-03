@interface BPSLinkCell
+ (double)scale;
+ (id)_iconCache;
+ (id)_mappedIconCache;
- (BPSLinkCell)init;
- (id)blankIcon;
- (id)getLazyIcon;
- (id)getLazyIconID;
- (void)setSpecifier:(id)specifier;
@end

@implementation BPSLinkCell

- (id)blankIcon
{
  v3 = *MEMORY[0x277D3FCE0];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.super.isa + v3));
  v5 = [WeakRetained propertyForKey:@"squareIconName"];
  v6 = v5;
  if (v5)
  {
    getLazyIconID = v5;
  }

  else
  {
    getLazyIconID = [(BPSLinkCell *)self getLazyIconID];
  }

  v8 = getLazyIconID;

  v9 = v8;
  v10 = +[BPSLinkCell _iconCache];
  v11 = [v10 objectForKey:v9];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = _LoadMMappedImage(v9);
  }

  blankIcon = v13;

  if (!blankIcon)
  {
    v20.receiver = self;
    v20.super_class = BPSLinkCell;
    blankIcon = [(PSTableCell *)&v20 blankIcon];
  }

  v15 = objc_loadWeakRetained((&self->super.super.super.super.super.super.super.isa + v3));
  v16 = [v15 propertyForKey:*MEMORY[0x277D3FFC8]];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    imageFlippedForRightToLeftLayoutDirection = [blankIcon imageFlippedForRightToLeftLayoutDirection];

    blankIcon = imageFlippedForRightToLeftLayoutDirection;
  }

  return blankIcon;
}

+ (id)_iconCache
{
  if (_iconCache_onceToken != -1)
  {
    +[BPSLinkCell _iconCache];
  }

  v3 = _iconCache___iconCache;

  return v3;
}

uint64_t __25__BPSLinkCell__iconCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _iconCache___iconCache;
  _iconCache___iconCache = v0;

  [_iconCache___iconCache setEvictsObjectsWhenApplicationEntersBackground:0];
  v2 = _iconCache___iconCache;

  return [v2 setCountLimit:50];
}

- (id)getLazyIconID
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [specifier propertyForKey:*MEMORY[0x277D40008]];

  return v3;
}

- (id)getLazyIcon
{
  v91 = *MEMORY[0x277D85DE8];
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__0;
  v80 = __Block_byref_object_dispose__0;
  v81 = 0;
  os_unfair_lock_lock(&self->_lazyIconPropertiesLock);
  squareIconName = [(BPSLazyLoadingIconProperties *)self->_lazyIconLoadingProperties squareIconName];
  lazyIconID = [(BPSLazyLoadingIconProperties *)self->_lazyIconLoadingProperties lazyIconID];
  flipsForRTL = [(BPSLazyLoadingIconProperties *)self->_lazyIconLoadingProperties flipsForRTL];
  identifier = [(BPSLazyLoadingIconProperties *)self->_lazyIconLoadingProperties identifier];
  bundlePath = [(BPSLazyLoadingIconProperties *)self->_lazyIconLoadingProperties bundlePath];
  os_unfair_lock_unlock(&self->_lazyIconPropertiesLock);
  if (squareIconName)
  {
    v6 = squareIconName;
  }

  else
  {
    v6 = lazyIconID;
  }

  v7 = v6;
  +[BPSLinkCell scale];
  v8 = @"@2x";
  if (v9 > 2.0)
  {
    v8 = @"@3x";
  }

  v10 = v8;
  if (v7)
  {
    v11 = +[BPSLinkCell _iconCache];
    v12 = [v11 objectForKey:v7];
    v13 = v77[5];
    v77[5] = v12;

    v14 = v77[5];
    if (v14)
    {
LABEL_50:
      v24 = v14;
      goto LABEL_51;
    }

    v15 = _LoadMMappedImage(v7);
    v16 = v15;
    if (v15)
    {
      if (flipsForRTL)
      {
        imageFlippedForRightToLeftLayoutDirection = [v15 imageFlippedForRightToLeftLayoutDirection];

        v16 = imageFlippedForRightToLeftLayoutDirection;
      }

      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __26__BPSLinkCell_getLazyIcon__block_invoke;
      block[3] = &unk_278D23858;
      objc_copyWeak(&v75, &location);
      v73 = v7;
      v65 = v16;
      v74 = v65;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v75);
      objc_destroyWeak(&location);
      if (squareIconName)
      {
LABEL_12:
        v18 = MEMORY[0x277D755B8];
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [squareIconName stringByAppendingString:v10];
        v21 = [mainBundle pathForResource:v20 ofType:@".png"];
        v22 = [v18 imageWithContentsOfFile:v21];

        if (v22)
        {
          if (!flipsForRTL)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v22 = [MEMORY[0x277D755B8] imageNamed:squareIconName];
          if (!flipsForRTL)
          {
LABEL_23:
            v33 = BPSCreateRoundedGizmoAppIconForSquareImage(v22);
            v34 = v77[5];
            v77[5] = v33;
            goto LABEL_30;
          }
        }

        imageFlippedForRightToLeftLayoutDirection2 = [v22 imageFlippedForRightToLeftLayoutDirection];

        v22 = imageFlippedForRightToLeftLayoutDirection2;
        goto LABEL_23;
      }
    }

    else
    {
      v65 = 0;
      if (squareIconName)
      {
        goto LABEL_12;
      }
    }

    if ([*MEMORY[0x277D76620] launchedToTest])
    {
      v93.width = 29.0;
      v93.height = 29.0;
      UIGraphicsBeginImageContextWithOptions(v93, 0, 0.0);
      v25 = MEMORY[0x277D75348];
      v26 = rand();
      v27 = rand();
      v28 = [v25 colorWithRed:(v26 % 255) / 255.0 green:(v27 % 255) / 255.0 blue:(rand() % 255) / 255.0 alpha:1.0];
      [v28 setFill];

      v94.origin.x = 0.0;
      v94.origin.y = 0.0;
      v94.size.width = 29.0;
      v94.size.height = 29.0;
      UIRectFill(v94);
      v29 = UIGraphicsGetImageFromCurrentImageContext();
      v30 = BPSCreateRoundedGizmoAppIconForSquareImage(v29);
      v31 = v77[5];
      v77[5] = v30;

      UIGraphicsEndImageContext();
      goto LABEL_31;
    }

    v35 = dispatch_semaphore_create(0);
    v82 = 0;
    v83 = &v82;
    v84 = 0x2050000000;
    v36 = getNanoResourceGrabberClass_softClass;
    v85 = getNanoResourceGrabberClass_softClass;
    if (!getNanoResourceGrabberClass_softClass)
    {
      *&location = MEMORY[0x277D85DD0];
      *(&location + 1) = 3221225472;
      v87 = __getNanoResourceGrabberClass_block_invoke;
      v88 = &unk_278D232F0;
      v89 = &v82;
      __getNanoResourceGrabberClass_block_invoke(&location);
      v36 = v83[3];
    }

    v37 = v36;
    _Block_object_dispose(&v82, 8);
    sharedInstance = [v36 sharedInstance];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    [traitCollection displayScale];
    if (v41 <= 2.0)
    {
      v42 = 47;
    }

    else
    {
      v42 = 48;
    }

    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __26__BPSLinkCell_getLazyIcon__block_invoke_2;
    v69[3] = &unk_278D23880;
    v71 = &v76;
    v22 = v35;
    v70 = v22;
    [sharedInstance getIconForBundleID:lazyIconID iconVariant:v42 block:v69 timeout:60.0];

    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
    v34 = v70;
LABEL_30:

LABEL_31:
    if (v77[5])
    {
      goto LABEL_37;
    }

    if ([identifier isEqualToString:@"VICTORY_ROW_ID"])
    {
      v43 = [MEMORY[0x277D755B8] imageNamed:@"VictoryIcon"];
      v44 = BPSCreateRoundedGizmoAppIconForSquareImage(v43);
    }

    else
    {
      if (![identifier isEqualToString:@"VICTORY_TRAINING_CLUB_ROW_ID"])
      {
        goto LABEL_37;
      }

      v43 = [MEMORY[0x277D755B8] imageNamed:@"NTCIcon"];
      v44 = BPSCreateRoundedGizmoAppIconForSquareImage(v43);
    }

    v45 = v77[5];
    v77[5] = v44;

LABEL_37:
    v46 = v77[5];
    if (v46)
    {
      v47 = v46;
      v48 = v7;
    }

    else
    {
      v49 = [MEMORY[0x277CCA8D8] bundleWithPath:bundlePath];
      if (v49)
      {
        v50 = [@"BridgeSettingsIcon" stringByAppendingString:v10];
        v51 = [v49 pathForResource:v50 ofType:@".png"];

        if (v51)
        {
          v52 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v51];
          v53 = v52;
          if (v52)
          {
            v54 = BPSCreateRoundedGizmoAppIconForSquareImage(v52);
            v55 = v77[5];
            v77[5] = v54;
          }
        }
      }

      v47 = v77[5];
      v56 = v7;
      if (!v47)
      {
        v62 = 0;
LABEL_49:

        v14 = v77[5];
        goto LABEL_50;
      }
    }

    v57 = +[BPSLinkCell _iconCache];
    [v57 setObject:v47 forKey:v7];

    v58 = v47;
    v59 = v7;
    if (_WriteMMappedImage_onceToken != -1)
    {
      [BPSLinkCell getLazyIcon];
    }

    v60 = dispatch_get_global_queue(-2, 0);
    *&location = MEMORY[0x277D85DD0];
    *(&location + 1) = 3221225472;
    v87 = ___WriteMMappedImage_block_invoke_135;
    v88 = &unk_278D23670;
    v89 = v58;
    v90 = v59;
    v61 = v59;
    v62 = v58;
    dispatch_async(v60, &location);

    v63 = +[BPSLinkCell _mappedIconCache];
    [v63 removeObjectForKey:v61];

    goto LABEL_49;
  }

  v23 = bps_utility_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(location) = 138412290;
    *(&location + 4) = 0;
    _os_log_impl(&dword_241E74000, v23, OS_LOG_TYPE_DEFAULT, "missing icon identifier. Skipping : %@", &location, 0xCu);
  }

  v24 = 0;
LABEL_51:

  _Block_object_dispose(&v76, 8);

  return v24;
}

void __20__BPSLinkCell_scale__block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  scale_scale = v0;
}

+ (double)scale
{
  if (scale_onceToken != -1)
  {
    +[BPSLinkCell scale];
  }

  return *&scale_scale;
}

void __26__BPSLinkCell_getLazyIcon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained specifier];

  v3 = WeakRetained;
  if (v2)
  {
    v4 = [WeakRetained specifier];
    v5 = [v4 propertyForKey:@"squareIconName"];

    v6 = [WeakRetained getLazyIconID];
    v7 = v6;
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    if ([*(a1 + 32) isEqualToString:v8])
    {
      [WeakRetained setIcon:*(a1 + 40)];
    }

    v3 = WeakRetained;
  }
}

- (BPSLinkCell)init
{
  v3.receiver = self;
  v3.super_class = BPSLinkCell;
  result = [(BPSLinkCell *)&v3 init];
  if (result)
  {
    result->_lazyIconPropertiesLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = BPSLinkCell;
  [(PSTableCell *)&v12 setSpecifier:specifierCopy];
  os_unfair_lock_lock(&self->_lazyIconPropertiesLock);
  if (specifierCopy)
  {
    v5 = objc_alloc_init(BPSLazyLoadingIconProperties);
    lazyIconLoadingProperties = self->_lazyIconLoadingProperties;
    self->_lazyIconLoadingProperties = v5;

    identifier = [specifierCopy identifier];
    [(BPSLazyLoadingIconProperties *)self->_lazyIconLoadingProperties setIdentifier:identifier];

    v8 = [specifierCopy propertyForKey:@"squareIconName"];
    [(BPSLazyLoadingIconProperties *)self->_lazyIconLoadingProperties setSquareIconName:v8];

    getLazyIconID = [(BPSLinkCell *)self getLazyIconID];
    [(BPSLazyLoadingIconProperties *)self->_lazyIconLoadingProperties setLazyIconID:getLazyIconID];

    v10 = [specifierCopy propertyForKey:*MEMORY[0x277D3FFC8]];
    -[BPSLazyLoadingIconProperties setFlipsForRTL:](self->_lazyIconLoadingProperties, "setFlipsForRTL:", [v10 BOOLValue]);

    v11 = [specifierCopy propertyForKey:*MEMORY[0x277D40000]];
    [(BPSLazyLoadingIconProperties *)self->_lazyIconLoadingProperties setBundlePath:v11];
  }

  else
  {
    v11 = self->_lazyIconLoadingProperties;
    self->_lazyIconLoadingProperties = 0;
  }

  os_unfair_lock_unlock(&self->_lazyIconPropertiesLock);
}

+ (id)_mappedIconCache
{
  if (_mappedIconCache_onceToken != -1)
  {
    +[BPSLinkCell _mappedIconCache];
  }

  v3 = _mappedIconCache___iconCache;

  return v3;
}

uint64_t __31__BPSLinkCell__mappedIconCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _mappedIconCache___iconCache;
  _mappedIconCache___iconCache = v0;

  [_mappedIconCache___iconCache setEvictsObjectsWhenApplicationEntersBackground:0];
  v2 = _mappedIconCache___iconCache;

  return [v2 setCountLimit:50];
}

void __26__BPSLinkCell_getLazyIcon__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end
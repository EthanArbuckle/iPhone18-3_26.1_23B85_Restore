@interface HULinkedApplicationStoreItem
- (HULinkedApplicationStoreItem)init;
- (HULinkedApplicationStoreItem)initWithStoreItem:(id)a3;
- (HULinkedApplicationStoreItem)initWithStoreItem:(id)a3 associatedAccessories:(id)a4;
- (id)_imageForSize:(CGSize)a3 fromArtwork:(id)a4;
- (id)_loadStoreIconWithArtwork:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HULinkedApplicationStoreItem

- (HULinkedApplicationStoreItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithStoreItem_);
  [v4 handleFailureInMethod:a2 object:self file:@"HULinkedApplicationItem.m" lineNumber:222 description:{@"%s is unavailable; use %@ instead", "-[HULinkedApplicationStoreItem init]", v5}];

  return 0;
}

- (HULinkedApplicationStoreItem)initWithStoreItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HULinkedApplicationStoreItem;
  v6 = [(HULinkedApplicationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeItem, a3);
  }

  return v7;
}

- (HULinkedApplicationStoreItem)initWithStoreItem:(id)a3 associatedAccessories:(id)a4
{
  v6 = a4;
  v7 = [(HULinkedApplicationStoreItem *)self initWithStoreItem:a3];
  v8 = v7;
  if (v7)
  {
    [(HULinkedApplicationItem *)v7 setAssociatedAccessories:v6];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HULinkedApplicationStoreItem *)self storeItem];
  v6 = [(HULinkedApplicationItem *)self associatedAccessories];
  v7 = [v4 initWithStoreItem:v5 associatedAccessories:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)bundleIdentifier
{
  v2 = [(HULinkedApplicationStoreItem *)self storeItem];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HULinkedApplicationStoreItem;
  v5 = [(HULinkedApplicationItem *)&v10 _subclass_updateWithOptions:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HULinkedApplicationStoreItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DB77C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __60__HULinkedApplicationStoreItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained storeItem];
  v6 = [v5 itemKind];
  v7 = [v6 isEqualToString:@"iosSoftware"];

  v36 = v3;
  if (v7)
  {
    v8 = [WeakRetained storeItem];
    v9 = [v8 bundleIdentifier];

    v10 = [WeakRetained storeItem];
    v11 = [v10 displayName];

    v12 = [WeakRetained storeItem];
    v13 = [v12 artistName];

    v14 = MEMORY[0x277CCABB0];
    v15 = [WeakRetained storeItem];
    [v15 userRating];
    v16 = [v14 numberWithFloat:?];

    v17 = [WeakRetained storeItem];
    v18 = [v17 offers];

    if ([v18 count])
    {
      v19 = [v18 firstObject];
      v20 = [v19 price];
      [v20 floatValue];
      v22 = v21;

      if (v22 == 0.0)
      {
        _HULocalizedStringWithDefaultValue(@"HULinkedApplicationPriceFree", @"HULinkedApplicationPriceFree", 1);
      }

      else
      {
        [v19 formattedPrice];
      }
      v23 = ;
    }

    else
    {
      v23 = 0;
    }

    v26 = [WeakRetained storeItem];
    v24 = [v26 productPageURL];

    v27 = [WeakRetained storeItem];
    v25 = [v27 artwork];

    v3 = v36;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v16 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v9 = 0;
  }

  if (v11 && v13 && v16 && v23 && v24 && v9)
  {
    [WeakRetained _loadStoreIconWithArtwork:v25];
    v28 = v35 = v9;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __60__HULinkedApplicationStoreItem__subclass_updateWithOptions___block_invoke_2;
    v38[3] = &unk_277DC0B68;
    v39 = v36;
    v40 = v24;
    v41 = v11;
    v42 = v13;
    v43 = v16;
    v44 = v23;
    [v28 flatMap:v38];
    v29 = v16;
    v30 = v13;
    v32 = v31 = v11;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __60__HULinkedApplicationStoreItem__subclass_updateWithOptions___block_invoke_3;
    v37[3] = &unk_277DB9858;
    v37[4] = WeakRetained;
    v33 = [v32 recover:v37];

    v11 = v31;
    v13 = v30;
    v16 = v29;

    v9 = v35;
    v3 = v36;
  }

  else
  {
    v33 = [WeakRetained _failedUpdateOutcome];
  }

  return v33;
}

id __60__HULinkedApplicationStoreItem__subclass_updateWithOptions___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 mutableCopy];
  [v5 setObject:a1[5] forKeyedSubscript:@"HFResultApplicationStoreURL"];
  [v5 setObject:a1[6] forKeyedSubscript:*MEMORY[0x277D13F60]];
  [v5 setObject:a1[7] forKeyedSubscript:@"HFResultApplicationPublisher"];
  [v5 setObject:a1[8] forKeyedSubscript:@"HFResultApplicationAverageRating"];
  [v5 setObject:a1[9] forKeyedSubscript:@"HFResultApplicationPrice"];
  [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"HFResultApplicationIsInstalled"];
  [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13E98]];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v6;
}

- (id)_loadStoreIconWithArtwork:(id)a3
{
  v4 = MEMORY[0x277D759A0];
  v5 = a3;
  v6 = [v4 mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [(HULinkedApplicationItem *)self _iconVariantForScale:v8];
  v10 = [(HULinkedApplicationStoreItem *)self _imageForSize:v5 fromArtwork:60.0, 60.0];

  v11 = [v10 URLWithHeight:(v8 * 60.0) width:(v8 * 60.0) cropStyle:*MEMORY[0x277CEE1D0] format:*MEMORY[0x277CEE1E0]];
  v12 = v11;
  if (v11)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__HULinkedApplicationStoreItem__loadStoreIconWithArtwork___block_invoke;
    aBlock[3] = &unk_277DC0B90;
    v23 = v11;
    v24 = v8;
    v25 = v9;
    v13 = _Block_copy(aBlock);
    v14 = MEMORY[0x277D2C900];
    v15 = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v16 = [v14 lazyFutureWithBlock:v13 scheduler:v15];
    v17 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v18 = [v16 reschedule:v17];
  }

  else
  {
    v19 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1008 userInfo:0];
    v18 = [v19 futureWithError:v20];
  }

  return v18;
}

void __58__HULinkedApplicationStoreItem__loadStoreIconWithArtwork___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v5 scale:*(a1 + 40)];
    [v9 CGImage];
    v10 = LICreateIconForImage();
    v11 = v9;
    if (v10)
    {
      v12 = v10;
      v11 = [MEMORY[0x277D755B8] imageWithCGImage:v10 scale:0 orientation:*(a1 + 40)];

      CFRelease(v12);
    }

    if (v11)
    {
      [v3 finishWithResult:v11];
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1008 userInfo:0];
      [v3 finishWithError:v13];
    }
  }

  else
  {
    [v3 finishWithError:v6];
  }
}

- (id)_imageForSize:(CGSize)a3 fromArtwork:(id)a4
{
  height = a3.height;
  width = a3.width;
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        [v14 width];
        v16 = v15;
        [v14 height];
        if (v16 == width && v17 == height)
        {
          v23 = v14;

          goto LABEL_28;
        }

        v19 = v17;
        if (!v9)
        {
          goto LABEL_21;
        }

        v20 = v11 < height;
        if (v17 <= v11)
        {
          v20 = 0;
        }

        if (v17 < v11)
        {
          v20 = v17 >= height;
        }

        if (v16 >= v10)
        {
          v21 = v16 > v10 && v10 < width;
        }

        else
        {
          v21 = v16 >= width;
        }

        if (v20 || v21)
        {
LABEL_21:
          v22 = v14;

          v9 = v22;
          v10 = v16;
          v11 = v19;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v9 = v9;
  v23 = v9;
LABEL_28:

  return v23;
}

@end
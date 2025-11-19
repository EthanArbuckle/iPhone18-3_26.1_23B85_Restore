@interface CAFMediaItem
- (CAFMediaItem)initWithArtist:(id)a3 ensemble:(id)a4 frequency:(unsigned int)a5 identifier:(id)a6 mediaItemCategory:(unsigned __int8)a7 mediaItemCategoryUserVisibleLabel:(id)a8 mediaItemGroup:(id)a9 mediaItemImageIdentifier:(id)a10 mediaItemName:(id)a11 mediaItemShortName:(id)a12 mediaItemType:(id)a13 multicast:(unsigned __int8)a14 title:(id)a15 userVisibleDescription:(id)a16;
- (CAFMediaItem)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFMediaItem

- (CAFMediaItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = CAFMediaItem;
  v5 = [(CAFMediaItem *)&v46 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"artist"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    artist = v5->_artist;
    v5->_artist = v7;

    objc_opt_class();
    v9 = [v4 objectForKey:@"ensemble"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    ensemble = v5->_ensemble;
    v5->_ensemble = v10;

    objc_opt_class();
    v12 = [v4 objectForKey:@"frequency"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v5->_frequency = [v13 unsignedIntValue];
    objc_opt_class();
    v14 = [v4 objectForKey:@"identifier"];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    identifier = v5->_identifier;
    v5->_identifier = v15;

    objc_opt_class();
    v17 = [v4 objectForKey:@"mediaItemCategory"];
    if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v5->_mediaItemCategory = [v18 unsignedCharValue];
    objc_opt_class();
    v19 = [v4 objectForKey:@"mediaItemCategoryUserVisibleLabel"];
    if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    mediaItemCategoryUserVisibleLabel = v5->_mediaItemCategoryUserVisibleLabel;
    v5->_mediaItemCategoryUserVisibleLabel = v20;

    objc_opt_class();
    v22 = [v4 objectForKey:@"mediaItemGroup"];
    if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    mediaItemGroup = v5->_mediaItemGroup;
    v5->_mediaItemGroup = v23;

    objc_opt_class();
    v25 = [v4 objectForKey:@"mediaItemImageIdentifier"];
    if (v25 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    mediaItemImageIdentifier = v5->_mediaItemImageIdentifier;
    v5->_mediaItemImageIdentifier = v26;

    objc_opt_class();
    v28 = [v4 objectForKey:@"mediaItemName"];
    if (v28 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    mediaItemName = v5->_mediaItemName;
    v5->_mediaItemName = v29;

    objc_opt_class();
    v31 = [v4 objectForKey:@"mediaItemShortName"];
    if (v31 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    mediaItemShortName = v5->_mediaItemShortName;
    v5->_mediaItemShortName = v32;

    objc_opt_class();
    v34 = [v4 objectForKey:@"mediaItemType"];
    if (v34 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    mediaItemType = v5->_mediaItemType;
    v5->_mediaItemType = v35;

    objc_opt_class();
    v37 = [v4 objectForKey:@"multicast"];
    if (v37 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v5->_multicast = [v38 unsignedCharValue];
    objc_opt_class();
    v39 = [v4 objectForKey:@"title"];
    if (v39 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    title = v5->_title;
    v5->_title = v40;

    objc_opt_class();
    v42 = [v4 objectForKey:@"userVisibleDescription"];
    if (v42 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    userVisibleDescription = v5->_userVisibleDescription;
    v5->_userVisibleDescription = v43;
  }

  return v5;
}

- (CAFMediaItem)initWithArtist:(id)a3 ensemble:(id)a4 frequency:(unsigned int)a5 identifier:(id)a6 mediaItemCategory:(unsigned __int8)a7 mediaItemCategoryUserVisibleLabel:(id)a8 mediaItemGroup:(id)a9 mediaItemImageIdentifier:(id)a10 mediaItemName:(id)a11 mediaItemShortName:(id)a12 mediaItemType:(id)a13 multicast:(unsigned __int8)a14 title:(id)a15 userVisibleDescription:(id)a16
{
  v37 = a3;
  v36 = a4;
  v29 = a6;
  v35 = a6;
  v34 = a8;
  v33 = a9;
  v32 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a15;
  v23 = a16;
  v38.receiver = self;
  v38.super_class = CAFMediaItem;
  v24 = [(CAFMediaItem *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_artist, a3);
    objc_storeStrong(&v25->_ensemble, a4);
    v25->_frequency = a5;
    objc_storeStrong(&v25->_identifier, v29);
    v25->_mediaItemCategory = a7;
    objc_storeStrong(&v25->_mediaItemCategoryUserVisibleLabel, a8);
    objc_storeStrong(&v25->_mediaItemGroup, a9);
    objc_storeStrong(&v25->_mediaItemImageIdentifier, a10);
    objc_storeStrong(&v25->_mediaItemName, a11);
    objc_storeStrong(&v25->_mediaItemShortName, a12);
    objc_storeStrong(&v25->_mediaItemType, a13);
    v25->_multicast = a14;
    objc_storeStrong(&v25->_title, a15);
    objc_storeStrong(&v25->_userVisibleDescription, a16);
  }

  return v25;
}

- (NSDictionary)dictionaryRepresentation
{
  v42[14] = *MEMORY[0x277D85DE8];
  v41[0] = @"artist";
  v3 = [(CAFMediaItem *)self artist];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v40 = v4;
  v32 = v3;
  v42[0] = v3;
  v41[1] = @"ensemble";
  v5 = [(CAFMediaItem *)self ensemble];
  v39 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v31 = v5;
  v42[1] = v5;
  v41[2] = @"frequency";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CAFMediaItem frequency](self, "frequency")}];
  v42[2] = v38;
  v41[3] = @"identifier";
  v6 = [(CAFMediaItem *)self identifier];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v30 = v6;
  v42[3] = v6;
  v41[4] = @"mediaItemCategory";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFMediaItem mediaItemCategory](self, "mediaItemCategory")}];
  v42[4] = v36;
  v41[5] = @"mediaItemCategoryUserVisibleLabel";
  v8 = [(CAFMediaItem *)self mediaItemCategoryUserVisibleLabel];
  v35 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v29 = v8;
  v42[5] = v8;
  v41[6] = @"mediaItemGroup";
  v9 = [(CAFMediaItem *)self mediaItemGroup];
  v34 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v28 = v9;
  v42[6] = v9;
  v41[7] = @"mediaItemImageIdentifier";
  v10 = [(CAFMediaItem *)self mediaItemImageIdentifier];
  v11 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v27 = v10;
  v42[7] = v10;
  v41[8] = @"mediaItemName";
  v12 = [(CAFMediaItem *)self mediaItemName];
  v13 = v12;
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v37 = v7;
  v26 = v12;
  v42[8] = v12;
  v41[9] = @"mediaItemShortName";
  v14 = [(CAFMediaItem *)self mediaItemShortName];
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v42[9] = v14;
  v41[10] = @"mediaItemType";
  v16 = [(CAFMediaItem *)self mediaItemType];
  v17 = v16;
  if (!v16)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v42[10] = v17;
  v41[11] = @"multicast";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFMediaItem multicast](self, "multicast")}];
  v42[11] = v18;
  v41[12] = @"title";
  v19 = [(CAFMediaItem *)self title];
  v20 = v19;
  if (!v19)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v42[12] = v20;
  v41[13] = @"userVisibleDescription";
  v21 = [(CAFMediaItem *)self userVisibleDescription];
  v22 = v21;
  if (!v21)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v42[13] = v22;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:14];
  if (!v21)
  {
  }

  if (!v19)
  {
  }

  if (!v16)
  {
  }

  if (!v15)
  {
  }

  if (!v13)
  {
  }

  if (!v11)
  {
  }

  if (!v34)
  {
  }

  if (!v35)
  {
  }

  if (!v37)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  v23 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v17 = [(CAFMediaItem *)self artist];
  v16 = [(CAFMediaItem *)self ensemble];
  v15 = [(CAFMediaItem *)self frequency];
  v20 = [(CAFMediaItem *)self identifier];
  v14 = [(CAFMediaItem *)self mediaItemCategory];
  v3 = [(CAFMediaItem *)self mediaItemCategoryUserVisibleLabel];
  v4 = [(CAFMediaItem *)self mediaItemGroup];
  v13 = [(CAFMediaItem *)self mediaItemImageIdentifier];
  v5 = [(CAFMediaItem *)self mediaItemName];
  v12 = [(CAFMediaItem *)self mediaItemShortName];
  v6 = [(CAFMediaItem *)self mediaItemType];
  v7 = [(CAFMediaItem *)self multicast];
  v8 = [(CAFMediaItem *)self title];
  v9 = [(CAFMediaItem *)self userVisibleDescription];
  v10 = [v19 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %u, %@: %@, %@: %hhu, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %hhu, %@: %@, %@: %@ }>", v18, self, @"artist", v17, @"ensemble", v16, @"frequency", v15, @"identifier", v20, @"mediaItemCategory", v14, @"mediaItemCategoryUserVisibleLabel", v3, @"mediaItemGroup", v4, @"mediaItemImageIdentifier", v13, @"mediaItemName", v5, @"mediaItemShortName", v12, @"mediaItemType", v6, @"multicast", v7, @"title", v8, @"userVisibleDescription", v9];

  return v10;
}

@end
@interface CAFMediaItem
- (CAFMediaItem)initWithArtist:(id)artist ensemble:(id)ensemble frequency:(unsigned int)frequency identifier:(id)identifier mediaItemCategory:(unsigned __int8)category mediaItemCategoryUserVisibleLabel:(id)label mediaItemGroup:(id)group mediaItemImageIdentifier:(id)self0 mediaItemName:(id)self1 mediaItemShortName:(id)self2 mediaItemType:(id)self3 multicast:(unsigned __int8)self4 title:(id)self5 userVisibleDescription:(id)self6;
- (CAFMediaItem)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFMediaItem

- (CAFMediaItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = CAFMediaItem;
  v5 = [(CAFMediaItem *)&v46 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"artist"];
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
    v9 = [dictionaryCopy objectForKey:@"ensemble"];
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
    v12 = [dictionaryCopy objectForKey:@"frequency"];
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
    v14 = [dictionaryCopy objectForKey:@"identifier"];
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
    v17 = [dictionaryCopy objectForKey:@"mediaItemCategory"];
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
    v19 = [dictionaryCopy objectForKey:@"mediaItemCategoryUserVisibleLabel"];
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
    v22 = [dictionaryCopy objectForKey:@"mediaItemGroup"];
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
    v25 = [dictionaryCopy objectForKey:@"mediaItemImageIdentifier"];
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
    v28 = [dictionaryCopy objectForKey:@"mediaItemName"];
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
    v31 = [dictionaryCopy objectForKey:@"mediaItemShortName"];
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
    v34 = [dictionaryCopy objectForKey:@"mediaItemType"];
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
    v37 = [dictionaryCopy objectForKey:@"multicast"];
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
    v39 = [dictionaryCopy objectForKey:@"title"];
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
    v42 = [dictionaryCopy objectForKey:@"userVisibleDescription"];
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

- (CAFMediaItem)initWithArtist:(id)artist ensemble:(id)ensemble frequency:(unsigned int)frequency identifier:(id)identifier mediaItemCategory:(unsigned __int8)category mediaItemCategoryUserVisibleLabel:(id)label mediaItemGroup:(id)group mediaItemImageIdentifier:(id)self0 mediaItemName:(id)self1 mediaItemShortName:(id)self2 mediaItemType:(id)self3 multicast:(unsigned __int8)self4 title:(id)self5 userVisibleDescription:(id)self6
{
  artistCopy = artist;
  ensembleCopy = ensemble;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  labelCopy = label;
  groupCopy = group;
  imageIdentifierCopy = imageIdentifier;
  nameCopy = name;
  shortNameCopy = shortName;
  typeCopy = type;
  titleCopy = title;
  descriptionCopy = description;
  v38.receiver = self;
  v38.super_class = CAFMediaItem;
  v24 = [(CAFMediaItem *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_artist, artist);
    objc_storeStrong(&v25->_ensemble, ensemble);
    v25->_frequency = frequency;
    objc_storeStrong(&v25->_identifier, identifierCopy);
    v25->_mediaItemCategory = category;
    objc_storeStrong(&v25->_mediaItemCategoryUserVisibleLabel, label);
    objc_storeStrong(&v25->_mediaItemGroup, group);
    objc_storeStrong(&v25->_mediaItemImageIdentifier, imageIdentifier);
    objc_storeStrong(&v25->_mediaItemName, name);
    objc_storeStrong(&v25->_mediaItemShortName, shortName);
    objc_storeStrong(&v25->_mediaItemType, type);
    v25->_multicast = multicast;
    objc_storeStrong(&v25->_title, title);
    objc_storeStrong(&v25->_userVisibleDescription, description);
  }

  return v25;
}

- (NSDictionary)dictionaryRepresentation
{
  v42[14] = *MEMORY[0x277D85DE8];
  v41[0] = @"artist";
  artist = [(CAFMediaItem *)self artist];
  v4 = artist;
  if (!artist)
  {
    artist = [MEMORY[0x277CBEB68] null];
  }

  v40 = v4;
  v32 = artist;
  v42[0] = artist;
  v41[1] = @"ensemble";
  ensemble = [(CAFMediaItem *)self ensemble];
  v39 = ensemble;
  if (!ensemble)
  {
    ensemble = [MEMORY[0x277CBEB68] null];
  }

  v31 = ensemble;
  v42[1] = ensemble;
  v41[2] = @"frequency";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CAFMediaItem frequency](self, "frequency")}];
  v42[2] = v38;
  v41[3] = @"identifier";
  identifier = [(CAFMediaItem *)self identifier];
  v7 = identifier;
  if (!identifier)
  {
    identifier = [MEMORY[0x277CBEB68] null];
  }

  v30 = identifier;
  v42[3] = identifier;
  v41[4] = @"mediaItemCategory";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFMediaItem mediaItemCategory](self, "mediaItemCategory")}];
  v42[4] = v36;
  v41[5] = @"mediaItemCategoryUserVisibleLabel";
  mediaItemCategoryUserVisibleLabel = [(CAFMediaItem *)self mediaItemCategoryUserVisibleLabel];
  v35 = mediaItemCategoryUserVisibleLabel;
  if (!mediaItemCategoryUserVisibleLabel)
  {
    mediaItemCategoryUserVisibleLabel = [MEMORY[0x277CBEB68] null];
  }

  v29 = mediaItemCategoryUserVisibleLabel;
  v42[5] = mediaItemCategoryUserVisibleLabel;
  v41[6] = @"mediaItemGroup";
  mediaItemGroup = [(CAFMediaItem *)self mediaItemGroup];
  v34 = mediaItemGroup;
  if (!mediaItemGroup)
  {
    mediaItemGroup = [MEMORY[0x277CBEB68] null];
  }

  v28 = mediaItemGroup;
  v42[6] = mediaItemGroup;
  v41[7] = @"mediaItemImageIdentifier";
  mediaItemImageIdentifier = [(CAFMediaItem *)self mediaItemImageIdentifier];
  v11 = mediaItemImageIdentifier;
  if (!mediaItemImageIdentifier)
  {
    mediaItemImageIdentifier = [MEMORY[0x277CBEB68] null];
  }

  v27 = mediaItemImageIdentifier;
  v42[7] = mediaItemImageIdentifier;
  v41[8] = @"mediaItemName";
  mediaItemName = [(CAFMediaItem *)self mediaItemName];
  v13 = mediaItemName;
  if (!mediaItemName)
  {
    mediaItemName = [MEMORY[0x277CBEB68] null];
  }

  v37 = v7;
  v26 = mediaItemName;
  v42[8] = mediaItemName;
  v41[9] = @"mediaItemShortName";
  mediaItemShortName = [(CAFMediaItem *)self mediaItemShortName];
  v15 = mediaItemShortName;
  if (!mediaItemShortName)
  {
    mediaItemShortName = [MEMORY[0x277CBEB68] null];
  }

  v42[9] = mediaItemShortName;
  v41[10] = @"mediaItemType";
  mediaItemType = [(CAFMediaItem *)self mediaItemType];
  null = mediaItemType;
  if (!mediaItemType)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v42[10] = null;
  v41[11] = @"multicast";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFMediaItem multicast](self, "multicast")}];
  v42[11] = v18;
  v41[12] = @"title";
  title = [(CAFMediaItem *)self title];
  null2 = title;
  if (!title)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v42[12] = null2;
  v41[13] = @"userVisibleDescription";
  userVisibleDescription = [(CAFMediaItem *)self userVisibleDescription];
  null3 = userVisibleDescription;
  if (!userVisibleDescription)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v42[13] = null3;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:14];
  if (!userVisibleDescription)
  {
  }

  if (!title)
  {
  }

  if (!mediaItemType)
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
  artist = [(CAFMediaItem *)self artist];
  ensemble = [(CAFMediaItem *)self ensemble];
  frequency = [(CAFMediaItem *)self frequency];
  identifier = [(CAFMediaItem *)self identifier];
  mediaItemCategory = [(CAFMediaItem *)self mediaItemCategory];
  mediaItemCategoryUserVisibleLabel = [(CAFMediaItem *)self mediaItemCategoryUserVisibleLabel];
  mediaItemGroup = [(CAFMediaItem *)self mediaItemGroup];
  mediaItemImageIdentifier = [(CAFMediaItem *)self mediaItemImageIdentifier];
  mediaItemName = [(CAFMediaItem *)self mediaItemName];
  mediaItemShortName = [(CAFMediaItem *)self mediaItemShortName];
  mediaItemType = [(CAFMediaItem *)self mediaItemType];
  multicast = [(CAFMediaItem *)self multicast];
  title = [(CAFMediaItem *)self title];
  userVisibleDescription = [(CAFMediaItem *)self userVisibleDescription];
  v10 = [v19 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %u, %@: %@, %@: %hhu, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %hhu, %@: %@, %@: %@ }>", v18, self, @"artist", artist, @"ensemble", ensemble, @"frequency", frequency, @"identifier", identifier, @"mediaItemCategory", mediaItemCategory, @"mediaItemCategoryUserVisibleLabel", mediaItemCategoryUserVisibleLabel, @"mediaItemGroup", mediaItemGroup, @"mediaItemImageIdentifier", mediaItemImageIdentifier, @"mediaItemName", mediaItemName, @"mediaItemShortName", mediaItemShortName, @"mediaItemType", mediaItemType, @"multicast", multicast, @"title", title, @"userVisibleDescription", userVisibleDescription];

  return v10;
}

@end
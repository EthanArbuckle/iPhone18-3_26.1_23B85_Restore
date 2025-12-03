@interface BLPurchaseDAAPItem
+ (id)item;
+ (id)itemWithItem:(id)item;
- (BLPurchaseDAAPItem)initWithCoder:(id)coder;
- (NSDate)expectedDate;
- (NSDictionary)additionalInfo;
- (NSNumber)hasVideo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)key;
- (int)mediaKind;
- (unint64_t)itemID;
- (void)encodeWithCoder:(id)coder;
- (void)freeze;
- (void)setObject:(id)object forKey:(id)key;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)thaw;
- (void)updateItemWithDictionary:(id)dictionary;
- (void)updateItemWithItem:(id)item;
@end

@implementation BLPurchaseDAAPItem

+ (id)item
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)itemWithItem:(id)item
{
  itemCopy = item;
  item = [self item];
  [item updateItemWithItem:itemCopy];

  return item;
}

- (id)description
{
  v3 = [(BLPurchaseDAAPItem *)self valueForKey:@"macAddress"];

  v38 = MEMORY[0x277CCACA8];
  if (v3)
  {
    ClassName = object_getClassName(self);
    v4 = [(BLPurchaseDAAPItem *)self valueForKey:@"supportsVideo"];
    v5 = @"AirPlay Video";
    v36 = v4;
    if (!v4)
    {
      v5 = @"AirPlay";
    }

    v32 = v5;
    name = [(BLPurchaseDAAPItem *)self name];
    v6 = [(BLPurchaseDAAPItem *)self valueForKey:@"isPlaying"];
    bOOLValue = [v6 BOOLValue];
    v8 = &stru_2853E2EC8;
    v9 = @"isPlaying, ";
    if (!bOOLValue)
    {
      v9 = &stru_2853E2EC8;
    }

    v31 = v9;
    v10 = [(BLPurchaseDAAPItem *)self valueForKey:@"selected"];
    bOOLValue2 = [v10 BOOLValue];
    if (bOOLValue2)
    {
      v12 = MEMORY[0x277CCACA8];
      v30 = [(BLPurchaseDAAPItem *)self valueForKey:@"volume"];
      [v30 floatValue];
      v8 = [v12 stringWithFormat:@"selected v:%f ", v13];
    }

    v22 = [(BLPurchaseDAAPItem *)self valueForKey:@"volume"];
    bOOLValue3 = [v22 BOOLValue];
    v24 = [(BLPurchaseDAAPItem *)self valueForKey:@"hasPassword"];
    bOOLValue4 = [v24 BOOLValue];
    v26 = [(BLPurchaseDAAPItem *)self valueForKey:@"macAddress"];
    v27 = [v38 stringWithFormat:@"<%s: %p> %@: %@, %@%@supportsVolume:%d, locked:%d, macAddress:%@", ClassName, self, v32, name, v31, v8, bOOLValue3, bOOLValue4, v26];

    if (bOOLValue2)
    {
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = BLPurchaseDAAPItem;
    v37 = [(BLPurchaseDAAPItem *)&v39 description];
    name2 = [(BLPurchaseDAAPItem *)self name];
    itemID = [(BLPurchaseDAAPItem *)self itemID];
    songalbum = [(BLPurchaseDAAPItem *)self songalbum];
    songartist = [(BLPurchaseDAAPItem *)self songartist];
    containerItemID = [(BLPurchaseDAAPItem *)self containerItemID];
    expectedDate = [(BLPurchaseDAAPItem *)self expectedDate];
    v19 = [(BLPurchaseDAAPItem *)self objectForKey:@"dmap.itemhidden"];
    v20 = [(BLPurchaseDAAPItem *)self valueForKey:@"booklets"];
    if (v20)
    {
      v21 = [(BLPurchaseDAAPItem *)self valueForKey:@"booklets"];
    }

    else
    {
      v21 = MEMORY[0x277CBEBF8];
    }

    additionalInfo = [(BLPurchaseDAAPItem *)self additionalInfo];
    v27 = [v38 stringWithFormat:@"%@ %@, %llu, %@, %@, containerItemID = %u, isPreorder = %u, isHidden = %@, Booklets = %@, additionalInfo = %@", v37, name2, itemID, songalbum, songartist, containerItemID, expectedDate != 0, v19, v21, additionalInfo];

    if (v20)
    {
    }
  }

  return v27;
}

- (NSDictionary)additionalInfo
{
  if (self->_isFrozen)
  {
    [(BLPurchaseDAAPItem *)self frozenInfo];
  }

  else
  {
    [(BLPurchaseDAAPItem *)self mutableInfo];
  }
  v2 = ;

  return v2;
}

- (void)freeze
{
  if (!self->_isFrozen)
  {
    self->_isFrozen = 1;
    v4 = MEMORY[0x277CBEAC0];
    mutableInfo = [(BLPurchaseDAAPItem *)self mutableInfo];
    v6 = [v4 dictionaryWithDictionary:mutableInfo];
    [(BLPurchaseDAAPItem *)self setFrozenInfo:v6];

    [(BLPurchaseDAAPItem *)self setMutableInfo:0];
  }
}

- (void)thaw
{
  if (self->_isFrozen)
  {
    self->_isFrozen = 0;
    v4 = MEMORY[0x277CBEB38];
    frozenInfo = [(BLPurchaseDAAPItem *)self frozenInfo];
    v6 = [v4 dictionaryWithDictionary:frozenInfo];
    [(BLPurchaseDAAPItem *)self setMutableInfo:v6];

    [(BLPurchaseDAAPItem *)self setFrozenInfo:0];
  }
}

- (NSNumber)hasVideo
{
  if (*&self->_itemFlags)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{1, v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)mediaKind
{
  additionalInfo = [(BLPurchaseDAAPItem *)self additionalInfo];
  v4 = [additionalInfo valueForKey:@"mediaKind"];

  if (!v4)
  {
    additionalInfo2 = [(BLPurchaseDAAPItem *)self additionalInfo];
    v4 = [additionalInfo2 valueForKey:@"com.apple.itunes.mediakind"];
  }

  intValue = [v4 intValue];

  return intValue;
}

- (unint64_t)itemID
{
  result = self->_itemID;
  if (!result)
  {
    additionalInfo = [(BLPurchaseDAAPItem *)self additionalInfo];
    v5 = [additionalInfo valueForKey:@"dmap.longitemid"];
    self->_itemID = [v5 unsignedLongLongValue];

    return self->_itemID;
  }

  return result;
}

- (NSDate)expectedDate
{
  additionalInfo = [(BLPurchaseDAAPItem *)self additionalInfo];
  v3 = [additionalInfo valueForKey:@"com.apple.itunes.preorder-expected-date"];

  return v3;
}

- (id)dictionaryRepresentation
{
  additionalInfo = [(BLPurchaseDAAPItem *)self additionalInfo];
  v4 = [additionalInfo mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  name = [(BLPurchaseDAAPItem *)self name];

  if (name)
  {
    name2 = [(BLPurchaseDAAPItem *)self name];
    [v4 setValue:name2 forKey:@"name"];
  }

  songalbum = [(BLPurchaseDAAPItem *)self songalbum];

  if (songalbum)
  {
    songalbum2 = [(BLPurchaseDAAPItem *)self songalbum];
    [v4 setValue:songalbum2 forKey:@"daap.songalbum"];
  }

  songartist = [(BLPurchaseDAAPItem *)self songartist];

  if (songartist)
  {
    songartist2 = [(BLPurchaseDAAPItem *)self songartist];
    [v4 setValue:songartist2 forKey:@"daap.songartist"];
  }

  songalbumartist = [(BLPurchaseDAAPItem *)self songalbumartist];

  if (songalbumartist)
  {
    songalbumartist2 = [(BLPurchaseDAAPItem *)self songalbumartist];
    [v4 setValue:songalbumartist2 forKey:@"daap.songalbumartist"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BLPurchaseDAAPItem itemID](self, "itemID")}];
  [v4 setValue:v13 forKey:@"dmap.itemid"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BLPurchaseDAAPItem songalbumid](self, "songalbumid")}];
  [v4 setValue:v14 forKey:@"daap.songalbumid"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[BLPurchaseDAAPItem containerItemID](self, "containerItemID")}];
  [v4 setValue:v15 forKey:@"dmap.containeritemid"];

  hasVideo = [(BLPurchaseDAAPItem *)self hasVideo];
  [v4 setValue:hasVideo forKey:@"hasVideo"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(BLPurchaseDAAPItem *)self name];
  v6 = [name copy];
  [v4 setName:v6];

  additionalInfo = [(BLPurchaseDAAPItem *)self additionalInfo];
  [v4 updateItemWithDictionary:additionalInfo];

  return v4;
}

- (BLPurchaseDAAPItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BLPurchaseDAAPItem *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"additionalInfo"];
    [(BLPurchaseDAAPItem *)v5 updateItemWithDictionary:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(BLPurchaseDAAPItem *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  additionalInfo = [(BLPurchaseDAAPItem *)self additionalInfo];
  [coderCopy encodeObject:additionalInfo forKey:@"additionalInfo"];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"daap.songartist"])
  {
    songartist = [(BLPurchaseDAAPItem *)self songartist];
LABEL_7:
    v6 = songartist;
    goto LABEL_8;
  }

  if ([keyCopy isEqualToString:@"daap.songalbumid"])
  {
    songartist = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", -[BLPurchaseDAAPItem songalbumid](self, "songalbumid")];
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"daap.songalbum"])
  {
    songartist = [(BLPurchaseDAAPItem *)self songalbum];
    goto LABEL_7;
  }

  additionalInfo = [(BLPurchaseDAAPItem *)self additionalInfo];
  v6 = [additionalInfo objectForKey:keyCopy];

LABEL_8:

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (!self->_isFrozen)
  {
    mutableInfo = [(BLPurchaseDAAPItem *)self mutableInfo];
    if (objectCopy)
    {

      if (!mutableInfo)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [(BLPurchaseDAAPItem *)self setMutableInfo:dictionary];
      }

      mutableInfo = [(BLPurchaseDAAPItem *)self mutableInfo];
      [mutableInfo setObject:objectCopy forKey:keyCopy];
    }

    else
    {
      [mutableInfo removeObjectForKey:keyCopy];
    }
  }
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  [(BLPurchaseDAAPItem *)self willChangeValueForKey:keyCopy];
  [(BLPurchaseDAAPItem *)self setObject:valueCopy forKey:keyCopy];

  [(BLPurchaseDAAPItem *)self didChangeValueForKey:keyCopy];
}

- (void)updateItemWithItem:(id)item
{
  itemCopy = item;
  if (!self->_isFrozen)
  {
    v8 = itemCopy;
    name = [itemCopy name];

    if (name)
    {
      name2 = [v8 name];
      [(BLPurchaseDAAPItem *)self setName:name2];
    }

    additionalInfo = [v8 additionalInfo];
    [(BLPurchaseDAAPItem *)self updateItemWithDictionary:additionalInfo];

    itemCopy = v8;
  }
}

- (void)updateItemWithDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (!self->_isFrozen)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [dictionaryCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v5 objectForKeyedSubscript:v11];
          [(BLPurchaseDAAPItem *)self setValue:v12 forKey:v11];
        }

        v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end
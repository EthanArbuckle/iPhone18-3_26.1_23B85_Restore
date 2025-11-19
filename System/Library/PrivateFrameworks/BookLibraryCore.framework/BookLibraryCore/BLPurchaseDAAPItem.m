@interface BLPurchaseDAAPItem
+ (id)item;
+ (id)itemWithItem:(id)a3;
- (BLPurchaseDAAPItem)initWithCoder:(id)a3;
- (NSDate)expectedDate;
- (NSDictionary)additionalInfo;
- (NSNumber)hasVideo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)a3;
- (int)mediaKind;
- (unint64_t)itemID;
- (void)encodeWithCoder:(id)a3;
- (void)freeze;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)thaw;
- (void)updateItemWithDictionary:(id)a3;
- (void)updateItemWithItem:(id)a3;
@end

@implementation BLPurchaseDAAPItem

+ (id)item
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)itemWithItem:(id)a3
{
  v4 = a3;
  v5 = [a1 item];
  [v5 updateItemWithItem:v4];

  return v5;
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
    v34 = [(BLPurchaseDAAPItem *)self name];
    v6 = [(BLPurchaseDAAPItem *)self valueForKey:@"isPlaying"];
    v7 = [v6 BOOLValue];
    v8 = &stru_2853E2EC8;
    v9 = @"isPlaying, ";
    if (!v7)
    {
      v9 = &stru_2853E2EC8;
    }

    v31 = v9;
    v10 = [(BLPurchaseDAAPItem *)self valueForKey:@"selected"];
    v11 = [v10 BOOLValue];
    if (v11)
    {
      v12 = MEMORY[0x277CCACA8];
      v30 = [(BLPurchaseDAAPItem *)self valueForKey:@"volume"];
      [v30 floatValue];
      v8 = [v12 stringWithFormat:@"selected v:%f ", v13];
    }

    v22 = [(BLPurchaseDAAPItem *)self valueForKey:@"volume"];
    v23 = [v22 BOOLValue];
    v24 = [(BLPurchaseDAAPItem *)self valueForKey:@"hasPassword"];
    v25 = [v24 BOOLValue];
    v26 = [(BLPurchaseDAAPItem *)self valueForKey:@"macAddress"];
    v27 = [v38 stringWithFormat:@"<%s: %p> %@: %@, %@%@supportsVolume:%d, locked:%d, macAddress:%@", ClassName, self, v32, v34, v31, v8, v23, v25, v26];

    if (v11)
    {
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = BLPurchaseDAAPItem;
    v37 = [(BLPurchaseDAAPItem *)&v39 description];
    v14 = [(BLPurchaseDAAPItem *)self name];
    v35 = [(BLPurchaseDAAPItem *)self itemID];
    v15 = [(BLPurchaseDAAPItem *)self songalbum];
    v16 = [(BLPurchaseDAAPItem *)self songartist];
    v17 = [(BLPurchaseDAAPItem *)self containerItemID];
    v18 = [(BLPurchaseDAAPItem *)self expectedDate];
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

    v28 = [(BLPurchaseDAAPItem *)self additionalInfo];
    v27 = [v38 stringWithFormat:@"%@ %@, %llu, %@, %@, containerItemID = %u, isPreorder = %u, isHidden = %@, Booklets = %@, additionalInfo = %@", v37, v14, v35, v15, v16, v17, v18 != 0, v19, v21, v28];

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
    v5 = [(BLPurchaseDAAPItem *)self mutableInfo];
    v6 = [v4 dictionaryWithDictionary:v5];
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
    v5 = [(BLPurchaseDAAPItem *)self frozenInfo];
    v6 = [v4 dictionaryWithDictionary:v5];
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
  v3 = [(BLPurchaseDAAPItem *)self additionalInfo];
  v4 = [v3 valueForKey:@"mediaKind"];

  if (!v4)
  {
    v5 = [(BLPurchaseDAAPItem *)self additionalInfo];
    v4 = [v5 valueForKey:@"com.apple.itunes.mediakind"];
  }

  v6 = [v4 intValue];

  return v6;
}

- (unint64_t)itemID
{
  result = self->_itemID;
  if (!result)
  {
    v4 = [(BLPurchaseDAAPItem *)self additionalInfo];
    v5 = [v4 valueForKey:@"dmap.longitemid"];
    self->_itemID = [v5 unsignedLongLongValue];

    return self->_itemID;
  }

  return result;
}

- (NSDate)expectedDate
{
  v2 = [(BLPurchaseDAAPItem *)self additionalInfo];
  v3 = [v2 valueForKey:@"com.apple.itunes.preorder-expected-date"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [(BLPurchaseDAAPItem *)self additionalInfo];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v5 = [(BLPurchaseDAAPItem *)self name];

  if (v5)
  {
    v6 = [(BLPurchaseDAAPItem *)self name];
    [v4 setValue:v6 forKey:@"name"];
  }

  v7 = [(BLPurchaseDAAPItem *)self songalbum];

  if (v7)
  {
    v8 = [(BLPurchaseDAAPItem *)self songalbum];
    [v4 setValue:v8 forKey:@"daap.songalbum"];
  }

  v9 = [(BLPurchaseDAAPItem *)self songartist];

  if (v9)
  {
    v10 = [(BLPurchaseDAAPItem *)self songartist];
    [v4 setValue:v10 forKey:@"daap.songartist"];
  }

  v11 = [(BLPurchaseDAAPItem *)self songalbumartist];

  if (v11)
  {
    v12 = [(BLPurchaseDAAPItem *)self songalbumartist];
    [v4 setValue:v12 forKey:@"daap.songalbumartist"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BLPurchaseDAAPItem itemID](self, "itemID")}];
  [v4 setValue:v13 forKey:@"dmap.itemid"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BLPurchaseDAAPItem songalbumid](self, "songalbumid")}];
  [v4 setValue:v14 forKey:@"daap.songalbumid"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[BLPurchaseDAAPItem containerItemID](self, "containerItemID")}];
  [v4 setValue:v15 forKey:@"dmap.containeritemid"];

  v16 = [(BLPurchaseDAAPItem *)self hasVideo];
  [v4 setValue:v16 forKey:@"hasVideo"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(BLPurchaseDAAPItem *)self name];
  v6 = [v5 copy];
  [v4 setName:v6];

  v7 = [(BLPurchaseDAAPItem *)self additionalInfo];
  [v4 updateItemWithDictionary:v7];

  return v4;
}

- (BLPurchaseDAAPItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLPurchaseDAAPItem *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"additionalInfo"];
    [(BLPurchaseDAAPItem *)v5 updateItemWithDictionary:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLPurchaseDAAPItem *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(BLPurchaseDAAPItem *)self additionalInfo];
  [v4 encodeObject:v6 forKey:@"additionalInfo"];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"daap.songartist"])
  {
    v5 = [(BLPurchaseDAAPItem *)self songartist];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"daap.songalbumid"])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", -[BLPurchaseDAAPItem songalbumid](self, "songalbumid")];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"daap.songalbum"])
  {
    v5 = [(BLPurchaseDAAPItem *)self songalbum];
    goto LABEL_7;
  }

  v8 = [(BLPurchaseDAAPItem *)self additionalInfo];
  v6 = [v8 objectForKey:v4];

LABEL_8:

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (!self->_isFrozen)
  {
    v7 = [(BLPurchaseDAAPItem *)self mutableInfo];
    if (v9)
    {

      if (!v7)
      {
        v8 = [MEMORY[0x277CBEB38] dictionary];
        [(BLPurchaseDAAPItem *)self setMutableInfo:v8];
      }

      v7 = [(BLPurchaseDAAPItem *)self mutableInfo];
      [v7 setObject:v9 forKey:v6];
    }

    else
    {
      [v7 removeObjectForKey:v6];
    }
  }
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(BLPurchaseDAAPItem *)self willChangeValueForKey:v7];
  [(BLPurchaseDAAPItem *)self setObject:v6 forKey:v7];

  [(BLPurchaseDAAPItem *)self didChangeValueForKey:v7];
}

- (void)updateItemWithItem:(id)a3
{
  v4 = a3;
  if (!self->_isFrozen)
  {
    v8 = v4;
    v5 = [v4 name];

    if (v5)
    {
      v6 = [v8 name];
      [(BLPurchaseDAAPItem *)self setName:v6];
    }

    v7 = [v8 additionalInfo];
    [(BLPurchaseDAAPItem *)self updateItemWithDictionary:v7];

    v4 = v8;
  }
}

- (void)updateItemWithDictionary:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self->_isFrozen)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v5 objectForKeyedSubscript:v11];
          [(BLPurchaseDAAPItem *)self setValue:v12 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end
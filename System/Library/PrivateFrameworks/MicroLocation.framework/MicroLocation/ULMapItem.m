@interface ULMapItem
+ (BOOL)_verifyInput:(id)a3;
+ (BOOL)_verifyInput:(id)a3 labels:(id)a4;
- (BOOL)isEqual:(id)a3;
- (ULMapItem)initWithCoder:(id)a3;
- (ULMapItem)initWithName:(id)a3 labels:(id)a4 mapItemType:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)contextLayerEnum;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULMapItem

- (ULMapItem)initWithName:(id)a3 labels:(id)a4 mapItemType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = ULMapItem;
  v11 = [(ULMapItem *)&v20 init];
  if (v11)
  {
    v12 = [MEMORY[0x277D28860] ul_cachedInstanceForNSString:v8];
    [(ULMapItem *)v11 setName:v12];

    [(ULMapItem *)v11 setLabels:v9];
    v13 = [MEMORY[0x277D28860] ul_cachedInstanceForNSString:v10];
    [(ULMapItem *)v11 setMapItemType:v13];

    v14 = MEMORY[0x277D28860];
    v15 = [(ULMapItem *)v11 labels];
    v16 = [v15 firstObject];
    v17 = [v16 contextLayer];
    v18 = [v14 ul_cachedInstanceForNSString:v17];
    [(ULMapItem *)v11 setContextLayer:v18];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ULMapItem *)self name];
  v6 = [(ULMapItem *)self labels];
  v7 = [(ULMapItem *)self mapItemType];
  v8 = [v4 initWithName:v5 labels:v6 mapItemType:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_labels forKey:@"labels"];
  [v5 encodeObject:self->_mapItemType forKey:@"mapItemType"];
  [v5 encodeObject:self->_contextLayer forKey:@"contextLayer"];
}

- (ULMapItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ULMapItem;
  v5 = [(ULMapItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 ul_decodeAndCacheNSStringForKey:@"name"];
    [(ULMapItem *)v5 setName:v6];

    v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"labels"];
    if (v7)
    {
      v8 = objc_opt_self();

      labels = v5->_labels;
      v5->_labels = v8;

      v10 = [v4 ul_decodeAndCacheNSStringForKey:@"mapItemType"];
      [(ULMapItem *)v5 setMapItemType:v10];

      v11 = [v4 ul_decodeAndCacheNSStringForKey:@"contextLayer"];
      [(ULMapItem *)v5 setContextLayer:v11];

      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@: ", v5];

  v7 = [(ULMapItem *)self name];
  [v6 appendFormat:@", name: %@", v7];

  v8 = [(ULMapItem *)self labels];
  [v6 appendFormat:@", labels: %@", v8];

  v9 = [(ULMapItem *)self mapItemType];
  [v6 appendFormat:@", mapItemType: %@", v9];

  v10 = [(ULMapItem *)self contextLayer];
  [v6 appendFormat:@", contextLayer: %@", v10];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = [(ULMapItem *)self name];
  v6 = [v4 name];
  if ([v5 isEqual:v6])
  {
  }

  else
  {
    v7 = [(ULMapItem *)self name];
    v8 = [v4 name];

    if (v7 != v8)
    {
      goto LABEL_11;
    }
  }

  v9 = [(ULMapItem *)self labels];
  v10 = [v4 labels];
  if ([v9 isEqual:v10])
  {
  }

  else
  {
    v11 = [(ULMapItem *)self labels];
    v12 = [v4 labels];

    if (v11 != v12)
    {
      goto LABEL_11;
    }
  }

  v13 = [(ULMapItem *)self mapItemType];
  v14 = [v4 mapItemType];
  if ([v13 isEqual:v14])
  {

    goto LABEL_13;
  }

  v15 = [(ULMapItem *)self mapItemType];
  v16 = [v4 mapItemType];

  if (v15 != v16)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v19 = [(ULMapItem *)self contextLayer];
  v20 = [v4 contextLayer];
  if ([v19 isEqual:v20])
  {

    v17 = 1;
  }

  else
  {
    v21 = [(ULMapItem *)self contextLayer];
    v22 = [v4 contextLayer];
    v17 = v21 == v22;
  }

LABEL_12:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSArray *)self->_labels hash];
  v5 = [(NSString *)self->_mapItemType hash];
  return v3 ^ v4 ^ v5 ^ [(NSString *)self->_contextLayer hash]^ 0x1F;
}

- (unint64_t)contextLayerEnum
{
  v2 = [(ULMapItem *)self contextLayer];
  v3 = [ULContextLayerUtilities contextLayerEnumFromStringType:v2];

  return v3;
}

+ (BOOL)_verifyInput:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"ULMapItemTypeClientGenerated";
  v8[1] = @"ULMapItemTypeMiLoGenerated";
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v8 count:2];
  LOBYTE(v3) = [v5 containsObject:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (BOOL)_verifyInput:(id)a3 labels:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 firstObject];
  if (v7)
  {
    v8 = [v6 firstObject];
    v9 = [v8 contextLayer];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      v23 = v6;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 name];
          v17 = [v16 isEqual:v5];

          if (v17)
          {
            v18 = [v15 contextLayer];
            v19 = [v18 isEqualToString:v9];

            if (v19)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                continue;
              }
            }
          }

          v20 = 0;
          v6 = v23;
          goto LABEL_16;
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v20 = 1;
        v6 = v23;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 1;
    }

LABEL_16:
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

@end
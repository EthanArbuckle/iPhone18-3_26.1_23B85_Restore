@interface ULMapItem
+ (BOOL)_verifyInput:(id)input;
+ (BOOL)_verifyInput:(id)input labels:(id)labels;
- (BOOL)isEqual:(id)equal;
- (ULMapItem)initWithCoder:(id)coder;
- (ULMapItem)initWithName:(id)name labels:(id)labels mapItemType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)contextLayerEnum;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULMapItem

- (ULMapItem)initWithName:(id)name labels:(id)labels mapItemType:(id)type
{
  nameCopy = name;
  labelsCopy = labels;
  typeCopy = type;
  v20.receiver = self;
  v20.super_class = ULMapItem;
  v11 = [(ULMapItem *)&v20 init];
  if (v11)
  {
    v12 = [MEMORY[0x277D28860] ul_cachedInstanceForNSString:nameCopy];
    [(ULMapItem *)v11 setName:v12];

    [(ULMapItem *)v11 setLabels:labelsCopy];
    v13 = [MEMORY[0x277D28860] ul_cachedInstanceForNSString:typeCopy];
    [(ULMapItem *)v11 setMapItemType:v13];

    v14 = MEMORY[0x277D28860];
    labels = [(ULMapItem *)v11 labels];
    firstObject = [labels firstObject];
    contextLayer = [firstObject contextLayer];
    v18 = [v14 ul_cachedInstanceForNSString:contextLayer];
    [(ULMapItem *)v11 setContextLayer:v18];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  name = [(ULMapItem *)self name];
  labels = [(ULMapItem *)self labels];
  mapItemType = [(ULMapItem *)self mapItemType];
  v8 = [v4 initWithName:name labels:labels mapItemType:mapItemType];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_labels forKey:@"labels"];
  [coderCopy encodeObject:self->_mapItemType forKey:@"mapItemType"];
  [coderCopy encodeObject:self->_contextLayer forKey:@"contextLayer"];
}

- (ULMapItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ULMapItem;
  v5 = [(ULMapItem *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy ul_decodeAndCacheNSStringForKey:@"name"];
    [(ULMapItem *)v5 setName:v6];

    v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"labels"];
    if (v7)
    {
      v8 = objc_opt_self();

      labels = v5->_labels;
      v5->_labels = v8;

      v10 = [coderCopy ul_decodeAndCacheNSStringForKey:@"mapItemType"];
      [(ULMapItem *)v5 setMapItemType:v10];

      v11 = [coderCopy ul_decodeAndCacheNSStringForKey:@"contextLayer"];
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

  name = [(ULMapItem *)self name];
  [v6 appendFormat:@", name: %@", name];

  labels = [(ULMapItem *)self labels];
  [v6 appendFormat:@", labels: %@", labels];

  mapItemType = [(ULMapItem *)self mapItemType];
  [v6 appendFormat:@", mapItemType: %@", mapItemType];

  contextLayer = [(ULMapItem *)self contextLayer];
  [v6 appendFormat:@", contextLayer: %@", contextLayer];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  name = [(ULMapItem *)self name];
  name2 = [equalCopy name];
  if ([name isEqual:name2])
  {
  }

  else
  {
    name3 = [(ULMapItem *)self name];
    name4 = [equalCopy name];

    if (name3 != name4)
    {
      goto LABEL_11;
    }
  }

  labels = [(ULMapItem *)self labels];
  labels2 = [equalCopy labels];
  if ([labels isEqual:labels2])
  {
  }

  else
  {
    labels3 = [(ULMapItem *)self labels];
    labels4 = [equalCopy labels];

    if (labels3 != labels4)
    {
      goto LABEL_11;
    }
  }

  mapItemType = [(ULMapItem *)self mapItemType];
  mapItemType2 = [equalCopy mapItemType];
  if ([mapItemType isEqual:mapItemType2])
  {

    goto LABEL_13;
  }

  mapItemType3 = [(ULMapItem *)self mapItemType];
  mapItemType4 = [equalCopy mapItemType];

  if (mapItemType3 != mapItemType4)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

LABEL_13:
  contextLayer = [(ULMapItem *)self contextLayer];
  contextLayer2 = [equalCopy contextLayer];
  if ([contextLayer isEqual:contextLayer2])
  {

    v17 = 1;
  }

  else
  {
    contextLayer3 = [(ULMapItem *)self contextLayer];
    contextLayer4 = [equalCopy contextLayer];
    v17 = contextLayer3 == contextLayer4;
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
  contextLayer = [(ULMapItem *)self contextLayer];
  v3 = [ULContextLayerUtilities contextLayerEnumFromStringType:contextLayer];

  return v3;
}

+ (BOOL)_verifyInput:(id)input
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"ULMapItemTypeClientGenerated";
  v8[1] = @"ULMapItemTypeMiLoGenerated";
  v3 = MEMORY[0x277CBEA60];
  inputCopy = input;
  v5 = [v3 arrayWithObjects:v8 count:2];
  LOBYTE(v3) = [v5 containsObject:inputCopy];

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (BOOL)_verifyInput:(id)input labels:(id)labels
{
  v29 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  labelsCopy = labels;
  firstObject = [labelsCopy firstObject];
  if (firstObject)
  {
    firstObject2 = [labelsCopy firstObject];
    contextLayer = [firstObject2 contextLayer];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = labelsCopy;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      v23 = labelsCopy;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          name = [v15 name];
          v17 = [name isEqual:inputCopy];

          if (v17)
          {
            contextLayer2 = [v15 contextLayer];
            v19 = [contextLayer2 isEqualToString:contextLayer];

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
          labelsCopy = v23;
          goto LABEL_16;
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v20 = 1;
        labelsCopy = v23;
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
@interface ULLabelKey
- (BOOL)isEqual:(id)equal;
- (ULLabelKey)initWithName:(id)name contextLayer:(unint64_t)layer mapItemType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation ULLabelKey

- (ULLabelKey)initWithName:(id)name contextLayer:(unint64_t)layer mapItemType:(id)type
{
  nameCopy = name;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = ULLabelKey;
  v10 = [(ULLabelKey *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(ULLabelKey *)v10 setName:nameCopy];
    [(ULLabelKey *)v11 setContextLayer:layer];
    [(ULLabelKey *)v11 setMapItemType:typeCopy];
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  name = [(ULLabelKey *)self name];
  name2 = [equalCopy name];
  if ([name isEqual:name2])
  {
  }

  else
  {
    name3 = [(ULLabelKey *)self name];
    name4 = [equalCopy name];

    if (name3 != name4)
    {
LABEL_8:
      v12 = 0;
      goto LABEL_9;
    }
  }

  contextLayer = [(ULLabelKey *)self contextLayer];
  if (contextLayer != [equalCopy contextLayer])
  {
    goto LABEL_8;
  }

  mapItemType = [(ULLabelKey *)self mapItemType];
  mapItemType2 = [equalCopy mapItemType];
  if ([mapItemType isEqual:mapItemType2])
  {

    v12 = 1;
  }

  else
  {
    mapItemType3 = [(ULLabelKey *)self mapItemType];
    mapItemType4 = [equalCopy mapItemType];
    v12 = mapItemType3 == mapItemType4;
  }

LABEL_9:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  contextLayer = self->_contextLayer;
  return v3 ^ contextLayer ^ [(NSString *)self->_mapItemType hash]^ 0x1F;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  name = [(ULLabelKey *)self name];
  contextLayer = [(ULLabelKey *)self contextLayer];
  mapItemType = [(ULLabelKey *)self mapItemType];
  v8 = [v4 initWithName:name contextLayer:contextLayer mapItemType:mapItemType];

  return v8;
}

@end
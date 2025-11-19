@interface ULLabelKey
- (BOOL)isEqual:(id)a3;
- (ULLabelKey)initWithName:(id)a3 contextLayer:(unint64_t)a4 mapItemType:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation ULLabelKey

- (ULLabelKey)initWithName:(id)a3 contextLayer:(unint64_t)a4 mapItemType:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ULLabelKey;
  v10 = [(ULLabelKey *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(ULLabelKey *)v10 setName:v8];
    [(ULLabelKey *)v11 setContextLayer:a4];
    [(ULLabelKey *)v11 setMapItemType:v9];
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [(ULLabelKey *)self name];
  v6 = [v4 name];
  if ([v5 isEqual:v6])
  {
  }

  else
  {
    v7 = [(ULLabelKey *)self name];
    v8 = [v4 name];

    if (v7 != v8)
    {
LABEL_8:
      v12 = 0;
      goto LABEL_9;
    }
  }

  v9 = [(ULLabelKey *)self contextLayer];
  if (v9 != [v4 contextLayer])
  {
    goto LABEL_8;
  }

  v10 = [(ULLabelKey *)self mapItemType];
  v11 = [v4 mapItemType];
  if ([v10 isEqual:v11])
  {

    v12 = 1;
  }

  else
  {
    v14 = [(ULLabelKey *)self mapItemType];
    v15 = [v4 mapItemType];
    v12 = v14 == v15;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ULLabelKey *)self name];
  v6 = [(ULLabelKey *)self contextLayer];
  v7 = [(ULLabelKey *)self mapItemType];
  v8 = [v4 initWithName:v5 contextLayer:v6 mapItemType:v7];

  return v8;
}

@end
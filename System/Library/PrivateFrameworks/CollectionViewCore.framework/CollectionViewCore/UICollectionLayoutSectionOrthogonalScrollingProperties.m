@interface UICollectionLayoutSectionOrthogonalScrollingProperties
- (BOOL)isEqual:(id)a3;
- (UICollectionLayoutSectionOrthogonalScrollingProperties)init;
- (id)_descriptionProperties;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation UICollectionLayoutSectionOrthogonalScrollingProperties

- (UICollectionLayoutSectionOrthogonalScrollingProperties)init
{
  v3.receiver = self;
  v3.super_class = UICollectionLayoutSectionOrthogonalScrollingProperties;
  result = [(UICollectionLayoutSectionOrthogonalScrollingProperties *)&v3 init];
  if (result)
  {
    result->_decelerationRate = -1.0;
    result->_bounce = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      decelerationRate = self->_decelerationRate;
      [(UICollectionLayoutSectionOrthogonalScrollingProperties *)v5 decelerationRate];
      if (decelerationRate == v7)
      {
        bounce = self->_bounce;
        v8 = bounce == [(UICollectionLayoutSectionOrthogonalScrollingProperties *)v5 bounce];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 1) = *&self->_decelerationRate;
    *(result + 2) = self->_bounce;
  }

  return result;
}

- (id)_descriptionProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v3;
  decelerationRate = self->_decelerationRate;
  if (decelerationRate == -1.0)
  {
    v6 = @"decelerationRate = automatic";
LABEL_7:
    [v3 addObject:v6];
    goto LABEL_8;
  }

  if (decelerationRate == 0.998)
  {
    v6 = @"decelerationRate = normal";
    goto LABEL_7;
  }

  if (decelerationRate == 0.99)
  {
    v6 = @"decelerationRate = fast";
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"decelerationRate = %g", *&self->_decelerationRate];
  [v4 addObject:v10];

LABEL_8:
  bounce = self->_bounce;
  if (bounce)
  {
    if (bounce == 1)
    {
      v8 = @"bounce = always";
    }

    else
    {
      if (self->_decelerationRate != 2.0)
      {
        goto LABEL_15;
      }

      v8 = @"bounce = never";
    }
  }

  else
  {
    v8 = @"bounce = automatic";
  }

  [v4 addObject:v8];
LABEL_15:

  return v4;
}

- (id)description
{
  v3 = [(UICollectionLayoutSectionOrthogonalScrollingProperties *)self _descriptionProperties];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 componentsJoinedByString:@" "];;
  v8 = [v4 stringWithFormat:@"<%@: %p %@>", v6, self, v7];;

  return v8;
}

@end
@interface NTKWidgetComplicationMigrationKey
- (BOOL)isEqual:(id)equal;
- (NTKWidgetComplicationMigrationKey)initWithComplicationType:(unint64_t)type family:(id)family;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation NTKWidgetComplicationMigrationKey

- (NTKWidgetComplicationMigrationKey)initWithComplicationType:(unint64_t)type family:(id)family
{
  v7.receiver = self;
  v7.super_class = NTKWidgetComplicationMigrationKey;
  result = [(NTKWidgetComplicationMigrationKey *)&v7 init];
  if (result)
  {
    result->_complicationType = type;
    result->_family = family;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  complicationType = self->_complicationType;
  family = self->_family;

  return [v4 initWithComplicationType:complicationType family:family];
}

- (unint64_t)hash
{
  complicationType = [(NTKWidgetComplicationMigrationKey *)self complicationType];
  family = [(NTKWidgetComplicationMigrationKey *)self family];
  v5 = [family hash];

  return v5 ^ complicationType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_complicationType == equalCopy->_complicationType)
    {
      v5 = CLKEqualObjects();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end
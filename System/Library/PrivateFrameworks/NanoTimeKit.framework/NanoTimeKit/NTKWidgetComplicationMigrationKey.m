@interface NTKWidgetComplicationMigrationKey
- (BOOL)isEqual:(id)a3;
- (NTKWidgetComplicationMigrationKey)initWithComplicationType:(unint64_t)a3 family:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation NTKWidgetComplicationMigrationKey

- (NTKWidgetComplicationMigrationKey)initWithComplicationType:(unint64_t)a3 family:(id)a4
{
  v7.receiver = self;
  v7.super_class = NTKWidgetComplicationMigrationKey;
  result = [(NTKWidgetComplicationMigrationKey *)&v7 init];
  if (result)
  {
    result->_complicationType = a3;
    result->_family = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  complicationType = self->_complicationType;
  family = self->_family;

  return [v4 initWithComplicationType:complicationType family:family];
}

- (unint64_t)hash
{
  v3 = [(NTKWidgetComplicationMigrationKey *)self complicationType];
  v4 = [(NTKWidgetComplicationMigrationKey *)self family];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_complicationType == v4->_complicationType)
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
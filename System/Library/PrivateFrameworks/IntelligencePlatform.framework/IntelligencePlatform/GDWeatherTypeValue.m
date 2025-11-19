@interface GDWeatherTypeValue
- (GDWeatherTypeValue)initWithCoder:(id)a3;
- (GDWeatherTypeValue)initWithType:(int64_t)a3 typeValue:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDWeatherTypeValue

- (id)description
{
  type = self->_type;
  if (type > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E79620F0[type];
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"GDWeatherTypeValue<type: %@, typeValue: %lf>", v3, *&self->_typeValue];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GDWeatherTypeValue allocWithZone:a3];
  type = self->_type;
  typeValue = self->_typeValue;

  return MEMORY[0x1EEE66B58](v4, sel_initWithType_typeValue_);
}

- (GDWeatherTypeValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_type);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  [v7 intValue];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_typeValue);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  [v10 doubleValue];

  return MEMORY[0x1EEE66B58](self, sel_initWithType_typeValue_);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  v6 = a3;
  v7 = [v4 numberWithInteger:type];
  v8 = NSStringFromSelector(sel_type);
  [v6 encodeObject:v7 forKey:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_typeValue];
  v9 = NSStringFromSelector(sel_typeValue);
  [v6 encodeObject:v10 forKey:v9];
}

- (GDWeatherTypeValue)initWithType:(int64_t)a3 typeValue:(double)a4
{
  v7.receiver = self;
  v7.super_class = GDWeatherTypeValue;
  result = [(GDWeatherTypeValue *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_typeValue = a4;
  }

  return result;
}

@end
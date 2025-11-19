@interface _HKCalendarDayCellIconConfiguration
+ (id)configurationWithDateIndex:(int64_t)a3 color:(id)a4 style:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _HKCalendarDayCellIconConfiguration

+ (id)configurationWithDateIndex:(int64_t)a3 color:(id)a4 style:(int64_t)a5
{
  v7 = a4;
  v8 = objc_alloc_init(objc_opt_class());
  v9 = v8[2];
  v8[1] = a3;
  v8[2] = v7;

  v8[3] = a5;

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_dateIndex];
  v4 = [v3 hash];
  v5 = [(UIColor *)self->_color hash]^ v4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_style];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (dateIndex = self->_dateIndex, v6 = v4[1], v7 = [(UIColor *)self->_color isEqual:v4[2]], dateIndex == v6))
  {
    if (self->_style == v4[3])
    {
      v8 = v7;
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

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _HKCalendarDayCellIconConfiguration;
  v4 = [(_HKCalendarDayCellIconConfiguration *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: Date Index=%ld, Color=%@, Style=%ld", v4, self->_dateIndex, self->_color, self->_style];

  return v5;
}

@end
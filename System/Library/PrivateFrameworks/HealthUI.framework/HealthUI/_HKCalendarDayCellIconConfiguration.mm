@interface _HKCalendarDayCellIconConfiguration
+ (id)configurationWithDateIndex:(int64_t)index color:(id)color style:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation _HKCalendarDayCellIconConfiguration

+ (id)configurationWithDateIndex:(int64_t)index color:(id)color style:(int64_t)style
{
  colorCopy = color;
  v8 = objc_alloc_init(objc_opt_class());
  v9 = v8[2];
  v8[1] = index;
  v8[2] = colorCopy;

  v8[3] = style;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (dateIndex = self->_dateIndex, v6 = equalCopy[1], v7 = [(UIColor *)self->_color isEqual:equalCopy[2]], dateIndex == v6))
  {
    if (self->_style == equalCopy[3])
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
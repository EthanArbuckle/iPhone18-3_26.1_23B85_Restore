@interface ML3QuerySection
- (BOOL)isEqual:(id)a3;
- (ML3QuerySection)initWithRange:(_NSRange)a3 sectionIndex:(unint64_t)a4;
- (_NSRange)range;
- (id)description;
@end

@implementation ML3QuerySection

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_sectionIndex == v4[1] && self->_range.length == v4[3] && self->_range.location == v4[2];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ML3QuerySection;
  v4 = [(ML3QuerySection *)&v8 description];
  v5 = NSStringFromRange(self->_range);
  v6 = [v3 stringWithFormat:@"%@, _range = %@, _sectionIndex = %lu", v4, v5, self->_sectionIndex];

  return v6;
}

- (ML3QuerySection)initWithRange:(_NSRange)a3 sectionIndex:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  v8.receiver = self;
  v8.super_class = ML3QuerySection;
  result = [(ML3QuerySection *)&v8 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_sectionIndex = a4;
  }

  return result;
}

@end
@interface ML3QuerySection
- (BOOL)isEqual:(id)equal;
- (ML3QuerySection)initWithRange:(_NSRange)range sectionIndex:(unint64_t)index;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_sectionIndex == equalCopy[1] && self->_range.length == equalCopy[3] && self->_range.location == equalCopy[2];

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

- (ML3QuerySection)initWithRange:(_NSRange)range sectionIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  v8.receiver = self;
  v8.super_class = ML3QuerySection;
  result = [(ML3QuerySection *)&v8 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_sectionIndex = index;
  }

  return result;
}

@end
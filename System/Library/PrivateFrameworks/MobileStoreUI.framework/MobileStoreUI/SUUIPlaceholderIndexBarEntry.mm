@interface SUUIPlaceholderIndexBarEntry
- (BOOL)isEqual:(id)equal;
- (CGSize)_calculatedContentSize;
- (CGSize)placeholderSize;
- (SUUIPlaceholderIndexBarEntry)initWithPlaceholderSize:(CGSize)size;
- (id)description;
- (unint64_t)hash;
@end

@implementation SUUIPlaceholderIndexBarEntry

- (SUUIPlaceholderIndexBarEntry)initWithPlaceholderSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = SUUIPlaceholderIndexBarEntry;
  v5 = [(SUUIPlaceholderIndexBarEntry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_placeholderSize.width = width;
    v5->_placeholderSize.height = height;
    [(SUUIIndexBarEntry *)v5 setEntryType:4];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromCGSize(self->_placeholderSize);
  v7 = [v3 stringWithFormat:@"<%@ %p placeholderSize:%@>", v5, self, v6];

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = SUUIPlaceholderIndexBarEntry;
  return [(SUUIIndexBarEntry *)&v3 hash]^ (self->_placeholderSize.width * 1000.0) ^ (self->_placeholderSize.height * 10000.0);
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = SUUIPlaceholderIndexBarEntry, [(SUUIIndexBarEntry *)&v7 isEqual:equalCopy]) && equalCopy->_placeholderSize.height == self->_placeholderSize.height && equalCopy->_placeholderSize.width == self->_placeholderSize.width;
  }

  return v5;
}

- (CGSize)_calculatedContentSize
{
  width = self->_placeholderSize.width;
  height = self->_placeholderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)placeholderSize
{
  width = self->_placeholderSize.width;
  height = self->_placeholderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
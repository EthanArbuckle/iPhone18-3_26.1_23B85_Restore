@interface MADRichLabelClassificationResultItem
- (MADRichLabelClassificationResultItem)initWithCoder:(id)coder;
- (MADRichLabelClassificationResultItem)initWithDomain:(unint64_t)domain displayLabel:(id)label;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADRichLabelClassificationResultItem

- (MADRichLabelClassificationResultItem)initWithDomain:(unint64_t)domain displayLabel:(id)label
{
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = MADRichLabelClassificationResultItem;
  v8 = [(MADRichLabelClassificationResultItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_domain = domain;
    objc_storeStrong(&v8->_displayLabel, label);
  }

  return v9;
}

- (MADRichLabelClassificationResultItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MADRichLabelClassificationResultItem;
  v5 = [(MADRichLabelClassificationResultItem *)&v9 init];
  if (v5)
  {
    v5->_domain = [coderCopy decodeIntegerForKey:@"Domain"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayLabel"];
    displayLabel = v5->_displayLabel;
    v5->_displayLabel = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  domain = self->_domain;
  coderCopy = coder;
  [coderCopy encodeInteger:domain forKey:@"Domain"];
  [coderCopy encodeObject:self->_displayLabel forKey:@"DisplayLabel"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"domain: %lu, ", self->_domain];
  [string appendFormat:@"displayLabel: %@>", self->_displayLabel];

  return string;
}

@end
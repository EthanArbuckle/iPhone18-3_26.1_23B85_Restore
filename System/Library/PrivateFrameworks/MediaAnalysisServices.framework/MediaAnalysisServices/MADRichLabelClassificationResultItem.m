@interface MADRichLabelClassificationResultItem
- (MADRichLabelClassificationResultItem)initWithCoder:(id)a3;
- (MADRichLabelClassificationResultItem)initWithDomain:(unint64_t)a3 displayLabel:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADRichLabelClassificationResultItem

- (MADRichLabelClassificationResultItem)initWithDomain:(unint64_t)a3 displayLabel:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MADRichLabelClassificationResultItem;
  v8 = [(MADRichLabelClassificationResultItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_domain = a3;
    objc_storeStrong(&v8->_displayLabel, a4);
  }

  return v9;
}

- (MADRichLabelClassificationResultItem)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADRichLabelClassificationResultItem;
  v5 = [(MADRichLabelClassificationResultItem *)&v9 init];
  if (v5)
  {
    v5->_domain = [v4 decodeIntegerForKey:@"Domain"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayLabel"];
    displayLabel = v5->_displayLabel;
    v5->_displayLabel = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  domain = self->_domain;
  v5 = a3;
  [v5 encodeInteger:domain forKey:@"Domain"];
  [v5 encodeObject:self->_displayLabel forKey:@"DisplayLabel"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"domain: %lu, ", self->_domain];
  [v3 appendFormat:@"displayLabel: %@>", self->_displayLabel];

  return v3;
}

@end
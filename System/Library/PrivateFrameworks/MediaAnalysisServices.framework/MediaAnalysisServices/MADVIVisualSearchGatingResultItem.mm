@interface MADVIVisualSearchGatingResultItem
- (CGRect)normalizedBoundingBox;
- (MADVIVisualSearchGatingResultItem)initWithCoder:(id)coder;
- (MADVIVisualSearchGatingResultItem)initWithNormalizedBoundingBox:(CGRect)box andDomains:(id)domains;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIVisualSearchGatingResultItem

- (MADVIVisualSearchGatingResultItem)initWithNormalizedBoundingBox:(CGRect)box andDomains:(id)domains
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  domainsCopy = domains;
  v14.receiver = self;
  v14.super_class = MADVIVisualSearchGatingResultItem;
  v11 = [(MADVIVisualSearchGatingResultItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_normalizedBoundingBox.origin.x = x;
    v11->_normalizedBoundingBox.origin.y = y;
    v11->_normalizedBoundingBox.size.width = width;
    v11->_normalizedBoundingBox.size.height = height;
    objc_storeStrong(&v11->_domains, domains);
  }

  return v12;
}

- (MADVIVisualSearchGatingResultItem)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MADVIVisualSearchGatingResultItem;
  v5 = [(MADVIVisualSearchGatingResultItem *)&v16 init];
  if (v5)
  {
    [coderCopy decodeRectForKey:@"NormalizedBoundingBox"];
    v5->_normalizedBoundingBox.origin.x = v6;
    v5->_normalizedBoundingBox.origin.y = v7;
    v5->_normalizedBoundingBox.size.width = v8;
    v5->_normalizedBoundingBox.size.height = v9;
    v10 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"Domains"];
    domains = v5->_domains;
    v5->_domains = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  x = self->_normalizedBoundingBox.origin.x;
  y = self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  coderCopy = coder;
  [coderCopy encodeRect:@"NormalizedBoundingBox" forKey:{x, y, width, height}];
  [coderCopy encodeObject:self->_domains forKey:@"Domains"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"normalizedBoundingBox: %0.2fx%0.2f @ (%0.2f, %0.2f), ", *&self->_normalizedBoundingBox.size.width, *&self->_normalizedBoundingBox.size.height, *&self->_normalizedBoundingBox.origin.x, *&self->_normalizedBoundingBox.origin.y];
  [string appendFormat:@"domains: %@>", self->_domains];

  return string;
}

- (CGRect)normalizedBoundingBox
{
  x = self->_normalizedBoundingBox.origin.x;
  y = self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
@interface MADVIVisualSearchGatingResultItem
- (CGRect)normalizedBoundingBox;
- (MADVIVisualSearchGatingResultItem)initWithCoder:(id)a3;
- (MADVIVisualSearchGatingResultItem)initWithNormalizedBoundingBox:(CGRect)a3 andDomains:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIVisualSearchGatingResultItem

- (MADVIVisualSearchGatingResultItem)initWithNormalizedBoundingBox:(CGRect)a3 andDomains:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
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
    objc_storeStrong(&v11->_domains, a4);
  }

  return v12;
}

- (MADVIVisualSearchGatingResultItem)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MADVIVisualSearchGatingResultItem;
  v5 = [(MADVIVisualSearchGatingResultItem *)&v16 init];
  if (v5)
  {
    [v4 decodeRectForKey:@"NormalizedBoundingBox"];
    v5->_normalizedBoundingBox.origin.x = v6;
    v5->_normalizedBoundingBox.origin.y = v7;
    v5->_normalizedBoundingBox.size.width = v8;
    v5->_normalizedBoundingBox.size.height = v9;
    v10 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"Domains"];
    domains = v5->_domains;
    v5->_domains = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  x = self->_normalizedBoundingBox.origin.x;
  y = self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  v8 = a3;
  [v8 encodeRect:@"NormalizedBoundingBox" forKey:{x, y, width, height}];
  [v8 encodeObject:self->_domains forKey:@"Domains"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"normalizedBoundingBox: %0.2fx%0.2f @ (%0.2f, %0.2f), ", *&self->_normalizedBoundingBox.size.width, *&self->_normalizedBoundingBox.size.height, *&self->_normalizedBoundingBox.origin.x, *&self->_normalizedBoundingBox.origin.y];
  [v3 appendFormat:@"domains: %@>", self->_domains];

  return v3;
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
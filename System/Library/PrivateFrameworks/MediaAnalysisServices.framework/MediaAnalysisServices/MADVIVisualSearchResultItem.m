@interface MADVIVisualSearchResultItem
- (CGRect)normalizedBoundingBox;
- (MADVIVisualSearchResultItem)initWithCoder:(id)a3;
- (MADVIVisualSearchResultItem)initWithNormalizedBoundingBox:(CGRect)a3 regionAttributes:(id)a4 andSearchSections:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIVisualSearchResultItem

- (MADVIVisualSearchResultItem)initWithNormalizedBoundingBox:(CGRect)a3 regionAttributes:(id)a4 andSearchSections:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MADVIVisualSearchResultItem;
  v14 = [(MADVIVisualSearchResultItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_normalizedBoundingBox.origin.x = x;
    v14->_normalizedBoundingBox.origin.y = y;
    v14->_normalizedBoundingBox.size.width = width;
    v14->_normalizedBoundingBox.size.height = height;
    objc_storeStrong(&v14->_regionAttributes, a4);
    objc_storeStrong(&v15->_searchSections, a5);
  }

  return v15;
}

- (MADVIVisualSearchResultItem)initWithCoder:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MADVIVisualSearchResultItem;
  v5 = [(MADVIVisualSearchResultItem *)&v24 init];
  if (v5)
  {
    [v4 decodeRectForKey:@"NormalizedBoundingBox"];
    v5->_normalizedBoundingBox.origin.x = v6;
    v5->_normalizedBoundingBox.origin.y = v7;
    v5->_normalizedBoundingBox.size.width = v8;
    v5->_normalizedBoundingBox.size.height = v9;
    v10 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"RegionAttributes"];
    regionAttributes = v5->_regionAttributes;
    v5->_regionAttributes = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v17 = getSFResultSectionClass_softClass_0;
    v29 = getSFResultSectionClass_softClass_0;
    v30[0] = v16;
    if (!getSFResultSectionClass_softClass_0)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __getSFResultSectionClass_block_invoke_0;
      v25[3] = &unk_1E8342DE0;
      v25[4] = &v26;
      __getSFResultSectionClass_block_invoke_0(v25);
      v17 = v27[3];
    }

    v18 = v17;
    _Block_object_dispose(&v26, 8);
    v30[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v20 = [v15 setWithArray:v19];

    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"SearchSections"];
    searchSections = v5->_searchSections;
    v5->_searchSections = v21;
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
  [v8 encodeObject:self->_regionAttributes forKey:@"RegionAttributes"];
  [v8 encodeObject:self->_searchSections forKey:@"SearchSections"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"normalizedBoundingBox: %0.2fx%0.2f @ (%0.2f, %0.2f), ", *&self->_normalizedBoundingBox.size.width, *&self->_normalizedBoundingBox.size.height, *&self->_normalizedBoundingBox.origin.x, *&self->_normalizedBoundingBox.origin.y];
  [v3 appendFormat:@"regionAttributes: %@, ", self->_regionAttributes];
  [v3 appendFormat:@"searchSections: %@>", self->_searchSections];

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
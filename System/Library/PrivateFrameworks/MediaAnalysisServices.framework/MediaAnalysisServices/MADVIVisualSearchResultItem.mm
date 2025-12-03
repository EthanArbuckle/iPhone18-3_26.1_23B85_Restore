@interface MADVIVisualSearchResultItem
- (CGRect)normalizedBoundingBox;
- (MADVIVisualSearchResultItem)initWithCoder:(id)coder;
- (MADVIVisualSearchResultItem)initWithNormalizedBoundingBox:(CGRect)box regionAttributes:(id)attributes andSearchSections:(id)sections;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIVisualSearchResultItem

- (MADVIVisualSearchResultItem)initWithNormalizedBoundingBox:(CGRect)box regionAttributes:(id)attributes andSearchSections:(id)sections
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  attributesCopy = attributes;
  sectionsCopy = sections;
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
    objc_storeStrong(&v14->_regionAttributes, attributes);
    objc_storeStrong(&v15->_searchSections, sections);
  }

  return v15;
}

- (MADVIVisualSearchResultItem)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = MADVIVisualSearchResultItem;
  v5 = [(MADVIVisualSearchResultItem *)&v24 init];
  if (v5)
  {
    [coderCopy decodeRectForKey:@"NormalizedBoundingBox"];
    v5->_normalizedBoundingBox.origin.x = v6;
    v5->_normalizedBoundingBox.origin.y = v7;
    v5->_normalizedBoundingBox.size.width = v8;
    v5->_normalizedBoundingBox.size.height = v9;
    v10 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"RegionAttributes"];
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

    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"SearchSections"];
    searchSections = v5->_searchSections;
    v5->_searchSections = v21;
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
  [coderCopy encodeObject:self->_regionAttributes forKey:@"RegionAttributes"];
  [coderCopy encodeObject:self->_searchSections forKey:@"SearchSections"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"normalizedBoundingBox: %0.2fx%0.2f @ (%0.2f, %0.2f), ", *&self->_normalizedBoundingBox.size.width, *&self->_normalizedBoundingBox.size.height, *&self->_normalizedBoundingBox.origin.x, *&self->_normalizedBoundingBox.origin.y];
  [string appendFormat:@"regionAttributes: %@, ", self->_regionAttributes];
  [string appendFormat:@"searchSections: %@>", self->_searchSections];

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
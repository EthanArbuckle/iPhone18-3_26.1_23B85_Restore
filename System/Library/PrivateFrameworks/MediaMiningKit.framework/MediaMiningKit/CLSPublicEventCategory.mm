@interface CLSPublicEventCategory
- (CLSPublicEventCategory)initWithCategory:(id)category;
- (CLSPublicEventCategory)initWithCategory:(id)category localizedName:(id)name localizedSubcategories:(id)subcategories;
- (CLSPublicEventCategory)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)levelForLocalizedSubcategory:(id)subcategory;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSPublicEventCategory

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CLSPublicEventCategory;
  v4 = [(CLSPublicEventCategory *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ category: %@, localizedName: %@, subcategory: %@", v4, self->_category, self->_localizedName, self->_localizedSubcategories];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  category = self->_category;
  coderCopy = coder;
  [coderCopy encodeObject:category forKey:@"category"];
  [coderCopy encodeObject:self->_localizedName forKey:@"localizedName"];
  [coderCopy encodeObject:self->_localizedSubcategories forKey:@"localizedSubcategories"];
}

- (CLSPublicEventCategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  v6 = [(CLSPublicEventCategory *)self initWithCategory:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v6->_localizedName;
    v6->_localizedName = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"localizedSubcategories"];
    localizedSubcategories = v6->_localizedSubcategories;
    v6->_localizedSubcategories = v12;
  }

  return v6;
}

- (unint64_t)levelForLocalizedSubcategory:(id)subcategory
{
  subcategoryCopy = subcategory;
  localizedSubcategories = [(CLSPublicEventCategory *)self localizedSubcategories];
  v6 = [localizedSubcategories indexOfObject:subcategoryCopy];

  return v6;
}

- (CLSPublicEventCategory)initWithCategory:(id)category localizedName:(id)name localizedSubcategories:(id)subcategories
{
  nameCopy = name;
  subcategoriesCopy = subcategories;
  v11 = [(CLSPublicEventCategory *)self initWithCategory:category];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_localizedName, name);
    objc_storeStrong(&v12->_localizedSubcategories, subcategories);
  }

  return v12;
}

- (CLSPublicEventCategory)initWithCategory:(id)category
{
  categoryCopy = category;
  v9.receiver = self;
  v9.super_class = CLSPublicEventCategory;
  v6 = [(CLSPublicEventCategory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, category);
  }

  return v7;
}

@end
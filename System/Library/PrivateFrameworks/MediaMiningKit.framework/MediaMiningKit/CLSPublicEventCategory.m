@interface CLSPublicEventCategory
- (CLSPublicEventCategory)initWithCategory:(id)a3;
- (CLSPublicEventCategory)initWithCategory:(id)a3 localizedName:(id)a4 localizedSubcategories:(id)a5;
- (CLSPublicEventCategory)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)levelForLocalizedSubcategory:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  category = self->_category;
  v5 = a3;
  [v5 encodeObject:category forKey:@"category"];
  [v5 encodeObject:self->_localizedName forKey:@"localizedName"];
  [v5 encodeObject:self->_localizedSubcategories forKey:@"localizedSubcategories"];
}

- (CLSPublicEventCategory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  v6 = [(CLSPublicEventCategory *)self initWithCategory:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v6->_localizedName;
    v6->_localizedName = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"localizedSubcategories"];
    localizedSubcategories = v6->_localizedSubcategories;
    v6->_localizedSubcategories = v12;
  }

  return v6;
}

- (unint64_t)levelForLocalizedSubcategory:(id)a3
{
  v4 = a3;
  v5 = [(CLSPublicEventCategory *)self localizedSubcategories];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (CLSPublicEventCategory)initWithCategory:(id)a3 localizedName:(id)a4 localizedSubcategories:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(CLSPublicEventCategory *)self initWithCategory:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_localizedName, a4);
    objc_storeStrong(&v12->_localizedSubcategories, a5);
  }

  return v12;
}

- (CLSPublicEventCategory)initWithCategory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CLSPublicEventCategory;
  v6 = [(CLSPublicEventCategory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, a3);
  }

  return v7;
}

@end
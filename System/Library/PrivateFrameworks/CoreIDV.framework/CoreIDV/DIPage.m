@interface DIPage
- (DIPage)init;
- (DIPage)initWithAttributes:(id)a3 title:(id)a4 subTitle:(id)a5 page:(int64_t)a6;
- (DIPage)initWithCoder:(id)a3;
- (NSArray)attributes;
- (NSDictionary)serverValidationGroup;
- (NSString)subTitle;
- (NSString)title;
- (id)description;
- (unint64_t)page;
- (void)encodeWithCoder:(id)a3;
- (void)setAttributes:(id)a3;
- (void)setPage:(unint64_t)a3;
- (void)setServerValidationGroup:(id)a3;
- (void)setSubTitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation DIPage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeObject:self->_attributes forKey:@"attributes"];
  [v4 encodeInteger:self->_page forKey:@"pageNumber"];
  [v4 encodeObject:self->_title forKey:@"title"];
  [v4 encodeObject:self->_subTitle forKey:@"subTitle"];

  os_unfair_lock_unlock(&self->_lock);
}

- (DIPage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIPage *)self init];
  if (v5)
  {
    v26 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v22 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v26 setWithObjects:{v25, v24, v23, v22, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v15;

    v5->_page = [v4 decodeIntegerForKey:@"pageNumber"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
    subTitle = v5->_subTitle;
    v5->_subTitle = v19;
  }

  return v5;
}

- (DIPage)initWithAttributes:(id)a3 title:(id)a4 subTitle:(id)a5 page:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [(DIPage *)self init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_attributes, a3);
    v15->_page = a6;
    objc_storeStrong(&v15->_title, a4);
    objc_storeStrong(&v15->_subTitle, a5);
  }

  return v15;
}

- (DIPage)init
{
  v3.receiver = self;
  v3.super_class = DIPage;
  result = [(DIPage *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)setAttributes:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_attributes != v6)
  {
    v4 = [(NSArray *)v6 copyWithZone:0];
    attributes = self->_attributes;
    self->_attributes = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPage:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_page = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_title != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    title = self->_title;
    self->_title = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSubTitle:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_subTitle != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    subTitle = self->_subTitle;
    self->_subTitle = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setServerValidationGroup:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_serverValidationGroup != v6)
  {
    v4 = [(NSDictionary *)v6 copyWithZone:0];
    serverValidationGroup = self->_serverValidationGroup;
    self->_serverValidationGroup = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)attributes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_attributes;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)page
{
  os_unfair_lock_lock(&self->_lock);
  page = self->_page;
  os_unfair_lock_unlock(&self->_lock);
  return page;
}

- (NSString)title
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_title;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)subTitle
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_subTitle;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)serverValidationGroup
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_serverValidationGroup;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p", objc_opt_class(), self];;
  os_unfair_lock_lock(&self->_lock);
  [v3 appendFormat:@"page: '%lu'; ", self->_page];
  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"subTitle: '%@'; ", self->_subTitle];
  [v3 appendFormat:@"attributes: \n"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_attributes;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) description];
        [v3 appendFormat:@"    attribute: '%@'\n", v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  [v3 appendFormat:@">"];
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
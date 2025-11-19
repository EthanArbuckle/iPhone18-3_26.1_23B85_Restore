@interface BBAccessoryIcon
- (BBAccessoryIcon)init;
- (BBAccessoryIcon)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)addImage:(id)a3 forContentSizeCategory:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setImagesForContentSize:(id)a3;
@end

@implementation BBAccessoryIcon

- (BBAccessoryIcon)init
{
  v6.receiver = self;
  v6.super_class = BBAccessoryIcon;
  v2 = [(BBAccessoryIcon *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    imagesForContentSize = v2->_imagesForContentSize;
    v2->_imagesForContentSize = v3;
  }

  return v2;
}

- (void)setImagesForContentSize:(id)a3
{
  if (self->_imagesForContentSize != a3)
  {
    v5 = [a3 mutableCopy];
    imagesForContentSize = self->_imagesForContentSize;
    self->_imagesForContentSize = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)addImage:(id)a3 forContentSizeCategory:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }
  }
}

- (unint64_t)hash
{
  v2 = [(BBAccessoryIcon *)self imagesForContentSize];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBAccessoryIcon *)self imagesForContentSize];
      v7 = [(BBAccessoryIcon *)v5 imagesForContentSize];

      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(BBAccessoryIcon *)self imagesForContentSize];
  [v4 setImagesForContentSize:v5];

  return v4;
}

- (BBAccessoryIcon)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BBAccessoryIcon *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:3];
    v8 = [v6 setWithArray:{v7, v12, v13}];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"imagesForContentSize"];
    [(BBAccessoryIcon *)v5 setImagesForContentSize:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BBAccessoryIcon *)self imagesForContentSize];
  [v4 encodeObject:v5 forKey:@"imagesForContentSize"];
}

@end
@interface BBAccessoryIcon
- (BBAccessoryIcon)init;
- (BBAccessoryIcon)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addImage:(id)image forContentSizeCategory:(id)category;
- (void)encodeWithCoder:(id)coder;
- (void)setImagesForContentSize:(id)size;
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

- (void)setImagesForContentSize:(id)size
{
  if (self->_imagesForContentSize != size)
  {
    v5 = [size mutableCopy];
    imagesForContentSize = self->_imagesForContentSize;
    self->_imagesForContentSize = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)addImage:(id)image forContentSizeCategory:(id)category
{
  if (image)
  {
    if (category)
    {
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }
  }
}

- (unint64_t)hash
{
  imagesForContentSize = [(BBAccessoryIcon *)self imagesForContentSize];
  v3 = [imagesForContentSize hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      imagesForContentSize = [(BBAccessoryIcon *)self imagesForContentSize];
      imagesForContentSize2 = [(BBAccessoryIcon *)v5 imagesForContentSize];

      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  imagesForContentSize = [(BBAccessoryIcon *)self imagesForContentSize];
  [v4 setImagesForContentSize:imagesForContentSize];

  return v4;
}

- (BBAccessoryIcon)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(BBAccessoryIcon *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:3];
    v8 = [v6 setWithArray:{v7, v12, v13}];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"imagesForContentSize"];
    [(BBAccessoryIcon *)v5 setImagesForContentSize:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imagesForContentSize = [(BBAccessoryIcon *)self imagesForContentSize];
  [coderCopy encodeObject:imagesForContentSize forKey:@"imagesForContentSize"];
}

@end
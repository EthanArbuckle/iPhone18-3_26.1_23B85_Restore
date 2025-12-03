@interface CAFMediaItemImage
- (CAFMediaItemImage)initWithDictionary:(id)dictionary;
- (CAFMediaItemImage)initWithIdentifier:(id)identifier imageData:(id)data;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFMediaItemImage

- (CAFMediaItemImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CAFMediaItemImage;
  v5 = [(CAFMediaItemImage *)&v13 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"identifier"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    identifier = v5->_identifier;
    v5->_identifier = v7;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"imageData"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    imageData = v5->_imageData;
    v5->_imageData = v10;
  }

  return v5;
}

- (CAFMediaItemImage)initWithIdentifier:(id)identifier imageData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = CAFMediaItemImage;
  v9 = [(CAFMediaItemImage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_imageData, data);
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"identifier";
  identifier = [(CAFMediaItemImage *)self identifier];
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"imageData";
  v11[0] = null;
  imageData = [(CAFMediaItemImage *)self imageData];
  null2 = imageData;
  if (!imageData)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!imageData)
  {
  }

  if (!identifier)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(CAFMediaItemImage *)self identifier];
  imageData = [(CAFMediaItemImage *)self imageData];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@ }>", v4, self, @"identifier", identifier, @"imageData", imageData];

  return v7;
}

@end
@interface CAFUserVisibleDetailedDescription
- (CAFUserVisibleDetailedDescription)initWithDictionary:(id)dictionary;
- (CAFUserVisibleDetailedDescription)initWithImage:(id)image languageCode:(id)code text:(id)text;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFUserVisibleDetailedDescription

- (CAFUserVisibleDetailedDescription)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CAFUserVisibleDetailedDescription;
  v5 = [(CAFUserVisibleDetailedDescription *)&v16 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"image"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    image = v5->_image;
    v5->_image = v7;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"languageCode"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    languageCode = v5->_languageCode;
    v5->_languageCode = v10;

    objc_opt_class();
    v12 = [dictionaryCopy objectForKey:@"text"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    text = v5->_text;
    v5->_text = v13;
  }

  return v5;
}

- (CAFUserVisibleDetailedDescription)initWithImage:(id)image languageCode:(id)code text:(id)text
{
  imageCopy = image;
  codeCopy = code;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = CAFUserVisibleDetailedDescription;
  v12 = [(CAFUserVisibleDetailedDescription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, image);
    objc_storeStrong(&v13->_languageCode, code);
    objc_storeStrong(&v13->_text, text);
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"image";
  image = [(CAFUserVisibleDetailedDescription *)self image];
  null = image;
  if (!image)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = null;
  v12[1] = @"languageCode";
  languageCode = [(CAFUserVisibleDetailedDescription *)self languageCode];
  null2 = languageCode;
  if (!languageCode)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = null2;
  v12[2] = @"text";
  text = [(CAFUserVisibleDetailedDescription *)self text];
  null3 = text;
  if (!text)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!text)
  {
  }

  if (!languageCode)
  {
  }

  if (!image)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  image = [(CAFUserVisibleDetailedDescription *)self image];
  languageCode = [(CAFUserVisibleDetailedDescription *)self languageCode];
  text = [(CAFUserVisibleDetailedDescription *)self text];
  v8 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %@ }>", v4, self, @"image", image, @"languageCode", languageCode, @"text", text];

  return v8;
}

@end
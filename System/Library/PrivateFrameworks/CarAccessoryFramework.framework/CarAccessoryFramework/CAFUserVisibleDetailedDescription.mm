@interface CAFUserVisibleDetailedDescription
- (CAFUserVisibleDetailedDescription)initWithDictionary:(id)a3;
- (CAFUserVisibleDetailedDescription)initWithImage:(id)a3 languageCode:(id)a4 text:(id)a5;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFUserVisibleDetailedDescription

- (CAFUserVisibleDetailedDescription)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CAFUserVisibleDetailedDescription;
  v5 = [(CAFUserVisibleDetailedDescription *)&v16 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"image"];
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
    v9 = [v4 objectForKey:@"languageCode"];
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
    v12 = [v4 objectForKey:@"text"];
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

- (CAFUserVisibleDetailedDescription)initWithImage:(id)a3 languageCode:(id)a4 text:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CAFUserVisibleDetailedDescription;
  v12 = [(CAFUserVisibleDetailedDescription *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, a3);
    objc_storeStrong(&v13->_languageCode, a4);
    objc_storeStrong(&v13->_text, a5);
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"image";
  v3 = [(CAFUserVisibleDetailedDescription *)self image];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v4;
  v12[1] = @"languageCode";
  v5 = [(CAFUserVisibleDetailedDescription *)self languageCode];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = v6;
  v12[2] = @"text";
  v7 = [(CAFUserVisibleDetailedDescription *)self text];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFUserVisibleDetailedDescription *)self image];
  v6 = [(CAFUserVisibleDetailedDescription *)self languageCode];
  v7 = [(CAFUserVisibleDetailedDescription *)self text];
  v8 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %@ }>", v4, self, @"image", v5, @"languageCode", v6, @"text", v7];

  return v8;
}

@end
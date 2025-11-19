@interface CAFTrailingButton
- (CAFTrailingButton)initWithContentURLAction:(id)a3 type:(unsigned __int8)a4;
- (CAFTrailingButton)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFTrailingButton

- (CAFTrailingButton)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CAFTrailingButton;
  v5 = [(CAFTrailingButton *)&v12 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"contentURLAction"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    contentURLAction = v5->_contentURLAction;
    v5->_contentURLAction = v7;

    objc_opt_class();
    v9 = [v4 objectForKey:@"type"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v5->_type = [v10 unsignedCharValue];
  }

  return v5;
}

- (CAFTrailingButton)initWithContentURLAction:(id)a3 type:(unsigned __int8)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CAFTrailingButton;
  v8 = [(CAFTrailingButton *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contentURLAction, a3);
    v9->_type = a4;
  }

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"contentURLAction";
  v3 = [(CAFTrailingButton *)self contentURLAction];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v9[1] = @"type";
  v10[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFTrailingButton type](self, "type")}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!v3)
  {
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFTrailingButton *)self contentURLAction];
  v6 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %hhu }>", v4, self, @"contentURLAction", v5, @"type", -[CAFTrailingButton type](self, "type")];

  return v6;
}

@end
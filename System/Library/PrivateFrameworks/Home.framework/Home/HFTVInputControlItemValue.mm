@interface HFTVInputControlItemValue
- (BOOL)isEqual:(id)a3;
- (HFTVInputControlItemValue)initWithInputName:(id)a3 identifier:(id)a4 isHidden:(BOOL)a5 isSelected:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HFTVInputControlItemValue

- (HFTVInputControlItemValue)initWithInputName:(id)a3 identifier:(id)a4 isHidden:(BOOL)a5 isSelected:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = HFTVInputControlItemValue;
  v12 = [(HFTVInputControlItemValue *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [v11 copy];
    identifier = v12->_identifier;
    v12->_identifier = v15;

    v12->_isHidden = a5;
    v12->_isSelected = a6;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(HFTVInputControlItemValue *)self name];
  [v3 appendString:v4];

  v5 = [(HFTVInputControlItemValue *)self identifier];
  v6 = [v5 stringValue];
  [v3 appendString:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFTVInputControlItemValue isHidden](self, "isHidden")}];
  v8 = [v7 stringValue];
  [v3 appendString:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFTVInputControlItemValue isSelected](self, "isSelected")}];
  v10 = [v9 stringValue];
  [v3 appendString:v10];

  v11 = [v3 hash];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 == self)
  {
    LOBYTE(v13) = 1;
  }

  else if (v7)
  {
    v8 = [(HFTVInputControlItemValue *)v7 name];
    v9 = [(HFTVInputControlItemValue *)self name];
    if ([v8 isEqualToString:v9])
    {
      v10 = [(HFTVInputControlItemValue *)v7 identifier];
      v11 = [(HFTVInputControlItemValue *)self identifier];
      if ([v10 isEqualToNumber:v11] && (v12 = -[HFTVInputControlItemValue isHidden](v7, "isHidden"), v12 == -[HFTVInputControlItemValue isHidden](self, "isHidden")))
      {
        v14 = [(HFTVInputControlItemValue *)v7 isSelected];
        v13 = v14 ^ [(HFTVInputControlItemValue *)self isSelected]^ 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFTVInputControlItemValue *)self name];
  [v3 appendString:v4 withName:@"inputName"];

  v5 = [(HFTVInputControlItemValue *)self identifier];
  v6 = [v3 appendInteger:objc_msgSend(v5 withName:{"integerValue"), @"identifier"}];

  v7 = [v3 appendBool:-[HFTVInputControlItemValue isHidden](self withName:{"isHidden"), @"isHidden"}];
  v8 = [v3 appendBool:-[HFTVInputControlItemValue isSelected](self withName:{"isSelected"), @"isSelected"}];
  v9 = [v3 build];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(HFTVInputControlItemValue *)self name];
  v6 = [(HFTVInputControlItemValue *)self identifier];
  v7 = [v4 valueWithInputName:v5 identifier:v6 isHidden:-[HFTVInputControlItemValue isHidden](self isSelected:{"isHidden"), -[HFTVInputControlItemValue isSelected](self, "isSelected")}];

  return v7;
}

@end
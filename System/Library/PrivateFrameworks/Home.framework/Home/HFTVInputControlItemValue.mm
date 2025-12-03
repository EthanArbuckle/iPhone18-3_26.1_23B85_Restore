@interface HFTVInputControlItemValue
- (BOOL)isEqual:(id)equal;
- (HFTVInputControlItemValue)initWithInputName:(id)name identifier:(id)identifier isHidden:(BOOL)hidden isSelected:(BOOL)selected;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation HFTVInputControlItemValue

- (HFTVInputControlItemValue)initWithInputName:(id)name identifier:(id)identifier isHidden:(BOOL)hidden isSelected:(BOOL)selected
{
  nameCopy = name;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = HFTVInputControlItemValue;
  v12 = [(HFTVInputControlItemValue *)&v18 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v15;

    v12->_isHidden = hidden;
    v12->_isSelected = selected;
  }

  return v12;
}

- (unint64_t)hash
{
  string = [MEMORY[0x277CCAB68] string];
  name = [(HFTVInputControlItemValue *)self name];
  [string appendString:name];

  identifier = [(HFTVInputControlItemValue *)self identifier];
  stringValue = [identifier stringValue];
  [string appendString:stringValue];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFTVInputControlItemValue isHidden](self, "isHidden")}];
  stringValue2 = [v7 stringValue];
  [string appendString:stringValue2];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFTVInputControlItemValue isSelected](self, "isSelected")}];
  stringValue3 = [v9 stringValue];
  [string appendString:stringValue3];

  v11 = [string hash];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
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
    name = [(HFTVInputControlItemValue *)v7 name];
    name2 = [(HFTVInputControlItemValue *)self name];
    if ([name isEqualToString:name2])
    {
      identifier = [(HFTVInputControlItemValue *)v7 identifier];
      identifier2 = [(HFTVInputControlItemValue *)self identifier];
      if ([identifier isEqualToNumber:identifier2] && (v12 = -[HFTVInputControlItemValue isHidden](v7, "isHidden"), v12 == -[HFTVInputControlItemValue isHidden](self, "isHidden")))
      {
        isSelected = [(HFTVInputControlItemValue *)v7 isSelected];
        v13 = isSelected ^ [(HFTVInputControlItemValue *)self isSelected]^ 1;
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
  name = [(HFTVInputControlItemValue *)self name];
  [v3 appendString:name withName:@"inputName"];

  identifier = [(HFTVInputControlItemValue *)self identifier];
  v6 = [v3 appendInteger:objc_msgSend(identifier withName:{"integerValue"), @"identifier"}];

  v7 = [v3 appendBool:-[HFTVInputControlItemValue isHidden](self withName:{"isHidden"), @"isHidden"}];
  v8 = [v3 appendBool:-[HFTVInputControlItemValue isSelected](self withName:{"isSelected"), @"isSelected"}];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  name = [(HFTVInputControlItemValue *)self name];
  identifier = [(HFTVInputControlItemValue *)self identifier];
  v7 = [v4 valueWithInputName:name identifier:identifier isHidden:-[HFTVInputControlItemValue isHidden](self isSelected:{"isHidden"), -[HFTVInputControlItemValue isSelected](self, "isSelected")}];

  return v7;
}

@end
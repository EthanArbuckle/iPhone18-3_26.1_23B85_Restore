@interface CAMAbstractOverlayServiceControl
+ (id)_preferredLocale;
- (BOOL)isContentEqual:(id)equal;
- (CAMAbstractOverlayServiceControl)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier title:(id)title imageName:(id)name;
- (id)description;
- (id)validateUpdate:(id)update;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAMAbstractOverlayServiceControl

+ (id)_preferredLocale
{
  if (_preferredLocale_onceToken != -1)
  {
    +[CAMAbstractOverlayServiceControl _preferredLocale];
  }

  v3 = _preferredLocale_preferredLocale;

  return v3;
}

void __52__CAMAbstractOverlayServiceControl__preferredLocale__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 preferredLocalizations];
  v4 = [v1 firstObject];

  v2 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v4];
  v3 = _preferredLocale_preferredLocale;
  _preferredLocale_preferredLocale = v2;
}

- (id)_initWithIdentifier:(id)identifier title:(id)title imageName:(id)name
{
  identifierCopy = identifier;
  titleCopy = title;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = CAMAbstractOverlayServiceControl;
  v12 = [(CAMAbstractOverlayServiceControl *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    _preferredLocale = [objc_opt_class() _preferredLocale];
    v15 = [titleCopy uppercaseStringWithLocale:_preferredLocale];
    title = v13->_title;
    v13->_title = v15;

    objc_storeStrong(&v13->_imageName, name);
    v13->_enabled = 1;
  }

  return v13;
}

- (BOOL)isContentEqual:(id)equal
{
  equalCopy = equal;
  title = self->_title;
  title = [equalCopy title];
  if ([(NSString *)title isEqualToString:title])
  {
    imageName = self->_imageName;
    imageName = [equalCopy imageName];
    if ([(NSString *)imageName isEqualToString:imageName])
    {
      controlType = self->_controlType;
      v10 = controlType == [equalCopy controlType];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  controlType = [(CAMAbstractOverlayServiceControl *)self controlType];
  if (controlType > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278851C38[controlType];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  title = [(CAMAbstractOverlayServiceControl *)self title];
  identifier = [(CAMAbstractOverlayServiceControl *)self identifier];
  v10 = [v5 stringWithFormat:@"<%@: %p %@ %@; ID: %@>", v7, self, v4, title, identifier];;

  return v10;
}

- (CAMAbstractOverlayServiceControl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@.%@", v8, @"identifier"];
  v10 = [coderCopy decodeObjectOfClass:v5 forKey:v9];

  if (v10)
  {
    v29.receiver = self;
    v29.super_class = CAMAbstractOverlayServiceControl;
    v11 = [(CAMAbstractOverlayServiceControl *)&v29 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_identifier, v10);
      v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v14 = MEMORY[0x277CCACA8];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v14 stringWithFormat:@"%@.%@", v16, @"imageName"];
      v18 = [coderCopy decodeObjectOfClasses:v13 forKey:v17];
      imageName = v12->_imageName;
      v12->_imageName = v18;

      v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v21 stringWithFormat:@"%@.%@", v23, @"title"];
      v25 = [coderCopy decodeObjectOfClasses:v20 forKey:v24];
      title = v12->_title;
      v12->_title = v25;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CAMAbstractOverlayServiceControl *)self identifier];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@.%@", v8, @"identifier"];
  [coderCopy encodeObject:identifier forKey:v9];

  imageName = [(CAMAbstractOverlayServiceControl *)self imageName];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.%@", v13, @"imageName"];
  [coderCopy encodeObject:imageName forKey:v14];

  title = [(CAMAbstractOverlayServiceControl *)self title];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"%@.%@", v17, @"title"];
  [coderCopy encodeObject:title forKey:v18];
}

- (id)validateUpdate:(id)update
{
  v33[1] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  valueType = [updateCopy valueType];
  controlType = [(CAMAbstractOverlayServiceControl *)self controlType];
  controlIdentifier = [updateCopy controlIdentifier];
  identifier = [(CAMAbstractOverlayServiceControl *)self identifier];
  v9 = [controlIdentifier isEqualToString:identifier];

  if ((v9 & 1) == 0)
  {
    v12 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA068];
    v33[0] = @"InvalidIdentifier";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v14 = v12;
    v15 = -100;
LABEL_10:
    controlType = [v14 errorWithDomain:@"CAMOverlayErrorDomain" code:v15 userInfo:v13];

    goto LABEL_33;
  }

  if (controlType != 2)
  {
    if (controlType != 1)
    {
      if (controlType)
      {
        controlType = 0;
        goto LABEL_33;
      }

      selfCopy2 = self;
      sliderType = [(CAMAbstractOverlayServiceControl *)selfCopy2 sliderType];
      if (valueType > 1)
      {
        if (valueType == 2)
        {
          controlType = 0;
          if (sliderType > 7 || ((1 << sliderType) & 0xE3) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (valueType != 3)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (!valueType)
        {
          [updateCopy floatValue];
          v20 = v19;
          valueRange = [(CAMAbstractOverlayServiceControl *)selfCopy2 valueRange];
          v22 = v20;
          [valueRange minimum];
          if (v23 + -0.0001 <= v22 && ([valueRange maximum], v24 + 0.0001 >= v22))
          {
            controlType = 0;
          }

          else
          {
            controlType = CAMOverlayErrorForCode(-13);
          }

          goto LABEL_32;
        }

        if (valueType != 1)
        {
LABEL_32:

          goto LABEL_33;
        }
      }

      goto LABEL_31;
    }

    selfCopy2 = self;
    pickerType = [(CAMAbstractOverlayServiceControl *)selfCopy2 pickerType];
    controlType = 0;
    if (valueType > 2)
    {
      if ((valueType - 3) >= 2)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    switch(valueType)
    {
      case 0:
LABEL_31:
        v25 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA068];
        v33[0] = @"InvalidValueType";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        controlType = [v25 errorWithDomain:@"CAMOverlayErrorDomain" code:-12 userInfo:v26];

        goto LABEL_32;
      case 1:
        if ([updateCopy indexValue] < 0 || (v29 = objc_msgSend(updateCopy, "indexValue"), -[CAMAbstractOverlayServiceControl valueTitles](selfCopy2, "valueTitles"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "count"), v30, v29 >= v31))
        {
          v17 = -13;
          goto LABEL_40;
        }

        break;
      case 2:
        if (!pickerType)
        {
          v17 = -12;
LABEL_40:
          controlType = CAMOverlayErrorForCode(v17);
          goto LABEL_32;
        }

        break;
      default:
        goto LABEL_32;
    }

    controlType = 0;
    goto LABEL_32;
  }

  controlType = 0;
  if (valueType <= 4 && valueType != 3)
  {
    v18 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA068];
    v33[0] = @"InvalidValueType";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v14 = v18;
    v15 = -12;
    goto LABEL_10;
  }

LABEL_33:

  v27 = *MEMORY[0x277D85DE8];

  return controlType;
}

@end
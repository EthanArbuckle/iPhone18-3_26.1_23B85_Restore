@interface CAMAbstractOverlayServiceControl
+ (id)_preferredLocale;
- (BOOL)isContentEqual:(id)a3;
- (CAMAbstractOverlayServiceControl)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 title:(id)a4 imageName:(id)a5;
- (id)description;
- (id)validateUpdate:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithIdentifier:(id)a3 title:(id)a4 imageName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CAMAbstractOverlayServiceControl;
  v12 = [(CAMAbstractOverlayServiceControl *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    v14 = [objc_opt_class() _preferredLocale];
    v15 = [v10 uppercaseStringWithLocale:v14];
    title = v13->_title;
    v13->_title = v15;

    objc_storeStrong(&v13->_imageName, a5);
    v13->_enabled = 1;
  }

  return v13;
}

- (BOOL)isContentEqual:(id)a3
{
  v4 = a3;
  title = self->_title;
  v6 = [v4 title];
  if ([(NSString *)title isEqualToString:v6])
  {
    imageName = self->_imageName;
    v8 = [v4 imageName];
    if ([(NSString *)imageName isEqualToString:v8])
    {
      controlType = self->_controlType;
      v10 = controlType == [v4 controlType];
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
  v3 = [(CAMAbstractOverlayServiceControl *)self controlType];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278851C38[v3];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(CAMAbstractOverlayServiceControl *)self title];
  v9 = [(CAMAbstractOverlayServiceControl *)self identifier];
  v10 = [v5 stringWithFormat:@"<%@: %p %@ %@; ID: %@>", v7, self, v4, v8, v9];;

  return v10;
}

- (CAMAbstractOverlayServiceControl)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@.%@", v8, @"identifier"];
  v10 = [v4 decodeObjectOfClass:v5 forKey:v9];

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
      v18 = [v4 decodeObjectOfClasses:v13 forKey:v17];
      imageName = v12->_imageName;
      v12->_imageName = v18;

      v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v21 stringWithFormat:@"%@.%@", v23, @"title"];
      v25 = [v4 decodeObjectOfClasses:v20 forKey:v24];
      title = v12->_title;
      v12->_title = v25;
    }

    self = v12;
    v27 = self;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAMAbstractOverlayServiceControl *)self identifier];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@.%@", v8, @"identifier"];
  [v4 encodeObject:v5 forKey:v9];

  v10 = [(CAMAbstractOverlayServiceControl *)self imageName];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.%@", v13, @"imageName"];
  [v4 encodeObject:v10 forKey:v14];

  v19 = [(CAMAbstractOverlayServiceControl *)self title];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"%@.%@", v17, @"title"];
  [v4 encodeObject:v19 forKey:v18];
}

- (id)validateUpdate:(id)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueType];
  v6 = [(CAMAbstractOverlayServiceControl *)self controlType];
  v7 = [v4 controlIdentifier];
  v8 = [(CAMAbstractOverlayServiceControl *)self identifier];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v12 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA068];
    v33[0] = @"InvalidIdentifier";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v14 = v12;
    v15 = -100;
LABEL_10:
    v6 = [v14 errorWithDomain:@"CAMOverlayErrorDomain" code:v15 userInfo:v13];

    goto LABEL_33;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      if (v6)
      {
        v6 = 0;
        goto LABEL_33;
      }

      v10 = self;
      v11 = [(CAMAbstractOverlayServiceControl *)v10 sliderType];
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v6 = 0;
          if (v11 > 7 || ((1 << v11) & 0xE3) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (v5 != 3)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (!v5)
        {
          [v4 floatValue];
          v20 = v19;
          v21 = [(CAMAbstractOverlayServiceControl *)v10 valueRange];
          v22 = v20;
          [v21 minimum];
          if (v23 + -0.0001 <= v22 && ([v21 maximum], v24 + 0.0001 >= v22))
          {
            v6 = 0;
          }

          else
          {
            v6 = CAMOverlayErrorForCode(-13);
          }

          goto LABEL_32;
        }

        if (v5 != 1)
        {
LABEL_32:

          goto LABEL_33;
        }
      }

      goto LABEL_31;
    }

    v10 = self;
    v16 = [(CAMAbstractOverlayServiceControl *)v10 pickerType];
    v6 = 0;
    if (v5 > 2)
    {
      if ((v5 - 3) >= 2)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    switch(v5)
    {
      case 0:
LABEL_31:
        v25 = MEMORY[0x277CCA9B8];
        v32 = *MEMORY[0x277CCA068];
        v33[0] = @"InvalidValueType";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        v6 = [v25 errorWithDomain:@"CAMOverlayErrorDomain" code:-12 userInfo:v26];

        goto LABEL_32;
      case 1:
        if ([v4 indexValue] < 0 || (v29 = objc_msgSend(v4, "indexValue"), -[CAMAbstractOverlayServiceControl valueTitles](v10, "valueTitles"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "count"), v30, v29 >= v31))
        {
          v17 = -13;
          goto LABEL_40;
        }

        break;
      case 2:
        if (!v16)
        {
          v17 = -12;
LABEL_40:
          v6 = CAMOverlayErrorForCode(v17);
          goto LABEL_32;
        }

        break;
      default:
        goto LABEL_32;
    }

    v6 = 0;
    goto LABEL_32;
  }

  v6 = 0;
  if (v5 <= 4 && v5 != 3)
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

  return v6;
}

@end
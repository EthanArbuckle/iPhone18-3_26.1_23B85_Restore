@interface CAMOverlayServicePicker
- (BOOL)isContentEqual:(id)equal;
- (BOOL)isEnabled;
- (CAMOverlayServicePicker)initWithCoder:(id)coder;
- (CAMOverlayServicePicker)initWithIdentifier:(id)identifier pickerType:(int64_t)type captureUniqueID:(id)d;
- (CAMOverlayServicePicker)initWithIdentifier:(id)identifier title:(id)title imageName:(id)name valueTitles:(id)titles;
- (id)updateWithIndexValue:(int64_t)value;
- (id)updateWithStyleDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAMOverlayServicePicker

- (CAMOverlayServicePicker)initWithIdentifier:(id)identifier title:(id)title imageName:(id)name valueTitles:(id)titles
{
  v31 = *MEMORY[0x277D85DE8];
  titlesCopy = titles;
  v29.receiver = self;
  v29.super_class = CAMOverlayServicePicker;
  v11 = [(CAMAbstractOverlayServiceControl *)&v29 _initWithIdentifier:identifier title:title imageName:name];
  v12 = v11;
  if (v11)
  {
    v11->_pickerType = 0;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(titlesCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = titlesCopy;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * v18);
          _preferredLocale = [objc_opt_class() _preferredLocale];
          v21 = [v19 uppercaseStringWithLocale:_preferredLocale];
          [(NSArray *)v13 addObject:v21];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v16);
    }

    valueTitles = v12->_valueTitles;
    v12->_valueTitles = v13;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (CAMOverlayServicePicker)initWithIdentifier:(id)identifier pickerType:(int64_t)type captureUniqueID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  if (type)
  {
    if (type == 1)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Camoverlayserv.isa)];
      v11 = [v10 localizedStringForKey:@"PICKER_STYLE" value:&stru_28432BD98 table:@"CameraOverlayServices"];
      v13.receiver = self;
      v13.super_class = CAMOverlayServicePicker;
      self = [(CAMAbstractOverlayServiceControl *)&v13 _initWithIdentifier:identifierCopy title:v11 imageName:@"dot.dot.grid.app"];

      objc_storeStrong(&self->_captureSessionUniqueID, d);
      self->_pickerType = 1;
    }
  }

  else
  {

    self = 0;
  }

  return self;
}

- (BOOL)isEnabled
{
  v5.receiver = self;
  v5.super_class = CAMOverlayServicePicker;
  isEnabled = [(CAMAbstractOverlayServiceControl *)&v5 isEnabled];
  if (isEnabled)
  {
    LOBYTE(isEnabled) = [(NSArray *)self->_valueTitles count]> 1;
  }

  return isEnabled;
}

- (BOOL)isContentEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = CAMOverlayServicePicker;
  if (-[CAMAbstractOverlayServiceControl isContentEqual:](&v10, sel_isContentEqual_, equalCopy) && (pickerType = self->_pickerType, pickerType == [equalCopy pickerType]))
  {
    valueTitles = self->_valueTitles;
    valueTitles = [equalCopy valueTitles];
    v8 = [(NSArray *)valueTitles isEqualToArray:valueTitles];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = CAMOverlayServicePicker;
  coderCopy = coder;
  [(CAMAbstractOverlayServiceControl *)&v20 encodeWithCoder:coderCopy];
  valueTitles = [(CAMOverlayServicePicker *)self valueTitles];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@.%@", v8, @"valueTitles", v20.receiver, v20.super_class];
  [coderCopy encodeObject:valueTitles forKey:v9];

  captureSessionUniqueID = [(CAMOverlayServicePicker *)self captureSessionUniqueID];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.%@", v13, @"captureSessionUniqueID"];
  [coderCopy encodeObject:captureSessionUniqueID forKey:v14];

  pickerType = [(CAMOverlayServicePicker *)self pickerType];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v16 stringWithFormat:@"%@.%@", v18, @"pickerType"];
  [coderCopy encodeInteger:pickerType forKey:v19];
}

- (CAMOverlayServicePicker)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCACA8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@.%@", v7, @"pickerType"];
  v45 = [coderCopy decodeIntegerForKey:v8];

  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@.%@", v12, @"identifier"];
  v46 = [coderCopy decodeObjectOfClasses:v9 forKey:v13];

  v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"%@.%@", v17, @"title"];
  v44 = [coderCopy decodeObjectOfClasses:v14 forKey:v18];

  v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v20 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [v20 stringWithFormat:@"%@.%@", v22, @"imageName"];
  v24 = [coderCopy decodeObjectOfClasses:v19 forKey:v23];

  v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v26 = MEMORY[0x277CCACA8];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = [v26 stringWithFormat:@"%@.%@", v28, @"captureSessionUniqueID"];
  v30 = [coderCopy decodeObjectOfClasses:v25 forKey:v29];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  v34 = MEMORY[0x277CCACA8];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v37 = [v34 stringWithFormat:@"%@.%@", v36, @"valueTitles"];
  v38 = [coderCopy decodeObjectOfClasses:v33 forKey:v37];

  if (v45 == 1)
  {
    v40 = v46;
    if (v46)
    {
      v39 = v44;
      if (!v30)
      {
        goto LABEL_15;
      }

      v41 = [(CAMOverlayServicePicker *)self initWithIdentifier:v46 pickerType:1 captureUniqueID:v30];
      goto LABEL_12;
    }

    v39 = v44;
  }

  else if (v45)
  {
    v39 = v44;
    v40 = v46;
  }

  else
  {
    v39 = v44;
    v40 = v46;
    if (v46 && v44 && v24 && v38 && !v30)
    {
      v41 = [(CAMOverlayServicePicker *)self initWithIdentifier:v46 title:v44 imageName:v24 valueTitles:v38];
LABEL_12:
      self = v41;
    }
  }

LABEL_15:
  identifier = [(CAMAbstractOverlayServiceControl *)self identifier];

  if (!identifier)
  {

    self = 0;
  }

  return self;
}

- (id)updateWithStyleDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(CAMOverlayServicePicker *)self pickerType]== 1)
  {
    v5 = [CAMOverlayServiceControlUpdate alloc];
    identifier = [(CAMAbstractOverlayServiceControl *)self identifier];
    v7 = [(CAMOverlayServiceControlUpdate *)v5 _initWithControlIdentifier:identifier styleDictionary:dictionaryCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)updateWithIndexValue:(int64_t)value
{
  v5 = [CAMOverlayServiceControlUpdate alloc];
  identifier = [(CAMAbstractOverlayServiceControl *)self identifier];
  v7 = [(CAMOverlayServiceControlUpdate *)v5 _initWithControlIdentifier:identifier indexValue:value];

  return v7;
}

@end
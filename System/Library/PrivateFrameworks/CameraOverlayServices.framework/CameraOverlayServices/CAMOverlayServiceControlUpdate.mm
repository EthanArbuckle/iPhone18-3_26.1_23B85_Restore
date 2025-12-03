@interface CAMOverlayServiceControlUpdate
- (BOOL)isEqualToUpdate:(id)update;
- (CAMOverlayServiceControlUpdate)initWithCoder:(id)coder;
- (id)_initWithControlIdentifier:(id)identifier BOOLeanValue:(BOOL)value;
- (id)_initWithControlIdentifier:(id)identifier floatValue:(float)value;
- (id)_initWithControlIdentifier:(id)identifier indexValue:(int64_t)value;
- (id)_initWithControlIdentifier:(id)identifier isEnabled:(BOOL)enabled;
- (id)_initWithControlIdentifier:(id)identifier isRecording:(BOOL)recording;
- (id)_initWithControlIdentifier:(id)identifier styleDictionary:(id)dictionary;
- (id)_valueString;
- (id)_valueTypeString;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAMOverlayServiceControlUpdate

- (id)_initWithControlIdentifier:(id)identifier floatValue:(float)value
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, identifier);
    v9->_floatValue = value;
    v9->_valueType = 0;
  }

  return v9;
}

- (id)_initWithControlIdentifier:(id)identifier indexValue:(int64_t)value
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, identifier);
    v9->_valueType = 1;
    v9->_indexValue = value;
  }

  return v9;
}

- (id)_initWithControlIdentifier:(id)identifier styleDictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CAMOverlayServiceControlUpdate;
  v9 = [(CAMOverlayServiceControlUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controlIdentifier, identifier);
    objc_storeStrong(&v10->_styleDictionary, dictionary);
    v10->_valueType = 2;
  }

  return v10;
}

- (id)_initWithControlIdentifier:(id)identifier BOOLeanValue:(BOOL)value
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, identifier);
    v9->_BOOLeanValue = value;
    v9->_valueType = 3;
  }

  return v9;
}

- (id)_initWithControlIdentifier:(id)identifier isRecording:(BOOL)recording
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, identifier);
    v9->_recording = recording;
    v9->_valueType = 4;
  }

  return v9;
}

- (id)_initWithControlIdentifier:(id)identifier isEnabled:(BOOL)enabled
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, identifier);
    v9->_enabled = enabled;
    v9->_valueType = 5;
  }

  return v9;
}

- (BOOL)isEqualToUpdate:(id)update
{
  updateCopy = update;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (updateCopy == self)
  {
    v7 = 1;
    goto LABEL_26;
  }

  valueType = [(CAMOverlayServiceControlUpdate *)updateCopy valueType];
  if (valueType != [(CAMOverlayServiceControlUpdate *)self valueType])
  {
LABEL_10:
    v7 = 0;
    goto LABEL_26;
  }

  valueType2 = [(CAMOverlayServiceControlUpdate *)self valueType];
  v7 = 0;
  if (valueType2 > 2)
  {
    switch(valueType2)
    {
      case 3:
        bOOLeanValue = [(CAMOverlayServiceControlUpdate *)updateCopy BOOLeanValue];
        bOOLeanValue2 = [(CAMOverlayServiceControlUpdate *)self BOOLeanValue];
        break;
      case 4:
        bOOLeanValue = [(CAMOverlayServiceControlUpdate *)updateCopy isRecording];
        bOOLeanValue2 = [(CAMOverlayServiceControlUpdate *)self isRecording];
        break;
      case 5:
        bOOLeanValue = [(CAMOverlayServiceControlUpdate *)updateCopy isEnabled];
        bOOLeanValue2 = [(CAMOverlayServiceControlUpdate *)self isEnabled];
        break;
      default:
        goto LABEL_26;
    }

    v7 = bOOLeanValue ^ bOOLeanValue2 ^ 1;
    goto LABEL_26;
  }

  switch(valueType2)
  {
    case 0:
      [(CAMOverlayServiceControlUpdate *)updateCopy floatValue];
      v15 = v14;
      [(CAMOverlayServiceControlUpdate *)self floatValue];
      v17 = v15 == v16;
      goto LABEL_19;
    case 1:
      indexValue = [(CAMOverlayServiceControlUpdate *)updateCopy indexValue];
      v17 = indexValue == [(CAMOverlayServiceControlUpdate *)self indexValue];
LABEL_19:
      v7 = v17;
      break;
    case 2:
      styleDictionary = [(CAMOverlayServiceControlUpdate *)updateCopy styleDictionary];
      styleDictionary2 = [(CAMOverlayServiceControlUpdate *)self styleDictionary];
      if (styleDictionary == styleDictionary2)
      {
        v7 = 1;
      }

      else
      {
        styleDictionary3 = [(CAMOverlayServiceControlUpdate *)updateCopy styleDictionary];
        styleDictionary4 = [(CAMOverlayServiceControlUpdate *)self styleDictionary];
        v7 = [styleDictionary3 isEqualToDictionary:styleDictionary4];
      }

      break;
  }

LABEL_26:

  return v7;
}

- (id)_valueTypeString
{
  valueType = [(CAMOverlayServiceControlUpdate *)self valueType];
  if (valueType > 5)
  {
    return @"invalid";
  }

  else
  {
    return off_278851C50[valueType];
  }
}

- (id)_valueString
{
  valueType = [(CAMOverlayServiceControlUpdate *)self valueType];
  v4 = &stru_28432BD98;
  if (valueType > 2)
  {
    switch(valueType)
    {
      case 3:
        bOOLeanValue = [(CAMOverlayServiceControlUpdate *)self BOOLeanValue];
        break;
      case 4:
        bOOLeanValue = [(CAMOverlayServiceControlUpdate *)self isRecording];
        break;
      case 5:
        bOOLeanValue = [(CAMOverlayServiceControlUpdate *)self isEnabled];
        break;
      default:
        goto LABEL_19;
    }

    v11 = @"NO";
    if (bOOLeanValue)
    {
      v11 = @"YES";
    }

    v10 = v11;
    goto LABEL_18;
  }

  switch(valueType)
  {
    case 0:
      v8 = MEMORY[0x277CCACA8];
      [(CAMOverlayServiceControlUpdate *)self floatValue];
      [v8 stringWithFormat:@"%f", v9];
      v10 = LABEL_13:;
LABEL_18:
      v4 = v10;
      break;
    case 1:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[CAMOverlayServiceControlUpdate indexValue](self, "indexValue")];
      goto LABEL_13;
    case 2:
      v5 = MEMORY[0x277CCACA8];
      styleDictionary = [(CAMOverlayServiceControlUpdate *)self styleDictionary];
      v4 = [v5 stringWithFormat:@"%@", styleDictionary];

      break;
  }

LABEL_19:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _valueTypeString = [(CAMOverlayServiceControlUpdate *)self _valueTypeString];
  _valueString = [(CAMOverlayServiceControlUpdate *)self _valueString];
  v8 = [v3 stringWithFormat:@"<%@: %p: %@ %@>", v5, self, _valueTypeString, _valueString];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  _valueTypeString = [(CAMOverlayServiceControlUpdate *)self _valueTypeString];
  _valueString = [(CAMOverlayServiceControlUpdate *)self _valueString];
  v6 = [v3 stringWithFormat:@"%@(%@)", _valueTypeString, _valueString];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  valueType = [(CAMOverlayServiceControlUpdate *)self valueType];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@.%@", v7, @"valueType"];
  [coderCopy encodeInteger:valueType forKey:v8];

  controlIdentifier = [(CAMOverlayServiceControlUpdate *)self controlIdentifier];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@.%@", v12, @"controlIdentifier"];
  [coderCopy encodeObject:controlIdentifier forKey:v13];

  valueType2 = [(CAMOverlayServiceControlUpdate *)self valueType];
  if (valueType2 > 2)
  {
    switch(valueType2)
    {
      case 3:
        bOOLeanValue = [(CAMOverlayServiceControlUpdate *)self BOOLeanValue];
        v21 = MEMORY[0x277CCACA8];
        v29 = objc_opt_class();
        v23 = NSStringFromClass(v29);
        styleDictionary = v23;
        v24 = @"BOOLeanValue";
        break;
      case 4:
        bOOLeanValue = [(CAMOverlayServiceControlUpdate *)self isRecording];
        v21 = MEMORY[0x277CCACA8];
        v33 = objc_opt_class();
        v23 = NSStringFromClass(v33);
        styleDictionary = v23;
        v24 = @"recording";
        break;
      case 5:
        bOOLeanValue = [(CAMOverlayServiceControlUpdate *)self isEnabled];
        v21 = MEMORY[0x277CCACA8];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        styleDictionary = v23;
        v24 = @"enabled";
        break;
      default:
        goto LABEL_16;
    }

    v18 = [v21 stringWithFormat:@"%@.%@", v23, v24];
    [coderCopy encodeBool:bOOLeanValue forKey:v18];
  }

  else if (valueType2)
  {
    if (valueType2 == 1)
    {
      indexValue = [(CAMOverlayServiceControlUpdate *)self indexValue];
      v31 = MEMORY[0x277CCACA8];
      v32 = objc_opt_class();
      styleDictionary = NSStringFromClass(v32);
      v18 = [v31 stringWithFormat:@"%@.%@", styleDictionary, @"indexValue"];
      [coderCopy encodeInteger:indexValue forKey:v18];
    }

    else
    {
      if (valueType2 != 2)
      {
        goto LABEL_16;
      }

      styleDictionary = [(CAMOverlayServiceControlUpdate *)self styleDictionary];
      v16 = MEMORY[0x277CCACA8];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v16 stringWithFormat:@"%@.%@", v18, @"styleDictionary"];
      [coderCopy encodeObject:styleDictionary forKey:v19];
    }
  }

  else
  {
    [(CAMOverlayServiceControlUpdate *)self floatValue];
    v26 = v25;
    v27 = MEMORY[0x277CCACA8];
    v28 = objc_opt_class();
    styleDictionary = NSStringFromClass(v28);
    v18 = [v27 stringWithFormat:@"%@.%@", styleDictionary, @"floatValue"];
    [coderCopy encodeDouble:v18 forKey:v26];
  }

LABEL_16:
}

- (CAMOverlayServiceControlUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@.%@", v7, @"valueType"];
  v9 = [coderCopy decodeIntegerForKey:v8];

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.%@", v13, @"controlIdentifier"];
  v15 = [coderCopy decodeObjectOfClasses:v10 forKey:v14];

  if (v9 > 2)
  {
    switch(v9)
    {
      case 3:
        v26 = [(CAMOverlayServiceControlUpdate *)self _initWithControlIdentifier:v15 BOOLeanValue:0];
        v33 = MEMORY[0x277CCACA8];
        v34 = objc_opt_class();
        self = NSStringFromClass(v34);
        v29 = [v33 stringWithFormat:@"%@.%@", self, @"BOOLeanValue"];
        v26->_BOOLeanValue = [coderCopy decodeBoolForKey:v29];
        break;
      case 4:
        v26 = [(CAMOverlayServiceControlUpdate *)self _initWithControlIdentifier:v15 isRecording:0];
        v37 = MEMORY[0x277CCACA8];
        v38 = objc_opt_class();
        self = NSStringFromClass(v38);
        v29 = [v37 stringWithFormat:@"%@.%@", self, @"recording"];
        v26->_recording = [coderCopy decodeBoolForKey:v29];
        break;
      case 5:
        v26 = [(CAMOverlayServiceControlUpdate *)self _initWithControlIdentifier:v15 isEnabled:0];
        v27 = MEMORY[0x277CCACA8];
        v28 = objc_opt_class();
        self = NSStringFromClass(v28);
        v29 = [v27 stringWithFormat:@"%@.%@", self, @"enabled"];
        v26->_enabled = [coderCopy decodeBoolForKey:v29];
        break;
      default:
        goto LABEL_17;
    }

    goto LABEL_15;
  }

  switch(v9)
  {
    case 0:
      v26 = [(CAMOverlayServiceControlUpdate *)self _initWithControlIdentifier:v15 floatValue:0.0];
      v30 = MEMORY[0x277CCACA8];
      v31 = objc_opt_class();
      self = NSStringFromClass(v31);
      v29 = [v30 stringWithFormat:@"%@.%@", self, @"floatValue"];
      [coderCopy decodeDoubleForKey:v29];
      *&v32 = v32;
      v26->_floatValue = *&v32;
LABEL_15:

      goto LABEL_16;
    case 1:
      v26 = [(CAMOverlayServiceControlUpdate *)self _initWithControlIdentifier:v15 indexValue:0];
      v35 = MEMORY[0x277CCACA8];
      v36 = objc_opt_class();
      self = NSStringFromClass(v36);
      v29 = [v35 stringWithFormat:@"%@.%@", self, @"indexValue"];
      v26->_indexValue = [coderCopy decodeIntegerForKey:v29];
      goto LABEL_15;
    case 2:
      self = [(CAMOverlayServiceControlUpdate *)self _initWithControlIdentifier:v15 styleDictionary:0];
      v16 = MEMORY[0x277CBEB98];
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
      v20 = MEMORY[0x277CCACA8];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v20 stringWithFormat:@"%@.%@", v22, @"styleDictionary"];
      v24 = [coderCopy decodeObjectOfClasses:v19 forKey:v23];
      styleDictionary = self->_styleDictionary;
      self->_styleDictionary = v24;

      if (!self->_styleDictionary)
      {
        v26 = 0;
LABEL_16:

        self = v26;
      }

      break;
  }

LABEL_17:
  if (!self->_controlIdentifier)
  {

    self = 0;
  }

  return self;
}

@end
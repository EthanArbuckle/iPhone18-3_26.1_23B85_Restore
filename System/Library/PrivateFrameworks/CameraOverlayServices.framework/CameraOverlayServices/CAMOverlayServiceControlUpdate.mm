@interface CAMOverlayServiceControlUpdate
- (BOOL)isEqualToUpdate:(id)a3;
- (CAMOverlayServiceControlUpdate)initWithCoder:(id)a3;
- (id)_initWithControlIdentifier:(id)a3 BOOLeanValue:(BOOL)a4;
- (id)_initWithControlIdentifier:(id)a3 floatValue:(float)a4;
- (id)_initWithControlIdentifier:(id)a3 indexValue:(int64_t)a4;
- (id)_initWithControlIdentifier:(id)a3 isEnabled:(BOOL)a4;
- (id)_initWithControlIdentifier:(id)a3 isRecording:(BOOL)a4;
- (id)_initWithControlIdentifier:(id)a3 styleDictionary:(id)a4;
- (id)_valueString;
- (id)_valueTypeString;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAMOverlayServiceControlUpdate

- (id)_initWithControlIdentifier:(id)a3 floatValue:(float)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, a3);
    v9->_floatValue = a4;
    v9->_valueType = 0;
  }

  return v9;
}

- (id)_initWithControlIdentifier:(id)a3 indexValue:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, a3);
    v9->_valueType = 1;
    v9->_indexValue = a4;
  }

  return v9;
}

- (id)_initWithControlIdentifier:(id)a3 styleDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAMOverlayServiceControlUpdate;
  v9 = [(CAMOverlayServiceControlUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controlIdentifier, a3);
    objc_storeStrong(&v10->_styleDictionary, a4);
    v10->_valueType = 2;
  }

  return v10;
}

- (id)_initWithControlIdentifier:(id)a3 BOOLeanValue:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, a3);
    v9->_BOOLeanValue = a4;
    v9->_valueType = 3;
  }

  return v9;
}

- (id)_initWithControlIdentifier:(id)a3 isRecording:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, a3);
    v9->_recording = a4;
    v9->_valueType = 4;
  }

  return v9;
}

- (id)_initWithControlIdentifier:(id)a3 isEnabled:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CAMOverlayServiceControlUpdate;
  v8 = [(CAMOverlayServiceControlUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlIdentifier, a3);
    v9->_enabled = a4;
    v9->_valueType = 5;
  }

  return v9;
}

- (BOOL)isEqualToUpdate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v4 == self)
  {
    v7 = 1;
    goto LABEL_26;
  }

  v5 = [(CAMOverlayServiceControlUpdate *)v4 valueType];
  if (v5 != [(CAMOverlayServiceControlUpdate *)self valueType])
  {
LABEL_10:
    v7 = 0;
    goto LABEL_26;
  }

  v6 = [(CAMOverlayServiceControlUpdate *)self valueType];
  v7 = 0;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v12 = [(CAMOverlayServiceControlUpdate *)v4 BOOLeanValue];
        v13 = [(CAMOverlayServiceControlUpdate *)self BOOLeanValue];
        break;
      case 4:
        v12 = [(CAMOverlayServiceControlUpdate *)v4 isRecording];
        v13 = [(CAMOverlayServiceControlUpdate *)self isRecording];
        break;
      case 5:
        v12 = [(CAMOverlayServiceControlUpdate *)v4 isEnabled];
        v13 = [(CAMOverlayServiceControlUpdate *)self isEnabled];
        break;
      default:
        goto LABEL_26;
    }

    v7 = v12 ^ v13 ^ 1;
    goto LABEL_26;
  }

  switch(v6)
  {
    case 0:
      [(CAMOverlayServiceControlUpdate *)v4 floatValue];
      v15 = v14;
      [(CAMOverlayServiceControlUpdate *)self floatValue];
      v17 = v15 == v16;
      goto LABEL_19;
    case 1:
      v18 = [(CAMOverlayServiceControlUpdate *)v4 indexValue];
      v17 = v18 == [(CAMOverlayServiceControlUpdate *)self indexValue];
LABEL_19:
      v7 = v17;
      break;
    case 2:
      v8 = [(CAMOverlayServiceControlUpdate *)v4 styleDictionary];
      v9 = [(CAMOverlayServiceControlUpdate *)self styleDictionary];
      if (v8 == v9)
      {
        v7 = 1;
      }

      else
      {
        v10 = [(CAMOverlayServiceControlUpdate *)v4 styleDictionary];
        v11 = [(CAMOverlayServiceControlUpdate *)self styleDictionary];
        v7 = [v10 isEqualToDictionary:v11];
      }

      break;
  }

LABEL_26:

  return v7;
}

- (id)_valueTypeString
{
  v2 = [(CAMOverlayServiceControlUpdate *)self valueType];
  if (v2 > 5)
  {
    return @"invalid";
  }

  else
  {
    return off_278851C50[v2];
  }
}

- (id)_valueString
{
  v3 = [(CAMOverlayServiceControlUpdate *)self valueType];
  v4 = &stru_28432BD98;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v7 = [(CAMOverlayServiceControlUpdate *)self BOOLeanValue];
        break;
      case 4:
        v7 = [(CAMOverlayServiceControlUpdate *)self isRecording];
        break;
      case 5:
        v7 = [(CAMOverlayServiceControlUpdate *)self isEnabled];
        break;
      default:
        goto LABEL_19;
    }

    v11 = @"NO";
    if (v7)
    {
      v11 = @"YES";
    }

    v10 = v11;
    goto LABEL_18;
  }

  switch(v3)
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
      v6 = [(CAMOverlayServiceControlUpdate *)self styleDictionary];
      v4 = [v5 stringWithFormat:@"%@", v6];

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
  v6 = [(CAMOverlayServiceControlUpdate *)self _valueTypeString];
  v7 = [(CAMOverlayServiceControlUpdate *)self _valueString];
  v8 = [v3 stringWithFormat:@"<%@: %p: %@ %@>", v5, self, v6, v7];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CAMOverlayServiceControlUpdate *)self _valueTypeString];
  v5 = [(CAMOverlayServiceControlUpdate *)self _valueString];
  v6 = [v3 stringWithFormat:@"%@(%@)", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v34 = a3;
  v4 = [(CAMOverlayServiceControlUpdate *)self valueType];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@.%@", v7, @"valueType"];
  [v34 encodeInteger:v4 forKey:v8];

  v9 = [(CAMOverlayServiceControlUpdate *)self controlIdentifier];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@.%@", v12, @"controlIdentifier"];
  [v34 encodeObject:v9 forKey:v13];

  v14 = [(CAMOverlayServiceControlUpdate *)self valueType];
  if (v14 > 2)
  {
    switch(v14)
    {
      case 3:
        v20 = [(CAMOverlayServiceControlUpdate *)self BOOLeanValue];
        v21 = MEMORY[0x277CCACA8];
        v29 = objc_opt_class();
        v23 = NSStringFromClass(v29);
        v15 = v23;
        v24 = @"BOOLeanValue";
        break;
      case 4:
        v20 = [(CAMOverlayServiceControlUpdate *)self isRecording];
        v21 = MEMORY[0x277CCACA8];
        v33 = objc_opt_class();
        v23 = NSStringFromClass(v33);
        v15 = v23;
        v24 = @"recording";
        break;
      case 5:
        v20 = [(CAMOverlayServiceControlUpdate *)self isEnabled];
        v21 = MEMORY[0x277CCACA8];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v15 = v23;
        v24 = @"enabled";
        break;
      default:
        goto LABEL_16;
    }

    v18 = [v21 stringWithFormat:@"%@.%@", v23, v24];
    [v34 encodeBool:v20 forKey:v18];
  }

  else if (v14)
  {
    if (v14 == 1)
    {
      v30 = [(CAMOverlayServiceControlUpdate *)self indexValue];
      v31 = MEMORY[0x277CCACA8];
      v32 = objc_opt_class();
      v15 = NSStringFromClass(v32);
      v18 = [v31 stringWithFormat:@"%@.%@", v15, @"indexValue"];
      [v34 encodeInteger:v30 forKey:v18];
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_16;
      }

      v15 = [(CAMOverlayServiceControlUpdate *)self styleDictionary];
      v16 = MEMORY[0x277CCACA8];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v16 stringWithFormat:@"%@.%@", v18, @"styleDictionary"];
      [v34 encodeObject:v15 forKey:v19];
    }
  }

  else
  {
    [(CAMOverlayServiceControlUpdate *)self floatValue];
    v26 = v25;
    v27 = MEMORY[0x277CCACA8];
    v28 = objc_opt_class();
    v15 = NSStringFromClass(v28);
    v18 = [v27 stringWithFormat:@"%@.%@", v15, @"floatValue"];
    [v34 encodeDouble:v18 forKey:v26];
  }

LABEL_16:
}

- (CAMOverlayServiceControlUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@.%@", v7, @"valueType"];
  v9 = [v4 decodeIntegerForKey:v8];

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.%@", v13, @"controlIdentifier"];
  v15 = [v4 decodeObjectOfClasses:v10 forKey:v14];

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
        v26->_BOOLeanValue = [v4 decodeBoolForKey:v29];
        break;
      case 4:
        v26 = [(CAMOverlayServiceControlUpdate *)self _initWithControlIdentifier:v15 isRecording:0];
        v37 = MEMORY[0x277CCACA8];
        v38 = objc_opt_class();
        self = NSStringFromClass(v38);
        v29 = [v37 stringWithFormat:@"%@.%@", self, @"recording"];
        v26->_recording = [v4 decodeBoolForKey:v29];
        break;
      case 5:
        v26 = [(CAMOverlayServiceControlUpdate *)self _initWithControlIdentifier:v15 isEnabled:0];
        v27 = MEMORY[0x277CCACA8];
        v28 = objc_opt_class();
        self = NSStringFromClass(v28);
        v29 = [v27 stringWithFormat:@"%@.%@", self, @"enabled"];
        v26->_enabled = [v4 decodeBoolForKey:v29];
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
      [v4 decodeDoubleForKey:v29];
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
      v26->_indexValue = [v4 decodeIntegerForKey:v29];
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
      v24 = [v4 decodeObjectOfClasses:v19 forKey:v23];
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
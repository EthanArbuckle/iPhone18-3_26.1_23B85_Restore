@interface PKPassField
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (NSString)value;
- (PKPassField)init;
- (PKPassField)initWithCoder:(id)a3;
- (id)asDictionary;
- (id)asMutableDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)flushCachedValue;
- (void)setUnformattedValue:(id)a3;
@end

@implementation PKPassField

- (PKPassField)init
{
  v3.receiver = self;
  v3.super_class = PKPassField;
  result = [(PKPassField *)&v3 init];
  if (result)
  {
    *&result->_textAlignment = xmmword_1ADB9A720;
    result->_unitType = 0;
  }

  return result;
}

- (NSString)value
{
  value = self->_value;
  p_value = &self->_value;
  v4 = value;
  if (!value)
  {
    objc_storeStrong(p_value, self->_unformattedValue);
    v4 = self->_value;
  }

  return v4;
}

- (PKPassField)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = PKPassField;
  v5 = [(PKPassField *)&v48 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"labelImage"];
    labelImage = v5->_labelImage;
    v5->_labelImage = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityLabel"];
    accessibilityLabel = v5->_accessibilityLabel;
    v5->_accessibilityLabel = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueImage"];
    valueImage = v5->_valueImage;
    v5->_valueImage = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"unformattedValue"];
    unformattedValue = v5->_unformattedValue;
    v5->_unformattedValue = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityValue"];
    accessibilityValue = v5->_accessibilityValue;
    v5->_accessibilityValue = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryImage"];
    accessoryImage = v5->_accessoryImage;
    v5->_accessoryImage = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"link"];
    link = v5->_link;
    v5->_link = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changeMessage"];
    changeMessage = v5->_changeMessage;
    v5->_changeMessage = v31;

    v5->_textAlignment = [v4 decodeIntegerForKey:@"textAlignment"];
    v5->_dataDetectorTypes = [v4 decodeIntegerForKey:@"dataDetectorTypes"];
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"semantics"];
    semantics = v5->_semantics;
    v5->_semantics = v37;

    v5->_cellStyle = [v4 decodeIntegerForKey:@"cellStyle"];
    v5->_foreignReferenceType = [v4 decodeIntegerForKey:@"foreignReferenceType"];
    v5->_unitType = [v4 decodeIntForKey:@"unitType"];
    v39 = objc_alloc(MEMORY[0x1E695DFD8]);
    v40 = objc_opt_class();
    v41 = [v39 initWithObjects:{v40, objc_opt_class(), 0}];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"combinedForeignReferenceIdentifiers"];
    foreignReferenceIdentifiers = v5->_foreignReferenceIdentifiers;
    v5->_foreignReferenceIdentifiers = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"row"];
    v5->_row = [v44 unsignedIntegerValue];

    [v4 decodeFloatForKey:@"amount"];
    v5->_amount = v45;
    [v4 decodeFloatForKey:@"threshold"];
    v5->_threshold = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  v10 = a3;
  v6 = [v4 numberWithInteger:type];
  [v10 encodeObject:v6 forKey:@"type"];

  [v10 encodeObject:self->_key forKey:@"key"];
  [v10 encodeObject:self->_label forKey:@"label"];
  [v10 encodeObject:self->_labelImage forKey:@"labelImage"];
  [v10 encodeObject:self->_accessibilityLabel forKey:@"accessibilityLabel"];
  [v10 encodeObject:self->_value forKey:@"value"];
  [v10 encodeObject:self->_valueImage forKey:@"valueImage"];
  [v10 encodeObject:self->_unformattedValue forKey:@"unformattedValue"];
  [v10 encodeObject:self->_accessibilityValue forKey:@"accessibilityValue"];
  [v10 encodeObject:self->_accessoryImage forKey:@"accessoryImage"];
  [v10 encodeObject:self->_link forKey:@"link"];
  [v10 encodeObject:self->_changeMessage forKey:@"changeMessage"];
  [v10 encodeInteger:self->_textAlignment forKey:@"textAlignment"];
  [v10 encodeInteger:self->_dataDetectorTypes forKey:@"dataDetectorTypes"];
  [v10 encodeObject:self->_semantics forKey:@"semantics"];
  [v10 encodeInteger:self->_cellStyle forKey:@"cellStyle"];
  [v10 encodeInteger:self->_foreignReferenceType forKey:@"foreignReferenceType"];
  [v10 encodeInteger:self->_unitType forKey:@"unitType"];
  [v10 encodeObject:self->_foreignReferenceIdentifiers forKey:@"combinedForeignReferenceIdentifiers"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_row];
  [v10 encodeObject:v7 forKey:@"row"];

  amount = self->_amount;
  *&amount = amount;
  [v10 encodeFloat:@"amount" forKey:amount];
  threshold = self->_threshold;
  *&threshold = threshold;
  [v10 encodeFloat:@"threshold" forKey:threshold];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [v4 setType:self->_type];
  v5 = [(NSString *)self->_key copy];
  [v4 setKey:v5];

  v6 = [(NSString *)self->_label copy];
  [v4 setLabel:v6];

  v7 = [(PKPassFieldImage *)self->_labelImage copy];
  [v4 setLabelImage:v7];

  v8 = [(NSString *)self->_value copy];
  [v4 setValue:v8 forKey:@"value"];

  v9 = [(PKPassFieldImage *)self->_valueImage copy];
  [v4 setValueImage:v9];

  v10 = [self->_unformattedValue copy];
  [v4 setUnformattedValue:v10];

  v11 = [(PKPassFieldImage *)self->_accessoryImage copy];
  [v4 setAccessoryImage:v11];

  v12 = [(NSString *)self->_link copy];
  [v4 setLink:v12];

  v13 = [(NSString *)self->_changeMessage copy];
  [v4 setChangeMessage:v13];

  [v4 setTextAlignment:self->_textAlignment];
  [v4 setDataDetectorTypes:self->_dataDetectorTypes];
  v14 = [(NSDictionary *)self->_semantics copy];
  [v4 setSemantics:v14];

  [v4 setCellStyle:self->_cellStyle];
  [v4 setUnitType:self->_unitType];
  [v4 setForeignReferenceType:self->_foreignReferenceType];
  v15 = [(NSSet *)self->_foreignReferenceIdentifiers copy];
  [v4 setForeignReferenceIdentifiers:v15];

  [v4 setRow:self->_row];
  [v4 setAmount:self->_amount];
  [v4 setThreshold:self->_threshold];
  v16 = [(NSString *)self->_accessibilityLabel copy];
  [v4 setAccessibilityLabel:v16];

  v17 = [(NSString *)self->_accessibilityValue copy];
  [v4 setAccessibilityValue:v17];

  return v4;
}

- (void)setUnformattedValue:(id)a3
{
  v7 = a3;
  value = self->_value;
  if (value)
  {
    self->_value = 0;
  }

  v5 = [v7 copy];
  unformattedValue = self->_unformattedValue;
  self->_unformattedValue = v5;
}

- (void)flushCachedValue
{
  value = self->_value;
  self->_value = 0;
}

- (id)asDictionary
{
  v2 = [(PKPassField *)self asMutableDictionary];
  v3 = [v2 copy];

  return v3;
}

- (id)asMutableDictionary
{
  v59[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKeyedSubscript:@"key"];
  }

  label = self->_label;
  if (label)
  {
    [v9 setObject:label forKeyedSubscript:@"label"];
  }

  if (self->_labelImage)
  {
    v12 = objc_alloc(MEMORY[0x1E695DF90]);
    v58[0] = @"symbolName";
    v13 = [(PKPassFieldImage *)self->_labelImage symbolName];
    v59[0] = v13;
    v58[1] = @"imageName";
    v14 = [(PKPassFieldImage *)self->_labelImage imageName];
    v59[1] = v14;
    v58[2] = @"tintColor";
    v15 = PKSemanticColorToString([(PKPassFieldImage *)self->_labelImage tintColor]);
    v59[2] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
    v17 = [v12 initWithDictionary:v16];
    [v9 setObject:v17 forKeyedSubscript:@"imageLabel"];
  }

  value = self->_value;
  if (value)
  {
    [v9 setObject:value forKeyedSubscript:@"value"];
  }

  if (self->_valueImage)
  {
    v19 = objc_alloc(MEMORY[0x1E695DF90]);
    v56[0] = @"symbolName";
    v20 = [(PKPassFieldImage *)self->_valueImage symbolName];
    v57[0] = v20;
    v56[1] = @"imageName";
    v21 = [(PKPassFieldImage *)self->_valueImage imageName];
    v57[1] = v21;
    v56[2] = @"tintColor";
    v22 = PKSemanticColorToString([(PKPassFieldImage *)self->_valueImage tintColor]);
    v57[2] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
    v24 = [v19 initWithDictionary:v23];
    [v9 setObject:v24 forKeyedSubscript:@"imageValue"];
  }

  if (self->_accessoryImage)
  {
    v25 = objc_alloc(MEMORY[0x1E695DF90]);
    v54[0] = @"symbolName";
    v26 = [(PKPassFieldImage *)self->_accessoryImage symbolName];
    v55[0] = v26;
    v54[1] = @"imageName";
    v27 = [(PKPassFieldImage *)self->_accessoryImage imageName];
    v55[1] = v27;
    v54[2] = @"tintColor";
    v28 = PKSemanticColorToString([(PKPassFieldImage *)self->_accessoryImage tintColor]);
    v55[2] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
    v30 = [v25 initWithDictionary:v29];
    [v9 setObject:v30 forKeyedSubscript:@"imageAccessory"];
  }

  link = self->_link;
  if (link)
  {
    [v9 setObject:link forKeyedSubscript:@"link"];
  }

  if (self->_foreignReferenceType == 1)
  {
    [v9 setObject:@"Balance" forKeyedSubscript:@"foreignReferenceType"];
    foreignReferenceIdentifiers = self->_foreignReferenceIdentifiers;
    if (foreignReferenceIdentifiers)
    {
      v33 = [(NSSet *)foreignReferenceIdentifiers copy];
      [v9 setObject:v33 forKeyedSubscript:@"combinedForeignReferenceIdentifiers"];
    }
  }

  v34 = _PKEnumValueToString(self->_unitType, @"PKFieldUnitType", @"PKFieldUnitTypeNone, PKFieldUnitTypeDefault, PKFieldUnitTypeRides, PKFieldUnitTypeTickets, PKFieldUnitTypeLoyaltyPoints", v4, v5, v6, v7, v8, -1);
  [v9 setObject:v34 forKeyedSubscript:@"unitType"];

  changeMessage = self->_changeMessage;
  if (changeMessage)
  {
    [v9 setObject:changeMessage forKeyedSubscript:@"changeMessage"];
  }

  if (self->_type == 3 && self->_row)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v9 setObject:v41 forKeyedSubscript:@"row"];
  }

  v42 = _PKEnumValueToString(self->_textAlignment, @"PKTextAlignment", @"PKTextAlignmentLeft, PKTextAlignmentCenter, PKTextAlignmentRight, PKTextAlignmentNatural", v35, v36, v37, v38, v39, 0);
  [v9 setObject:v42 forKeyedSubscript:@"textAlignment"];

  v48 = _PKEnumValueToString(self->_cellStyle, @"PKTableViewCellStyle", @"PKTableViewCellStyleDefault, PKTableViewCellStyleValue1, PKTableViewCellStyleValue2, PKTableViewCellStyleSubtitle", v43, v44, v45, v46, v47, 0);
  [v9 setObject:v48 forKeyedSubscript:@"cellStyle"];

  v49 = [MEMORY[0x1E696AD98] numberWithDouble:self->_amount];
  [v9 setObject:v49 forKeyedSubscript:@"amount"];

  v50 = [MEMORY[0x1E696AD98] numberWithDouble:self->_threshold];
  [v9 setObject:v50 forKeyedSubscript:@"threshold"];

  accessibilityLabel = self->_accessibilityLabel;
  if (accessibilityLabel)
  {
    [v9 setObject:accessibilityLabel forKeyedSubscript:@"accessibilityLabel"];
  }

  accessibilityValue = self->_accessibilityValue;
  if (accessibilityValue)
  {
    [v9 setObject:accessibilityValue forKeyedSubscript:@"accessibilityValue"];
  }

  return v9;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  label = self->_label;
  v4 = [(PKPassField *)self value];
  v5 = [v2 stringWithFormat:@"[%@][%@]", label, v4];

  return v5;
}

- (NSString)accessibilityLabel
{
  accessibilityLabel = self->_accessibilityLabel;
  if (!accessibilityLabel)
  {
    accessibilityLabel = self->_label;
  }

  return accessibilityLabel;
}

- (NSString)accessibilityValue
{
  accessibilityValue = self->_accessibilityValue;
  if (accessibilityValue)
  {
    v3 = accessibilityValue;
  }

  else
  {
    v3 = [(PKPassField *)self value];
  }

  return v3;
}

@end
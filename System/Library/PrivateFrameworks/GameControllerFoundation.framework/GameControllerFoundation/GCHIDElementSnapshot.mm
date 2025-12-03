@interface GCHIDElementSnapshot
- (GCHIDElementSnapshot)init;
- (GCHIDElementSnapshot)initWithCoder:(id)coder;
- (GCHIDElementSnapshot)initWithDictionary:(id)dictionary;
- (GCHIDElementSnapshot)initWithHIDElement:(id)element;
- (id)debugDescription;
- (id)valueForElementKey:(id)key;
- (id)valueForKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCHIDElementSnapshot

- (GCHIDElementSnapshot)initWithHIDElement:(id)element
{
  v8.receiver = self;
  v8.super_class = GCHIDElementSnapshot;
  elementCopy = element;
  v4 = [(GCHIDElementSnapshot *)&v8 init];
  v4->_usageType = [elementCopy usageType];
  v4->_usageTypeIndex = [elementCopy usageTypeIndex];
  v4->_elementCookie = [elementCopy elementCookie];
  v4->_type = [elementCopy type];
  v4->_collectionType = [elementCopy collectionType];
  v4->_usage = [elementCopy usage];
  v4->_usagePage = [elementCopy usagePage];
  v4->_min = [elementCopy min];
  v4->_max = [elementCopy max];
  v4->_scaledMin = [elementCopy scaledMin];
  v4->_scaledMax = [elementCopy scaledMax];
  v4->_size = [elementCopy size];
  v4->_reportSize = [elementCopy reportSize];
  v4->_reportCount = [elementCopy reportCount];
  v4->_reportID = [elementCopy reportID];
  v4->_isArray = [elementCopy isArray];
  v4->_isRelative = [elementCopy isRelative];
  v4->_isWrapping = [elementCopy isWrapping];
  v4->_isNonLinear = [elementCopy isNonLinear];
  v4->_hasPreferredState = [elementCopy hasPreferredState];
  v4->_hasNullState = [elementCopy hasNullState];
  v4->_flags = [elementCopy flags];
  v4->_unit = [elementCopy unit];
  v4->_unitExponent = [elementCopy unitExponent];
  name = [elementCopy name];

  name = v4->_name;
  v4->_name = name;

  return v4;
}

- (GCHIDElementSnapshot)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v82.receiver = self;
  v82.super_class = GCHIDElementSnapshot;
  v5 = [(GCHIDElementSnapshot *)&v82 init];
  v6 = [dictionaryCopy objectForKey:@"UsageType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v5->_usageType = integerValue;
  v8 = [dictionaryCopy objectForKey:@"UsageTypeIndex"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue2 = [v8 integerValue];
  }

  else
  {
    integerValue2 = -1;
  }

  v5->_usageTypeIndex = integerValue2;
  v10 = [dictionaryCopy objectForKey:@"ElementCookie"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v10 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  v5->_elementCookie = unsignedIntValue;
  v12 = [dictionaryCopy objectForKey:@"Type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v12 intValue];
  }

  else
  {
    intValue = 0;
  }

  v5->_type = intValue;
  v14 = [dictionaryCopy objectForKey:@"CollectionType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue2 = [v14 intValue];
  }

  else
  {
    intValue2 = 0;
  }

  v5->_collectionType = intValue2;
  v16 = [dictionaryCopy objectForKey:@"Usage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue3 = [v16 integerValue];
  }

  else
  {
    integerValue3 = 0;
  }

  v5->_usage = integerValue3;
  v18 = [dictionaryCopy objectForKey:@"UsagePage"];
  objc_opt_class();
  v81 = v6;
  if (objc_opt_isKindOfClass())
  {
    integerValue4 = [v18 integerValue];
  }

  else
  {
    integerValue4 = 0;
  }

  v5->_usagePage = integerValue4;
  v20 = [dictionaryCopy objectForKey:@"Min"];
  objc_opt_class();
  v75 = v20;
  if (objc_opt_isKindOfClass())
  {
    integerValue5 = [v20 integerValue];
  }

  else
  {
    integerValue5 = 0;
  }

  v79 = v10;
  v5->_min = integerValue5;
  v22 = [dictionaryCopy objectForKey:@"Max"];
  objc_opt_class();
  v80 = v8;
  if (objc_opt_isKindOfClass())
  {
    integerValue6 = [v22 integerValue];
  }

  else
  {
    integerValue6 = 0;
  }

  v69 = v18;
  v5->_max = integerValue6;
  v24 = [dictionaryCopy objectForKey:@"ScaledMin"];
  objc_opt_class();
  v73 = v24;
  v25 = v16;
  if (objc_opt_isKindOfClass())
  {
    integerValue7 = [v24 integerValue];
  }

  else
  {
    integerValue7 = 0;
  }

  v27 = v14;
  v5->_scaledMin = integerValue7;
  v28 = [dictionaryCopy objectForKey:@"ScaledMax"];
  objc_opt_class();
  v29 = v12;
  if (objc_opt_isKindOfClass())
  {
    integerValue8 = [v28 integerValue];
  }

  else
  {
    integerValue8 = 0;
  }

  v5->_scaledMax = integerValue8;
  v31 = [dictionaryCopy objectForKey:@"Size"];
  objc_opt_class();
  v71 = v31;
  if (objc_opt_isKindOfClass())
  {
    integerValue9 = [v31 integerValue];
  }

  else
  {
    integerValue9 = 0;
  }

  v5->_size = integerValue9;
  v33 = [dictionaryCopy objectForKey:@"ReportSize"];
  objc_opt_class();
  v34 = v29;
  v70 = v33;
  if (objc_opt_isKindOfClass())
  {
    integerValue10 = [v33 integerValue];
  }

  else
  {
    integerValue10 = 0;
  }

  v36 = v27;
  v5->_reportSize = integerValue10;
  v37 = [dictionaryCopy objectForKey:@"ReportCount"];
  objc_opt_class();
  v76 = v25;
  v74 = v22;
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue2 = [v37 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = 0;
  }

  v5->_reportCount = unsignedIntValue2;
  v39 = [dictionaryCopy objectForKey:@"ReportID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue11 = [v39 integerValue];
  }

  else
  {
    integerValue11 = 0;
  }

  v5->_reportID = integerValue11;
  v41 = [dictionaryCopy objectForKey:@"IsArray"];
  objc_opt_class();
  v66 = v41;
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v41 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v5->_isArray = bOOLValue;
  v43 = [dictionaryCopy objectForKey:@"IsRelative"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue2 = [v43 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  v5->_isRelative = bOOLValue2;
  v45 = [dictionaryCopy objectForKey:@"IsWrapping"];
  objc_opt_class();
  v72 = v28;
  v64 = v45;
  if (objc_opt_isKindOfClass())
  {
    bOOLValue3 = [v45 BOOLValue];
  }

  else
  {
    bOOLValue3 = 0;
  }

  v5->_isWrapping = bOOLValue3;
  v47 = [dictionaryCopy objectForKey:{@"IsNonLinear", v64}];
  objc_opt_class();
  v67 = v39;
  v68 = v37;
  if (objc_opt_isKindOfClass())
  {
    bOOLValue4 = [v47 BOOLValue];
  }

  else
  {
    bOOLValue4 = 0;
  }

  v5->_isNonLinear = bOOLValue4;
  v49 = [dictionaryCopy objectForKey:@"HasPreferredState"];
  objc_opt_class();
  v78 = v34;
  if (objc_opt_isKindOfClass())
  {
    bOOLValue5 = [v49 BOOLValue];
  }

  else
  {
    bOOLValue5 = 0;
  }

  v5->_hasPreferredState = bOOLValue5;
  v51 = [dictionaryCopy objectForKey:@"HasNullState"];
  objc_opt_class();
  v77 = v36;
  if (objc_opt_isKindOfClass())
  {
    bOOLValue6 = [v51 BOOLValue];
  }

  else
  {
    bOOLValue6 = 0;
  }

  v5->_hasNullState = bOOLValue6;
  v53 = [dictionaryCopy objectForKey:@"Flags"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue3 = [v53 unsignedIntValue];
  }

  else
  {
    unsignedIntValue3 = 0;
  }

  v5->_flags = unsignedIntValue3;
  v55 = [dictionaryCopy objectForKey:@"Unit"];
  objc_opt_class();
  v56 = v43;
  if (objc_opt_isKindOfClass())
  {
    integerValue12 = [v55 integerValue];
  }

  else
  {
    integerValue12 = 0;
  }

  v5->_unit = integerValue12;
  v58 = [dictionaryCopy objectForKey:@"UnitExponent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue13 = [v58 integerValue];
  }

  else
  {
    integerValue13 = 0;
  }

  v5->_unitExponent = integerValue13;
  v60 = [dictionaryCopy objectForKey:@"Name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = [v60 copy];
  }

  else
  {
    v61 = 0;
  }

  name = v5->_name;
  v5->_name = v61;

  return v5;
}

- (GCHIDElementSnapshot)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GCHIDElementSnapshot;
  coderCopy = coder;
  v4 = [(GCHIDElementSnapshot *)&v8 init];
  v4->_usageType = [coderCopy decodeIntegerForKey:{@"UsageType", v8.receiver, v8.super_class}];
  v4->_usageTypeIndex = [coderCopy decodeIntegerForKey:@"UsageTypeIndex"];
  v4->_elementCookie = [coderCopy decodeInt32ForKey:@"ElementCookie"];
  v4->_type = [coderCopy decodeIntForKey:@"Type"];
  v4->_collectionType = [coderCopy decodeIntForKey:@"CollectionType"];
  v4->_usage = [coderCopy decodeIntegerForKey:@"Usage"];
  v4->_usagePage = [coderCopy decodeIntegerForKey:@"UsagePage"];
  v4->_min = [coderCopy decodeIntegerForKey:@"Min"];
  v4->_max = [coderCopy decodeIntegerForKey:@"Max"];
  v4->_scaledMin = [coderCopy decodeIntegerForKey:@"ScaledMin"];
  v4->_scaledMax = [coderCopy decodeIntegerForKey:@"ScaledMax"];
  v4->_size = [coderCopy decodeIntegerForKey:@"Size"];
  v4->_reportSize = [coderCopy decodeIntegerForKey:@"ReportSize"];
  v4->_reportCount = [coderCopy decodeInt32ForKey:@"ReportCount"];
  v4->_reportID = [coderCopy decodeIntegerForKey:@"ReportID"];
  v4->_isArray = [coderCopy decodeBoolForKey:@"IsArray"];
  v4->_isRelative = [coderCopy decodeBoolForKey:@"IsRelative"];
  v4->_isWrapping = [coderCopy decodeBoolForKey:@"IsWrapping"];
  v4->_isNonLinear = [coderCopy decodeBoolForKey:@"IsNonLinear"];
  v4->_hasNullState = [coderCopy decodeBoolForKey:@"HasNullState"];
  v4->_flags = [coderCopy decodeInt32ForKey:@"Flags"];
  v4->_unit = [coderCopy decodeIntegerForKey:@"Unit"];
  v4->_unitExponent = [coderCopy decodeIntegerForKey:@"UnitExponent"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];

  name = v4->_name;
  v4->_name = v5;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  usageType = self->_usageType;
  coderCopy = coder;
  [coderCopy encodeInteger:usageType forKey:@"UsageType"];
  [coderCopy encodeInteger:self->_usageTypeIndex forKey:@"UsageTypeIndex"];
  [coderCopy encodeInt32:self->_elementCookie forKey:@"ElementCookie"];
  [coderCopy encodeInt:self->_type forKey:@"Type"];
  [coderCopy encodeInt:self->_collectionType forKey:@"CollectionType"];
  [coderCopy encodeInteger:self->_usage forKey:@"Usage"];
  [coderCopy encodeInteger:self->_usagePage forKey:@"UsagePage"];
  [coderCopy encodeInteger:self->_min forKey:@"Min"];
  [coderCopy encodeInteger:self->_max forKey:@"Max"];
  [coderCopy encodeInteger:self->_scaledMin forKey:@"ScaledMin"];
  [coderCopy encodeInteger:self->_scaledMax forKey:@"ScaledMax"];
  [coderCopy encodeInteger:self->_size forKey:@"Size"];
  [coderCopy encodeInteger:self->_reportSize forKey:@"ReportSize"];
  [coderCopy encodeInt32:self->_reportCount forKey:@"ReportCount"];
  [coderCopy encodeInteger:self->_reportID forKey:@"ReportID"];
  [coderCopy encodeBool:self->_isArray != 0 forKey:@"IsArray"];
  [coderCopy encodeBool:self->_isRelative != 0 forKey:@"IsRelative"];
  [coderCopy encodeBool:self->_isWrapping != 0 forKey:@"IsWrapping"];
  [coderCopy encodeBool:self->_isNonLinear != 0 forKey:@"IsNonLinear"];
  [coderCopy encodeBool:self->_hasNullState != 0 forKey:@"HasNullState"];
  [coderCopy encodeInt32:self->_flags forKey:@"Flags"];
  [coderCopy encodeInteger:self->_unit forKey:@"Unit"];
  [coderCopy encodeInteger:self->_unitExponent forKey:@"UnitExponent"];
  [coderCopy encodeObject:self->_name forKey:@"Name"];
}

- (GCHIDElementSnapshot)init
{
  [(GCHIDElementSnapshot *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)valueForElementKey:(id)key
{
  keyCopy = key;
  v5 = GCHIDElementAttributeKeys();
  v6 = [v5 containsObject:keyCopy];

  if (v6)
  {
    v7 = [keyCopy substringToIndex:1];
    lowercaseString = [v7 lowercaseString];

    v9 = [keyCopy stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];
    v10 = [(GCHIDElementSnapshot *)self valueForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = GCHIDElementAttributeKeys();
  v6 = [v5 containsObject:keyCopy];

  if (v6)
  {
    v7 = [keyCopy substringToIndex:1];
    lowercaseString = [v7 lowercaseString];

    v9 = [keyCopy stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];

    keyCopy = v9;
  }

  v12.receiver = self;
  v12.super_class = GCHIDElementSnapshot;
  v10 = [(GCHIDElementSnapshot *)&v12 valueForKey:keyCopy];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = GCHIDElementSnapshot;
  v4 = [(GCHIDElementSnapshot *)&v10 debugDescription];
  elementCookie = [(GCHIDElementSnapshot *)self elementCookie];
  type = [(GCHIDElementSnapshot *)self type];
  name = [(GCHIDElementSnapshot *)self name];
  v8 = [v3 stringWithFormat:@"%@ {\n\t elementCookie = %u\n\t type = %i\n\t name = %@\n\t usageType = %zd\n\t usageTypeIndex = %zd\n\t usage = %zd\n\t usagePage = %zd\n}", v4, elementCookie, type, name, -[GCHIDElementSnapshot usageType](self, "usageType"), -[GCHIDElementSnapshot usageTypeIndex](self, "usageTypeIndex"), -[GCHIDElementSnapshot usage](self, "usage"), -[GCHIDElementSnapshot usagePage](self, "usagePage")];

  return v8;
}

@end
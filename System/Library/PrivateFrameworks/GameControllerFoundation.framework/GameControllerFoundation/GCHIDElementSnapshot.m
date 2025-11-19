@interface GCHIDElementSnapshot
- (GCHIDElementSnapshot)init;
- (GCHIDElementSnapshot)initWithCoder:(id)a3;
- (GCHIDElementSnapshot)initWithDictionary:(id)a3;
- (GCHIDElementSnapshot)initWithHIDElement:(id)a3;
- (id)debugDescription;
- (id)valueForElementKey:(id)a3;
- (id)valueForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCHIDElementSnapshot

- (GCHIDElementSnapshot)initWithHIDElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCHIDElementSnapshot;
  v3 = a3;
  v4 = [(GCHIDElementSnapshot *)&v8 init];
  v4->_usageType = [v3 usageType];
  v4->_usageTypeIndex = [v3 usageTypeIndex];
  v4->_elementCookie = [v3 elementCookie];
  v4->_type = [v3 type];
  v4->_collectionType = [v3 collectionType];
  v4->_usage = [v3 usage];
  v4->_usagePage = [v3 usagePage];
  v4->_min = [v3 min];
  v4->_max = [v3 max];
  v4->_scaledMin = [v3 scaledMin];
  v4->_scaledMax = [v3 scaledMax];
  v4->_size = [v3 size];
  v4->_reportSize = [v3 reportSize];
  v4->_reportCount = [v3 reportCount];
  v4->_reportID = [v3 reportID];
  v4->_isArray = [v3 isArray];
  v4->_isRelative = [v3 isRelative];
  v4->_isWrapping = [v3 isWrapping];
  v4->_isNonLinear = [v3 isNonLinear];
  v4->_hasPreferredState = [v3 hasPreferredState];
  v4->_hasNullState = [v3 hasNullState];
  v4->_flags = [v3 flags];
  v4->_unit = [v3 unit];
  v4->_unitExponent = [v3 unitExponent];
  v5 = [v3 name];

  name = v4->_name;
  v4->_name = v5;

  return v4;
}

- (GCHIDElementSnapshot)initWithDictionary:(id)a3
{
  v4 = a3;
  v82.receiver = self;
  v82.super_class = GCHIDElementSnapshot;
  v5 = [(GCHIDElementSnapshot *)&v82 init];
  v6 = [v4 objectForKey:@"UsageType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  v5->_usageType = v7;
  v8 = [v4 objectForKey:@"UsageTypeIndex"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 integerValue];
  }

  else
  {
    v9 = -1;
  }

  v5->_usageTypeIndex = v9;
  v10 = [v4 objectForKey:@"ElementCookie"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 unsignedIntValue];
  }

  else
  {
    v11 = 0;
  }

  v5->_elementCookie = v11;
  v12 = [v4 objectForKey:@"Type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = 0;
  }

  v5->_type = v13;
  v14 = [v4 objectForKey:@"CollectionType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 intValue];
  }

  else
  {
    v15 = 0;
  }

  v5->_collectionType = v15;
  v16 = [v4 objectForKey:@"Usage"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 integerValue];
  }

  else
  {
    v17 = 0;
  }

  v5->_usage = v17;
  v18 = [v4 objectForKey:@"UsagePage"];
  objc_opt_class();
  v81 = v6;
  if (objc_opt_isKindOfClass())
  {
    v19 = [v18 integerValue];
  }

  else
  {
    v19 = 0;
  }

  v5->_usagePage = v19;
  v20 = [v4 objectForKey:@"Min"];
  objc_opt_class();
  v75 = v20;
  if (objc_opt_isKindOfClass())
  {
    v21 = [v20 integerValue];
  }

  else
  {
    v21 = 0;
  }

  v79 = v10;
  v5->_min = v21;
  v22 = [v4 objectForKey:@"Max"];
  objc_opt_class();
  v80 = v8;
  if (objc_opt_isKindOfClass())
  {
    v23 = [v22 integerValue];
  }

  else
  {
    v23 = 0;
  }

  v69 = v18;
  v5->_max = v23;
  v24 = [v4 objectForKey:@"ScaledMin"];
  objc_opt_class();
  v73 = v24;
  v25 = v16;
  if (objc_opt_isKindOfClass())
  {
    v26 = [v24 integerValue];
  }

  else
  {
    v26 = 0;
  }

  v27 = v14;
  v5->_scaledMin = v26;
  v28 = [v4 objectForKey:@"ScaledMax"];
  objc_opt_class();
  v29 = v12;
  if (objc_opt_isKindOfClass())
  {
    v30 = [v28 integerValue];
  }

  else
  {
    v30 = 0;
  }

  v5->_scaledMax = v30;
  v31 = [v4 objectForKey:@"Size"];
  objc_opt_class();
  v71 = v31;
  if (objc_opt_isKindOfClass())
  {
    v32 = [v31 integerValue];
  }

  else
  {
    v32 = 0;
  }

  v5->_size = v32;
  v33 = [v4 objectForKey:@"ReportSize"];
  objc_opt_class();
  v34 = v29;
  v70 = v33;
  if (objc_opt_isKindOfClass())
  {
    v35 = [v33 integerValue];
  }

  else
  {
    v35 = 0;
  }

  v36 = v27;
  v5->_reportSize = v35;
  v37 = [v4 objectForKey:@"ReportCount"];
  objc_opt_class();
  v76 = v25;
  v74 = v22;
  if (objc_opt_isKindOfClass())
  {
    v38 = [v37 unsignedIntValue];
  }

  else
  {
    v38 = 0;
  }

  v5->_reportCount = v38;
  v39 = [v4 objectForKey:@"ReportID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = [v39 integerValue];
  }

  else
  {
    v40 = 0;
  }

  v5->_reportID = v40;
  v41 = [v4 objectForKey:@"IsArray"];
  objc_opt_class();
  v66 = v41;
  if (objc_opt_isKindOfClass())
  {
    v42 = [v41 BOOLValue];
  }

  else
  {
    v42 = 0;
  }

  v5->_isArray = v42;
  v43 = [v4 objectForKey:@"IsRelative"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = [v43 BOOLValue];
  }

  else
  {
    v44 = 0;
  }

  v5->_isRelative = v44;
  v45 = [v4 objectForKey:@"IsWrapping"];
  objc_opt_class();
  v72 = v28;
  v64 = v45;
  if (objc_opt_isKindOfClass())
  {
    v46 = [v45 BOOLValue];
  }

  else
  {
    v46 = 0;
  }

  v5->_isWrapping = v46;
  v47 = [v4 objectForKey:{@"IsNonLinear", v64}];
  objc_opt_class();
  v67 = v39;
  v68 = v37;
  if (objc_opt_isKindOfClass())
  {
    v48 = [v47 BOOLValue];
  }

  else
  {
    v48 = 0;
  }

  v5->_isNonLinear = v48;
  v49 = [v4 objectForKey:@"HasPreferredState"];
  objc_opt_class();
  v78 = v34;
  if (objc_opt_isKindOfClass())
  {
    v50 = [v49 BOOLValue];
  }

  else
  {
    v50 = 0;
  }

  v5->_hasPreferredState = v50;
  v51 = [v4 objectForKey:@"HasNullState"];
  objc_opt_class();
  v77 = v36;
  if (objc_opt_isKindOfClass())
  {
    v52 = [v51 BOOLValue];
  }

  else
  {
    v52 = 0;
  }

  v5->_hasNullState = v52;
  v53 = [v4 objectForKey:@"Flags"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = [v53 unsignedIntValue];
  }

  else
  {
    v54 = 0;
  }

  v5->_flags = v54;
  v55 = [v4 objectForKey:@"Unit"];
  objc_opt_class();
  v56 = v43;
  if (objc_opt_isKindOfClass())
  {
    v57 = [v55 integerValue];
  }

  else
  {
    v57 = 0;
  }

  v5->_unit = v57;
  v58 = [v4 objectForKey:@"UnitExponent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v59 = [v58 integerValue];
  }

  else
  {
    v59 = 0;
  }

  v5->_unitExponent = v59;
  v60 = [v4 objectForKey:@"Name"];
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

- (GCHIDElementSnapshot)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCHIDElementSnapshot;
  v3 = a3;
  v4 = [(GCHIDElementSnapshot *)&v8 init];
  v4->_usageType = [v3 decodeIntegerForKey:{@"UsageType", v8.receiver, v8.super_class}];
  v4->_usageTypeIndex = [v3 decodeIntegerForKey:@"UsageTypeIndex"];
  v4->_elementCookie = [v3 decodeInt32ForKey:@"ElementCookie"];
  v4->_type = [v3 decodeIntForKey:@"Type"];
  v4->_collectionType = [v3 decodeIntForKey:@"CollectionType"];
  v4->_usage = [v3 decodeIntegerForKey:@"Usage"];
  v4->_usagePage = [v3 decodeIntegerForKey:@"UsagePage"];
  v4->_min = [v3 decodeIntegerForKey:@"Min"];
  v4->_max = [v3 decodeIntegerForKey:@"Max"];
  v4->_scaledMin = [v3 decodeIntegerForKey:@"ScaledMin"];
  v4->_scaledMax = [v3 decodeIntegerForKey:@"ScaledMax"];
  v4->_size = [v3 decodeIntegerForKey:@"Size"];
  v4->_reportSize = [v3 decodeIntegerForKey:@"ReportSize"];
  v4->_reportCount = [v3 decodeInt32ForKey:@"ReportCount"];
  v4->_reportID = [v3 decodeIntegerForKey:@"ReportID"];
  v4->_isArray = [v3 decodeBoolForKey:@"IsArray"];
  v4->_isRelative = [v3 decodeBoolForKey:@"IsRelative"];
  v4->_isWrapping = [v3 decodeBoolForKey:@"IsWrapping"];
  v4->_isNonLinear = [v3 decodeBoolForKey:@"IsNonLinear"];
  v4->_hasNullState = [v3 decodeBoolForKey:@"HasNullState"];
  v4->_flags = [v3 decodeInt32ForKey:@"Flags"];
  v4->_unit = [v3 decodeIntegerForKey:@"Unit"];
  v4->_unitExponent = [v3 decodeIntegerForKey:@"UnitExponent"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];

  name = v4->_name;
  v4->_name = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  usageType = self->_usageType;
  v5 = a3;
  [v5 encodeInteger:usageType forKey:@"UsageType"];
  [v5 encodeInteger:self->_usageTypeIndex forKey:@"UsageTypeIndex"];
  [v5 encodeInt32:self->_elementCookie forKey:@"ElementCookie"];
  [v5 encodeInt:self->_type forKey:@"Type"];
  [v5 encodeInt:self->_collectionType forKey:@"CollectionType"];
  [v5 encodeInteger:self->_usage forKey:@"Usage"];
  [v5 encodeInteger:self->_usagePage forKey:@"UsagePage"];
  [v5 encodeInteger:self->_min forKey:@"Min"];
  [v5 encodeInteger:self->_max forKey:@"Max"];
  [v5 encodeInteger:self->_scaledMin forKey:@"ScaledMin"];
  [v5 encodeInteger:self->_scaledMax forKey:@"ScaledMax"];
  [v5 encodeInteger:self->_size forKey:@"Size"];
  [v5 encodeInteger:self->_reportSize forKey:@"ReportSize"];
  [v5 encodeInt32:self->_reportCount forKey:@"ReportCount"];
  [v5 encodeInteger:self->_reportID forKey:@"ReportID"];
  [v5 encodeBool:self->_isArray != 0 forKey:@"IsArray"];
  [v5 encodeBool:self->_isRelative != 0 forKey:@"IsRelative"];
  [v5 encodeBool:self->_isWrapping != 0 forKey:@"IsWrapping"];
  [v5 encodeBool:self->_isNonLinear != 0 forKey:@"IsNonLinear"];
  [v5 encodeBool:self->_hasNullState != 0 forKey:@"HasNullState"];
  [v5 encodeInt32:self->_flags forKey:@"Flags"];
  [v5 encodeInteger:self->_unit forKey:@"Unit"];
  [v5 encodeInteger:self->_unitExponent forKey:@"UnitExponent"];
  [v5 encodeObject:self->_name forKey:@"Name"];
}

- (GCHIDElementSnapshot)init
{
  [(GCHIDElementSnapshot *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)valueForElementKey:(id)a3
{
  v4 = a3;
  v5 = GCHIDElementAttributeKeys();
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v4 substringToIndex:1];
    v8 = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v8}];
    v10 = [(GCHIDElementSnapshot *)self valueForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = GCHIDElementAttributeKeys();
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [v4 substringToIndex:1];
    v8 = [v7 lowercaseString];

    v9 = [v4 stringByReplacingCharactersInRange:0 withString:{1, v8}];

    v4 = v9;
  }

  v12.receiver = self;
  v12.super_class = GCHIDElementSnapshot;
  v10 = [(GCHIDElementSnapshot *)&v12 valueForKey:v4];

  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = GCHIDElementSnapshot;
  v4 = [(GCHIDElementSnapshot *)&v10 debugDescription];
  v5 = [(GCHIDElementSnapshot *)self elementCookie];
  v6 = [(GCHIDElementSnapshot *)self type];
  v7 = [(GCHIDElementSnapshot *)self name];
  v8 = [v3 stringWithFormat:@"%@ {\n\t elementCookie = %u\n\t type = %i\n\t name = %@\n\t usageType = %zd\n\t usageTypeIndex = %zd\n\t usage = %zd\n\t usagePage = %zd\n}", v4, v5, v6, v7, -[GCHIDElementSnapshot usageType](self, "usageType"), -[GCHIDElementSnapshot usageTypeIndex](self, "usageTypeIndex"), -[GCHIDElementSnapshot usage](self, "usage"), -[GCHIDElementSnapshot usagePage](self, "usagePage")];

  return v8;
}

@end
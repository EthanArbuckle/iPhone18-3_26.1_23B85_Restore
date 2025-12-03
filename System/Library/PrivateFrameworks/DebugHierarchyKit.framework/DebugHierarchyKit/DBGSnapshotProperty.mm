@interface DBGSnapshotProperty
+ (id)propertyWithDebugHierarchyProperty:(id)property;
+ (id)propertyWithName:(id)name;
+ (id)propertyWithName:(id)name runtimeTypeName:(id)typeName value:(id)value;
- (BOOL)BOOLValue;
- (BOOL)logicalTypeEquals:(id)equals;
- (CGPoint)pointValue;
- (CGRect)rectValue;
- (CGSize)sizeValue;
- (DBGSnapshotNode)snapshotNode;
- (DBGSnapshotProperty)initWithName:(id)name runtimeTypeName:(id)typeName value:(id)value fetchStatus:(int64_t)status;
- (DebugHierarchyProperty)backingRuntimeTypeProperty;
- (NSData)dataValue;
- (NSString)stringValue;
- (double)CGFloatValue;
- (float)floatValue;
- (id)JSONPropertyDescription;
- (id)allSubproperties;
- (id)debugDescription;
- (id)description;
- (id)dictionaryRepresentation;
- (id)format;
- (id)logicalType;
- (id)subpropertyWithName:(id)name;
- (int64_t)integerValue;
- (int64_t)options;
- (int64_t)visibility;
- (void)addSubproperties:(id)subproperties;
- (void)addSubproperty:(id)subproperty;
- (void)setCGFloatValue:(double)value;
- (void)setIntegerValue:(int64_t)value;
- (void)setPointValue:(CGPoint)value;
- (void)setRectValue:(CGRect)value;
- (void)setSizeValue:(CGSize)value;
- (void)updateWithJSONPropertyDescription:(id)description;
@end

@implementation DBGSnapshotProperty

+ (id)propertyWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithName:nameCopy runtimeTypeName:0 value:0 fetchStatus:0];

  return v5;
}

+ (id)propertyWithName:(id)name runtimeTypeName:(id)typeName value:(id)value
{
  valueCopy = value;
  typeNameCopy = typeName;
  nameCopy = name;
  v11 = [[self alloc] initWithName:nameCopy runtimeTypeName:typeNameCopy value:valueCopy fetchStatus:4];

  return v11;
}

+ (id)propertyWithDebugHierarchyProperty:(id)property
{
  propertyCopy = property;
  v5 = [self alloc];
  name = [propertyCopy name];
  runtimeTypeName = [propertyCopy runtimeTypeName];
  v8 = [v5 initWithName:name runtimeTypeName:runtimeTypeName value:0 fetchStatus:0];

  [v8 setBackingRuntimeTypeProperty:propertyCopy];

  return v8;
}

- (DBGSnapshotProperty)initWithName:(id)name runtimeTypeName:(id)typeName value:(id)value fetchStatus:(int64_t)status
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = DBGSnapshotProperty;
  v12 = [(DBGSnapshotProperty *)&v15 initWithName:name runtimeTypeName:typeName];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, value);
    v13->_fetchStatus = status;
  }

  return v13;
}

- (id)allSubproperties
{
  subpropertiesMap = [(DBGSnapshotProperty *)self subpropertiesMap];
  allValues = [subpropertiesMap allValues];

  return allValues;
}

- (id)subpropertyWithName:(id)name
{
  nameCopy = name;
  subpropertiesMap = [(DBGSnapshotProperty *)self subpropertiesMap];
  v6 = [subpropertiesMap objectForKeyedSubscript:nameCopy];

  return v6;
}

- (void)addSubproperty:(id)subproperty
{
  subpropertyCopy = subproperty;
  snapshotNode = [(DBGSnapshotProperty *)self snapshotNode];
  [subpropertyCopy setSnapshotNode:snapshotNode];

  subpropertiesMap = [(DBGSnapshotProperty *)self subpropertiesMap];

  if (subpropertiesMap)
  {
    subpropertiesMap2 = [(DBGSnapshotProperty *)self subpropertiesMap];
    name = [subpropertyCopy name];
    [subpropertiesMap2 setObject:subpropertyCopy forKey:name];
  }

  else
  {
    subpropertiesMap2 = [subpropertyCopy name];
    name = [NSMutableDictionary dictionaryWithObject:subpropertyCopy forKey:subpropertiesMap2];
    [(DBGSnapshotProperty *)self setSubpropertiesMap:name];
  }
}

- (void)addSubproperties:(id)subproperties
{
  subpropertiesCopy = subproperties;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [subpropertiesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(subpropertiesCopy);
        }

        [(DBGSnapshotProperty *)self addSubproperty:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [subpropertiesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)logicalTypeEquals:(id)equals
{
  equalsCopy = equals;
  logicalType = [(DBGSnapshotProperty *)self logicalType];

  v6 = 0;
  if (equalsCopy && logicalType)
  {
    logicalType2 = [(DBGSnapshotProperty *)self logicalType];
    v6 = [logicalType2 isEqualToString:equalsCopy];
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  value = [(DBGSnapshotProperty *)self value];
  name = [(DBGSnapshotProperty *)self name];
  runtimeTypeName = [(DBGSnapshotProperty *)self runtimeTypeName];
  logicalType = [(DBGSnapshotProperty *)self logicalType];
  format = [(DBGSnapshotProperty *)self format];
  visibility = [(DBGSnapshotProperty *)self visibility];
  options = [(DBGSnapshotProperty *)self options];
  v10 = value;
  v11 = name;
  v12 = runtimeTypeName;
  v13 = logicalType;
  v14 = format;
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = Mutable;
  if (v10)
  {
    CFDictionaryAddValue(Mutable, @"propertyValue", v10);
  }

  if (v11)
  {
    CFDictionaryAddValue(v16, @"propertyName", v11);
  }

  if (v12)
  {
    CFDictionaryAddValue(v16, @"propertyRuntimeType", v12);
  }

  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = @"DebugHierarchyLogicalPropertyTypeCustom";
  }

  CFDictionaryAddValue(v16, @"propertyLogicalType", v17);
  if (v14)
  {
    CFDictionaryAddValue(v16, @"propertyFormat", v14);
  }

  if (visibility != 1)
  {
    valuePtr = visibility;
    v18 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    CFDictionaryAddValue(v16, @"visibility", v18);
    CFRelease(v18);
  }

  if (options)
  {
    valuePtr = options;
    v19 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    CFDictionaryAddValue(v16, @"propertyOptions", v19);
    CFRelease(v19);
  }

  return v16;
}

- (id)logicalType
{
  v6.receiver = self;
  v6.super_class = DBGSnapshotProperty;
  logicalType = [(DBGSnapshotProperty *)&v6 logicalType];
  if (!logicalType)
  {
    backingRuntimeTypeProperty = [(DBGSnapshotProperty *)self backingRuntimeTypeProperty];
    logicalType = [backingRuntimeTypeProperty logicalType];
  }

  return logicalType;
}

- (id)format
{
  v6.receiver = self;
  v6.super_class = DBGSnapshotProperty;
  format = [(DBGSnapshotProperty *)&v6 format];
  if (!format)
  {
    backingRuntimeTypeProperty = [(DBGSnapshotProperty *)self backingRuntimeTypeProperty];
    format = [backingRuntimeTypeProperty format];
  }

  return format;
}

- (int64_t)visibility
{
  v6.receiver = self;
  v6.super_class = DBGSnapshotProperty;
  visibility = [(DBGSnapshotProperty *)&v6 visibility];
  if (!visibility)
  {
    backingRuntimeTypeProperty = [(DBGSnapshotProperty *)self backingRuntimeTypeProperty];
    visibility = [backingRuntimeTypeProperty visibility];
  }

  return visibility;
}

- (int64_t)options
{
  v6.receiver = self;
  v6.super_class = DBGSnapshotProperty;
  options = [(DBGSnapshotProperty *)&v6 options];
  if (!options)
  {
    backingRuntimeTypeProperty = [(DBGSnapshotProperty *)self backingRuntimeTypeProperty];
    options = [backingRuntimeTypeProperty options];
  }

  return options;
}

- (DebugHierarchyProperty)backingRuntimeTypeProperty
{
  backingRuntimeTypeProperty = self->_backingRuntimeTypeProperty;
  if (!backingRuntimeTypeProperty)
  {
    snapshotNode = [(DBGSnapshotProperty *)self snapshotNode];
    runtimeType = [snapshotNode runtimeType];
    name = [(DBGSnapshotProperty *)self name];
    v7 = [runtimeType propertyWithName:name];
    v8 = self->_backingRuntimeTypeProperty;
    self->_backingRuntimeTypeProperty = v7;

    backingRuntimeTypeProperty = self->_backingRuntimeTypeProperty;
  }

  return backingRuntimeTypeProperty;
}

- (BOOL)BOOLValue
{
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  bOOLValue = [value3 BOOLValue];

  return bOOLValue;
}

- (int64_t)integerValue
{
  value = [(DBGSnapshotProperty *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [(DBGSnapshotProperty *)self value];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  [(DBGSnapshotProperty *)self value];
  if ((isKindOfClass & 1) == 0 && (v6 & 1) == 0)
  {
    return 0;
  }

  value3 = [(DBGSnapshotProperty *)self value];
  integerValue = [value3 integerValue];

  return integerValue;
}

- (void)setIntegerValue:(int64_t)value
{
  value = [(DBGSnapshotProperty *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [(DBGSnapshotProperty *)self value];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  [(DBGSnapshotProperty *)self value];
  if (isKindOfClass)
  {
    value3 = [(DBGSnapshotProperty *)self value];
    [value3 setIntegerValue:value];
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      return;
    }

    value3 = [(DBGSnapshotProperty *)self value];
    v9 = [NSNumber numberWithInteger:value];
    [value3 setEnumValue:v9];
  }
}

- (double)CGFloatValue
{
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  [value3 CGFloatValue];
  v7 = v6;

  return v7;
}

- (void)setCGFloatValue:(double)value
{
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  [value3 setCGFloatValue:value];
}

- (CGPoint)pointValue
{
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  [value3 point];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setPointValue:(CGPoint)value
{
  y = value.y;
  x = value.x;
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  [value3 setPoint:{x, y}];
}

- (CGSize)sizeValue
{
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  [value3 size];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setSizeValue:(CGSize)value
{
  height = value.height;
  width = value.width;
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  [value3 setSize:{width, height}];
}

- (CGRect)rectValue
{
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  [value3 rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setRectValue:(CGRect)value
{
  height = value.size.height;
  width = value.size.width;
  y = value.origin.y;
  x = value.origin.x;
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  [value3 setRect:{x, y, width, height}];
}

- (float)floatValue
{
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  [value3 floatValue];
  v7 = v6;

  return v7;
}

- (NSString)stringValue
{
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  string = [value3 string];

  return string;
}

- (NSData)dataValue
{
  value = [(DBGSnapshotProperty *)self value];
  if (value)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  value3 = [(DBGSnapshotProperty *)self value];
  data = [value3 data];

  return data;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(DBGSnapshotProperty *)self name];
  runtimeTypeName = [(DBGSnapshotProperty *)self runtimeTypeName];
  value = [(DBGSnapshotProperty *)self value];
  visibility = [(DBGSnapshotProperty *)self visibility];
  if ((visibility - 1) > 7)
  {
    v9 = @"Unsupported Visibility";
  }

  else
  {
    v9 = off_24518[visibility - 1];
  }

  v10 = [NSString stringWithFormat:@"<%@: %p name = %@; type = %@; value = %@; visibility = %@>", v4, self, name, runtimeTypeName, value, v9];;

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(DBGSnapshotProperty *)self name];
  value = [(DBGSnapshotProperty *)self value];
  v7 = [NSString stringWithFormat:@"<%@: %p %@ = %@>", v4, self, name, value];;

  return v7;
}

- (DBGSnapshotNode)snapshotNode
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotNode);

  return WeakRetained;
}

- (void)updateWithJSONPropertyDescription:(id)description
{
  descriptionCopy = description;
  v5 = [descriptionCopy objectForKeyedSubscript:@"visibility"];
  v6 = v5;
  if (v5)
  {
    -[DBGSnapshotProperty setVisibility:](self, "setVisibility:", [v5 integerValue]);
  }

  v7 = [descriptionCopy objectForKeyedSubscript:@"propertyRuntimeType"];
  if (v7)
  {
    [(DBGSnapshotProperty *)self setRuntimeTypeName:v7];
  }

  v8 = [descriptionCopy objectForKeyedSubscript:@"propertyLogicalType"];
  if (v8)
  {
    [(DBGSnapshotProperty *)self setLogicalType:v8];
  }

  v9 = [descriptionCopy objectForKeyedSubscript:@"propertyFormat"];
  if (v9)
  {
    [(DBGSnapshotProperty *)self setFormat:v9];
  }

  v10 = [descriptionCopy objectForKeyedSubscript:@"fetchStatus"];
  integerValue = [v10 integerValue];

  [(DBGSnapshotProperty *)self setFetchStatus:integerValue];
  v12 = [descriptionCopy objectForKeyedSubscript:@"propertyValue"];
  if (v12 && [v9 length])
  {
    logicalType = [(DBGSnapshotProperty *)self logicalType];
    format = [(DBGSnapshotProperty *)self format];
    v15 = DBGValueClassForPropertyWith(logicalType, format);

    if ([v15 conformsToProtocol:&OBJC_PROTOCOL___DBGValueJSONSerialization])
    {
      format2 = [(DBGSnapshotProperty *)self format];
      v26 = 0;
      v17 = [v15 valueWithEncodedValue:v12 format:format2 error:&v26];
      v18 = v26;

      if (v18)
      {
        localizedDescription = [v18 localizedDescription];
        NSLog(&cfstr_SError.isa, "[DBGSnapshotProperty(JSONSerialization) updateWithJSONPropertyDescription:]", localizedDescription);

        v20 = 0;
      }

      else
      {
        v20 = v17;
      }
    }

    else
    {
      v21 = NSStringFromClass(v15);
      v22 = NSStringFromProtocol(&OBJC_PROTOCOL___DBGValueJSONSerialization);
      NSLog(&cfstr_CanTCreateProp.isa, v21, v22);

      v20 = 0;
    }

    [(DBGSnapshotProperty *)self setValue:v20];
  }

  v23 = [descriptionCopy objectForKeyedSubscript:@"propertyOptions"];
  unsignedIntegerValue = [v23 unsignedIntegerValue];

  [(DBGSnapshotProperty *)self setOptions:unsignedIntegerValue];
  snapshotNode = [(DBGSnapshotProperty *)self snapshotNode];
  [snapshotNode didUpdateProperty:self];
}

- (id)JSONPropertyDescription
{
  value = [(DBGSnapshotProperty *)self value];
  v4 = [value conformsToProtocol:&OBJC_PROTOCOL___DBGValueJSONSerialization];

  if (v4)
  {
    value2 = [(DBGSnapshotProperty *)self value];
    jSONCompatibleRepresentation = [value2 JSONCompatibleRepresentation];
  }

  else
  {
    jSONCompatibleRepresentation = 0;
  }

  v7 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__name];
  v8 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__runtimeTypeName];
  v9 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__logicalType];
  v10 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__format];
  v11 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__visibility];
  v12 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__options];
  v13 = jSONCompatibleRepresentation;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = Mutable;
  if (v13)
  {
    CFDictionaryAddValue(Mutable, @"propertyValue", v13);
  }

  if (v14)
  {
    CFDictionaryAddValue(v19, @"propertyName", v14);
  }

  if (v15)
  {
    CFDictionaryAddValue(v19, @"propertyRuntimeType", v15);
  }

  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = @"DebugHierarchyLogicalPropertyTypeCustom";
  }

  CFDictionaryAddValue(v19, @"propertyLogicalType", v20);
  if (v17)
  {
    CFDictionaryAddValue(v19, @"propertyFormat", v17);
  }

  if (v11 != 1)
  {
    valuePtr = v11;
    v21 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    CFDictionaryAddValue(v19, @"visibility", v21);
    CFRelease(v21);
  }

  if (v12)
  {
    valuePtr = v12;
    v22 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    CFDictionaryAddValue(v19, @"propertyOptions", v22);
    CFRelease(v22);
  }

  return v19;
}

@end
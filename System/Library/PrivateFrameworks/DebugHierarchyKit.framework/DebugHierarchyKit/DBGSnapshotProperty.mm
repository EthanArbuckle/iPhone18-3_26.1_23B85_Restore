@interface DBGSnapshotProperty
+ (id)propertyWithDebugHierarchyProperty:(id)a3;
+ (id)propertyWithName:(id)a3;
+ (id)propertyWithName:(id)a3 runtimeTypeName:(id)a4 value:(id)a5;
- (BOOL)BOOLValue;
- (BOOL)logicalTypeEquals:(id)a3;
- (CGPoint)pointValue;
- (CGRect)rectValue;
- (CGSize)sizeValue;
- (DBGSnapshotNode)snapshotNode;
- (DBGSnapshotProperty)initWithName:(id)a3 runtimeTypeName:(id)a4 value:(id)a5 fetchStatus:(int64_t)a6;
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
- (id)subpropertyWithName:(id)a3;
- (int64_t)integerValue;
- (int64_t)options;
- (int64_t)visibility;
- (void)addSubproperties:(id)a3;
- (void)addSubproperty:(id)a3;
- (void)setCGFloatValue:(double)a3;
- (void)setIntegerValue:(int64_t)a3;
- (void)setPointValue:(CGPoint)a3;
- (void)setRectValue:(CGRect)a3;
- (void)setSizeValue:(CGSize)a3;
- (void)updateWithJSONPropertyDescription:(id)a3;
@end

@implementation DBGSnapshotProperty

+ (id)propertyWithName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithName:v4 runtimeTypeName:0 value:0 fetchStatus:0];

  return v5;
}

+ (id)propertyWithName:(id)a3 runtimeTypeName:(id)a4 value:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithName:v10 runtimeTypeName:v9 value:v8 fetchStatus:4];

  return v11;
}

+ (id)propertyWithDebugHierarchyProperty:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 name];
  v7 = [v4 runtimeTypeName];
  v8 = [v5 initWithName:v6 runtimeTypeName:v7 value:0 fetchStatus:0];

  [v8 setBackingRuntimeTypeProperty:v4];

  return v8;
}

- (DBGSnapshotProperty)initWithName:(id)a3 runtimeTypeName:(id)a4 value:(id)a5 fetchStatus:(int64_t)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DBGSnapshotProperty;
  v12 = [(DBGSnapshotProperty *)&v15 initWithName:a3 runtimeTypeName:a4];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, a5);
    v13->_fetchStatus = a6;
  }

  return v13;
}

- (id)allSubproperties
{
  v2 = [(DBGSnapshotProperty *)self subpropertiesMap];
  v3 = [v2 allValues];

  return v3;
}

- (id)subpropertyWithName:(id)a3
{
  v4 = a3;
  v5 = [(DBGSnapshotProperty *)self subpropertiesMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)addSubproperty:(id)a3
{
  v8 = a3;
  v4 = [(DBGSnapshotProperty *)self snapshotNode];
  [v8 setSnapshotNode:v4];

  v5 = [(DBGSnapshotProperty *)self subpropertiesMap];

  if (v5)
  {
    v6 = [(DBGSnapshotProperty *)self subpropertiesMap];
    v7 = [v8 name];
    [v6 setObject:v8 forKey:v7];
  }

  else
  {
    v6 = [v8 name];
    v7 = [NSMutableDictionary dictionaryWithObject:v8 forKey:v6];
    [(DBGSnapshotProperty *)self setSubpropertiesMap:v7];
  }
}

- (void)addSubproperties:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(DBGSnapshotProperty *)self addSubproperty:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)logicalTypeEquals:(id)a3
{
  v4 = a3;
  v5 = [(DBGSnapshotProperty *)self logicalType];

  v6 = 0;
  if (v4 && v5)
  {
    v7 = [(DBGSnapshotProperty *)self logicalType];
    v6 = [v7 isEqualToString:v4];
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [(DBGSnapshotProperty *)self value];
  v4 = [(DBGSnapshotProperty *)self name];
  v5 = [(DBGSnapshotProperty *)self runtimeTypeName];
  v6 = [(DBGSnapshotProperty *)self logicalType];
  v7 = [(DBGSnapshotProperty *)self format];
  v8 = [(DBGSnapshotProperty *)self visibility];
  v9 = [(DBGSnapshotProperty *)self options];
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
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

  if (v8 != 1)
  {
    valuePtr = v8;
    v18 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    CFDictionaryAddValue(v16, @"visibility", v18);
    CFRelease(v18);
  }

  if (v9)
  {
    valuePtr = v9;
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
  v3 = [(DBGSnapshotProperty *)&v6 logicalType];
  if (!v3)
  {
    v4 = [(DBGSnapshotProperty *)self backingRuntimeTypeProperty];
    v3 = [v4 logicalType];
  }

  return v3;
}

- (id)format
{
  v6.receiver = self;
  v6.super_class = DBGSnapshotProperty;
  v3 = [(DBGSnapshotProperty *)&v6 format];
  if (!v3)
  {
    v4 = [(DBGSnapshotProperty *)self backingRuntimeTypeProperty];
    v3 = [v4 format];
  }

  return v3;
}

- (int64_t)visibility
{
  v6.receiver = self;
  v6.super_class = DBGSnapshotProperty;
  v3 = [(DBGSnapshotProperty *)&v6 visibility];
  if (!v3)
  {
    v4 = [(DBGSnapshotProperty *)self backingRuntimeTypeProperty];
    v3 = [v4 visibility];
  }

  return v3;
}

- (int64_t)options
{
  v6.receiver = self;
  v6.super_class = DBGSnapshotProperty;
  v3 = [(DBGSnapshotProperty *)&v6 options];
  if (!v3)
  {
    v4 = [(DBGSnapshotProperty *)self backingRuntimeTypeProperty];
    v3 = [v4 options];
  }

  return v3;
}

- (DebugHierarchyProperty)backingRuntimeTypeProperty
{
  backingRuntimeTypeProperty = self->_backingRuntimeTypeProperty;
  if (!backingRuntimeTypeProperty)
  {
    v4 = [(DBGSnapshotProperty *)self snapshotNode];
    v5 = [v4 runtimeType];
    v6 = [(DBGSnapshotProperty *)self name];
    v7 = [v5 propertyWithName:v6];
    v8 = self->_backingRuntimeTypeProperty;
    self->_backingRuntimeTypeProperty = v7;

    backingRuntimeTypeProperty = self->_backingRuntimeTypeProperty;
  }

  return backingRuntimeTypeProperty;
}

- (BOOL)BOOLValue
{
  v3 = [(DBGSnapshotProperty *)self value];
  if (v3)
  {
    v4 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGSnapshotProperty *)self value];
  v6 = [v5 BOOLValue];

  return v6;
}

- (int64_t)integerValue
{
  v3 = [(DBGSnapshotProperty *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(DBGSnapshotProperty *)self value];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  [(DBGSnapshotProperty *)self value];
  if ((isKindOfClass & 1) == 0 && (v6 & 1) == 0)
  {
    return 0;
  }

  v8 = [(DBGSnapshotProperty *)self value];
  v9 = [v8 integerValue];

  return v9;
}

- (void)setIntegerValue:(int64_t)a3
{
  v5 = [(DBGSnapshotProperty *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(DBGSnapshotProperty *)self value];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  [(DBGSnapshotProperty *)self value];
  if (isKindOfClass)
  {
    v10 = [(DBGSnapshotProperty *)self value];
    [v10 setIntegerValue:a3];
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      return;
    }

    v10 = [(DBGSnapshotProperty *)self value];
    v9 = [NSNumber numberWithInteger:a3];
    [v10 setEnumValue:v9];
  }
}

- (double)CGFloatValue
{
  v3 = [(DBGSnapshotProperty *)self value];
  if (v3)
  {
    v4 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGSnapshotProperty *)self value];
  [v5 CGFloatValue];
  v7 = v6;

  return v7;
}

- (void)setCGFloatValue:(double)a3
{
  v5 = [(DBGSnapshotProperty *)self value];
  if (v5)
  {
    v6 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v7 = [(DBGSnapshotProperty *)self value];
  [v7 setCGFloatValue:a3];
}

- (CGPoint)pointValue
{
  v3 = [(DBGSnapshotProperty *)self value];
  if (v3)
  {
    v4 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGSnapshotProperty *)self value];
  [v5 point];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setPointValue:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(DBGSnapshotProperty *)self value];
  if (v6)
  {
    v7 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v8 = [(DBGSnapshotProperty *)self value];
  [v8 setPoint:{x, y}];
}

- (CGSize)sizeValue
{
  v3 = [(DBGSnapshotProperty *)self value];
  if (v3)
  {
    v4 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGSnapshotProperty *)self value];
  [v5 size];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setSizeValue:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(DBGSnapshotProperty *)self value];
  if (v6)
  {
    v7 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v8 = [(DBGSnapshotProperty *)self value];
  [v8 setSize:{width, height}];
}

- (CGRect)rectValue
{
  v3 = [(DBGSnapshotProperty *)self value];
  if (v3)
  {
    v4 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGSnapshotProperty *)self value];
  [v5 rect];
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

- (void)setRectValue:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(DBGSnapshotProperty *)self value];
  if (v8)
  {
    v9 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v10 = [(DBGSnapshotProperty *)self value];
  [v10 setRect:{x, y, width, height}];
}

- (float)floatValue
{
  v3 = [(DBGSnapshotProperty *)self value];
  if (v3)
  {
    v4 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGSnapshotProperty *)self value];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (NSString)stringValue
{
  v3 = [(DBGSnapshotProperty *)self value];
  if (v3)
  {
    v4 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGSnapshotProperty *)self value];
  v6 = [v5 string];

  return v6;
}

- (NSData)dataValue
{
  v3 = [(DBGSnapshotProperty *)self value];
  if (v3)
  {
    v4 = [(DBGSnapshotProperty *)self value];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGSnapshotProperty *)self value];
  v6 = [v5 data];

  return v6;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGSnapshotProperty *)self name];
  v6 = [(DBGSnapshotProperty *)self runtimeTypeName];
  v7 = [(DBGSnapshotProperty *)self value];
  v8 = [(DBGSnapshotProperty *)self visibility];
  if ((v8 - 1) > 7)
  {
    v9 = @"Unsupported Visibility";
  }

  else
  {
    v9 = off_24518[v8 - 1];
  }

  v10 = [NSString stringWithFormat:@"<%@: %p name = %@; type = %@; value = %@; visibility = %@>", v4, self, v5, v6, v7, v9];;

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGSnapshotProperty *)self name];
  v6 = [(DBGSnapshotProperty *)self value];
  v7 = [NSString stringWithFormat:@"<%@: %p %@ = %@>", v4, self, v5, v6];;

  return v7;
}

- (DBGSnapshotNode)snapshotNode
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotNode);

  return WeakRetained;
}

- (void)updateWithJSONPropertyDescription:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"visibility"];
  v6 = v5;
  if (v5)
  {
    -[DBGSnapshotProperty setVisibility:](self, "setVisibility:", [v5 integerValue]);
  }

  v7 = [v4 objectForKeyedSubscript:@"propertyRuntimeType"];
  if (v7)
  {
    [(DBGSnapshotProperty *)self setRuntimeTypeName:v7];
  }

  v8 = [v4 objectForKeyedSubscript:@"propertyLogicalType"];
  if (v8)
  {
    [(DBGSnapshotProperty *)self setLogicalType:v8];
  }

  v9 = [v4 objectForKeyedSubscript:@"propertyFormat"];
  if (v9)
  {
    [(DBGSnapshotProperty *)self setFormat:v9];
  }

  v10 = [v4 objectForKeyedSubscript:@"fetchStatus"];
  v11 = [v10 integerValue];

  [(DBGSnapshotProperty *)self setFetchStatus:v11];
  v12 = [v4 objectForKeyedSubscript:@"propertyValue"];
  if (v12 && [v9 length])
  {
    v13 = [(DBGSnapshotProperty *)self logicalType];
    v14 = [(DBGSnapshotProperty *)self format];
    v15 = DBGValueClassForPropertyWith(v13, v14);

    if ([v15 conformsToProtocol:&OBJC_PROTOCOL___DBGValueJSONSerialization])
    {
      v16 = [(DBGSnapshotProperty *)self format];
      v26 = 0;
      v17 = [v15 valueWithEncodedValue:v12 format:v16 error:&v26];
      v18 = v26;

      if (v18)
      {
        v19 = [v18 localizedDescription];
        NSLog(&cfstr_SError.isa, "[DBGSnapshotProperty(JSONSerialization) updateWithJSONPropertyDescription:]", v19);

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

  v23 = [v4 objectForKeyedSubscript:@"propertyOptions"];
  v24 = [v23 unsignedIntegerValue];

  [(DBGSnapshotProperty *)self setOptions:v24];
  v25 = [(DBGSnapshotProperty *)self snapshotNode];
  [v25 didUpdateProperty:self];
}

- (id)JSONPropertyDescription
{
  v3 = [(DBGSnapshotProperty *)self value];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___DBGValueJSONSerialization];

  if (v4)
  {
    v5 = [(DBGSnapshotProperty *)self value];
    v6 = [v5 JSONCompatibleRepresentation];
  }

  else
  {
    v6 = 0;
  }

  v7 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__name];
  v8 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__runtimeTypeName];
  v9 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__logicalType];
  v10 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__format];
  v11 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__visibility];
  v12 = *&self->DebugHierarchyProperty_opaque[OBJC_IVAR___DebugHierarchyProperty__options];
  v13 = v6;
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
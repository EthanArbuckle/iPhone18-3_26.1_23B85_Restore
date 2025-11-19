@interface DebugHierarchyProperty
- (DebugHierarchyProperty)initWithName:(id)a3 runtimeTypeName:(id)a4;
- (DebugHierarchyProperty)initWithPropertyDescription:(id)a3;
- (id)debugDescription;
- (id)dictionaryRepresentation;
@end

@implementation DebugHierarchyProperty

- (DebugHierarchyProperty)initWithPropertyDescription:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"propertyName"];
  v6 = [v4 objectForKeyedSubscript:@"propertyRuntimeType"];
  v7 = [(DebugHierarchyProperty *)self initWithName:v5 runtimeTypeName:v6];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"propertyLogicalType"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"DebugHierarchyLogicalPropertyTypeCustom";
    }

    logicalType = v7->_logicalType;
    v7->_logicalType = &v10->isa;

    v12 = [v4 objectForKeyedSubscript:@"propertyFormat"];
    if (v12)
    {
      objc_storeStrong(&v7->_format, v12);
    }

    v13 = [v4 objectForKeyedSubscript:@"propertyVisibility"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 integerValue];
    }

    else
    {
      v15 = &dword_0 + 1;
    }

    v7->_visibility = v15;
    v16 = [v4 objectForKeyedSubscript:@"propertyOptions"];
    v17 = v16;
    if (v16)
    {
      v16 = [v16 integerValue];
    }

    v7->_options = v16;
  }

  return v7;
}

- (DebugHierarchyProperty)initWithName:(id)a3 runtimeTypeName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DebugHierarchyProperty;
  v9 = [(DebugHierarchyProperty *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_runtimeTypeName, a4);
    v10->_visibility = 1;
  }

  return v10;
}

- (id)dictionaryRepresentation
{
  runtimeTypeName = self->_runtimeTypeName;
  logicalType = self->_logicalType;
  format = self->_format;
  visibility = self->_visibility;
  options = self->_options;
  v7 = self->_name;
  v8 = runtimeTypeName;
  v9 = logicalType;
  v10 = format;
  Mutable = CFDictionaryCreateMutable(0, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = Mutable;
  if (v7)
  {
    CFDictionaryAddValue(Mutable, @"propertyName", v7);
  }

  if (v8)
  {
    CFDictionaryAddValue(v12, @"propertyRuntimeType", v8);
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = @"DebugHierarchyLogicalPropertyTypeCustom";
  }

  CFDictionaryAddValue(v12, @"propertyLogicalType", v13);
  if (v10)
  {
    CFDictionaryAddValue(v12, @"propertyFormat", v10);
  }

  if (visibility != 1)
  {
    valuePtr = visibility;
    v14 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    CFDictionaryAddValue(v12, @"visibility", v14);
    CFRelease(v14);
  }

  if (options)
  {
    valuePtr = options;
    v15 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    CFDictionaryAddValue(v12, @"propertyOptions", v15);
    CFRelease(v15);
  }

  return v12;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DebugHierarchyProperty *)self name];
  v6 = [(DebugHierarchyProperty *)self runtimeTypeName];
  v7 = [NSString stringWithFormat:@"<%@ %p, name: %@, runtimeTypeName: %@>", v4, self, v5, v6];

  return v7;
}

@end
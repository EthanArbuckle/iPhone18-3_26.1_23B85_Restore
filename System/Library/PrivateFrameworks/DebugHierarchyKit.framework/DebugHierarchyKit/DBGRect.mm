@interface DBGRect
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withRect:(CGRect)rect;
- (CGRect)rect;
- (DBGRect)initWithCGRect:(CGRect)rect;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
@end

@implementation DBGRect

+ (id)withRect:(CGRect)rect
{
  v3 = [[self alloc] initWithCGRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  return v3;
}

- (DBGRect)initWithCGRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = DBGRect;
  result = [(DBGRect *)&v8 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
  }

  return result;
}

- (NSString)description
{
  objectValue = [(DBGRect *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGRect *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (CGRect)rect
{
  objc_copyStruct(v6, &self->_rect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    if (error)
    {
      v14 = v8;
      *error = v9;
    }
  }

  else
  {
    v15 = v7;
    v16 = v15;
    size = CGRectZero.size;
    valuePtr = CGRectZero.origin;
    v25 = size;
    if (v15)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
      v19 = CFArrayGetValueAtIndex(v16, 1);
      v20 = CFArrayGetValueAtIndex(v16, 2);
      v21 = CFArrayGetValueAtIndex(v16, 3);
      CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
      CFNumberGetValue(v19, kCFNumberCGFloatType, &valuePtr.y);
      CFNumberGetValue(v20, kCFNumberCGFloatType, &v25);
      CFNumberGetValue(v21, kCFNumberCGFloatType, &v25.height);
    }

    y = valuePtr.y;
    x = valuePtr.x;
    height = v25.height;
    width = v25.width;
  }

  v22 = [self withRect:{x, y, width, height}];

  return v22;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGRect *)self rect];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v6 = malloc_type_malloc(0x20uLL, 0x6004044C4A2DFuLL);
  for (i = 0; i != 4; ++i)
  {
    v6[i] = CFNumberCreate(0, kCFNumberCGFloatType, &v11[i]);
  }

  v8 = CFArrayCreate(0, v6, 4, &kCFTypeArrayCallBacks);
  for (j = 0; j != 4; ++j)
  {
    CFRelease(v6[j]);
  }

  free(v6);

  return v8;
}

@end
@interface DBGPoint
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withPoint:(CGPoint)point;
- (CGPoint)point;
- (DBGPoint)initWithCGPoint:(CGPoint)point;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
@end

@implementation DBGPoint

+ (id)withPoint:(CGPoint)point
{
  v3 = [[self alloc] initWithCGPoint:{point.x, point.y}];

  return v3;
}

- (DBGPoint)initWithCGPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6.receiver = self;
  v6.super_class = DBGPoint;
  result = [(DBGPoint *)&v6 init];
  if (result)
  {
    result->_point.x = x;
    result->_point.y = y;
  }

  return result;
}

- (NSString)description
{
  objectValue = [(DBGPoint *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGPoint *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (CGPoint)point
{
  objc_copyStruct(v4, &self->_point, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
    if (error)
    {
      v12 = v8;
      *error = v9;
    }
  }

  else
  {
    v13 = v7;
    v14 = v13;
    valuePtr = CGPointZero;
    if (v13)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
      v16 = CFArrayGetValueAtIndex(v14, 1);
      CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
      CFNumberGetValue(v16, kCFNumberCGFloatType, &valuePtr.y);
    }

    y = valuePtr.y;
    x = valuePtr.x;
  }

  v17 = [self withPoint:{x, y}];

  return v17;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGPoint *)self point];
  valuePtr = v2;
  v8 = v3;
  v4 = malloc_type_malloc(0x10uLL, 0x6004044C4A2DFuLL);
  *v4 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  v4[1] = CFNumberCreate(0, kCFNumberCGFloatType, &v8);
  v5 = CFArrayCreate(0, v4, 2, &kCFTypeArrayCallBacks);
  CFRelease(*v4);
  CFRelease(v4[1]);
  free(v4);

  return v5;
}

@end
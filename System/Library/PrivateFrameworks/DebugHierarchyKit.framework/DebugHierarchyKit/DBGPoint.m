@interface DBGPoint
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withPoint:(CGPoint)a3;
- (CGPoint)point;
- (DBGPoint)initWithCGPoint:(CGPoint)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
@end

@implementation DBGPoint

+ (id)withPoint:(CGPoint)a3
{
  v3 = [[a1 alloc] initWithCGPoint:{a3.x, a3.y}];

  return v3;
}

- (DBGPoint)initWithCGPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v2 = [(DBGPoint *)self objectValue];
  v3 = [v2 description];

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

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
    if (a5)
    {
      v12 = v8;
      *a5 = v9;
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

  v17 = [a1 withPoint:{x, y}];

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
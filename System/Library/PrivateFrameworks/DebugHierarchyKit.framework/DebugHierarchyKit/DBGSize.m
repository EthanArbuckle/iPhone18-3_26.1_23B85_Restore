@interface DBGSize
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withSize:(CGSize)a3;
- (CGSize)size;
- (DBGSize)initWithCGSize:(CGSize)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
@end

@implementation DBGSize

+ (id)withSize:(CGSize)a3
{
  v3 = [[a1 alloc] initWithCGSize:{a3.width, a3.height}];

  return v3;
}

- (DBGSize)initWithCGSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = DBGSize;
  result = [(DBGSize *)&v6 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
  }

  return result;
}

- (NSString)description
{
  v2 = [(DBGSize *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGSize *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
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
    valuePtr = CGSizeZero;
    if (v13)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
      v16 = CFArrayGetValueAtIndex(v14, 1);
      CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
      CFNumberGetValue(v16, kCFNumberCGFloatType, &valuePtr.height);
    }

    height = valuePtr.height;
    width = valuePtr.width;
  }

  v17 = [a1 withSize:{width, height}];

  return v17;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGSize *)self size];
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
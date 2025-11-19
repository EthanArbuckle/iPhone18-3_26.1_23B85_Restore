@interface GCVersion
+ (id)currentSourceVersion;
- (BOOL)isEqualTo:(id)a3;
- (BOOL)isEqualToSourceVersion:(id)a3;
- (BOOL)isGreaterThan:(id)a3;
- (BOOL)isGreaterThanOrEqualTo:(id)a3;
- (BOOL)isGreaterThanOrEqualToSourceVersion:(id)a3;
- (BOOL)isGreaterThanSourceVersion:(id)a3;
- (BOOL)isLessThan:(id)a3;
- (BOOL)isLessThanOrEqualTo:(id)a3;
- (GCVersion)initWithCoder:(id)a3;
- (GCVersion)initWithMajor:(unint64_t)a3 minor:(unint64_t)a4 patch:(unint64_t)a5;
- (GCVersion)initWithString:(id)a3;
- (id)debugDescription;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCVersion

+ (id)currentSourceVersion
{
  if (currentSourceVersion_onceToken != -1)
  {
    +[GCVersion currentSourceVersion];
  }

  v3 = currentSourceVersion_currentSourceVersion;

  return v3;
}

uint64_t __33__GCVersion_currentSourceVersion__block_invoke()
{
  v0 = dyld_image_header_containing_address();
  v1 = *v0;
  if (v1 != -17958193)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GameControllerFoundation Mach-O header has incorrect magic: %x", v1];
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
LABEL_7:
    v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  v2 = v0[4];
  if (!v2)
  {
LABEL_6:
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    v6 = @"GameControllerFoundation Mach-O is missing LC_SOURCE_VERSION";
    goto LABEL_7;
  }

  v3 = v0 + 8;
  while (*v3 != 42)
  {
    v3 = (v3 + v3[1]);
    if (!--v2)
    {
      goto LABEL_6;
    }
  }

  v8 = *(v3 + 1);
  currentSourceVersion_currentSourceVersion = [[GCVersion alloc] initWithMajor:(v8 >> 40) & 0x7FFFFF minor:(v8 >> 30) & 0x3FF patch:(v8 >> 20) & 0x3FF];

  return MEMORY[0x1EEE66BB8]();
}

- (GCVersion)initWithMajor:(unint64_t)a3 minor:(unint64_t)a4 patch:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = GCVersion;
  result = [(GCVersion *)&v9 init];
  result->_major = a3;
  result->_minor = a4;
  result->_patch = a5;
  return result;
}

- (GCVersion)initWithString:(id)a3
{
  v4 = a3;
  if (initWithString__onceToken != -1)
  {
    [GCVersion initWithString:];
  }

  v5 = [v4 stringByTrimmingCharactersInSet:initWithString__invalidChars];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = [v4 componentsSeparatedByString:@"."];
    if (![v7 count])
    {
      goto LABEL_17;
    }

    if ([v7 count] > 3)
    {
      goto LABEL_17;
    }

    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 length];

    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [v10 integerValue];

    if (v11 < 1)
    {
      goto LABEL_17;
    }

    if ([v7 count] < 2)
    {
      v15 = 0;
    }

    else
    {
      v12 = [v7 objectAtIndexedSubscript:1];
      v13 = [v12 length];

      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = [v7 objectAtIndexedSubscript:1];
      v15 = [v14 integerValue];

      if (v15 < 0)
      {
        goto LABEL_17;
      }
    }

    if ([v7 count] < 3)
    {
      v20 = 0;
    }

    else
    {
      v17 = [v7 objectAtIndexedSubscript:2];
      v18 = [v17 length];

      if (!v18 || ([v7 objectAtIndexedSubscript:2], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "integerValue"), v19, v20 < 0))
      {
LABEL_17:
        v16 = 0;
LABEL_18:

        goto LABEL_19;
      }
    }

    self = [(GCVersion *)self initWithMajor:v11 minor:v15 patch:v20];
    v16 = self;
    goto LABEL_18;
  }

  v16 = 0;
LABEL_19:

  return v16;
}

void __28__GCVersion_initWithString___block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".0123456789"];
  v0 = [v2 invertedSet];
  v1 = initWithString__invalidChars;
  initWithString__invalidChars = v0;
}

- (GCVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"major"];
  v6 = [v4 decodeIntegerForKey:@"minor"];
  v7 = [v4 decodeIntegerForKey:@"patch"];

  return [(GCVersion *)self initWithMajor:v5 minor:v6 patch:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[GCVersion major](self forKey:{"major"), @"major"}];
  [v4 encodeInteger:-[GCVersion minor](self forKey:{"minor"), @"minor"}];
  [v4 encodeInteger:-[GCVersion patch](self forKey:{"patch"), @"patch"}];
}

- (BOOL)isEqualToSourceVersion:(id)a3
{
  v4 = a3;
  v5 = [(GCVersion *)self major];
  if (v5 == [v4 major] && (v6 = -[GCVersion minor](self, "minor"), v6 == objc_msgSend(v4, "minor")))
  {
    v7 = [(GCVersion *)self patch];
    v8 = v7 == [v4 patch];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isGreaterThanSourceVersion:(id)a3
{
  v4 = a3;
  v5 = [(GCVersion *)self major];
  if (v5 > [v4 major])
  {
    goto LABEL_2;
  }

  v7 = [(GCVersion *)self major];
  if (v7 != [v4 major])
  {
    goto LABEL_8;
  }

  v8 = [(GCVersion *)self minor];
  if (v8 > [v4 minor])
  {
    goto LABEL_2;
  }

  v9 = [(GCVersion *)self minor];
  if (v9 != [v4 minor])
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v10 = [(GCVersion *)self patch];
  if (v10 <= [v4 patch])
  {
    [(GCVersion *)self patch];
    [v4 patch];
    goto LABEL_8;
  }

LABEL_2:
  v6 = 1;
LABEL_9:

  return v6;
}

- (BOOL)isGreaterThanOrEqualToSourceVersion:(id)a3
{
  v4 = a3;
  v5 = [(GCVersion *)self isGreaterThanSourceVersion:v4]|| [(GCVersion *)self isEqualToSourceVersion:v4];

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if ([(GCVersion *)self isLessThanSourceVersion:v4])
  {
    v5 = -1;
  }

  else
  {
    v5 = [(GCVersion *)self isGreaterThanSourceVersion:v4];
  }

  return v5;
}

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isEqualToSourceVersion:v4];

  return v5;
}

- (BOOL)isGreaterThan:(id)a3
{
  v4 = a3;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isGreaterThanSourceVersion:v4];

  return v5;
}

- (BOOL)isGreaterThanOrEqualTo:(id)a3
{
  v4 = a3;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isGreaterThanOrEqualToSourceVersion:v4];

  return v5;
}

- (BOOL)isLessThan:(id)a3
{
  v4 = a3;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isLessThanSourceVersion:v4];

  return v5;
}

- (BOOL)isLessThanOrEqualTo:(id)a3
{
  v4 = a3;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isLessThanOrEqualToSourceVersion:v4];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCVersion *)self description];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  return v7;
}

@end
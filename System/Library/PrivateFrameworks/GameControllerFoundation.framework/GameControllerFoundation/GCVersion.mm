@interface GCVersion
+ (id)currentSourceVersion;
- (BOOL)isEqualTo:(id)to;
- (BOOL)isEqualToSourceVersion:(id)version;
- (BOOL)isGreaterThan:(id)than;
- (BOOL)isGreaterThanOrEqualTo:(id)to;
- (BOOL)isGreaterThanOrEqualToSourceVersion:(id)version;
- (BOOL)isGreaterThanSourceVersion:(id)version;
- (BOOL)isLessThan:(id)than;
- (BOOL)isLessThanOrEqualTo:(id)to;
- (GCVersion)initWithCoder:(id)coder;
- (GCVersion)initWithMajor:(unint64_t)major minor:(unint64_t)minor patch:(unint64_t)patch;
- (GCVersion)initWithString:(id)string;
- (id)debugDescription;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
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

- (GCVersion)initWithMajor:(unint64_t)major minor:(unint64_t)minor patch:(unint64_t)patch
{
  v9.receiver = self;
  v9.super_class = GCVersion;
  result = [(GCVersion *)&v9 init];
  result->_major = major;
  result->_minor = minor;
  result->_patch = patch;
  return result;
}

- (GCVersion)initWithString:(id)string
{
  stringCopy = string;
  if (initWithString__onceToken != -1)
  {
    [GCVersion initWithString:];
  }

  v5 = [stringCopy stringByTrimmingCharactersInSet:initWithString__invalidChars];
  v6 = [v5 isEqualToString:stringCopy];

  if (v6)
  {
    v7 = [stringCopy componentsSeparatedByString:@"."];
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
    integerValue = [v10 integerValue];

    if (integerValue < 1)
    {
      goto LABEL_17;
    }

    if ([v7 count] < 2)
    {
      integerValue2 = 0;
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
      integerValue2 = [v14 integerValue];

      if (integerValue2 < 0)
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
        selfCopy = 0;
LABEL_18:

        goto LABEL_19;
      }
    }

    self = [(GCVersion *)self initWithMajor:integerValue minor:integerValue2 patch:v20];
    selfCopy = self;
    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

void __28__GCVersion_initWithString___block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".0123456789"];
  v0 = [v2 invertedSet];
  v1 = initWithString__invalidChars;
  initWithString__invalidChars = v0;
}

- (GCVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"major"];
  v6 = [coderCopy decodeIntegerForKey:@"minor"];
  v7 = [coderCopy decodeIntegerForKey:@"patch"];

  return [(GCVersion *)self initWithMajor:v5 minor:v6 patch:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[GCVersion major](self forKey:{"major"), @"major"}];
  [coderCopy encodeInteger:-[GCVersion minor](self forKey:{"minor"), @"minor"}];
  [coderCopy encodeInteger:-[GCVersion patch](self forKey:{"patch"), @"patch"}];
}

- (BOOL)isEqualToSourceVersion:(id)version
{
  versionCopy = version;
  major = [(GCVersion *)self major];
  if (major == [versionCopy major] && (v6 = -[GCVersion minor](self, "minor"), v6 == objc_msgSend(versionCopy, "minor")))
  {
    patch = [(GCVersion *)self patch];
    v8 = patch == [versionCopy patch];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isGreaterThanSourceVersion:(id)version
{
  versionCopy = version;
  major = [(GCVersion *)self major];
  if (major > [versionCopy major])
  {
    goto LABEL_2;
  }

  major2 = [(GCVersion *)self major];
  if (major2 != [versionCopy major])
  {
    goto LABEL_8;
  }

  minor = [(GCVersion *)self minor];
  if (minor > [versionCopy minor])
  {
    goto LABEL_2;
  }

  minor2 = [(GCVersion *)self minor];
  if (minor2 != [versionCopy minor])
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  patch = [(GCVersion *)self patch];
  if (patch <= [versionCopy patch])
  {
    [(GCVersion *)self patch];
    [versionCopy patch];
    goto LABEL_8;
  }

LABEL_2:
  v6 = 1;
LABEL_9:

  return v6;
}

- (BOOL)isGreaterThanOrEqualToSourceVersion:(id)version
{
  versionCopy = version;
  v5 = [(GCVersion *)self isGreaterThanSourceVersion:versionCopy]|| [(GCVersion *)self isEqualToSourceVersion:versionCopy];

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if ([(GCVersion *)self isLessThanSourceVersion:compareCopy])
  {
    v5 = -1;
  }

  else
  {
    v5 = [(GCVersion *)self isGreaterThanSourceVersion:compareCopy];
  }

  return v5;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isEqualToSourceVersion:toCopy];

  return v5;
}

- (BOOL)isGreaterThan:(id)than
{
  thanCopy = than;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isGreaterThanSourceVersion:thanCopy];

  return v5;
}

- (BOOL)isGreaterThanOrEqualTo:(id)to
{
  toCopy = to;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isGreaterThanOrEqualToSourceVersion:toCopy];

  return v5;
}

- (BOOL)isLessThan:(id)than
{
  thanCopy = than;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isLessThanSourceVersion:thanCopy];

  return v5;
}

- (BOOL)isLessThanOrEqualTo:(id)to
{
  toCopy = to;
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GCVersion *)self isLessThanOrEqualToSourceVersion:toCopy];

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
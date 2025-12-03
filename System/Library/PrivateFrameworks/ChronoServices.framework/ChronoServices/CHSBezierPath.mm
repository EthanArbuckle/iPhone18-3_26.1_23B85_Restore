@interface CHSBezierPath
- (BOOL)isEqual:(id)equal;
- (CHSBezierPath)initWithBSXPCCoder:(id)coder;
- (CHSBezierPath)initWithCGPath:(CGPath *)path;
- (CHSBezierPath)initWithCoder:(id)coder;
- (id)_initWithCGPathNoCopy:(CGPath *)copy;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSBezierPath

- (CHSBezierPath)initWithCGPath:(CGPath *)path
{
  if (!path)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSBezierPath.m" lineNumber:147 description:@"CHSBezierPath created with a nil path reference. path is non-optional!"];
  }

  Mutable = CGPathCreateMutable();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____copyPathByApplying_block_invoke;
  block[3] = &__block_descriptor_40_e36_v16__0r__CGPathElement_i__CGPoint__8l;
  block[4] = Mutable;
  CGPathApplyWithBlock(path, block);
  v6 = MEMORY[0x19A8C4D50](Mutable);
  CGPathRelease(Mutable);
  return [(CHSBezierPath *)self _initWithCGPathNoCopy:v6];
}

- (id)_initWithCGPathNoCopy:(CGPath *)copy
{
  v5.receiver = self;
  v5.super_class = CHSBezierPath;
  result = [(CHSBezierPath *)&v5 init];
  if (result)
  {
    *(result + 1) = copy;
  }

  return result;
}

- (void)dealloc
{
  CGPathRelease(self->_path);
  v3.receiver = self;
  v3.super_class = CHSBezierPath;
  [(CHSBezierPath *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && CGPathEqualToPath(self->_path, equalCopy[1]);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = __encodePathIntoData(self->_path);
  if (!v5)
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CHSBezierPath encodeWithCoder:];
    }
  }

  [coderCopy encodeObject:v5 forKey:@"data"];
}

- (CHSBezierPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v5)
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CHSBezierPath initWithCoder:];
    }
  }

  PathByDecodingData = __createPathByDecodingData(v5);
  if (!PathByDecodingData)
  {
    v8 = CHSLogChronoServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CHSBezierPath initWithCoder:];
    }
  }

  v9 = [(CHSBezierPath *)self _initWithCGPathNoCopy:PathByDecodingData];

  return v9;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = __encodePathIntoData(self->_path);
  if (!v5)
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CHSBezierPath encodeWithCoder:];
    }
  }

  [coderCopy encodeObject:v5 forKey:@"data"];
}

- (CHSBezierPath)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v5)
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CHSBezierPath initWithCoder:];
    }
  }

  PathByDecodingData = __createPathByDecodingData(v5);
  if (!PathByDecodingData)
  {
    v8 = CHSLogChronoServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CHSBezierPath initWithCoder:];
    }
  }

  v9 = [(CHSBezierPath *)self _initWithCGPathNoCopy:PathByDecodingData];

  return v9;
}

@end
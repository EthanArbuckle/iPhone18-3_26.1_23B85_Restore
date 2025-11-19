@interface CHSBezierPath
- (BOOL)isEqual:(id)a3;
- (CHSBezierPath)initWithBSXPCCoder:(id)a3;
- (CHSBezierPath)initWithCGPath:(CGPath *)a3;
- (CHSBezierPath)initWithCoder:(id)a3;
- (id)_initWithCGPathNoCopy:(CGPath *)a3;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSBezierPath

- (CHSBezierPath)initWithCGPath:(CGPath *)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"CHSBezierPath.m" lineNumber:147 description:@"CHSBezierPath created with a nil path reference. path is non-optional!"];
  }

  Mutable = CGPathCreateMutable();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____copyPathByApplying_block_invoke;
  block[3] = &__block_descriptor_40_e36_v16__0r__CGPathElement_i__CGPoint__8l;
  block[4] = Mutable;
  CGPathApplyWithBlock(a3, block);
  v6 = MEMORY[0x19A8C4D50](Mutable);
  CGPathRelease(Mutable);
  return [(CHSBezierPath *)self _initWithCGPathNoCopy:v6];
}

- (id)_initWithCGPathNoCopy:(CGPath *)a3
{
  v5.receiver = self;
  v5.super_class = CHSBezierPath;
  result = [(CHSBezierPath *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && CGPathEqualToPath(self->_path, v4[1]);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = __encodePathIntoData(self->_path);
  if (!v5)
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CHSBezierPath encodeWithCoder:];
    }
  }

  [v4 encodeObject:v5 forKey:@"data"];
}

- (CHSBezierPath)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
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

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = __encodePathIntoData(self->_path);
  if (!v5)
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CHSBezierPath encodeWithCoder:];
    }
  }

  [v4 encodeObject:v5 forKey:@"data"];
}

- (CHSBezierPath)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
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
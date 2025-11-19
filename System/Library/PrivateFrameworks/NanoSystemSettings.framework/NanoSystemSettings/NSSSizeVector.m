@interface NSSSizeVector
+ (id)fixed:(int64_t)a3 docsAndData:(int64_t)a4 purgeable:(int64_t)a5;
+ (id)fixed:(int64_t)a3 dynamic:(int64_t)a4 purgeable:(int64_t)a5;
+ (id)zero;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSizeVector:(id)a3;
- (NSSSizeVector)initWithCoder:(id)a3;
- (NSSSizeVector)initWithFixed:(int64_t)a3 docsAndData:(int64_t)a4 purgeable:(int64_t)a5;
- (id)plus:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSSizeVector

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSSSizeVector *)self isEqualToSizeVector:v4];
  }

  return v5;
}

- (BOOL)isEqualToSizeVector:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (docsAndData = self->_docsAndData, docsAndData == [v4 docsAndData]) && (fixed = self->_fixed, fixed == objc_msgSend(v5, "fixed")))
  {
    purgeable = self->_purgeable;
    v9 = purgeable == [v5 purgeable];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)zero
{
  if (zero_onceToken != -1)
  {
    +[NSSSizeVector zero];
  }

  v3 = zero;

  return v3;
}

uint64_t __21__NSSSizeVector_zero__block_invoke()
{
  zero = [NSSSizeVector fixed:0];

  return MEMORY[0x2821F96F8]();
}

- (id)plus:(id)a3
{
  v4 = a3;
  v5 = [NSSSizeVector alloc];
  fixed = self->_fixed;
  v7 = [v4 fixed];
  docsAndData = self->_docsAndData;
  v9 = [v4 docsAndData];
  purgeable = self->_purgeable;
  v11 = [v4 purgeable];

  v12 = [(NSSSizeVector *)v5 initWithFixed:v7 + fixed docsAndData:v9 + docsAndData purgeable:v11 + purgeable];

  return v12;
}

- (NSSSizeVector)initWithFixed:(int64_t)a3 docsAndData:(int64_t)a4 purgeable:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = NSSSizeVector;
  result = [(NSSSizeVector *)&v9 init];
  if (result)
  {
    result->_fixed = a3;
    result->_docsAndData = a4;
    result->_purgeable = a5;
  }

  return result;
}

+ (id)fixed:(int64_t)a3 docsAndData:(int64_t)a4 purgeable:(int64_t)a5
{
  v5 = [[a1 alloc] initWithFixed:a3 docsAndData:a4 purgeable:a5];

  return v5;
}

+ (id)fixed:(int64_t)a3 dynamic:(int64_t)a4 purgeable:(int64_t)a5
{
  v5 = [[a1 alloc] initWithFixed:a3 docsAndData:a4 - a5 purgeable:a5];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  fixed = self->_fixed;
  v5 = a3;
  [v5 encodeInt64:fixed forKey:@"fixed"];
  [v5 encodeInt64:self->_docsAndData forKey:@"docsAndData"];
  [v5 encodeInt64:self->_purgeable forKey:@"purgeable"];
}

- (NSSSizeVector)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NSSSizeVector;
  v5 = [(NSSSizeVector *)&v7 init];
  if (v5)
  {
    v5->_fixed = [v4 decodeInt64ForKey:@"fixed"];
    v5->_docsAndData = [v4 decodeInt64ForKey:@"docsAndData"];
    v5->_purgeable = [v4 decodeInt64ForKey:@"purgeable"];
  }

  return v5;
}

@end
@interface LNSymbolConfiguration
- (BOOL)isEqual:(id)equal;
- (LNSymbolConfiguration)initWithCoder:(id)coder;
- (LNSymbolConfiguration)initWithPointSize:(double)size scale:(int64_t)scale weight:(int64_t)weight;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSymbolConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_11;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  [(LNSymbolConfiguration *)self pointSize];
  v8 = v7;
  [(LNSymbolConfiguration *)v6 pointSize];
  if (v8 != v9)
  {
    goto LABEL_8;
  }

  scale = [(LNSymbolConfiguration *)self scale];
  if (scale != [(LNSymbolConfiguration *)v6 scale])
  {
    goto LABEL_8;
  }

  weight = [(LNSymbolConfiguration *)self weight];
  v12 = weight == [(LNSymbolConfiguration *)v6 weight];
LABEL_9:

LABEL_11:
  return v12;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(LNSymbolConfiguration *)self pointSize];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];
  scale = [(LNSymbolConfiguration *)self scale];
  v7 = scale ^ [(LNSymbolConfiguration *)self weight];

  return v7 ^ v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(LNSymbolConfiguration *)self pointSize];
  *&v4 = v4;
  [coderCopy encodeFloat:@"pointSize" forKey:v4];
  [coderCopy encodeInteger:-[LNSymbolConfiguration scale](self forKey:{"scale"), @"scale"}];
  [coderCopy encodeInteger:-[LNSymbolConfiguration weight](self forKey:{"weight"), @"weight"}];
}

- (LNSymbolConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"pointSize"];
  v6 = v5;
  v7 = [coderCopy decodeIntegerForKey:@"scale"];
  v8 = [coderCopy decodeIntegerForKey:@"weight"];

  return [(LNSymbolConfiguration *)self initWithPointSize:v7 scale:v8 weight:v6];
}

- (LNSymbolConfiguration)initWithPointSize:(double)size scale:(int64_t)scale weight:(int64_t)weight
{
  v12.receiver = self;
  v12.super_class = LNSymbolConfiguration;
  v8 = [(LNSymbolConfiguration *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_pointSize = size;
    v8->_scale = scale;
    v8->_weight = weight;
    v10 = v8;
  }

  return v9;
}

@end
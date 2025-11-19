@interface LNSymbolConfiguration
- (BOOL)isEqual:(id)a3;
- (LNSymbolConfiguration)initWithCoder:(id)a3;
- (LNSymbolConfiguration)initWithPointSize:(double)a3 scale:(int64_t)a4 weight:(int64_t)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSymbolConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
    goto LABEL_11;
  }

  v6 = v4;
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

  v10 = [(LNSymbolConfiguration *)self scale];
  if (v10 != [(LNSymbolConfiguration *)v6 scale])
  {
    goto LABEL_8;
  }

  v11 = [(LNSymbolConfiguration *)self weight];
  v12 = v11 == [(LNSymbolConfiguration *)v6 weight];
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
  v6 = [(LNSymbolConfiguration *)self scale];
  v7 = v6 ^ [(LNSymbolConfiguration *)self weight];

  return v7 ^ v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [(LNSymbolConfiguration *)self pointSize];
  *&v4 = v4;
  [v5 encodeFloat:@"pointSize" forKey:v4];
  [v5 encodeInteger:-[LNSymbolConfiguration scale](self forKey:{"scale"), @"scale"}];
  [v5 encodeInteger:-[LNSymbolConfiguration weight](self forKey:{"weight"), @"weight"}];
}

- (LNSymbolConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"pointSize"];
  v6 = v5;
  v7 = [v4 decodeIntegerForKey:@"scale"];
  v8 = [v4 decodeIntegerForKey:@"weight"];

  return [(LNSymbolConfiguration *)self initWithPointSize:v7 scale:v8 weight:v6];
}

- (LNSymbolConfiguration)initWithPointSize:(double)a3 scale:(int64_t)a4 weight:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = LNSymbolConfiguration;
  v8 = [(LNSymbolConfiguration *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_pointSize = a3;
    v8->_scale = a4;
    v8->_weight = a5;
    v10 = v8;
  }

  return v9;
}

@end
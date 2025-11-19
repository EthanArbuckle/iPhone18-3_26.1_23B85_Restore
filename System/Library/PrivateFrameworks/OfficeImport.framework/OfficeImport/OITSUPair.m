@interface OITSUPair
+ (id)pair;
+ (id)pairWithFirst:(id)a3 second:(id)a4;
+ (id)pairWithPair:(id)a3;
- (BOOL)isEqual:(id)a3;
- (OITSUPair)initWithCoder:(id)a3;
- (OITSUPair)initWithFirst:(id)a3 second:(id)a4;
- (OITSUPair)initWithPair:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)p_SetFirst:(id)a3;
- (void)p_SetSecond:(id)a3;
@end

@implementation OITSUPair

+ (id)pairWithFirst:(id)a3 second:(id)a4
{
  v4 = [[a1 alloc] initWithFirst:a3 second:a4];

  return v4;
}

+ (id)pairWithPair:(id)a3
{
  v3 = [[a1 alloc] initWithPair:a3];

  return v3;
}

+ (id)pair
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (OITSUPair)initWithFirst:(id)a3 second:(id)a4
{
  v9.receiver = self;
  v9.super_class = OITSUPair;
  v6 = [(OITSUPair *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(OITSUPair *)v6 p_SetFirst:a3];
    [(OITSUPair *)v7 p_SetSecond:a4];
  }

  return v7;
}

- (OITSUPair)initWithPair:(id)a3
{
  v5 = [a3 first];
  v6 = [a3 second];

  return [(OITSUPair *)self initWithFirst:v5 second:v6];
}

- (void)dealloc
{
  [(OITSUPair *)self p_SetFirst:0];
  [(OITSUPair *)self p_SetSecond:0];
  v3.receiver = self;
  v3.super_class = OITSUPair;
  [(OITSUPair *)&v3 dealloc];
}

- (OITSUPair)initWithCoder:(id)a3
{
  v5 = [a3 decodeObject];
  v6 = [a3 decodeObject];

  return [(OITSUPair *)self initWithFirst:v5 second:v6];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:{-[OITSUPair first](self, "first")}];
  v5 = [(OITSUPair *)self second];

  [a3 encodeObject:v5];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  v5 = [(OITSUPair *)self first];
  v6 = [a3 first];
  if (!(v5 | v6) || (v7 = [v5 isEqual:v6]) != 0)
  {
    v8 = [(OITSUPair *)self second];
    v9 = [a3 second];
    if (!(v8 | v9))
    {
LABEL_6:
      LOBYTE(v7) = 1;
      return v7;
    }

    LOBYTE(v7) = [v8 isEqual:v9];
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v5 = objc_opt_class();
  v6 = TSUCheckedDynamicCast(v5, a3);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  v8 = [(OITSUPair *)self first];
  if (v8 != [v7 first])
  {
    if (![(OITSUPair *)self first])
    {
      return -1;
    }

    if (![v7 first])
    {
      return 1;
    }

    [(OITSUPair *)self first];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUPair compare:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUPair.m"];
      [(OITSUPair *)self first];
      [OITSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:109 isFatal:0 description:"unable to perform comparison on %{public}@", objc_opt_class()];
LABEL_18:
      +[OITSUAssertionHandler logBacktraceThrottled];
      return -1;
    }

    result = [-[OITSUPair first](self "first")];
    if (result)
    {
      return result;
    }
  }

  v10 = [(OITSUPair *)self second];
  if (v10 == [v7 second])
  {
    return 0;
  }

  if (![(OITSUPair *)self second])
  {
    return -1;
  }

  if (![v7 second])
  {
    return 1;
  }

  [(OITSUPair *)self second];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUPair compare:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUPair.m"];
    [(OITSUPair *)self second];
    [OITSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:126 isFatal:0 description:"unable to perform comparison on %{public}@", objc_opt_class()];
    goto LABEL_18;
  }

  v11 = [(OITSUPair *)self second];
  v12 = [v7 second];

  return [v11 compare:v12];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [-[OITSUPair first](self "first")];
  v6 = [-[OITSUPair second](self "second")];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithFirst:second:", v5, v6}];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [-[OITSUPair first](self "first")];
  v6 = [-[OITSUPair second](self "second")];
  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithFirst:second:", v5, v6}];

  return v7;
}

- (void)p_SetFirst:(id)a3
{
  mFirst = self->mFirst;
  if (mFirst != a3)
  {

    self->mFirst = a3;
  }
}

- (void)p_SetSecond:(id)a3
{
  mSecond = self->mSecond;
  if (mSecond != a3)
  {

    self->mSecond = a3;
  }
}

@end
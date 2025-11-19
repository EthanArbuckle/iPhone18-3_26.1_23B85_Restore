@interface OADPathShade
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (OADPathShade)initWithDefaults;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fillToRect;
- (int)type;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setFillToRect:(id)a3;
@end

@implementation OADPathShade

+ (id)defaultProperties
{
  if (+[OADPathShade defaultProperties]::once != -1)
  {
    +[OADPathShade defaultProperties];
  }

  v3 = +[OADPathShade defaultProperties]::defaultProperties;

  return v3;
}

- (OADPathShade)initWithDefaults
{
  v6.receiver = self;
  v6.super_class = OADPathShade;
  v2 = [(OADProperties *)&v6 initWithDefaults];
  v3 = v2;
  if (v2)
  {
    [(OADPathShade *)v2 setType:1];
    v4 = [[OADRelativeRect alloc] initWithLeft:0.0 top:0.0 right:0.0 bottom:0.0];
    [(OADPathShade *)v3 setFillToRect:v4];
  }

  return v3;
}

- (unint64_t)hash
{
  result = self->mFillToRect;
  if (result)
  {
    result = [result hash];
  }

  if (self->mIsTypeOverridden)
  {
    result ^= self->mType;
  }

  return result;
}

- (id)fillToRect
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isFillToRectOverridden];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  mFillToRect = self->mFillToRect;
  if (mFillToRect)
  {
    v7 = [(OADRelativeRect *)mFillToRect copyWithZone:a3];
    [v5 setFillToRect:v7];
  }

  if (self->mIsTypeOverridden)
  {
    [v5 setType:self->mType];
  }

  return v5;
}

void __33__OADPathShade_defaultProperties__block_invoke()
{
  v0 = [[OADPathShade alloc] initWithDefaults];
  v1 = +[OADPathShade defaultProperties]::defaultProperties;
  +[OADPathShade defaultProperties]::defaultProperties = v0;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADPathShade;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADPathShade *)self isFillToRectOverridden]|| [(OADPathShade *)self isTypeOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = OADPathShade;
  [(OADProperties *)&v14 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ([(OADPathShade *)self isFillToRectOverridden]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isFillToRectOverridden];

    if (v6)
    {
      v7 = [(OADPathShade *)self fillToRect];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 possiblyInexistentOverrideForSelector:sel_isFillToRectOverridden];

    if (v8)
    {
      v9 = [v4 fillToRect];
    }

    else
    {
      v9 = 0;
    }

    v10 = TCObjectEqual(v7, v9);
    mFillToRect = self->mFillToRect;
    if (v10)
    {
      self->mFillToRect = 0;
    }

    else if (!mFillToRect && v6)
    {
      [(OADPathShade *)self setFillToRect:v7];
    }
  }

  if (self->mIsTypeOverridden || ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v4))
  {
    v13 = [(OADPathShade *)self type];
    if (v13 == [v4 type])
    {
      self->mIsTypeOverridden = 0;
    }

    else if (!self->mIsTypeOverridden)
    {
      [(OADPathShade *)self setType:[(OADPathShade *)self type]];
    }
  }
}

- (void)removeUnnecessaryOverrides
{
  v3 = [(OADProperties *)self parent];

  if (!v3)
  {
    return;
  }

  v4 = [(OADProperties *)self isMerged];
  v5 = [(OADProperties *)self isMergedWithParent];
  [(OADProperties *)self setMerged:0];
  [(OADProperties *)self setMergedWithParent:0];
  if ([(OADPathShade *)self isFillToRectOverridden])
  {
    v6 = [(OADProperties *)self parent];
    v7 = [(OADPathShade *)self fillToRect];
    v8 = [v6 fillToRect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v7 removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      v10 = [(objc_object *)v7 isMergedWithParent];
      [(objc_object *)v7 setMergedWithParent:0];
      v11 = [(objc_object *)v7 isAnythingOverridden];
      [(objc_object *)v7 setMergedWithParent:v10];
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(v7, v8))
    {
LABEL_9:

      goto LABEL_10;
    }

    mFillToRect = self->mFillToRect;
    self->mFillToRect = 0;

    goto LABEL_9;
  }

LABEL_10:
  if ([(OADPathShade *)self isTypeOverridden])
  {
    v13 = [(OADProperties *)self parent];
    v14 = [(OADPathShade *)self type];
    if (v14 == [v13 type])
    {
      [(OADPathShade *)self setType:1];
      self->mIsTypeOverridden = 0;
    }
  }

  [(OADProperties *)self setMerged:v4];
  [(OADProperties *)self setMergedWithParent:v5];
  v15.receiver = self;
  v15.super_class = OADPathShade;
  [(OADProperties *)&v15 removeUnnecessaryOverrides];
}

- (void)setFillToRect:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADPathShade setFillToRect:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADFill.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:558 isFatal:0 description:"invalid nil value for '%{public}s'", "fillToRect"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  mFillToRect = self->mFillToRect;
  self->mFillToRect = v4;
}

- (int)type
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isTypeOverridden];
  v3 = v2[8];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OADPathShade;
  if ([(OADShade *)&v8 isEqual:v4])
  {
    v5 = v4;
    if (TCObjectEqual(self->mFillToRect, *(v5 + 3)) && self->mIsTypeOverridden == v5[36])
    {
      v6 = !self->mIsTypeOverridden || self->mType == *(v5 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
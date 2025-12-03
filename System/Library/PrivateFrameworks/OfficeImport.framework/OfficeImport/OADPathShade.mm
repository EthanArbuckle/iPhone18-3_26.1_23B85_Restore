@interface OADPathShade
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (OADPathShade)initWithDefaults;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fillToRect;
- (int)type;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setFillToRect:(id)rect;
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
  initWithDefaults = [(OADProperties *)&v6 initWithDefaults];
  v3 = initWithDefaults;
  if (initWithDefaults)
  {
    [(OADPathShade *)initWithDefaults setType:1];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  mFillToRect = self->mFillToRect;
  if (mFillToRect)
  {
    v7 = [(OADRelativeRect *)mFillToRect copyWithZone:zone];
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v14.receiver = self;
  v14.super_class = OADPathShade;
  [(OADProperties *)&v14 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ([(OADPathShade *)self isFillToRectOverridden]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isFillToRectOverridden];

    if (v6)
    {
      fillToRect = [(OADPathShade *)self fillToRect];
    }

    else
    {
      fillToRect = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isFillToRectOverridden];

    if (v8)
    {
      fillToRect2 = [valuesCopy fillToRect];
    }

    else
    {
      fillToRect2 = 0;
    }

    v10 = TCObjectEqual(fillToRect, fillToRect2);
    mFillToRect = self->mFillToRect;
    if (v10)
    {
      self->mFillToRect = 0;
    }

    else if (!mFillToRect && v6)
    {
      [(OADPathShade *)self setFillToRect:fillToRect];
    }
  }

  if (self->mIsTypeOverridden || ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != valuesCopy))
  {
    type = [(OADPathShade *)self type];
    if (type == [valuesCopy type])
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
  parent = [(OADProperties *)self parent];

  if (!parent)
  {
    return;
  }

  isMerged = [(OADProperties *)self isMerged];
  isMergedWithParent = [(OADProperties *)self isMergedWithParent];
  [(OADProperties *)self setMerged:0];
  [(OADProperties *)self setMergedWithParent:0];
  if ([(OADPathShade *)self isFillToRectOverridden])
  {
    parent2 = [(OADProperties *)self parent];
    fillToRect = [(OADPathShade *)self fillToRect];
    fillToRect2 = [parent2 fillToRect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)fillToRect removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      isMergedWithParent2 = [(objc_object *)fillToRect isMergedWithParent];
      [(objc_object *)fillToRect setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)fillToRect isAnythingOverridden];
      [(objc_object *)fillToRect setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(fillToRect, fillToRect2))
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
    parent3 = [(OADProperties *)self parent];
    type = [(OADPathShade *)self type];
    if (type == [parent3 type])
    {
      [(OADPathShade *)self setType:1];
      self->mIsTypeOverridden = 0;
    }
  }

  [(OADProperties *)self setMerged:isMerged];
  [(OADProperties *)self setMergedWithParent:isMergedWithParent];
  v15.receiver = self;
  v15.super_class = OADPathShade;
  [(OADProperties *)&v15 removeUnnecessaryOverrides];
}

- (void)setFillToRect:(id)rect
{
  rectCopy = rect;
  if (!rectCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADPathShade setFillToRect:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADFill.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:558 isFatal:0 description:"invalid nil value for '%{public}s'", "fillToRect"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  mFillToRect = self->mFillToRect;
  self->mFillToRect = rectCopy;
}

- (int)type
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isTypeOverridden];
  v3 = v2[8];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = OADPathShade;
  if ([(OADShade *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
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
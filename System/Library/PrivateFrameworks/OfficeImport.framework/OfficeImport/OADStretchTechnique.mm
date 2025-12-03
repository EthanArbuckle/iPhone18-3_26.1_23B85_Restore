@interface OADStretchTechnique
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (OADStretchTechnique)initWithDefaults;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fillRect;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setFillRect:(id)rect;
@end

@implementation OADStretchTechnique

+ (id)defaultProperties
{
  if (+[OADStretchTechnique defaultProperties]::once != -1)
  {
    +[OADStretchTechnique defaultProperties];
  }

  v3 = +[OADStretchTechnique defaultProperties]::defaultProperties;

  return v3;
}

- (OADStretchTechnique)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = OADStretchTechnique;
  initWithDefaults = [(OADProperties *)&v5 initWithDefaults];
  if (initWithDefaults)
  {
    v3 = [[OADRelativeRect alloc] initWithLeft:0.0 top:0.0 right:0.0 bottom:0.0];
    [(OADStretchTechnique *)initWithDefaults setFillRect:v3];
  }

  return initWithDefaults;
}

- (unint64_t)hash
{
  result = self->mFillRect;
  if (result)
  {
    return [result hash];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  mFillRect = self->mFillRect;
  if (mFillRect)
  {
    v7 = [(OADRelativeRect *)mFillRect copyWithZone:zone];
    [v5 setFillRect:v7];
  }

  return v5;
}

void __40__OADStretchTechnique_defaultProperties__block_invoke()
{
  v0 = [[OADStretchTechnique alloc] initWithDefaults];
  v1 = +[OADStretchTechnique defaultProperties]::defaultProperties;
  +[OADStretchTechnique defaultProperties]::defaultProperties = v0;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADStretchTechnique;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADStretchTechnique *)self isFillRectOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v12.receiver = self;
  v12.super_class = OADStretchTechnique;
  [(OADProperties *)&v12 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ([(OADStretchTechnique *)self isFillRectOverridden]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isFillRectOverridden];

    if (v6)
    {
      fillRect = [(OADStretchTechnique *)self fillRect];
    }

    else
    {
      fillRect = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isFillRectOverridden];

    if (v8)
    {
      fillRect2 = [valuesCopy fillRect];
    }

    else
    {
      fillRect2 = 0;
    }

    v10 = TCObjectEqual(fillRect, fillRect2);
    mFillRect = self->mFillRect;
    if (v10)
    {
      self->mFillRect = 0;
    }

    else if (!mFillRect && v6)
    {
      [(OADStretchTechnique *)self setFillRect:fillRect];
    }
  }
}

- (void)removeUnnecessaryOverrides
{
  parent = [(OADProperties *)self parent];

  if (parent)
  {
    isMerged = [(OADProperties *)self isMerged];
    isMergedWithParent = [(OADProperties *)self isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    if (![(OADStretchTechnique *)self isFillRectOverridden])
    {
LABEL_10:
      [(OADProperties *)self setMerged:isMerged];
      [(OADProperties *)self setMergedWithParent:isMergedWithParent];
      v13.receiver = self;
      v13.super_class = OADStretchTechnique;
      [(OADProperties *)&v13 removeUnnecessaryOverrides];
      return;
    }

    parent2 = [(OADProperties *)self parent];
    fillRect = [(OADStretchTechnique *)self fillRect];
    fillRect2 = [parent2 fillRect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)fillRect removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      isMergedWithParent2 = [(objc_object *)fillRect isMergedWithParent];
      [(objc_object *)fillRect setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)fillRect isAnythingOverridden];
      [(objc_object *)fillRect setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(fillRect, fillRect2))
    {
LABEL_9:

      goto LABEL_10;
    }

    mFillRect = self->mFillRect;
    self->mFillRect = 0;

    goto LABEL_9;
  }
}

- (id)fillRect
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isFillRectOverridden];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

- (void)setFillRect:(id)rect
{
  rectCopy = rect;
  if (self->mFillRect != rectCopy)
  {
    v6 = rectCopy;
    objc_storeStrong(&self->mFillRect, rect);
    rectCopy = v6;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = OADStretchTechnique;
  if ([(OADImageFillTechnique *)&v7 isEqual:equalCopy])
  {
    v5 = TCObjectEqual(self->mFillRect, equalCopy[3]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
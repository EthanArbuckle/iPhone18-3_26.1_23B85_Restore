@interface MTLDebugRenderTargetAttachmentInfo
- (BOOL)isEqual:(id)a3;
- (MTLDebugRenderTargetAttachmentInfo)initWithDesc:(const MTLRenderPassAttachmentDescriptorPrivate *)a3 renderTargetArrayLength:(unint64_t)a4;
- (_NSRange)baseSliceRangeOffset;
- (_NSRange)resolveSliceRangeOffset;
- (unint64_t)intersectsTexture:(id)a3;
@end

@implementation MTLDebugRenderTargetAttachmentInfo

- (MTLDebugRenderTargetAttachmentInfo)initWithDesc:(const MTLRenderPassAttachmentDescriptorPrivate *)a3 renderTargetArrayLength:(unint64_t)a4
{
  v17.receiver = self;
  v17.super_class = MTLDebugRenderTargetAttachmentInfo;
  v6 = [(MTLDebugRenderTargetAttachmentInfo *)&v17 init];
  var0 = a3->var0;
  v6->_attachmentTexture = a3->var0;
  v6->_renderTargetArrayLength = a4;
  v6->_baseLevelOffset = a3->var1;
  var2 = a3->var2;
  v9 = [var0 parentTexture];
  if (v9)
  {
    do
    {
      v10 = v9;
      v6->_baseLevelOffset += [var0 parentRelativeLevel];
      var2 += [var0 parentRelativeSlice];
      v9 = [v10 parentTexture];
      var0 = v10;
    }

    while (v9);
  }

  else
  {
    v10 = var0;
  }

  v6->_baseTexture = v10;
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v6->_baseSliceRangeOffset.location = var2;
  v6->_baseSliceRangeOffset.length = v11;
  var11 = a3->var11;
  v6->_resolveLevelOffset = a3->var12;
  var13 = a3->var13;
  v14 = [var11 parentTexture];
  if (v14)
  {
    do
    {
      v15 = v14;
      v6->_resolveLevelOffset += [var11 parentRelativeLevel];
      var13 += [var11 parentRelativeSlice];
      v14 = [v15 parentTexture];
      var11 = v15;
    }

    while (v14);
  }

  else
  {
    v15 = var11;
  }

  v6->_baseResolveTexture = v15;
  v6->_resolveSliceRangeOffset.location = var13;
  v6->_resolveSliceRangeOffset.length = v11;
  return v6;
}

- (unint64_t)intersectsTexture:(id)a3
{
  v3 = a3;
  v5 = [a3 parentTexture];
  v6 = 0;
  v7 = 0;
  if (v5)
  {
    v8 = v3;
    do
    {
      v9 = v5;
      v6 += [(MTLTexture *)v8 parentRelativeLevel];
      v7 += [(MTLTexture *)v8 parentRelativeSlice];
      v5 = [(MTLTexture *)v9 parentTexture];
      v8 = v9;
    }

    while (v5);
  }

  else
  {
    v9 = v3;
  }

  v10 = [(MTLTexture *)v3 mipmapLevelCount];
  v11 = [(MTLTexture *)v3 arrayLength];
  if (self->_baseResolveTexture)
  {
    for (i = v3; [(MTLTexture *)i parentTexture]; v3 = i)
    {
      i = [(MTLTexture *)v3 parentTexture];
    }

    if (self->_baseResolveTexture == v3)
    {
      resolveLevelOffset = self->_resolveLevelOffset;
      v15 = resolveLevelOffset >= v6;
      v14 = resolveLevelOffset - v6;
      v15 = !v15 || v14 >= v10;
      if (!v15)
      {
        v19.location = v7;
        v19.length = v11;
        if (NSIntersectionRange(self[72], v19).length)
        {
          return 2;
        }
      }
    }
  }

  if (self->_baseTexture == v9)
  {
    baseLevelOffset = self->_baseLevelOffset;
    v15 = baseLevelOffset >= v6;
    v18 = baseLevelOffset - v6;
    if (v15 && v18 < v10)
    {
      v20.location = v7;
      v20.length = v11;
      if (NSIntersectionRange(self[56], v20).length)
      {
        return 1;
      }
    }
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_baseTexture == *(a3 + 3) && self->_baseLevelOffset == *(a3 + 5) && NSIntersectionRange(self[56], *(a3 + 56)).length != 0;
}

- (_NSRange)baseSliceRangeOffset
{
  length = self->_baseSliceRangeOffset.length;
  location = self->_baseSliceRangeOffset.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)resolveSliceRangeOffset
{
  length = self->_resolveSliceRangeOffset.length;
  location = self->_resolveSliceRangeOffset.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
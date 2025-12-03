@interface MTLDebugRenderTargetAttachmentInfo
- (BOOL)isEqual:(id)equal;
- (MTLDebugRenderTargetAttachmentInfo)initWithDesc:(const MTLRenderPassAttachmentDescriptorPrivate *)desc renderTargetArrayLength:(unint64_t)length;
- (_NSRange)baseSliceRangeOffset;
- (_NSRange)resolveSliceRangeOffset;
- (unint64_t)intersectsTexture:(id)texture;
@end

@implementation MTLDebugRenderTargetAttachmentInfo

- (MTLDebugRenderTargetAttachmentInfo)initWithDesc:(const MTLRenderPassAttachmentDescriptorPrivate *)desc renderTargetArrayLength:(unint64_t)length
{
  v17.receiver = self;
  v17.super_class = MTLDebugRenderTargetAttachmentInfo;
  v6 = [(MTLDebugRenderTargetAttachmentInfo *)&v17 init];
  var0 = desc->var0;
  v6->_attachmentTexture = desc->var0;
  v6->_renderTargetArrayLength = length;
  v6->_baseLevelOffset = desc->var1;
  var2 = desc->var2;
  parentTexture = [var0 parentTexture];
  if (parentTexture)
  {
    do
    {
      v10 = parentTexture;
      v6->_baseLevelOffset += [var0 parentRelativeLevel];
      var2 += [var0 parentRelativeSlice];
      parentTexture = [v10 parentTexture];
      var0 = v10;
    }

    while (parentTexture);
  }

  else
  {
    v10 = var0;
  }

  v6->_baseTexture = v10;
  if (length <= 1)
  {
    lengthCopy = 1;
  }

  else
  {
    lengthCopy = length;
  }

  v6->_baseSliceRangeOffset.location = var2;
  v6->_baseSliceRangeOffset.length = lengthCopy;
  var11 = desc->var11;
  v6->_resolveLevelOffset = desc->var12;
  var13 = desc->var13;
  parentTexture2 = [var11 parentTexture];
  if (parentTexture2)
  {
    do
    {
      v15 = parentTexture2;
      v6->_resolveLevelOffset += [var11 parentRelativeLevel];
      var13 += [var11 parentRelativeSlice];
      parentTexture2 = [v15 parentTexture];
      var11 = v15;
    }

    while (parentTexture2);
  }

  else
  {
    v15 = var11;
  }

  v6->_baseResolveTexture = v15;
  v6->_resolveSliceRangeOffset.location = var13;
  v6->_resolveSliceRangeOffset.length = lengthCopy;
  return v6;
}

- (unint64_t)intersectsTexture:(id)texture
{
  textureCopy = texture;
  parentTexture = [texture parentTexture];
  v6 = 0;
  v7 = 0;
  if (parentTexture)
  {
    v8 = textureCopy;
    do
    {
      v9 = parentTexture;
      v6 += [(MTLTexture *)v8 parentRelativeLevel];
      v7 += [(MTLTexture *)v8 parentRelativeSlice];
      parentTexture = [(MTLTexture *)v9 parentTexture];
      v8 = v9;
    }

    while (parentTexture);
  }

  else
  {
    v9 = textureCopy;
  }

  mipmapLevelCount = [(MTLTexture *)textureCopy mipmapLevelCount];
  arrayLength = [(MTLTexture *)textureCopy arrayLength];
  if (self->_baseResolveTexture)
  {
    for (i = textureCopy; [(MTLTexture *)i parentTexture]; textureCopy = i)
    {
      i = [(MTLTexture *)textureCopy parentTexture];
    }

    if (self->_baseResolveTexture == textureCopy)
    {
      resolveLevelOffset = self->_resolveLevelOffset;
      v15 = resolveLevelOffset >= v6;
      v14 = resolveLevelOffset - v6;
      v15 = !v15 || v14 >= mipmapLevelCount;
      if (!v15)
      {
        v19.location = v7;
        v19.length = arrayLength;
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
    if (v15 && v18 < mipmapLevelCount)
    {
      v20.location = v7;
      v20.length = arrayLength;
      if (NSIntersectionRange(self[56], v20).length)
      {
        return 1;
      }
    }
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_baseTexture == *(equal + 3) && self->_baseLevelOffset == *(equal + 5) && NSIntersectionRange(self[56], *(equal + 56)).length != 0;
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
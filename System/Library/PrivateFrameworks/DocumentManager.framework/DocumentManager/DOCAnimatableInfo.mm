@interface DOCAnimatableInfo
- (CGRect)sourceFrame;
- (DOCAnimatableInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DOCAnimatableInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_sourceContextId;
    *(v4 + 16) = self->_sourceLayerRenderId;
    size = self->_sourceFrame.size;
    *(v4 + 32) = self->_sourceFrame.origin;
    *(v4 + 48) = size;
    objc_storeStrong((v4 + 24), self->_sourcePath);
  }

  return v5;
}

- (DOCAnimatableInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = DOCAnimatableInfo;
  v5 = [(DOCAnimatableInfo *)&v18 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_sourceContextId);
    v5->_sourceContextId = [coderCopy decodeInt32ForKey:v6];

    v7 = NSStringFromSelector(sel_sourceLayerRenderId);
    v5->_sourceLayerRenderId = [coderCopy decodeInt64ForKey:v7];

    v8 = NSStringFromSelector(sel_sourceFrame);
    [coderCopy decodeCGRectForKey:v8];
    v5->_sourceFrame.origin.x = v9;
    v5->_sourceFrame.origin.y = v10;
    v5->_sourceFrame.size.width = v11;
    v5->_sourceFrame.size.height = v12;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_sourcePath);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    sourcePath = v5->_sourcePath;
    v5->_sourcePath = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceContextId = self->_sourceContextId;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_sourceContextId);
  [coderCopy encodeInt32:sourceContextId forKey:v6];

  sourceLayerRenderId = self->_sourceLayerRenderId;
  v8 = NSStringFromSelector(sel_sourceLayerRenderId);
  [coderCopy encodeInt64:sourceLayerRenderId forKey:v8];

  v9 = NSStringFromSelector(sel_sourceFrame);
  [coderCopy encodeCGRect:v9 forKey:{self->_sourceFrame.origin.x, self->_sourceFrame.origin.y, self->_sourceFrame.size.width, self->_sourceFrame.size.height}];

  sourcePath = self->_sourcePath;
  v11 = NSStringFromSelector(sel_sourcePath);
  [coderCopy encodeObject:sourcePath forKey:v11];
}

- (CGRect)sourceFrame
{
  x = self->_sourceFrame.origin.x;
  y = self->_sourceFrame.origin.y;
  width = self->_sourceFrame.size.width;
  height = self->_sourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
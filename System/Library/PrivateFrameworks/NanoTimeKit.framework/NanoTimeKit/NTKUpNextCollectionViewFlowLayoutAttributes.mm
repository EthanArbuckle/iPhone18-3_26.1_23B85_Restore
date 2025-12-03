@interface NTKUpNextCollectionViewFlowLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (CGRect)computedFrame;
- (CGRect)unitFrameOnScreen;
- (NTKUpNextCollectionViewFlowLayoutAttributes)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation NTKUpNextCollectionViewFlowLayoutAttributes

- (NTKUpNextCollectionViewFlowLayoutAttributes)init
{
  v3.receiver = self;
  v3.super_class = NTKUpNextCollectionViewFlowLayoutAttributes;
  result = [(UICollectionViewLayoutAttributes *)&v3 init];
  if (result)
  {
    result->_scale = 1.0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v16.receiver = self, v16.super_class = NTKUpNextCollectionViewFlowLayoutAttributes, -[UICollectionViewLayoutAttributes isEqual:](&v16, sel_isEqual_, equalCopy)) && ([equalCopy darkeningAlphaUniform], CLKFloatEqualsFloat()) && (objc_msgSend(equalCopy, "unitFrameOnScreen"), v17.origin.x = v5, v17.origin.y = v6, v17.size.width = v7, v17.size.height = v8, CGRectEqualToRect(self->_unitFrameOnScreen, v17)) && (objc_msgSend(equalCopy, "computedFrame"), v18.origin.x = v9, v18.origin.y = v10, v18.size.width = v11, v18.size.height = v12, CGRectEqualToRect(self->_computedFrame, v18)))
  {
    notVisibleToUser = [(NTKUpNextCollectionViewFlowLayoutAttributes *)self notVisibleToUser];
    v14 = notVisibleToUser ^ [equalCopy notVisibleToUser] ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = NTKUpNextCollectionViewFlowLayoutAttributes;
  v3 = [(UICollectionViewLayoutAttributes *)&v13 hash];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_darkeningAlphaUniform];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x277CCAE60] valueWithCGRect:{self->_unitFrameOnScreen.origin.x, self->_unitFrameOnScreen.origin.y, self->_unitFrameOnScreen.size.width, self->_unitFrameOnScreen.size.height}];
  v7 = [v6 hash];
  v8 = [MEMORY[0x277CCAE60] valueWithCGRect:{self->_computedFrame.origin.x, self->_computedFrame.origin.y, self->_computedFrame.size.width, self->_computedFrame.size.height}];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[NTKUpNextCollectionViewFlowLayoutAttributes notVisibleToUser](self, "notVisibleToUser")}];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKUpNextCollectionViewFlowLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [(NTKUpNextCollectionViewFlowLayoutAttributes *)self darkeningAlphaUniform];
  [v4 setDarkeningAlphaUniform:?];
  [(NTKUpNextCollectionViewFlowLayoutAttributes *)self unitFrameOnScreen];
  [v4 setUnitFrameOnScreen:?];
  [(NTKUpNextCollectionViewFlowLayoutAttributes *)self computedFrame];
  [v4 setComputedFrame:?];
  [(NTKUpNextCollectionViewFlowLayoutAttributes *)self scale];
  [v4 setScale:?];
  [(NTKUpNextCollectionViewFlowLayoutAttributes *)self shadowAlpha];
  [v4 setShadowAlpha:?];
  [v4 setLayoutMode:{-[NTKUpNextCollectionViewFlowLayoutAttributes layoutMode](self, "layoutMode")}];
  [v4 setNotVisibleToUser:{-[NTKUpNextCollectionViewFlowLayoutAttributes notVisibleToUser](self, "notVisibleToUser")}];
  [v4 setFullyVisibleToUser:{-[NTKUpNextCollectionViewFlowLayoutAttributes fullyVisibleToUser](self, "fullyVisibleToUser")}];
  return v4;
}

- (CGRect)unitFrameOnScreen
{
  x = self->_unitFrameOnScreen.origin.x;
  y = self->_unitFrameOnScreen.origin.y;
  width = self->_unitFrameOnScreen.size.width;
  height = self->_unitFrameOnScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)computedFrame
{
  x = self->_computedFrame.origin.x;
  y = self->_computedFrame.origin.y;
  width = self->_computedFrame.size.width;
  height = self->_computedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
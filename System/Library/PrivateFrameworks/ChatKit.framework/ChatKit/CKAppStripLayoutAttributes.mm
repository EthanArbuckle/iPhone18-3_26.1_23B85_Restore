@interface CKAppStripLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CKAppStripLayoutAttributes

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    showsBorder = [v7 showsBorder];
    if (showsBorder == -[CKAppStripLayoutAttributes showsBorder](self, "showsBorder") && (v9 = [v7 appStripSize], v9 == -[CKAppStripLayoutAttributes appStripSize](self, "appStripSize")))
    {
      v11.receiver = self;
      v11.super_class = CKAppStripLayoutAttributes;
      v6 = [(UICollectionViewLayoutAttributes *)&v11 isEqual:v7];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CKAppStripLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [v4 setShowsBorder:{-[CKAppStripLayoutAttributes showsBorder](self, "showsBorder")}];
  [v4 setAppStripSize:{-[CKAppStripLayoutAttributes appStripSize](self, "appStripSize")}];
  return v4;
}

@end
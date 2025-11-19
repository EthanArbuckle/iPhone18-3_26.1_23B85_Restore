@interface CKAppStripLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CKAppStripLayoutAttributes

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = [v7 showsBorder];
    if (v8 == -[CKAppStripLayoutAttributes showsBorder](self, "showsBorder") && (v9 = [v7 appStripSize], v9 == -[CKAppStripLayoutAttributes appStripSize](self, "appStripSize")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CKAppStripLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:a3];
  [v4 setShowsBorder:{-[CKAppStripLayoutAttributes showsBorder](self, "showsBorder")}];
  [v4 setAppStripSize:{-[CKAppStripLayoutAttributes appStripSize](self, "appStripSize")}];
  return v4;
}

@end
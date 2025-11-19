@interface ICDocCamThumbnailViewLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICDocCamThumbnailViewLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = ICDocCamThumbnailViewLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:a3];
  [(ICDocCamThumbnailViewLayoutAttributes *)self imageWidth];
  [v4 setImageWidth:?];
  [(ICDocCamThumbnailViewLayoutAttributes *)self imageHeight];
  [v4 setImageHeight:?];
  [v4 setRenderShadow:{-[ICDocCamThumbnailViewLayoutAttributes renderShadow](self, "renderShadow")}];
  [v4 setRenderBorder:{-[ICDocCamThumbnailViewLayoutAttributes renderBorder](self, "renderBorder")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  [(ICDocCamThumbnailViewLayoutAttributes *)self imageWidth];
  v6 = v5;
  [v4 imageWidth];
  if (v6 == v7 && (-[ICDocCamThumbnailViewLayoutAttributes imageHeight](self, "imageHeight"), v9 = v8, [v4 imageHeight], v9 == v10) && (v11 = -[ICDocCamThumbnailViewLayoutAttributes renderShadow](self, "renderShadow"), v11 == objc_msgSend(v4, "renderShadow")) && (v12 = -[ICDocCamThumbnailViewLayoutAttributes renderBorder](self, "renderBorder"), v12 == objc_msgSend(v4, "renderBorder")))
  {
    v15.receiver = self;
    v15.super_class = ICDocCamThumbnailViewLayoutAttributes;
    v13 = [(UICollectionViewLayoutAttributes *)&v15 isEqual:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
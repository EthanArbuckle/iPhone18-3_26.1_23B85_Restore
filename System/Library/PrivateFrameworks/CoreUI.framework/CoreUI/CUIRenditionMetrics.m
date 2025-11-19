@interface CUIRenditionMetrics
- (BOOL)hasAlignmentEdgeMargins;
- (CGRect)contentRect;
- (CGRect)edgeRect;
- (CGRect)insetContentRectWithMetrics:(CGRect)a3;
- (CGRect)insetRectWithMetrics:(CGRect)a3;
- (CGSize)auxiliary1BottomLeftMargin;
- (CGSize)auxiliary1TopRightMargin;
- (CGSize)auxiliary2BottomLeftMargin;
- (CGSize)auxiliary2TopRightMargin;
- (CGSize)contentBottomLeftMargin;
- (CGSize)contentTopRightMargin;
- (CGSize)defaultImageSize;
- (CGSize)edgeBottomLeftMargin;
- (CGSize)edgeTopRightMargin;
- (CGSize)imageSize;
- (double)initwithImageSize:(double)a3 scale:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithImageSize:(int)a3 defaultImageSize:(double)a4 edgeBottomLeft:(double)a5 edgeTopRight:(double)a6 contentBottomLeft:(double)a7 contentTopRight:(double)a8 baseline:(double)a9 auxiliary1BottomLeft:(double)a10 auxiliary1TopRight:(double)a11 auxiliary2BottomLeft:(uint64_t)a12 auxiliary2TopRight:(uint64_t)a13 scalesVertically:(uint64_t)a14 scalesHorizontally:(uint64_t)a15 scale:(uint64_t)a16;
- (id)metricsByMirroringHorizontally;
@end

@implementation CUIRenditionMetrics

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)hasAlignmentEdgeMargins
{
  v2 = self->_edgeBottomLeftMargin.height != 0.0 || self->_edgeTopRightMargin.height != 0.0;
  v3 = self->_edgeBottomLeftMargin.width != 0.0 || self->_edgeTopRightMargin.width != 0.0 || v2;
  return v3 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 8) = self->_imageSize;
  *(result + 24) = self->_defaultImageSize;
  *(result + 40) = self->_edgeBottomLeftMargin;
  *(result + 56) = self->_edgeTopRightMargin;
  *(result + 72) = self->_contentBottomLeftMargin;
  *(result + 88) = self->_contentTopRightMargin;
  *(result + 13) = *&self->_baseline;
  *(result + 7) = self->_auxiliary1BottomLeftMargin;
  *(result + 8) = self->_auxiliary1TopRightMargin;
  *(result + 9) = self->_auxiliary2BottomLeftMargin;
  *(result + 10) = self->_auxiliary2TopRightMargin;
  *(result + 22) = *&self->_scale;
  *(result + 46) = self->_crmFlags;
  return result;
}

- (CGSize)defaultImageSize
{
  width = self->_defaultImageSize.width;
  height = self->_defaultImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)edgeBottomLeftMargin
{
  width = self->_edgeBottomLeftMargin.width;
  height = self->_edgeBottomLeftMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)edgeTopRightMargin
{
  width = self->_edgeTopRightMargin.width;
  height = self->_edgeTopRightMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)contentBottomLeftMargin
{
  width = self->_contentBottomLeftMargin.width;
  height = self->_contentBottomLeftMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)contentTopRightMargin
{
  width = self->_contentTopRightMargin.width;
  height = self->_contentTopRightMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)auxiliary1BottomLeftMargin
{
  width = self->_auxiliary1BottomLeftMargin.width;
  height = self->_auxiliary1BottomLeftMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)auxiliary1TopRightMargin
{
  width = self->_auxiliary1TopRightMargin.width;
  height = self->_auxiliary1TopRightMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)auxiliary2BottomLeftMargin
{
  width = self->_auxiliary2BottomLeftMargin.width;
  height = self->_auxiliary2BottomLeftMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)auxiliary2TopRightMargin
{
  width = self->_auxiliary2TopRightMargin.width;
  height = self->_auxiliary2TopRightMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)metricsByMirroringHorizontally
{
  v3 = [(CUIRenditionMetrics *)self copy];
  v3[5] = self->_edgeTopRightMargin.width;
  v3[7] = self->_edgeBottomLeftMargin.width;
  v3[9] = self->_contentTopRightMargin.width;
  v3[11] = self->_contentBottomLeftMargin.width;
  v3[14] = self->_auxiliary1TopRightMargin.width;
  v3[16] = self->_auxiliary1BottomLeftMargin.width;
  v3[18] = self->_auxiliary2TopRightMargin.width;
  v3[20] = self->_auxiliary2BottomLeftMargin.width;

  return v3;
}

- (CGRect)edgeRect
{
  width = self->_edgeBottomLeftMargin.width;
  height = self->_edgeBottomLeftMargin.height;
  v4 = self->_imageSize.width - width - self->_edgeTopRightMargin.width;
  v5 = self->_imageSize.height - height - self->_edgeTopRightMargin.height;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = height;
  result.origin.x = width;
  return result;
}

- (CGRect)contentRect
{
  width = self->_contentBottomLeftMargin.width;
  height = self->_contentBottomLeftMargin.height;
  v4 = self->_imageSize.width - width - self->_contentTopRightMargin.width;
  v5 = self->_imageSize.height - height - self->_contentTopRightMargin.height;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = height;
  result.origin.x = width;
  return result;
}

- (CGRect)insetRectWithMetrics:(CGRect)a3
{
  v3 = a3.origin.x + a3.size.width - self->_edgeTopRightMargin.width - (a3.origin.x + self->_edgeBottomLeftMargin.width);
  v4 = a3.origin.y + a3.size.height - self->_edgeTopRightMargin.height - (a3.origin.y + self->_edgeBottomLeftMargin.height);
  v5 = a3.origin.x + self->_edgeBottomLeftMargin.width;
  v6 = a3.origin.y + self->_edgeBottomLeftMargin.height;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)insetContentRectWithMetrics:(CGRect)a3
{
  v3 = a3.origin.x + a3.size.width - self->_contentTopRightMargin.width - (a3.origin.x + self->_contentBottomLeftMargin.width);
  v4 = a3.origin.y + a3.size.height - self->_contentTopRightMargin.height - (a3.origin.y + self->_contentBottomLeftMargin.height);
  v5 = a3.origin.x + self->_contentBottomLeftMargin.width;
  v6 = a3.origin.y + self->_contentBottomLeftMargin.height;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)initwithImageSize:(double)a3 scale:(double)a4
{
  if (result)
  {
    v7.receiver = result;
    v7.super_class = CUIRenditionMetrics;
    result = objc_msgSendSuper2(&v7, sel_init);
    if (result)
    {
      result[1] = a2;
      result[2] = a3;
      result[3] = a2;
      result[4] = a3;
      result[22] = a4;
    }
  }

  return result;
}

- (id)initWithImageSize:(int)a3 defaultImageSize:(double)a4 edgeBottomLeft:(double)a5 edgeTopRight:(double)a6 contentBottomLeft:(double)a7 contentTopRight:(double)a8 baseline:(double)a9 auxiliary1BottomLeft:(double)a10 auxiliary1TopRight:(double)a11 auxiliary2BottomLeft:(uint64_t)a12 auxiliary2TopRight:(uint64_t)a13 scalesVertically:(uint64_t)a14 scalesHorizontally:(uint64_t)a15 scale:(uint64_t)a16
{
  if (result)
  {
    v42.receiver = result;
    v42.super_class = CUIRenditionMetrics;
    result = objc_msgSendSuper2(&v42, sel_init);
    if (result)
    {
      *(result + 1) = a4;
      *(result + 2) = a5;
      *(result + 3) = a6;
      *(result + 4) = a7;
      *(result + 5) = a8;
      *(result + 6) = a9;
      *(result + 7) = a10;
      *(result + 8) = a11;
      *(result + 9) = a17;
      *(result + 10) = a18;
      *(result + 11) = a19;
      *(result + 12) = a20;
      *(result + 13) = a21;
      *(result + 14) = a22;
      *(result + 15) = a23;
      *(result + 16) = a24;
      *(result + 17) = a25;
      *(result + 18) = a26;
      *(result + 19) = a27;
      *(result + 20) = a28;
      v40 = *(result + 92) & 0xFFFC;
      *(result + 21) = a29;
      *(result + 22) = a30;
      if (a3)
      {
        v41 = 2;
      }

      else
      {
        v41 = 0;
      }

      *(result + 92) = v41 | a2 | v40;
    }
  }

  return result;
}

@end
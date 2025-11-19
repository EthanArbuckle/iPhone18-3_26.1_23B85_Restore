@interface PXZoomableInlineHeadersLayoutSpec
- (PXZoomableInlineHeadersLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
- (UIEdgeInsets)headerFloatMarginsForSafeAreaInsets:(UIEdgeInsets)a3;
@end

@implementation PXZoomableInlineHeadersLayoutSpec

- (UIEdgeInsets)headerFloatMarginsForSafeAreaInsets:(UIEdgeInsets)a3
{
  v3 = &OBJC_IVAR___PXZoomableInlineHeadersLayoutSpec__headerFloatMargins;
  if (a3.top > 44.0)
  {
    v3 = &OBJC_IVAR___PXZoomableInlineHeadersLayoutSpec__headerFloatMarginsWithTallSafeAreaInsets;
  }

  v4 = (self + *v3);
  v5 = v4[2];
  v6 = v4[3];
  v7 = *v4;
  v8 = v4[1];
  result.right = v6;
  result.bottom = v5;
  result.left = v8;
  result.top = v7;
  return result;
}

- (PXZoomableInlineHeadersLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = PXZoomableInlineHeadersLayoutSpec;
  v7 = [(PXZoomableInlineHeadersLayoutSpec *)&v18 initWithExtendedTraitCollection:v6 options:a4];
  if (v7)
  {
    v8 = [v6 layoutSizeClass];
    [v6 contentSizeCategory];
    IsAccessibility = PXPreferredContentSizeCategoryIsAccessibility();
    *(v7 + 37) = IsAccessibility;
    [v7 safeAreaInsets];
    if ((IsAccessibility & (v8 == 1)) != 0)
    {
      v10 = 50.0;
    }

    else
    {
      v10 = 8.0;
    }

    [v6 layoutReferenceSize];
    [v6 userInterfaceIdiom];
    if (v10 >= 10.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 10.0;
    }

    PXEdgeInsetsMake();
    *(v7 + 33) = v12;
    *(v7 + 34) = v13;
    *(v7 + 35) = v14;
    *(v7 + 36) = v15;
    v16 = *(v7 + 280);
    *(v7 + 232) = *(v7 + 264);
    *(v7 + 248) = v16;
    *(v7 + 33) = v11;
    *(v7 + 38) = 0x4020000000000000;
  }

  return v7;
}

@end
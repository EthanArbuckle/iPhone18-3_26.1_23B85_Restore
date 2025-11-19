@interface CPSPointOfInterestAnnotationView
+ (CGPath)_createPathForBalloonRadius:(double)a3 tailLength:(double)a4;
+ (id)balloonWithText:(id)a3 traitCollection:(id)a4;
- (CPSPointOfInterestAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (id)_defaultPOI;
- (void)_configure;
- (void)_updateImage;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setImageSet:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelectedImageSet:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSPointOfInterestAnnotationView

- (CPSPointOfInterestAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v4 = v14;
  v14 = 0;
  v11.receiver = v4;
  v11.super_class = CPSPointOfInterestAnnotationView;
  v10 = [(MKAnnotationView *)&v11 initWithAnnotation:location[0] reuseIdentifier:v12];
  v14 = v10;
  objc_storeStrong(&v14, v10);
  if (v10)
  {
    v8 = [(CPSPointOfInterestAnnotationView *)v14 _defaultPOI];
    [(MKAnnotationView *)v14 setImage:?];
    *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    [(CPSPointOfInterestAnnotationView *)v14 _configure];
  }

  v7 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSPointOfInterestAnnotationView;
  [(CPSPointOfInterestAnnotationView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSPointOfInterestAnnotationView *)v5 _updateImage];
  objc_storeStrong(location, 0);
}

- (void)setImageSet:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(CPImageSet *)v4->_imageSet isEqual:location[0]])
  {
    objc_storeStrong(&v4->_imageSet, location[0]);
    [(CPSPointOfInterestAnnotationView *)v4 _updateImage];
  }

  objc_storeStrong(location, 0);
}

- (void)setSelectedImageSet:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(CPImageSet *)v4->_selectedImageSet isEqual:location[0]])
  {
    objc_storeStrong(&v4->_selectedImageSet, location[0]);
    [(CPSPointOfInterestAnnotationView *)v4 _updateImage];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateImage
{
  if ([(MKAnnotationView *)self isSelected])
  {
    v11 = [(CPSPointOfInterestAnnotationView *)self selectedImageSet];
    *&v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    if (v11)
    {
      v10 = [(CPSPointOfInterestAnnotationView *)self selectedImageSet];
      v9 = [(CPImageSet *)v10 image];
      [(MKAnnotationView *)self setImage:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
    }

    else
    {
      v8 = [(CPSPointOfInterestAnnotationView *)self _defaultPOI];
      [(MKAnnotationView *)self setImage:?];
      MEMORY[0x277D82BD8](v8);
    }
  }

  else
  {
    v7 = [(CPSPointOfInterestAnnotationView *)self imageSet];
    *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v7)
    {
      v6 = [(CPSPointOfInterestAnnotationView *)self imageSet];
      v5 = [(CPImageSet *)v6 image];
      [(MKAnnotationView *)self setImage:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v4 = [(CPSPointOfInterestAnnotationView *)self _defaultPOI];
      [(MKAnnotationView *)self setImage:?];
      MEMORY[0x277D82BD8](v4);
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v3 setSelected:a3];
  [(CPSPointOfInterestAnnotationView *)v6 setSelected:v4 animated:1];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5 = a4;
  v4.receiver = self;
  v4.super_class = CPSPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v4 setSelected:a3 animated:a4];
  [(CPSPointOfInterestAnnotationView *)v8 _updateImage];
}

- (void)prepareForDisplay
{
  v4 = self;
  v3 = a2;
  [(CPSPointOfInterestAnnotationView *)self _configure];
  v2.receiver = v4;
  v2.super_class = CPSPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v2 prepareForDisplay];
}

- (void)prepareForReuse
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v2 prepareForReuse];
  [(CPSPointOfInterestAnnotationView *)v4 _configure];
}

- (void)_configure
{
  LODWORD(v2) = 1148846080;
  [(MKAnnotationView *)self setDisplayPriority:v2];
  [(MKAnnotationView *)self setCollisionMode:1];
  [(MKAnnotationView *)self setCanShowCallout:0];
}

- (id)_defaultPOI
{
  v3 = [(CPSPointOfInterestAnnotationView *)self traitCollection];
  v4 = [CPSPointOfInterestAnnotationView balloonWithText:0 traitCollection:?];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

+ (id)balloonWithText:(id)a3 traitCollection:(id)a4
{
  v39 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = +[CPSEntityStyles mapAnnotationDropShadow];
  v35 = [MEMORY[0x277D74300] systemFontOfSize:12.0 weight:*MEMORY[0x277D74400]];
  memset(v34, 0, sizeof(v34));
  v32 = 0u;
  v33 = 0u;
  memset(__b, 0, sizeof(__b));
  v29 = 0u;
  v30 = 0u;
  v15 = v36;
  CGRectMake_8();
  v28[1] = v4;
  v28[2] = v5;
  v28[3] = v6;
  v28[4] = v7;
  [v15 rectsForSource:v34 shadowRect:&v32 unionRect:__b positionTransform:{*&v4, *&v5, *&v6, *&v7}];
  *&v29 = v8;
  *(&v29 + 1) = v9;
  *&v30 = v10;
  *(&v30 + 1) = v11;
  v12 = objc_alloc(MEMORY[0x277D75560]);
  v28[0] = [v12 initWithSize:{*&v33, *(&v33 + 1)}];
  v16 = v28[0];
  v18 = MEMORY[0x277D82BE0](v37);
  v19 = MEMORY[0x277D82BE0](v36);
  v21[1] = v39;
  v22 = v29;
  v23 = v30;
  memcpy(v24, __b, sizeof(v24));
  v20 = MEMORY[0x277D82BE0](location[0]);
  v21[0] = MEMORY[0x277D82BE0](v35);
  v25 = v32;
  v26 = v33;
  v27 = [v16 imageWithActions:?];
  v17 = MEMORY[0x277D82BE0](v27);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(v28, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);

  return v17;
}

void __68__CPSPointOfInterestAnnotationView_balloonWithText_traitCollection___block_invoke(uint64_t a1, void *a2)
{
  v31[2] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28[1] = a1;
  v28[0] = [MEMORY[0x277D75C80] _currentTraitCollection];
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:*(a1 + 32)];
  v27.width = 0.0;
  v27.height = 0.0;
  [*(a1 + 40) offset];
  v27.width = v2;
  v27.height = v3;
  [*(a1 + 40) radius];
  v26 = v4;
  c = [location[0] CGContext];
  v16 = [*(a1 + 40) color];
  v5 = v16;
  CGContextSetShadowWithColor(c, v27, v26, [v16 CGColor]);
  MEMORY[0x277D82BD8](v16);
  v25 = [MEMORY[0x277D75208] bezierPathWithCGPath:{objc_msgSend(*(a1 + 64), "_createPathForBalloonRadius:tailLength:", *(a1 + 88) / 2.0, *(a1 + 96) - *(a1 + 88))}];
  memcpy(__dst, (a1 + 104), sizeof(__dst));
  [v25 applyTransform:__dst];
  v17 = [MEMORY[0x277D75348] systemRedColor];
  [v17 setFill];
  *&v6 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [v25 fill];
  v7 = [location[0] CGContext];
  CGContextSetShadowWithColor(v7, v27, v26, 0);
  if (*(a1 + 48))
  {
    v30[0] = *MEMORY[0x277D740A8];
    v31[0] = *(a1 + 56);
    v30[1] = *MEMORY[0x277D740C0];
    v13 = [MEMORY[0x277D75348] systemWhiteColor];
    v31[1] = v13;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    *&v8 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    [*(a1 + 48) sizeWithAttributes:{v23, v8}];
    CGRectMake_8();
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v14 = [MEMORY[0x277D75348] systemWhiteColor];
    [v14 setStroke];
    MEMORY[0x277D82BD8](v14);
    [*(a1 + 48) drawInRect:v23 withAttributes:{v19, v20, v21, v22}];
    objc_storeStrong(&v23, 0);
  }

  CGContextTranslateCTM([location[0] CGContext], -*(a1 + 152), -*(a1 + 160));
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:v28[0]];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v28, 0);
  objc_storeStrong(location, 0);
}

+ (CGPath)_createPathForBalloonRadius:(double)a3 tailLength:(double)a4
{
  v11 = a4 / 4.0;
  v10 = a4 / 5.0;
  v9 = a3 * 2.0;
  cp2x = 0.448000014 * a3;
  cp1x = 0.38499999 * a3;
  path = CGPathCreateMutable();
  CGPathMoveToPoint(path, 0, v9, a3);
  v5 = 3.0;
  CGPathAddCurveToPoint(path, 0, v9, a3 * 1.5, v9 - cp1x, v9 - a4 / 3.0, a3 + a4 / 2.0 + v10, v9);
  CGPathAddCurveToPoint(path, 0, a3 + a4 / v5, v9 + a4 / v5, a3 + v11, v9 + a4, a3, v9 + a4);
  CGPathAddCurveToPoint(path, 0, a3 - v11, v9 + a4, a3 - a4 / v5, v9 + a4 / v5, a3 - (a4 / 2.0 + v10), v9);
  CGPathAddCurveToPoint(path, 0, cp1x, v9 - a4 / 3.0, 0.0, a3 * 1.5, 0.0, a3);
  CGPathAddCurveToPoint(path, 0, 0.0, cp2x, cp2x, 0.0, a3, 0.0);
  CGPathAddCurveToPoint(path, 0, v9 - cp2x, 0.0, v9, cp2x, v9, a3);
  CGPathCloseSubpath(path);
  return path;
}

@end
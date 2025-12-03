@interface CPSPointOfInterestAnnotationView
+ (CGPath)_createPathForBalloonRadius:(double)radius tailLength:(double)length;
+ (id)balloonWithText:(id)text traitCollection:(id)collection;
- (CPSPointOfInterestAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (id)_defaultPOI;
- (void)_configure;
- (void)_updateImage;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setImageSet:(id)set;
- (void)setSelected:(BOOL)selected;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setSelectedImageSet:(id)set;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSPointOfInterestAnnotationView

- (CPSPointOfInterestAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, annotation);
  v12 = 0;
  objc_storeStrong(&v12, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v11.receiver = v4;
  v11.super_class = CPSPointOfInterestAnnotationView;
  v10 = [(MKAnnotationView *)&v11 initWithAnnotation:location[0] reuseIdentifier:v12];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    _defaultPOI = [(CPSPointOfInterestAnnotationView *)selfCopy _defaultPOI];
    [(MKAnnotationView *)selfCopy setImage:?];
    *&v5 = MEMORY[0x277D82BD8](_defaultPOI).n128_u64[0];
    [(CPSPointOfInterestAnnotationView *)selfCopy _configure];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSPointOfInterestAnnotationView;
  [(CPSPointOfInterestAnnotationView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSPointOfInterestAnnotationView *)selfCopy _updateImage];
  objc_storeStrong(location, 0);
}

- (void)setImageSet:(id)set
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, set);
  if (![(CPImageSet *)selfCopy->_imageSet isEqual:location[0]])
  {
    objc_storeStrong(&selfCopy->_imageSet, location[0]);
    [(CPSPointOfInterestAnnotationView *)selfCopy _updateImage];
  }

  objc_storeStrong(location, 0);
}

- (void)setSelectedImageSet:(id)set
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, set);
  if (![(CPImageSet *)selfCopy->_selectedImageSet isEqual:location[0]])
  {
    objc_storeStrong(&selfCopy->_selectedImageSet, location[0]);
    [(CPSPointOfInterestAnnotationView *)selfCopy _updateImage];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateImage
{
  if ([(MKAnnotationView *)self isSelected])
  {
    selectedImageSet = [(CPSPointOfInterestAnnotationView *)self selectedImageSet];
    *&v2 = MEMORY[0x277D82BD8](selectedImageSet).n128_u64[0];
    if (selectedImageSet)
    {
      selectedImageSet2 = [(CPSPointOfInterestAnnotationView *)self selectedImageSet];
      image = [(CPImageSet *)selectedImageSet2 image];
      [(MKAnnotationView *)self setImage:?];
      MEMORY[0x277D82BD8](image);
      MEMORY[0x277D82BD8](selectedImageSet2);
    }

    else
    {
      _defaultPOI = [(CPSPointOfInterestAnnotationView *)self _defaultPOI];
      [(MKAnnotationView *)self setImage:?];
      MEMORY[0x277D82BD8](_defaultPOI);
    }
  }

  else
  {
    imageSet = [(CPSPointOfInterestAnnotationView *)self imageSet];
    *&v3 = MEMORY[0x277D82BD8](imageSet).n128_u64[0];
    if (imageSet)
    {
      imageSet2 = [(CPSPointOfInterestAnnotationView *)self imageSet];
      image2 = [(CPImageSet *)imageSet2 image];
      [(MKAnnotationView *)self setImage:?];
      MEMORY[0x277D82BD8](image2);
      MEMORY[0x277D82BD8](imageSet2);
    }

    else
    {
      _defaultPOI2 = [(CPSPointOfInterestAnnotationView *)self _defaultPOI];
      [(MKAnnotationView *)self setImage:?];
      MEMORY[0x277D82BD8](_defaultPOI2);
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  v5 = a2;
  selectedCopy = selected;
  v3.receiver = self;
  v3.super_class = CPSPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v3 setSelected:selected];
  [(CPSPointOfInterestAnnotationView *)selfCopy setSelected:selectedCopy animated:1];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selfCopy = self;
  v7 = a2;
  selectedCopy = selected;
  animatedCopy = animated;
  v4.receiver = self;
  v4.super_class = CPSPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v4 setSelected:selected animated:animated];
  [(CPSPointOfInterestAnnotationView *)selfCopy _updateImage];
}

- (void)prepareForDisplay
{
  selfCopy = self;
  v3 = a2;
  [(CPSPointOfInterestAnnotationView *)self _configure];
  v2.receiver = selfCopy;
  v2.super_class = CPSPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v2 prepareForDisplay];
}

- (void)prepareForReuse
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v2 prepareForReuse];
  [(CPSPointOfInterestAnnotationView *)selfCopy _configure];
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
  traitCollection = [(CPSPointOfInterestAnnotationView *)self traitCollection];
  v4 = [CPSPointOfInterestAnnotationView balloonWithText:0 traitCollection:?];
  MEMORY[0x277D82BD8](traitCollection);

  return v4;
}

+ (id)balloonWithText:(id)text traitCollection:(id)collection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v37 = 0;
  objc_storeStrong(&v37, collection);
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
  v21[1] = selfCopy;
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

+ (CGPath)_createPathForBalloonRadius:(double)radius tailLength:(double)length
{
  v11 = length / 4.0;
  v10 = length / 5.0;
  v9 = radius * 2.0;
  cp2x = 0.448000014 * radius;
  cp1x = 0.38499999 * radius;
  path = CGPathCreateMutable();
  CGPathMoveToPoint(path, 0, v9, radius);
  v5 = 3.0;
  CGPathAddCurveToPoint(path, 0, v9, radius * 1.5, v9 - cp1x, v9 - length / 3.0, radius + length / 2.0 + v10, v9);
  CGPathAddCurveToPoint(path, 0, radius + length / v5, v9 + length / v5, radius + v11, v9 + length, radius, v9 + length);
  CGPathAddCurveToPoint(path, 0, radius - v11, v9 + length, radius - length / v5, v9 + length / v5, radius - (length / 2.0 + v10), v9);
  CGPathAddCurveToPoint(path, 0, cp1x, v9 - length / 3.0, 0.0, radius * 1.5, 0.0, radius);
  CGPathAddCurveToPoint(path, 0, 0.0, cp2x, cp2x, 0.0, radius, 0.0);
  CGPathAddCurveToPoint(path, 0, v9 - cp2x, 0.0, v9, cp2x, v9, radius);
  CGPathCloseSubpath(path);
  return path;
}

@end
@interface PKPassLiveRenderedImageSet
- (BOOL)isEqual:(id)equal;
- (PKPassLiveRenderedImageSet)initWithCoder:(id)coder;
- (PKPassLiveRenderedImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)preheatImages;
@end

@implementation PKPassLiveRenderedImageSet

- (PKPassLiveRenderedImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix
{
  profileCopy = profile;
  lCopy = l;
  suffixCopy = suffix;
  v36.receiver = self;
  v36.super_class = PKPassLiveRenderedImageSet;
  v13 = [(PKImageSet *)&v36 initWithDisplayProfile:profileCopy fileURL:lCopy screenScale:suffixCopy suffix:scale];
  if (v13)
  {
    context = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
    v32 = [PKImage imageNamed:@"diffuse" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setDiffuseMaterialPropertyImage:?];
    v31 = [PKImage imageNamed:@"ambient" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setAmbientMaterialPropertyImage:v31];
    v30 = [PKImage imageNamed:@"specular" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setSpecularMaterialPropertyImage:?];
    v29 = [PKImage imageNamed:@"normal" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setNormalMaterialPropertyImage:v29];
    v28 = [PKImage imageNamed:@"reflective" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setReflectiveMaterialPropertyImage:?];
    v27 = [PKImage imageNamed:@"emission" inBundle:v14 screenScale:suffixCopy suffix:scale];
    v34 = lCopy;
    [(PKPassLiveRenderedImageSet *)v13 setEmissionMaterialPropertyImage:v27];
    v26 = [PKImage imageNamed:@"transparent" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setTransparentMaterialPropertyImage:v26];
    v25 = [PKImage imageNamed:@"multiply" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setMultiplyMaterialPropertyImage:?];
    v15 = [PKImage imageNamed:@"displacement" inBundle:v14 screenScale:suffixCopy suffix:scale];
    v35 = profileCopy;
    [(PKPassLiveRenderedImageSet *)v13 setDisplacementMaterialPropertyImage:v15];
    v16 = [PKImage imageNamed:@"ambientOcclusion" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setAmbientOcclusionMaterialPropertyImage:v16];
    v17 = [PKImage imageNamed:@"selfIllumination" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setSelfIlluminationMaterialPropertyImage:v17];
    v18 = [PKImage imageNamed:@"metalness" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setMetalnessMaterialPropertyImage:v18];
    v19 = [PKImage imageNamed:@"roughness" inBundle:v14 screenScale:suffixCopy suffix:scale];
    [(PKPassLiveRenderedImageSet *)v13 setRoughnessMaterialPropertyImage:v19];
    v20 = [PKImage imageNamed:@"overlay" inBundle:v14 screenScale:suffixCopy suffix:scale];
    v21 = v32 | v31 | v30 | v29 | v28 | v27 | v26 | v25 | v15 | v16 | v17 | v18 | v19 | v20;
    [(PKPassLiveRenderedImageSet *)v13 setOverlayMaterialPropertyImage:v20];

    profileCopy = v35;
    lCopy = v34;

    objc_autoreleasePoolPop(context);
    if (v21)
    {
      v22 = v13;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  return v23;
}

- (void)preheatImages
{
  [(PKImage *)self->_diffuseMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_ambientMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_specularMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_normalMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_reflectiveMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_emissionMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_transparentMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_multiplyMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_displacementMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_ambientOcclusionMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_selfIlluminationMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_metalnessMaterialPropertyImage preheatBitmapData];
  [(PKImage *)self->_roughnessMaterialPropertyImage preheatBitmapData];
  overlayMaterialPropertyImage = self->_overlayMaterialPropertyImage;

  [(PKImage *)overlayMaterialPropertyImage preheatBitmapData];
}

- (PKPassLiveRenderedImageSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = PKPassLiveRenderedImageSet;
  v5 = [(PKImageSet *)&v36 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diffuse"];
    diffuseMaterialPropertyImage = v5->_diffuseMaterialPropertyImage;
    v5->_diffuseMaterialPropertyImage = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ambient"];
    ambientMaterialPropertyImage = v5->_ambientMaterialPropertyImage;
    v5->_ambientMaterialPropertyImage = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"specular"];
    specularMaterialPropertyImage = v5->_specularMaterialPropertyImage;
    v5->_specularMaterialPropertyImage = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"normal"];
    normalMaterialPropertyImage = v5->_normalMaterialPropertyImage;
    v5->_normalMaterialPropertyImage = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reflective"];
    reflectiveMaterialPropertyImage = v5->_reflectiveMaterialPropertyImage;
    v5->_reflectiveMaterialPropertyImage = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emission"];
    emissionMaterialPropertyImage = v5->_emissionMaterialPropertyImage;
    v5->_emissionMaterialPropertyImage = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transparent"];
    transparentMaterialPropertyImage = v5->_transparentMaterialPropertyImage;
    v5->_transparentMaterialPropertyImage = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multiply"];
    multiplyMaterialPropertyImage = v5->_multiplyMaterialPropertyImage;
    v5->_multiplyMaterialPropertyImage = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displacement"];
    displacementMaterialPropertyImage = v5->_displacementMaterialPropertyImage;
    v5->_displacementMaterialPropertyImage = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ambientOcclusion"];
    ambientOcclusionMaterialPropertyImage = v5->_ambientOcclusionMaterialPropertyImage;
    v5->_ambientOcclusionMaterialPropertyImage = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfIllumination"];
    selfIlluminationMaterialPropertyImage = v5->_selfIlluminationMaterialPropertyImage;
    v5->_selfIlluminationMaterialPropertyImage = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalness"];
    metalnessMaterialPropertyImage = v5->_metalnessMaterialPropertyImage;
    v5->_metalnessMaterialPropertyImage = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roughness"];
    roughnessMaterialPropertyImage = v5->_roughnessMaterialPropertyImage;
    v5->_roughnessMaterialPropertyImage = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overlay"];
    overlayMaterialPropertyImage = v5->_overlayMaterialPropertyImage;
    v5->_overlayMaterialPropertyImage = v33;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = PKPassLiveRenderedImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:coderCopy];
  v5 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_diffuseMaterialPropertyImage forKey:@"diffuse"];
  [coderCopy encodeObject:self->_ambientMaterialPropertyImage forKey:@"ambient"];
  [coderCopy encodeObject:self->_specularMaterialPropertyImage forKey:@"specular"];
  [coderCopy encodeObject:self->_normalMaterialPropertyImage forKey:@"normal"];
  [coderCopy encodeObject:self->_reflectiveMaterialPropertyImage forKey:@"reflective"];
  [coderCopy encodeObject:self->_emissionMaterialPropertyImage forKey:@"emission"];
  [coderCopy encodeObject:self->_transparentMaterialPropertyImage forKey:@"transparent"];
  [coderCopy encodeObject:self->_multiplyMaterialPropertyImage forKey:@"multiply"];
  [coderCopy encodeObject:self->_displacementMaterialPropertyImage forKey:@"displacement"];
  [coderCopy encodeObject:self->_ambientOcclusionMaterialPropertyImage forKey:@"ambientOcclusion"];
  [coderCopy encodeObject:self->_selfIlluminationMaterialPropertyImage forKey:@"selfIllumination"];
  [coderCopy encodeObject:self->_metalnessMaterialPropertyImage forKey:@"metalness"];
  [coderCopy encodeObject:self->_roughnessMaterialPropertyImage forKey:@"roughness"];
  [coderCopy encodeObject:self->_overlayMaterialPropertyImage forKey:@"overlay"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(PKImageSet *)self _isSetImage:self->_diffuseMaterialPropertyImage equalToImage:v5[3]]&& [(PKImageSet *)self _isSetImage:self->_ambientMaterialPropertyImage equalToImage:v5[4]]&& [(PKImageSet *)self _isSetImage:self->_specularMaterialPropertyImage equalToImage:v5[5]]&& [(PKImageSet *)self _isSetImage:self->_normalMaterialPropertyImage equalToImage:v5[6]]&& [(PKImageSet *)self _isSetImage:self->_reflectiveMaterialPropertyImage equalToImage:v5[7]]&& [(PKImageSet *)self _isSetImage:self->_emissionMaterialPropertyImage equalToImage:v5[8]]&& [(PKImageSet *)self _isSetImage:self->_transparentMaterialPropertyImage equalToImage:v5[9]]&& [(PKImageSet *)self _isSetImage:self->_multiplyMaterialPropertyImage equalToImage:v5[10]]&& [(PKImageSet *)self _isSetImage:self->_displacementMaterialPropertyImage equalToImage:v5[11]]&& [(PKImageSet *)self _isSetImage:self->_ambientOcclusionMaterialPropertyImage equalToImage:v5[12]]&& [(PKImageSet *)self _isSetImage:self->_selfIlluminationMaterialPropertyImage equalToImage:v5[13]]&& [(PKImageSet *)self _isSetImage:self->_metalnessMaterialPropertyImage equalToImage:v5[14]]&& [(PKImageSet *)self _isSetImage:self->_roughnessMaterialPropertyImage equalToImage:v5[15]]&& [(PKImageSet *)self _isSetImage:self->_overlayMaterialPropertyImage equalToImage:v5[16]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  imageHash = [(PKImage *)self->_diffuseMaterialPropertyImage imageHash];
  v3 = [imageHash hash];
  imageHash2 = [(PKImage *)self->_ambientMaterialPropertyImage imageHash];
  v4 = [imageHash2 hash] + v3;
  imageHash3 = [(PKImage *)self->_specularMaterialPropertyImage imageHash];
  v5 = [imageHash3 hash];
  imageHash4 = [(PKImage *)self->_normalMaterialPropertyImage imageHash];
  v6 = v4 + v5 + [imageHash4 hash];
  imageHash5 = [(PKImage *)self->_reflectiveMaterialPropertyImage imageHash];
  v7 = [imageHash5 hash];
  imageHash6 = [(PKImage *)self->_emissionMaterialPropertyImage imageHash];
  v8 = v7 + [imageHash6 hash];
  imageHash7 = [(PKImage *)self->_transparentMaterialPropertyImage imageHash];
  v9 = v6 + v8 + [imageHash7 hash];
  imageHash8 = [(PKImage *)self->_multiplyMaterialPropertyImage imageHash];
  v11 = [imageHash8 hash];
  imageHash9 = [(PKImage *)self->_displacementMaterialPropertyImage imageHash];
  v13 = v11 + [imageHash9 hash];
  imageHash10 = [(PKImage *)self->_ambientOcclusionMaterialPropertyImage imageHash];
  v15 = v13 + [imageHash10 hash];
  imageHash11 = [(PKImage *)self->_selfIlluminationMaterialPropertyImage imageHash];
  v24 = v9 + v15 + [imageHash11 hash];
  imageHash12 = [(PKImage *)self->_metalnessMaterialPropertyImage imageHash];
  v18 = [imageHash12 hash];
  imageHash13 = [(PKImage *)self->_roughnessMaterialPropertyImage imageHash];
  v20 = v18 + [imageHash13 hash];
  imageHash14 = [(PKImage *)self->_overlayMaterialPropertyImage imageHash];
  v22 = v20 + [imageHash14 hash];

  return v24 + v22;
}

@end
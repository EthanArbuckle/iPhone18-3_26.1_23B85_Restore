@interface PKPassLiveRenderedImageSet
- (BOOL)isEqual:(id)a3;
- (PKPassLiveRenderedImageSet)initWithCoder:(id)a3;
- (PKPassLiveRenderedImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)preheatImages;
@end

@implementation PKPassLiveRenderedImageSet

- (PKPassLiveRenderedImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v36.receiver = self;
  v36.super_class = PKPassLiveRenderedImageSet;
  v13 = [(PKImageSet *)&v36 initWithDisplayProfile:v10 fileURL:v11 screenScale:v12 suffix:a5];
  if (v13)
  {
    context = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x1E696AAE8] bundleWithURL:v11];
    v32 = [PKImage imageNamed:@"diffuse" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setDiffuseMaterialPropertyImage:?];
    v31 = [PKImage imageNamed:@"ambient" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setAmbientMaterialPropertyImage:v31];
    v30 = [PKImage imageNamed:@"specular" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setSpecularMaterialPropertyImage:?];
    v29 = [PKImage imageNamed:@"normal" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setNormalMaterialPropertyImage:v29];
    v28 = [PKImage imageNamed:@"reflective" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setReflectiveMaterialPropertyImage:?];
    v27 = [PKImage imageNamed:@"emission" inBundle:v14 screenScale:v12 suffix:a5];
    v34 = v11;
    [(PKPassLiveRenderedImageSet *)v13 setEmissionMaterialPropertyImage:v27];
    v26 = [PKImage imageNamed:@"transparent" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setTransparentMaterialPropertyImage:v26];
    v25 = [PKImage imageNamed:@"multiply" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setMultiplyMaterialPropertyImage:?];
    v15 = [PKImage imageNamed:@"displacement" inBundle:v14 screenScale:v12 suffix:a5];
    v35 = v10;
    [(PKPassLiveRenderedImageSet *)v13 setDisplacementMaterialPropertyImage:v15];
    v16 = [PKImage imageNamed:@"ambientOcclusion" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setAmbientOcclusionMaterialPropertyImage:v16];
    v17 = [PKImage imageNamed:@"selfIllumination" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setSelfIlluminationMaterialPropertyImage:v17];
    v18 = [PKImage imageNamed:@"metalness" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setMetalnessMaterialPropertyImage:v18];
    v19 = [PKImage imageNamed:@"roughness" inBundle:v14 screenScale:v12 suffix:a5];
    [(PKPassLiveRenderedImageSet *)v13 setRoughnessMaterialPropertyImage:v19];
    v20 = [PKImage imageNamed:@"overlay" inBundle:v14 screenScale:v12 suffix:a5];
    v21 = v32 | v31 | v30 | v29 | v28 | v27 | v26 | v25 | v15 | v16 | v17 | v18 | v19 | v20;
    [(PKPassLiveRenderedImageSet *)v13 setOverlayMaterialPropertyImage:v20];

    v10 = v35;
    v11 = v34;

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

- (PKPassLiveRenderedImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = PKPassLiveRenderedImageSet;
  v5 = [(PKImageSet *)&v36 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diffuse"];
    diffuseMaterialPropertyImage = v5->_diffuseMaterialPropertyImage;
    v5->_diffuseMaterialPropertyImage = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ambient"];
    ambientMaterialPropertyImage = v5->_ambientMaterialPropertyImage;
    v5->_ambientMaterialPropertyImage = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"specular"];
    specularMaterialPropertyImage = v5->_specularMaterialPropertyImage;
    v5->_specularMaterialPropertyImage = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"normal"];
    normalMaterialPropertyImage = v5->_normalMaterialPropertyImage;
    v5->_normalMaterialPropertyImage = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reflective"];
    reflectiveMaterialPropertyImage = v5->_reflectiveMaterialPropertyImage;
    v5->_reflectiveMaterialPropertyImage = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emission"];
    emissionMaterialPropertyImage = v5->_emissionMaterialPropertyImage;
    v5->_emissionMaterialPropertyImage = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transparent"];
    transparentMaterialPropertyImage = v5->_transparentMaterialPropertyImage;
    v5->_transparentMaterialPropertyImage = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multiply"];
    multiplyMaterialPropertyImage = v5->_multiplyMaterialPropertyImage;
    v5->_multiplyMaterialPropertyImage = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displacement"];
    displacementMaterialPropertyImage = v5->_displacementMaterialPropertyImage;
    v5->_displacementMaterialPropertyImage = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ambientOcclusion"];
    ambientOcclusionMaterialPropertyImage = v5->_ambientOcclusionMaterialPropertyImage;
    v5->_ambientOcclusionMaterialPropertyImage = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selfIllumination"];
    selfIlluminationMaterialPropertyImage = v5->_selfIlluminationMaterialPropertyImage;
    v5->_selfIlluminationMaterialPropertyImage = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalness"];
    metalnessMaterialPropertyImage = v5->_metalnessMaterialPropertyImage;
    v5->_metalnessMaterialPropertyImage = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roughness"];
    roughnessMaterialPropertyImage = v5->_roughnessMaterialPropertyImage;
    v5->_roughnessMaterialPropertyImage = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overlay"];
    overlayMaterialPropertyImage = v5->_overlayMaterialPropertyImage;
    v5->_overlayMaterialPropertyImage = v33;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PKPassLiveRenderedImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_diffuseMaterialPropertyImage forKey:@"diffuse"];
  [v4 encodeObject:self->_ambientMaterialPropertyImage forKey:@"ambient"];
  [v4 encodeObject:self->_specularMaterialPropertyImage forKey:@"specular"];
  [v4 encodeObject:self->_normalMaterialPropertyImage forKey:@"normal"];
  [v4 encodeObject:self->_reflectiveMaterialPropertyImage forKey:@"reflective"];
  [v4 encodeObject:self->_emissionMaterialPropertyImage forKey:@"emission"];
  [v4 encodeObject:self->_transparentMaterialPropertyImage forKey:@"transparent"];
  [v4 encodeObject:self->_multiplyMaterialPropertyImage forKey:@"multiply"];
  [v4 encodeObject:self->_displacementMaterialPropertyImage forKey:@"displacement"];
  [v4 encodeObject:self->_ambientOcclusionMaterialPropertyImage forKey:@"ambientOcclusion"];
  [v4 encodeObject:self->_selfIlluminationMaterialPropertyImage forKey:@"selfIllumination"];
  [v4 encodeObject:self->_metalnessMaterialPropertyImage forKey:@"metalness"];
  [v4 encodeObject:self->_roughnessMaterialPropertyImage forKey:@"roughness"];
  [v4 encodeObject:self->_overlayMaterialPropertyImage forKey:@"overlay"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
  v31 = [(PKImage *)self->_diffuseMaterialPropertyImage imageHash];
  v3 = [v31 hash];
  v30 = [(PKImage *)self->_ambientMaterialPropertyImage imageHash];
  v4 = [v30 hash] + v3;
  v29 = [(PKImage *)self->_specularMaterialPropertyImage imageHash];
  v5 = [v29 hash];
  v28 = [(PKImage *)self->_normalMaterialPropertyImage imageHash];
  v6 = v4 + v5 + [v28 hash];
  v27 = [(PKImage *)self->_reflectiveMaterialPropertyImage imageHash];
  v7 = [v27 hash];
  v26 = [(PKImage *)self->_emissionMaterialPropertyImage imageHash];
  v8 = v7 + [v26 hash];
  v25 = [(PKImage *)self->_transparentMaterialPropertyImage imageHash];
  v9 = v6 + v8 + [v25 hash];
  v10 = [(PKImage *)self->_multiplyMaterialPropertyImage imageHash];
  v11 = [v10 hash];
  v12 = [(PKImage *)self->_displacementMaterialPropertyImage imageHash];
  v13 = v11 + [v12 hash];
  v14 = [(PKImage *)self->_ambientOcclusionMaterialPropertyImage imageHash];
  v15 = v13 + [v14 hash];
  v16 = [(PKImage *)self->_selfIlluminationMaterialPropertyImage imageHash];
  v24 = v9 + v15 + [v16 hash];
  v17 = [(PKImage *)self->_metalnessMaterialPropertyImage imageHash];
  v18 = [v17 hash];
  v19 = [(PKImage *)self->_roughnessMaterialPropertyImage imageHash];
  v20 = v18 + [v19 hash];
  v21 = [(PKImage *)self->_overlayMaterialPropertyImage imageHash];
  v22 = v20 + [v21 hash];

  return v24 + v22;
}

@end
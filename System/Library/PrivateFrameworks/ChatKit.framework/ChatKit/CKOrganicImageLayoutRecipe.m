@interface CKOrganicImageLayoutRecipe
- (CGSize)targetSize;
- (CKOrganicImageLayoutRecipe)initWithRotation:(double)a3 offset:(double)a4 targetSize:(CGSize)a5 overlap:(double)a6 wantsShadow:(BOOL)a7 groupIdentifier:(id)a8;
- (id)description;
@end

@implementation CKOrganicImageLayoutRecipe

- (CKOrganicImageLayoutRecipe)initWithRotation:(double)a3 offset:(double)a4 targetSize:(CGSize)a5 overlap:(double)a6 wantsShadow:(BOOL)a7 groupIdentifier:(id)a8
{
  v8 = a7;
  height = a5.height;
  width = a5.width;
  v15 = a8;
  v19.receiver = self;
  v19.super_class = CKOrganicImageLayoutRecipe;
  v16 = [(CKOrganicImageLayoutRecipe *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(CKOrganicImageLayoutRecipe *)v16 setRotation:a3];
    [(CKOrganicImageLayoutRecipe *)v17 setOffset:a4];
    [(CKOrganicImageLayoutRecipe *)v17 setTargetSize:width, height];
    [(CKOrganicImageLayoutRecipe *)v17 setOverlap:a6];
    [(CKOrganicImageLayoutRecipe *)v17 setWantsShadow:v8];
    [(CKOrganicImageLayoutRecipe *)v17 setGroupIdentifier:v15];
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(CKOrganicImageLayoutRecipe *)self rotation];
  v5 = v4;
  [(CKOrganicImageLayoutRecipe *)self offset];
  v7 = v6;
  v8 = [(CKOrganicImageLayoutRecipe *)self relativeGroupCenter];
  [v8 doubleValue];
  v10 = v9;
  v11 = [(CKOrganicImageLayoutRecipe *)self groupIdentifier];
  v12 = [(CKOrganicImageLayoutRecipe *)self isLastItem];
  v13 = @"NO";
  if (v12)
  {
    v13 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%p> rotation %f offset %f relativeGroupCenter %f groupIdentifier %@ isLastItem %@", self, v5, v7, v10, v11, v13];

  return v14;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
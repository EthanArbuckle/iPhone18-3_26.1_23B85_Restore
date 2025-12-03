@interface CKOrganicImageLayoutRecipe
- (CGSize)targetSize;
- (CKOrganicImageLayoutRecipe)initWithRotation:(double)rotation offset:(double)offset targetSize:(CGSize)size overlap:(double)overlap wantsShadow:(BOOL)shadow groupIdentifier:(id)identifier;
- (id)description;
@end

@implementation CKOrganicImageLayoutRecipe

- (CKOrganicImageLayoutRecipe)initWithRotation:(double)rotation offset:(double)offset targetSize:(CGSize)size overlap:(double)overlap wantsShadow:(BOOL)shadow groupIdentifier:(id)identifier
{
  shadowCopy = shadow;
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CKOrganicImageLayoutRecipe;
  v16 = [(CKOrganicImageLayoutRecipe *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(CKOrganicImageLayoutRecipe *)v16 setRotation:rotation];
    [(CKOrganicImageLayoutRecipe *)v17 setOffset:offset];
    [(CKOrganicImageLayoutRecipe *)v17 setTargetSize:width, height];
    [(CKOrganicImageLayoutRecipe *)v17 setOverlap:overlap];
    [(CKOrganicImageLayoutRecipe *)v17 setWantsShadow:shadowCopy];
    [(CKOrganicImageLayoutRecipe *)v17 setGroupIdentifier:identifierCopy];
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
  relativeGroupCenter = [(CKOrganicImageLayoutRecipe *)self relativeGroupCenter];
  [relativeGroupCenter doubleValue];
  v10 = v9;
  groupIdentifier = [(CKOrganicImageLayoutRecipe *)self groupIdentifier];
  isLastItem = [(CKOrganicImageLayoutRecipe *)self isLastItem];
  v13 = @"NO";
  if (isLastItem)
  {
    v13 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%p> rotation %f offset %f relativeGroupCenter %f groupIdentifier %@ isLastItem %@", self, v5, v7, v10, groupIdentifier, v13];

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
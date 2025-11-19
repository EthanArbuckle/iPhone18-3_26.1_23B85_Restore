@interface MOEventPhoto
+ (id)descriptionOfPhotoMomentSource:(unint64_t)a3;
- (MOEventPhoto)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventPhoto

+ (id)descriptionOfPhotoMomentSource:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_2787731C0[a3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  extendedAttributes = self->_extendedAttributes;
  v5 = a3;
  [v5 encodeObject:extendedAttributes forKey:@"extendedAttributes"];
  [v5 encodeInteger:self->_photoMomentSource forKey:@"photoMomentSource"];
  [v5 encodeObject:self->_photoMemoryTitle forKey:@"photoMemoryTitle"];
  [v5 encodeInteger:self->_photoMemoryCategory forKey:@"photoMemoryCategory"];
  [v5 encodeInteger:self->_photoMemorySubCategory forKey:@"photoMemorySubCategory"];
  [v5 encodeInteger:self->_photoMemoryRelevanceScore forKey:@"photoMemoryRelevanceScore"];
  [v5 encodeInteger:self->_photoMemoryIsFavorite forKey:@"photoMemoryIsFavorite"];
}

- (MOEventPhoto)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MOEventPhoto;
  v5 = [(MOEventPhoto *)&v11 init];
  if (v5)
  {
    v5->_photoMomentSource = [v4 decodeIntForKey:@"photoMomentSource"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extendedAttributes"];
    extendedAttributes = v5->_extendedAttributes;
    v5->_extendedAttributes = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoMemoryTitle"];
    photoMemoryTitle = v5->_photoMemoryTitle;
    v5->_photoMemoryTitle = v8;

    v5->_photoMemoryCategory = [v4 decodeIntegerForKey:@"photoMemoryCategory"];
    v5->_photoMemorySubCategory = [v4 decodeIntegerForKey:@"photoMemorySubCategory"];
    v5->_photoMemoryRelevanceScore = [v4 decodeIntegerForKey:@"photoMemoryRelevanceScore"];
    v5->_photoMemoryIsFavorite = [v4 decodeIntegerForKey:@"photoMemoryIsFavorite"] != 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventPhoto);
  v4->_photoMomentSource = self->_photoMomentSource;
  objc_storeStrong(&v4->_extendedAttributes, self->_extendedAttributes);
  objc_storeStrong(&v4->_photoMemoryTitle, self->_photoMemoryTitle);
  v4->_photoMemoryCategory = self->_photoMemoryCategory;
  v4->_photoMemorySubCategory = self->_photoMemorySubCategory;
  v4->_photoMemoryRelevanceScore = self->_photoMemoryRelevanceScore;
  v4->_photoMemoryIsFavorite = self->_photoMemoryIsFavorite;
  objc_storeStrong(&v4->_photoAsset, self->_photoAsset);
  objc_storeStrong(&v4->_photoMemoryAssets, self->_photoMemoryAssets);
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  extendedAttributes = self->_extendedAttributes;
  v5 = [MOEventPhoto descriptionOfPhotoMomentSource:self->_photoMomentSource];
  v6 = [(NSString *)self->_photoMemoryTitle mask];
  v7 = [v3 initWithFormat:@"extendedAttributes, %@, photo source, %@, photoMemoryTitle, %@, photoMemoryCategory, %lu, photoMemorySubCategory, %lu, photoMemoryRelevanceScore, %f, photoMemoryIsFavorite, %d", extendedAttributes, v5, v6, self->_photoMemoryCategory, self->_photoMemorySubCategory, *&self->_photoMemoryRelevanceScore, self->_photoMemoryIsFavorite];

  return v7;
}

@end
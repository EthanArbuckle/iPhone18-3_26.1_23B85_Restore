@interface MOSuggestionAssetPhotoMoments
- (MOSuggestionAssetPhotoMoments)initWithCoder:(id)a3;
- (MOSuggestionAssetPhotoMoments)initWithKeyPhoto:(id)a3 curatedPhotos:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetPhotoMoments

- (MOSuggestionAssetPhotoMoments)initWithKeyPhoto:(id)a3 curatedPhotos:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MOSuggestionAssetPhotoMoments;
  v9 = [(MOSuggestionAssetPhotoMoments *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPhoto, a3);
    objc_storeStrong(&v10->_curatedPhotos, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  curatedPhotos = self->_curatedPhotos;
  v5 = a3;
  [v5 encodeObject:curatedPhotos forKey:@"photos"];
  [v5 encodeObject:self->_keyPhoto forKey:@"keyPhotos"];
}

- (MOSuggestionAssetPhotoMoments)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MOSuggestionAssetPhotoMoments;
  v5 = [(MOSuggestionAssetPhotoMoments *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyPhotos"];
    keyPhoto = v5->_keyPhoto;
    v5->_keyPhoto = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"photos"];
    curatedPhotos = v5->_curatedPhotos;
    v5->_curatedPhotos = v11;
  }

  return v5;
}

@end
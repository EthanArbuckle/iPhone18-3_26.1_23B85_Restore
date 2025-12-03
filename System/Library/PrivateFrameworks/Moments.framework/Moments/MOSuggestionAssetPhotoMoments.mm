@interface MOSuggestionAssetPhotoMoments
- (MOSuggestionAssetPhotoMoments)initWithCoder:(id)coder;
- (MOSuggestionAssetPhotoMoments)initWithKeyPhoto:(id)photo curatedPhotos:(id)photos;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionAssetPhotoMoments

- (MOSuggestionAssetPhotoMoments)initWithKeyPhoto:(id)photo curatedPhotos:(id)photos
{
  photoCopy = photo;
  photosCopy = photos;
  v12.receiver = self;
  v12.super_class = MOSuggestionAssetPhotoMoments;
  v9 = [(MOSuggestionAssetPhotoMoments *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPhoto, photo);
    objc_storeStrong(&v10->_curatedPhotos, photos);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  curatedPhotos = self->_curatedPhotos;
  coderCopy = coder;
  [coderCopy encodeObject:curatedPhotos forKey:@"photos"];
  [coderCopy encodeObject:self->_keyPhoto forKey:@"keyPhotos"];
}

- (MOSuggestionAssetPhotoMoments)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MOSuggestionAssetPhotoMoments;
  v5 = [(MOSuggestionAssetPhotoMoments *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyPhotos"];
    keyPhoto = v5->_keyPhoto;
    v5->_keyPhoto = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"photos"];
    curatedPhotos = v5->_curatedPhotos;
    v5->_curatedPhotos = v11;
  }

  return v5;
}

@end
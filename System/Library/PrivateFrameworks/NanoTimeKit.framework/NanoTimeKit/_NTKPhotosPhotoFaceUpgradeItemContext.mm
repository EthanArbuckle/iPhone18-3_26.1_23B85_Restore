@interface _NTKPhotosPhotoFaceUpgradeItemContext
- (CGRect)originalCrop;
- (_NTKPhotosPhotoFaceUpgradeItemContext)initWithPhoto:(id)photo timeAlignment:(int64_t)alignment;
@end

@implementation _NTKPhotosPhotoFaceUpgradeItemContext

- (_NTKPhotosPhotoFaceUpgradeItemContext)initWithPhoto:(id)photo timeAlignment:(int64_t)alignment
{
  photoCopy = photo;
  v11.receiver = self;
  v11.super_class = _NTKPhotosPhotoFaceUpgradeItemContext;
  v8 = [(_NTKPhotosPhotoFaceUpgradeItemContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photo, photo);
    v9->_timeAlignment = alignment;
  }

  return v9;
}

- (CGRect)originalCrop
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end
@interface _NTKPhotosPhotoFaceUpgradeItemContext
- (CGRect)originalCrop;
- (_NTKPhotosPhotoFaceUpgradeItemContext)initWithPhoto:(id)a3 timeAlignment:(int64_t)a4;
@end

@implementation _NTKPhotosPhotoFaceUpgradeItemContext

- (_NTKPhotosPhotoFaceUpgradeItemContext)initWithPhoto:(id)a3 timeAlignment:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _NTKPhotosPhotoFaceUpgradeItemContext;
  v8 = [(_NTKPhotosPhotoFaceUpgradeItemContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photo, a3);
    v9->_timeAlignment = a4;
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
@interface MUPunchoutViewModel
+ (id)viewModelForAddPhotos;
+ (id)viewModelForFullScreenGallery;
+ (id)viewModelForVendorName:(id)name;
@end

@implementation MUPunchoutViewModel

+ (id)viewModelForFullScreenGallery
{
  v2 = objc_alloc_init(MUPunchoutViewModel);
  [(MUPunchoutViewModel *)v2 setSymbolName:@"photo.on.rectangle"];
  v3 = _MULocalizedStringFromThisBundle(@"More Photos [Place Card]");
  [(MUPunchoutViewModel *)v2 setPunchoutText:v3];

  return v2;
}

+ (id)viewModelForAddPhotos
{
  v2 = objc_alloc_init(MUPunchoutViewModel);
  [(MUPunchoutViewModel *)v2 setSymbolName:@"camera.fill"];
  v3 = _MULocalizedStringFromThisBundle(@"Add Photo [Place Card]");
  [(MUPunchoutViewModel *)v2 setPunchoutText:v3];

  return v2;
}

+ (id)viewModelForVendorName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(MUPunchoutViewModel);
  [(MUPunchoutViewModel *)v4 setSymbolName:@"arrow.up.forward.app.fill"];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _MULocalizedStringFromThisBundle(@"Open %@ [Place Card]");
  nameCopy = [v5 stringWithFormat:v6, nameCopy];

  [(MUPunchoutViewModel *)v4 setPunchoutText:nameCopy];

  return v4;
}

@end
@interface MUPunchoutViewModel
+ (id)viewModelForAddPhotos;
+ (id)viewModelForFullScreenGallery;
+ (id)viewModelForVendorName:(id)a3;
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

+ (id)viewModelForVendorName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MUPunchoutViewModel);
  [(MUPunchoutViewModel *)v4 setSymbolName:@"arrow.up.forward.app.fill"];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _MULocalizedStringFromThisBundle(@"Open %@ [Place Card]");
  v7 = [v5 stringWithFormat:v6, v3];

  [(MUPunchoutViewModel *)v4 setPunchoutText:v7];

  return v4;
}

@end
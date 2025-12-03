@interface PBUIBackdropCompositor
- (PBUIBackdropCompositor)init;
- (id)applyEffect:(id)effect toImage:(id)image error:(id *)error;
@end

@implementation PBUIBackdropCompositor

- (PBUIBackdropCompositor)init
{
  v3.receiver = self;
  v3.super_class = PBUIBackdropCompositor;
  return [(PBUIBackdropCompositor *)&v3 init];
}

- (id)applyEffect:(id)effect toImage:(id)image error:(id *)error
{
  effectCopy = effect;
  pbui_CGImageBackedImage = [image pbui_CGImageBackedImage];
  cGImage = [pbui_CGImageBackedImage CGImage];
  if (effectCopy)
  {
    v9 = effectCopy[3];
    v16 = effectCopy[2];
    v17 = v9;
    v10 = effectCopy[5];
    v18 = effectCopy[4];
    v19 = v10;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
  }

  v11 = PBUIBackdropInputSettingsForWallpaperBackdropParameters(&v16);
  if (cGImage)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__PBUIBackdropCompositor_applyEffect_toImage_error___block_invoke;
    v13[3] = &unk_278362F40;
    v14 = effectCopy;
    v15 = v11;
    cGImage = [pbui_CGImageBackedImage pbui_imageByManipulatingInDeviceColorSpaceWithBlock:v13];
  }

  return cGImage;
}

id __52__PBUIBackdropCompositor_applyEffect_toImage_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5 && *(v5 + 8) == 1)
  {
    v6 = *(v5 + 48);
    v12[0] = *(v5 + 32);
    v12[1] = v6;
    v7 = *(v5 + 80);
    v12[2] = *(v5 + 64);
    v12[3] = v7;
    v8 = PBUIBackdropInputSettingsForWallpaperBackdropParameters(v12);
    v9 = [v4 _applyBackdropViewSettings:v8 includeTints:0 includeBlur:1 allowImageResizing:1];
    v10 = [v9 _applyBackdropViewSettings:*(a1 + 40) includeTints:1 includeBlur:0];
  }

  else
  {
    v10 = [v3 _applyBackdropViewSettings:*(a1 + 40) includeTints:0 includeBlur:1 allowImageResizing:1];
  }

  return v10;
}

@end
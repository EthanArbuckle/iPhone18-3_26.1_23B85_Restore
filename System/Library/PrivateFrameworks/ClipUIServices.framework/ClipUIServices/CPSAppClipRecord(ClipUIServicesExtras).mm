@interface CPSAppClipRecord(ClipUIServicesExtras)
+ (void)getApplicationIconForBundleIdentifier:()ClipUIServicesExtras imageDescriptor:resultHandler:;
- (void)getApplicationIconForImageDescriptor:()ClipUIServicesExtras resultHandler:;
@end

@implementation CPSAppClipRecord(ClipUIServicesExtras)

- (void)getApplicationIconForImageDescriptor:()ClipUIServicesExtras resultHandler:
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  debug_fullApplicationIcon = [self debug_fullApplicationIcon];
  if (debug_fullApplicationIcon && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = objc_alloc(MEMORY[0x277D1B1A8]);
    v10 = objc_alloc(MEMORY[0x277D1B160]);
    cGImage = [debug_fullApplicationIcon CGImage];
    [debug_fullApplicationIcon scale];
    v12 = [v10 initWithCGImage:cGImage scale:?];
    v18[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v14 = [v9 initWithImages:v13];

    v15 = [v14 imageForImageDescriptor:v6];
    sendResult(v15, v7);
  }

  else
  {
    v16 = objc_opt_class();
    bundleID = [self bundleID];
    [v16 getApplicationIconForBundleIdentifier:bundleID imageDescriptor:v6 resultHandler:v7];
  }
}

+ (void)getApplicationIconForBundleIdentifier:()ClipUIServicesExtras imageDescriptor:resultHandler:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 length];
  if (v10)
  {
    genericApplicationIcon = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v7];
  }

  else
  {
    genericApplicationIcon = [MEMORY[0x277D1B1A8] genericApplicationIcon];
  }

  v12 = genericApplicationIcon;
  v13 = [genericApplicationIcon imageForImageDescriptor:v8];
  sendResult(v13, v9);
  placeholder = [v13 placeholder];
  if (v10)
  {
    v15 = placeholder;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __110__CPSAppClipRecord_ClipUIServicesExtras__getApplicationIconForBundleIdentifier_imageDescriptor_resultHandler___block_invoke;
    v16[3] = &unk_278DD21F0;
    v17 = v9;
    [v12 getImageForImageDescriptor:v8 completion:v16];
  }
}

@end
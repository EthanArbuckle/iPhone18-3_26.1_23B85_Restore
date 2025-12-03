@interface PBUIPosterHUDController
+ (BOOL)isHUDEnabled;
+ (id)sharedInstance;
- (CGPoint)lastPosition;
- (PBUIPosterHUDController)init;
- (id)_createAttachmentForImage:(id)image;
- (id)_createLabelWithAlignment:(int64_t)alignment;
- (id)_createThumbnailFromImage:(id)image;
@end

@implementation PBUIPosterHUDController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PBUIPosterHUDController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __41__PBUIPosterHUDController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (PBUIPosterHUDController)init
{
  v3.receiver = self;
  v3.super_class = PBUIPosterHUDController;
  result = [(PBUIPosterHUDController *)&v3 init];
  if (result)
  {
    result->_isHUDVisible = 0;
    result->_lastPosition = *MEMORY[0x277CBF348];
  }

  return result;
}

+ (BOOL)isHUDEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"SHOW_POSTER_HUD"];

  return v3;
}

- (id)_createLabelWithAlignment:(int64_t)alignment
{
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v4 setNumberOfLines:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:clearColor];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v4 setTextColor:whiteColor];

  [v4 setAdjustsFontSizeToFitWidth:0];
  [v4 setTextAlignment:alignment];

  return v4;
}

- (id)_createAttachmentForImage:(id)image
{
  v3 = [(PBUIPosterHUDController *)self _createThumbnailFromImage:image];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D74270]);
    [v4 setImage:v3];
    [v3 size];
    v6 = v5;
    [v3 size];
    [v4 setBounds:{0.0, 0.0, v6, v7}];
    v8 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v4];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA898]);
  }

  return v8;
}

- (id)_createThumbnailFromImage:(id)image
{
  imageCopy = image;
  v4 = imageCopy;
  if (imageCopy)
  {
    [imageCopy size];
    v6 = v5;
    [v4 size];
    v8 = 0;
    if (v6 > 0.0 && v7 > 0.0)
    {
      if (v6 >= v7)
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      v10 = 80.0 / v9;
      v11 = v6 * v10;
      v12 = v7 * v10;
      v15.width = v11;
      v15.height = v12;
      UIGraphicsBeginImageContextWithOptions(v15, 0, 0.0);
      [v4 drawInRect:{0.0, 0.0, v11, v12}];
      v8 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGPoint)lastPosition
{
  x = self->_lastPosition.x;
  y = self->_lastPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
@interface PBUIPosterHUDController
+ (BOOL)isHUDEnabled;
+ (id)sharedInstance;
- (CGPoint)lastPosition;
- (PBUIPosterHUDController)init;
- (id)_createAttachmentForImage:(id)a3;
- (id)_createLabelWithAlignment:(int64_t)a3;
- (id)_createThumbnailFromImage:(id)a3;
@end

@implementation PBUIPosterHUDController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PBUIPosterHUDController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SHOW_POSTER_HUD"];

  return v3;
}

- (id)_createLabelWithAlignment:(int64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v4 setNumberOfLines:0];
  v5 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [MEMORY[0x277D75348] whiteColor];
  [v4 setTextColor:v6];

  [v4 setAdjustsFontSizeToFitWidth:0];
  [v4 setTextAlignment:a3];

  return v4;
}

- (id)_createAttachmentForImage:(id)a3
{
  v3 = [(PBUIPosterHUDController *)self _createThumbnailFromImage:a3];
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

- (id)_createThumbnailFromImage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 size];
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
@interface PBUIWallpaperEffectImageRequestAction
- (NSString)slotIdentifier;
- (PBUIWallpaperEffectImageRequestAction)initWithSlotIdentifier:(id)a3 forResponseOnQueue:(id)a4 withHandler:(id)a5;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation PBUIWallpaperEffectImageRequestAction

- (PBUIWallpaperEffectImageRequestAction)initWithSlotIdentifier:(id)a3 forResponseOnQueue:(id)a4 withHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CF0C80];
  v11 = a3;
  v12 = objc_alloc_init(v10);
  [v12 setObject:v11 forSetting:1];

  if (v9)
  {
    v13 = [MEMORY[0x277CF0B60] responderWithHandler:v9];
    v14 = v13;
    if (v8)
    {
      [v13 setQueue:v8];
    }
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = self;
  v17.super_class = PBUIWallpaperEffectImageRequestAction;
  v15 = [(PBUIWallpaperEffectImageRequestAction *)&v17 initWithInfo:v12 responder:v14];

  return v15;
}

- (NSString)slotIdentifier
{
  v2 = [(PBUIWallpaperEffectImageRequestAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"slotIdentifier";
  }

  else
  {
    return 0;
  }
}

@end
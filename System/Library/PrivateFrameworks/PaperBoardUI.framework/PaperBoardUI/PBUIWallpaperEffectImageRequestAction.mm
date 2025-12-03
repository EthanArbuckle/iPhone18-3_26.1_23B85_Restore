@interface PBUIWallpaperEffectImageRequestAction
- (NSString)slotIdentifier;
- (PBUIWallpaperEffectImageRequestAction)initWithSlotIdentifier:(id)identifier forResponseOnQueue:(id)queue withHandler:(id)handler;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation PBUIWallpaperEffectImageRequestAction

- (PBUIWallpaperEffectImageRequestAction)initWithSlotIdentifier:(id)identifier forResponseOnQueue:(id)queue withHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v10 = MEMORY[0x277CF0C80];
  identifierCopy = identifier;
  v12 = objc_alloc_init(v10);
  [v12 setObject:identifierCopy forSetting:1];

  if (handlerCopy)
  {
    v13 = [MEMORY[0x277CF0B60] responderWithHandler:handlerCopy];
    v14 = v13;
    if (queueCopy)
    {
      [v13 setQueue:queueCopy];
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
  info = [(PBUIWallpaperEffectImageRequestAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"slotIdentifier";
  }

  else
  {
    return 0;
  }
}

@end
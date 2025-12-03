@interface PBUIWallpaperImageSlotRequestAction
- (NSString)slotIdentifier;
- (PBUIWallpaperImageSlotRequestAction)initWithVariant:(int64_t)variant desiredStyle:(int64_t)style traitCollection:(id)collection slotIdentifier:(id)identifier forResponseOnQueue:(id)queue withHandler:(id)handler;
- (UITraitCollection)traitCollection;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)desiredStyle;
- (int64_t)variant;
- (void)invalidate;
@end

@implementation PBUIWallpaperImageSlotRequestAction

- (PBUIWallpaperImageSlotRequestAction)initWithVariant:(int64_t)variant desiredStyle:(int64_t)style traitCollection:(id)collection slotIdentifier:(id)identifier forResponseOnQueue:(id)queue withHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v16 = MEMORY[0x277CF0C80];
  identifierCopy = identifier;
  collectionCopy = collection;
  v19 = objc_alloc_init(v16);
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:variant];
  [v19 setObject:v20 forSetting:1];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [v19 setObject:v21 forSetting:2];

  v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:collectionCopy requiringSecureCoding:1 error:0];

  [v19 setObject:v22 forSetting:3];
  [v19 setObject:identifierCopy forSetting:4];

  if (handlerCopy)
  {
    v23 = [MEMORY[0x277CF0B60] responderWithHandler:handlerCopy];
    v24 = v23;
    if (queueCopy)
    {
      [v23 setQueue:queueCopy];
    }
  }

  else
  {
    v24 = 0;
  }

  v28.receiver = self;
  v28.super_class = PBUIWallpaperImageSlotRequestAction;
  v25 = [(PBUIWallpaperImageSlotRequestAction *)&v28 initWithInfo:v19 responder:v24];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_responder, v24);
  }

  return v26;
}

- (int64_t)variant
{
  info = [(PBUIWallpaperImageSlotRequestAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)desiredStyle
{
  info = [(PBUIWallpaperImageSlotRequestAction *)self info];
  v3 = [info objectForSetting:2];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (UITraitCollection)traitCollection
{
  info = [(PBUIWallpaperImageSlotRequestAction *)self info];
  v3 = [info objectForSetting:3];

  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (NSString)slotIdentifier
{
  info = [(PBUIWallpaperImageSlotRequestAction *)self info];
  v3 = [info objectForSetting:4];

  return v3;
}

- (void)invalidate
{
  responder = self->_responder;
  if (responder)
  {
    [(BSActionResponder *)responder annul];
    v4 = self->_responder;
    self->_responder = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PBUIWallpaperImageSlotRequestAction;
    [(PBUIWallpaperImageSlotRequestAction *)&v5 invalidate];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 3)
  {
    return 0;
  }

  else
  {
    return off_278361F70[setting - 1];
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  if (setting == 2)
  {
    v8 = PBUIWallpaperStyleDescription([objectCopy integerValue]);
    goto LABEL_5;
  }

  if (setting == 1)
  {
    v8 = PBUIStringForWallpaperVariant([objectCopy integerValue]);
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end
@interface MapsSuggestionsFirstUnlockBase
- (BOOL)hasDeviceBeenUnlocked;
- (MapsSuggestionsFirstUnlockBase)initWithName:(id)name;
- (NSString)uniqueName;
- (void)triggerFired:(id)fired;
@end

@implementation MapsSuggestionsFirstUnlockBase

- (MapsSuggestionsFirstUnlockBase)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsFirstUnlockBase;
  return [(MapsSuggestionsBaseTrigger *)&v4 initWithName:name];
}

- (BOOL)hasDeviceBeenUnlocked
{
  result = [(MapsSuggestionsFirstUnlockBase *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)triggerFired:(id)fired
{
  firedCopy = fired;
  [(MapsSuggestionsFirstUnlockBase *)self doesNotRecognizeSelector:a2];
  __break(1u);
}

@end
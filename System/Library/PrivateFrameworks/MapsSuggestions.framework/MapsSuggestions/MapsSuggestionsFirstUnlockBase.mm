@interface MapsSuggestionsFirstUnlockBase
- (BOOL)hasDeviceBeenUnlocked;
- (MapsSuggestionsFirstUnlockBase)initWithName:(id)a3;
- (NSString)uniqueName;
- (void)triggerFired:(id)a3;
@end

@implementation MapsSuggestionsFirstUnlockBase

- (MapsSuggestionsFirstUnlockBase)initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = MapsSuggestionsFirstUnlockBase;
  return [(MapsSuggestionsBaseTrigger *)&v4 initWithName:a3];
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

- (void)triggerFired:(id)a3
{
  v5 = a3;
  [(MapsSuggestionsFirstUnlockBase *)self doesNotRecognizeSelector:a2];
  __break(1u);
}

@end
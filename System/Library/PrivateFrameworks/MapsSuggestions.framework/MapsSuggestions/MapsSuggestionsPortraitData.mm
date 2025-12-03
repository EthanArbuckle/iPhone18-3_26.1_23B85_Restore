@interface MapsSuggestionsPortraitData
- (MapsSuggestionsPortraitData)initWithName:(id)name lastInteractionTime:(id)time;
@end

@implementation MapsSuggestionsPortraitData

- (MapsSuggestionsPortraitData)initWithName:(id)name lastInteractionTime:(id)time
{
  nameCopy = name;
  timeCopy = time;
  v12.receiver = self;
  v12.super_class = MapsSuggestionsPortraitData;
  v9 = [(MapsSuggestionsPortraitData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_lastInteractionTime, time);
  }

  return v10;
}

@end
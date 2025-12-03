@interface CSProminentDisplayTransientSubtitle
- (CSProminentDisplayTransientSubtitle)initWithText:(id)text priority:(int64_t)priority displayDuration:(double)duration;
@end

@implementation CSProminentDisplayTransientSubtitle

- (CSProminentDisplayTransientSubtitle)initWithText:(id)text priority:(int64_t)priority displayDuration:(double)duration
{
  textCopy = text;
  v13.receiver = self;
  v13.super_class = CSProminentDisplayTransientSubtitle;
  v10 = [(CSProminentDisplayTransientSubtitle *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_text, text);
    v11->_priority = priority;
    v11->_displayDuration = duration;
  }

  return v11;
}

@end
@interface CSProminentDisplayTransientSubtitle
- (CSProminentDisplayTransientSubtitle)initWithText:(id)a3 priority:(int64_t)a4 displayDuration:(double)a5;
@end

@implementation CSProminentDisplayTransientSubtitle

- (CSProminentDisplayTransientSubtitle)initWithText:(id)a3 priority:(int64_t)a4 displayDuration:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CSProminentDisplayTransientSubtitle;
  v10 = [(CSProminentDisplayTransientSubtitle *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_text, a3);
    v11->_priority = a4;
    v11->_displayDuration = a5;
  }

  return v11;
}

@end
@interface ICInstrumentationUtilitiesRecentPasswordMode
- (ICInstrumentationUtilitiesRecentPasswordMode)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICInstrumentationUtilitiesRecentPasswordMode

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICInstrumentationUtilitiesRecentPasswordMode *)self lockedNotesMode];
  v6 = NSStringFromSelector(sel_lockedNotesMode);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(ICInstrumentationUtilitiesRecentPasswordMode *)self contextPath];
  v8 = NSStringFromSelector(sel_contextPath);
  [v4 encodeInteger:v7 forKey:v8];
}

- (ICInstrumentationUtilitiesRecentPasswordMode)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICInstrumentationUtilitiesRecentPasswordMode;
  v5 = [(ICInstrumentationUtilitiesRecentPasswordMode *)&v9 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_lockedNotesMode);
    v5->_lockedNotesMode = [v4 decodeIntegerForKey:v6];

    v7 = NSStringFromSelector(sel_contextPath);
    v5->_contextPath = [v4 decodeIntegerForKey:v7];
  }

  return v5;
}

@end
@interface ICInstrumentationUtilitiesRecentPasswordMode
- (ICInstrumentationUtilitiesRecentPasswordMode)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICInstrumentationUtilitiesRecentPasswordMode

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lockedNotesMode = [(ICInstrumentationUtilitiesRecentPasswordMode *)self lockedNotesMode];
  v6 = NSStringFromSelector(sel_lockedNotesMode);
  [coderCopy encodeInteger:lockedNotesMode forKey:v6];

  contextPath = [(ICInstrumentationUtilitiesRecentPasswordMode *)self contextPath];
  v8 = NSStringFromSelector(sel_contextPath);
  [coderCopy encodeInteger:contextPath forKey:v8];
}

- (ICInstrumentationUtilitiesRecentPasswordMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICInstrumentationUtilitiesRecentPasswordMode;
  v5 = [(ICInstrumentationUtilitiesRecentPasswordMode *)&v9 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_lockedNotesMode);
    v5->_lockedNotesMode = [coderCopy decodeIntegerForKey:v6];

    v7 = NSStringFromSelector(sel_contextPath);
    v5->_contextPath = [coderCopy decodeIntegerForKey:v7];
  }

  return v5;
}

@end
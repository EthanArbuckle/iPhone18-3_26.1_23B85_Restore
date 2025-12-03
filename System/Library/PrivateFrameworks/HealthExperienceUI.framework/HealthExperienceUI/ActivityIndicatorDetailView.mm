@interface ActivityIndicatorDetailView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
@end

@implementation ActivityIndicatorDetailView

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v8 = sub_1BA4A15D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1588();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_1BA392D40(v11);

  (*(v9 + 8))(v11, v8);
  return self & 1;
}

@end
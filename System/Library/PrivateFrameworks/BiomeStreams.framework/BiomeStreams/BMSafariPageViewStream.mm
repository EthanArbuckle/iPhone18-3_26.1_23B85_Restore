@interface BMSafariPageViewStream
- (BMSafariPageViewStream)init;
@end

@implementation BMSafariPageViewStream

- (BMSafariPageViewStream)init
{
  v3 = [(BMSafariPageViewStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end
@interface BMSafariPageViewStream
- (BMSafariPageViewStream)init;
@end

@implementation BMSafariPageViewStream

- (BMSafariPageViewStream)init
{
  identifier = [(BMSafariPageViewStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end
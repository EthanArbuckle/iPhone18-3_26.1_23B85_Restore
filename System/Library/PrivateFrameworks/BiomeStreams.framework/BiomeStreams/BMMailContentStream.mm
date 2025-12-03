@interface BMMailContentStream
- (BMMailContentStream)init;
@end

@implementation BMMailContentStream

- (BMMailContentStream)init
{
  identifier = [(BMMailContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end
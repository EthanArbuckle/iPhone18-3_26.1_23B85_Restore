@interface BMMailContentStream
- (BMMailContentStream)init;
@end

@implementation BMMailContentStream

- (BMMailContentStream)init
{
  v3 = [(BMMailContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end
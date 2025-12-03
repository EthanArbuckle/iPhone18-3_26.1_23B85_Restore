@interface BMSiriQueryStream
- (BMSiriQueryStream)init;
@end

@implementation BMSiriQueryStream

- (BMSiriQueryStream)init
{
  identifier = [(BMSiriQueryStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end
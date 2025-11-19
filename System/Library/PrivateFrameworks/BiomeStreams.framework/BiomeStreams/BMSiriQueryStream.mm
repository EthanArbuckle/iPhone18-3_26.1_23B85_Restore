@interface BMSiriQueryStream
- (BMSiriQueryStream)init;
@end

@implementation BMSiriQueryStream

- (BMSiriQueryStream)init
{
  v3 = [(BMSiriQueryStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end
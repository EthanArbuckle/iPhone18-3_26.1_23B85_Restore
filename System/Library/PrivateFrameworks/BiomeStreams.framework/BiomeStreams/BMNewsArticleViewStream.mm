@interface BMNewsArticleViewStream
- (BMNewsArticleViewStream)init;
@end

@implementation BMNewsArticleViewStream

- (BMNewsArticleViewStream)init
{
  v3 = [(BMNewsArticleViewStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end
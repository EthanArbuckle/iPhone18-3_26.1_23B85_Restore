@interface BMNewsArticleViewStream
- (BMNewsArticleViewStream)init;
@end

@implementation BMNewsArticleViewStream

- (BMNewsArticleViewStream)init
{
  identifier = [(BMNewsArticleViewStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end
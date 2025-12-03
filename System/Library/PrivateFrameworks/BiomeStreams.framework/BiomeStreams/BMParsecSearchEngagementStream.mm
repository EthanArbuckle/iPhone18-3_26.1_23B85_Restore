@interface BMParsecSearchEngagementStream
- (BMParsecSearchEngagementStream)init;
@end

@implementation BMParsecSearchEngagementStream

- (BMParsecSearchEngagementStream)init
{
  identifier = [(BMParsecSearchEngagementStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end
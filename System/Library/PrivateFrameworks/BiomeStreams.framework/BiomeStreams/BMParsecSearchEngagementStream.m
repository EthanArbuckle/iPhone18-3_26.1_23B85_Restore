@interface BMParsecSearchEngagementStream
- (BMParsecSearchEngagementStream)init;
@end

@implementation BMParsecSearchEngagementStream

- (BMParsecSearchEngagementStream)init
{
  v3 = [(BMParsecSearchEngagementStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end
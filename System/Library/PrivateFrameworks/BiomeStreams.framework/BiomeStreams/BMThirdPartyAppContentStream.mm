@interface BMThirdPartyAppContentStream
- (BMThirdPartyAppContentStream)init;
@end

@implementation BMThirdPartyAppContentStream

- (BMThirdPartyAppContentStream)init
{
  v3 = [(BMThirdPartyAppContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end
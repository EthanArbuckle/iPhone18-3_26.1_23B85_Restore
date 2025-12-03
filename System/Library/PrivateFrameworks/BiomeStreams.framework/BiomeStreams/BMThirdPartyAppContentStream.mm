@interface BMThirdPartyAppContentStream
- (BMThirdPartyAppContentStream)init;
@end

@implementation BMThirdPartyAppContentStream

- (BMThirdPartyAppContentStream)init
{
  identifier = [(BMThirdPartyAppContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end
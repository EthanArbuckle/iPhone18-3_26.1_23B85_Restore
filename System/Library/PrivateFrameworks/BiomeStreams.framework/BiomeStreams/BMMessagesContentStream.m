@interface BMMessagesContentStream
- (BMMessagesContentStream)init;
@end

@implementation BMMessagesContentStream

- (BMMessagesContentStream)init
{
  v3 = [(BMMessagesContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end
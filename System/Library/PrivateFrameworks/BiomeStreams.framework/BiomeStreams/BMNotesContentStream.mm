@interface BMNotesContentStream
- (BMNotesContentStream)init;
@end

@implementation BMNotesContentStream

- (BMNotesContentStream)init
{
  v3 = [(BMNotesContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end
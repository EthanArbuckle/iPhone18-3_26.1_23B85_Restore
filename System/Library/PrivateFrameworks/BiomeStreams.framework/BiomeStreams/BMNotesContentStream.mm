@interface BMNotesContentStream
- (BMNotesContentStream)init;
@end

@implementation BMNotesContentStream

- (BMNotesContentStream)init
{
  identifier = [(BMNotesContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end
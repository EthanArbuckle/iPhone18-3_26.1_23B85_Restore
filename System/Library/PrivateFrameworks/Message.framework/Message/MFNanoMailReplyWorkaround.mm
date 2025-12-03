@interface MFNanoMailReplyWorkaround
- (MFNanoMailReplyWorkaround)initWithLibraryMessage:(id)message;
- (void)dealloc;
@end

@implementation MFNanoMailReplyWorkaround

- (MFNanoMailReplyWorkaround)initWithLibraryMessage:(id)message
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](message);
  return sub_1B0999D30(message);
}

- (void)dealloc
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B099ADA4();
}

@end
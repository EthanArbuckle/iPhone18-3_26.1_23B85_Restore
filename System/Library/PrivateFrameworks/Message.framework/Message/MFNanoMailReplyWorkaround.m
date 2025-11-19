@interface MFNanoMailReplyWorkaround
- (MFNanoMailReplyWorkaround)initWithLibraryMessage:(id)a3;
- (void)dealloc;
@end

@implementation MFNanoMailReplyWorkaround

- (MFNanoMailReplyWorkaround)initWithLibraryMessage:(id)a3
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  return sub_1B0999D30(a3);
}

- (void)dealloc
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B099ADA4();
}

@end
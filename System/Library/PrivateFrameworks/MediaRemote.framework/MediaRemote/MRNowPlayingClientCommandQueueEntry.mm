@interface MRNowPlayingClientCommandQueueEntry
- (id)description;
@end

@implementation MRNowPlayingClientCommandQueueEntry

- (id)description
{
  v3 = MRMediaRemoteCopyCommandDescription(self->_command);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p, command = %@, playerPath=%@, options = %@\n>", objc_opt_class(), self, v3, self->_playerPath, self->_options];

  return v4;
}

@end
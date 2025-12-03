@interface NSObject(MusicKit_SoftLinking_MPCPlayerReorderItemsCommand)
- (id)_musicKit_self_reorderItemsCommand;
- (id)musicKit_reorderItemsCommand_moveItem:()MusicKit_SoftLinking_MPCPlayerReorderItemsCommand afterItem:;
- (id)musicKit_reorderItemsCommand_moveItem:()MusicKit_SoftLinking_MPCPlayerReorderItemsCommand beforeItem:;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerReorderItemsCommand)

- (id)_musicKit_self_reorderItemsCommand
{
  if ([self conformsToProtocol:&unk_1F50DD928])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_reorderItemsCommand_moveItem:()MusicKit_SoftLinking_MPCPlayerReorderItemsCommand afterItem:
{
  v6 = a4;
  v7 = a3;
  _musicKit_self_reorderItemsCommand = [self _musicKit_self_reorderItemsCommand];
  v9 = [_musicKit_self_reorderItemsCommand moveItem:v7 afterItem:v6];

  return v9;
}

- (id)musicKit_reorderItemsCommand_moveItem:()MusicKit_SoftLinking_MPCPlayerReorderItemsCommand beforeItem:
{
  v6 = a4;
  v7 = a3;
  _musicKit_self_reorderItemsCommand = [self _musicKit_self_reorderItemsCommand];
  v9 = [_musicKit_self_reorderItemsCommand moveItem:v7 beforeItem:v6];

  return v9;
}

@end
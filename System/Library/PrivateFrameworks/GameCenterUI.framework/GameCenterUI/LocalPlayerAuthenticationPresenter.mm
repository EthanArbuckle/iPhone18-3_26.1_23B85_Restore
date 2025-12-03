@interface LocalPlayerAuthenticationPresenter
- (void)authenticationShowGreenBuddyUIForLocalPlayer:(id)player withCompletionHandler:(id)handler;
- (void)authenticationShowSignInUIForLocalPlayer:(id)player origin:(unint64_t)origin dismiss:(id)dismiss;
@end

@implementation LocalPlayerAuthenticationPresenter

- (void)authenticationShowGreenBuddyUIForLocalPlayer:(id)player withCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_24E212180;
  }

  playerCopy = player;
  selfCopy = self;
  sub_24E211718(playerCopy);
  sub_24DE73FA0(v6);
}

- (void)authenticationShowSignInUIForLocalPlayer:(id)player origin:(unint64_t)origin dismiss:(id)dismiss
{
  v8 = _Block_copy(dismiss);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_24DFA0D08;
  }

  else
  {
    v9 = 0;
  }

  playerCopy = player;
  selfCopy = self;
  sub_24E211900(playerCopy, origin, v8, v9);
  sub_24DE73FA0(v8);
}

@end
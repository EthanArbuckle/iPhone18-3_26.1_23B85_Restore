@interface LocalPlayerAuthenticationPresenter
- (void)authenticationShowGreenBuddyUIForLocalPlayer:(id)a3 withCompletionHandler:(id)a4;
- (void)authenticationShowSignInUIForLocalPlayer:(id)a3 origin:(unint64_t)a4 dismiss:(id)a5;
@end

@implementation LocalPlayerAuthenticationPresenter

- (void)authenticationShowGreenBuddyUIForLocalPlayer:(id)a3 withCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_24E212180;
  }

  v7 = a3;
  v8 = self;
  sub_24E211718(v7);
  sub_24DE73FA0(v6);
}

- (void)authenticationShowSignInUIForLocalPlayer:(id)a3 origin:(unint64_t)a4 dismiss:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = self;
  sub_24E211900(v10, a4, v8, v9);
  sub_24DE73FA0(v8);
}

@end
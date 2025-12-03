@interface NSObject(MusicKit_SoftLinking_MPCPlayerCommandDialog)
- (id)_musicKit_self_commandDialog;
- (id)musicKit_commandDialog_actions;
- (id)musicKit_commandDialog_localizedMessage;
- (id)musicKit_commandDialog_localizedTitle;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerCommandDialog)

- (id)_musicKit_self_commandDialog
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPCPlayerCommandDialogClass_softClass;
  v10 = getMPCPlayerCommandDialogClass_softClass;
  if (!getMPCPlayerCommandDialogClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getMPCPlayerCommandDialogClass_block_invoke;
    v6[3] = &unk_1E84C3838;
    v6[4] = &v7;
    __getMPCPlayerCommandDialogClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_commandDialog_localizedTitle
{
  _musicKit_self_commandDialog = [self _musicKit_self_commandDialog];
  localizedTitle = [_musicKit_self_commandDialog localizedTitle];

  return localizedTitle;
}

- (id)musicKit_commandDialog_localizedMessage
{
  _musicKit_self_commandDialog = [self _musicKit_self_commandDialog];
  localizedMessage = [_musicKit_self_commandDialog localizedMessage];

  return localizedMessage;
}

- (id)musicKit_commandDialog_actions
{
  _musicKit_self_commandDialog = [self _musicKit_self_commandDialog];
  actions = [_musicKit_self_commandDialog actions];

  return actions;
}

@end
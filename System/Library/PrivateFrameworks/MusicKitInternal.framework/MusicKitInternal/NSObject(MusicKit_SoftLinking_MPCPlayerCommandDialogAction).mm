@interface NSObject(MusicKit_SoftLinking_MPCPlayerCommandDialogAction)
- (id)_musicKit_self_commandDialogAction;
- (id)musicKit_commandDialogAction_commandRequest;
- (id)musicKit_commandDialogAction_localizedTitle;
- (uint64_t)musicKit_commandDialogAction_type;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerCommandDialogAction)

- (id)_musicKit_self_commandDialogAction
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPCPlayerCommandDialogActionClass_softClass;
  v10 = getMPCPlayerCommandDialogActionClass_softClass;
  if (!getMPCPlayerCommandDialogActionClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getMPCPlayerCommandDialogActionClass_block_invoke;
    v6[3] = &unk_1E84C3838;
    v6[4] = &v7;
    __getMPCPlayerCommandDialogActionClass_block_invoke(v6);
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

- (id)musicKit_commandDialogAction_localizedTitle
{
  _musicKit_self_commandDialogAction = [self _musicKit_self_commandDialogAction];
  localizedTitle = [_musicKit_self_commandDialogAction localizedTitle];

  return localizedTitle;
}

- (uint64_t)musicKit_commandDialogAction_type
{
  _musicKit_self_commandDialogAction = [self _musicKit_self_commandDialogAction];
  type = [_musicKit_self_commandDialogAction type];

  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

- (id)musicKit_commandDialogAction_commandRequest
{
  _musicKit_self_commandDialogAction = [self _musicKit_self_commandDialogAction];
  commandRequest = [_musicKit_self_commandDialogAction commandRequest];

  return commandRequest;
}

@end
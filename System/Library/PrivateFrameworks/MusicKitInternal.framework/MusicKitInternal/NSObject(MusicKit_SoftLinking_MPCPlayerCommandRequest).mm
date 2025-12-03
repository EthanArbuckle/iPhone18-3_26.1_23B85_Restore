@interface NSObject(MusicKit_SoftLinking_MPCPlayerCommandRequest)
- (id)_musicKit_self_commandRequest;
- (void)_musicKit_setCommandOptionValue:()MusicKit_SoftLinking_MPCPlayerCommandRequest forKey:;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerCommandRequest)

- (id)_musicKit_self_commandRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPCPlayerCommandRequestClass_softClass;
  v10 = getMPCPlayerCommandRequestClass_softClass;
  if (!getMPCPlayerCommandRequestClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getMPCPlayerCommandRequestClass_block_invoke;
    v6[3] = &unk_1E84C3838;
    v6[4] = &v7;
    __getMPCPlayerCommandRequestClass_block_invoke(v6);
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

- (void)_musicKit_setCommandOptionValue:()MusicKit_SoftLinking_MPCPlayerCommandRequest forKey:
{
  v6 = a4;
  v7 = a3;
  _musicKit_self_commandRequest = [self _musicKit_self_commandRequest];
  [_musicKit_self_commandRequest setCommandOptionValue:v7 forKey:v6];
}

@end
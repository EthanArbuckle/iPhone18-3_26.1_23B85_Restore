@interface NSObject(MusicKit_SoftLinking_MPCPlayerCommandStatus)
- (id)_musicKit_self_commandStatus;
- (id)musicKit_commandStatus_dialog;
- (id)musicKit_commandStatus_error;
- (uint64_t)musicKit_commandStatus_type;
@end

@implementation NSObject(MusicKit_SoftLinking_MPCPlayerCommandStatus)

- (id)_musicKit_self_commandStatus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPCPlayerCommandStatusClass_softClass;
  v10 = getMPCPlayerCommandStatusClass_softClass;
  if (!getMPCPlayerCommandStatusClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getMPCPlayerCommandStatusClass_block_invoke;
    v6[3] = &unk_1E84C3838;
    v6[4] = &v7;
    __getMPCPlayerCommandStatusClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)musicKit_commandStatus_error
{
  v1 = [a1 _musicKit_self_commandStatus];
  v2 = [v1 error];

  return v2;
}

- (id)musicKit_commandStatus_dialog
{
  v1 = [a1 _musicKit_self_commandStatus];
  v2 = [v1 dialog];

  return v2;
}

- (uint64_t)musicKit_commandStatus_type
{
  v1 = [a1 _musicKit_self_commandStatus];
  v2 = [v1 type];

  if (v2 == 999)
  {
    v3 = 999;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 3)
  {
    v3 = 3;
  }

  if (v2 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 1)
  {
    v4 = 1;
  }

  if (v2 <= 2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

@end
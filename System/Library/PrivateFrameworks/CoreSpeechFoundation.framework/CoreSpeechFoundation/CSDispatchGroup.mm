@interface CSDispatchGroup
- (CSDispatchGroup)init;
- (void)leave;
@end

@implementation CSDispatchGroup

- (void)leave
{
  v11 = *MEMORY[0x1E69E9840];
  dispatchGroupCounter = self->_dispatchGroupCounter;
  v4 = __OFSUB__(dispatchGroupCounter--, 1);
  self->_dispatchGroupCounter = dispatchGroupCounter;
  if (dispatchGroupCounter < 0 != v4)
  {
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSDispatchGroup leave]";
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s unbalanced dispatch_group_enter and leave : ignore we are ignore dispatch_group_leave", &v9, 0xCu);
    }

    self->_dispatchGroupCounter = 0;
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    dispatchGroup = self->_dispatchGroup;
    v6 = *MEMORY[0x1E69E9840];

    dispatch_group_leave(dispatchGroup);
  }
}

- (CSDispatchGroup)init
{
  v7.receiver = self;
  v7.super_class = CSDispatchGroup;
  v2 = [(CSDispatchGroup *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_dispatchGroupCounter = 0;
    v4 = dispatch_group_create();
    dispatchGroup = v3->_dispatchGroup;
    v3->_dispatchGroup = v4;
  }

  return v3;
}

@end
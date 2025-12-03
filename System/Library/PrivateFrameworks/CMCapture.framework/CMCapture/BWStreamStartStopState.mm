@interface BWStreamStartStopState
- (BOOL)dependentWillStart;
- (BOOL)streamWillStart;
- (BOOL)streamWillStop;
- (float)initWithStream:(void *)stream masterState:(float)state timeoutInSeconds:;
- (void)dealloc;
- (void)streamDidStop;
@end

@implementation BWStreamStartStopState

- (BOOL)streamWillStart
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_1_100();
  if (v9)
  {
    return 0;
  }

  *(v1 + 8) = 1;
  started = *(v1 + 48);
  if (!started)
  {
    goto LABEL_4;
  }

  started = [(BWStreamStartStopState *)started dependentWillStart];
  v23 = started;
  if (*(v1 + 68) == 1 && (started = [*(v1 + 56) count]) == 0)
  {
    started = usleep(0x186A0u);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (!v23)
  {
    return 0;
  }

LABEL_4:
  v11 = *(v1 + 56);
  v12 = OUTLINED_FUNCTION_57(started, v2, v3, v4, v5, v6, v7, v8, v24);
  if (!v12)
  {
    return 1;
  }

  v13 = v12;
  v14 = MEMORY[0];
LABEL_6:
  v15 = 0;
  while (1)
  {
    if (MEMORY[0] != v14)
    {
      objc_enumerationMutation(v11);
    }

    result = [(BWStreamStartStopState *)*(8 * v15) dependentWillStart];
    if (!result)
    {
      return result;
    }

    if (v13 == ++v15)
    {
      v13 = OUTLINED_FUNCTION_57(result, v16, v17, v18, v19, v20, v21, v22, v25);
      if (v13)
      {
        goto LABEL_6;
      }

      return 1;
    }
  }
}

- (BOOL)dependentWillStart
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    if (v2 == 0.0)
    {
      v3 = -1;
    }

    else
    {
      v3 = dispatch_time(0, (v2 * 1000000000.0));
    }

    v4 = dispatch_group_wait(*(v1 + 24), v3);
    dispatch_group_enter(*(v1 + 40));
    return v4 == 0;
  }

  return result;
}

- (void)dealloc
{
  if (self->_hasEnteredStartedGroup)
  {
    dispatch_group_leave(self->_hasStartedGroup);
  }

  v3.receiver = self;
  v3.super_class = BWStreamStartStopState;
  [(BWStreamStartStopState *)&v3 dealloc];
}

- (float)initWithStream:(void *)stream masterState:(float)state timeoutInSeconds:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = BWStreamStartStopState;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  if (v7)
  {
    *(v7 + 2) = a2;
    *(v7 + 6) = stream;
    v7[16] = state;
    v8 = dispatch_group_create();
    *(v7 + 3) = v8;
    dispatch_group_enter(v8);
    *(v7 + 32) = 1;
    *(v7 + 5) = dispatch_group_create();
  }

  return v7;
}

- (BOOL)streamWillStop
{
  if (result)
  {
    OUTLINED_FUNCTION_1_100();
    if (v2 == 2)
    {
      *(v1 + 8) = 3;
      v3 = *(v1 + 64);
      if (v3 == 0.0)
      {
        v4 = -1;
      }

      else
      {
        v4 = dispatch_time(0, (v3 * 1000000000.0));
      }

      return dispatch_group_wait(*(v1 + 40), v4) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)streamDidStop
{
  if (self)
  {
    OUTLINED_FUNCTION_1_100();
    if (v2 == 3)
    {
      *(v1 + 8) = 0;
      dispatch_group_enter(*(v1 + 24));
      *(v1 + 32) = 1;
      v11 = *(v1 + 48);
      if (v11)
      {
        dispatch_group_leave(*(v11 + 40));
      }

      v12 = *(v1 + 56);
      v13 = OUTLINED_FUNCTION_57(v3, v4, v5, v6, v7, v8, v9, v10, v25);
      if (v13)
      {
        v21 = v13;
        v22 = MEMORY[0];
        do
        {
          v23 = 0;
          do
          {
            if (MEMORY[0] != v22)
            {
              objc_enumerationMutation(v12);
            }

            v24 = *(8 * v23);
            if (v24)
            {
              dispatch_group_leave(*(v24 + 40));
            }

            ++v23;
          }

          while (v21 != v23);
          v13 = OUTLINED_FUNCTION_57(v13, v14, v15, v16, v17, v18, v19, v20, v26);
          v21 = v13;
        }

        while (v13);
      }
    }
  }
}

@end
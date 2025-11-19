@interface _CNBlockTask
- (_CNBlockTask)initWithName:(id)a3 block:(id)a4;
@end

@implementation _CNBlockTask

- (_CNBlockTask)initWithName:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    if (CNGuardOSLog_cn_once_token_0_5 != -1)
    {
      [_CNBlockTask initWithName:block:];
    }

    v8 = CNGuardOSLog_cn_once_object_0_5;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_5, OS_LOG_TYPE_FAULT))
    {
      [_CNBlockTask initWithName:v8 block:?];
    }
  }

  v14.receiver = self;
  v14.super_class = _CNBlockTask;
  v9 = [(CNTask *)&v14 initWithName:v6];
  if (v9)
  {
    v10 = [v7 copy];
    block = v9->_block;
    v9->_block = v10;

    v12 = v9;
  }

  return v9;
}

@end
@interface _CNBlockTask
- (_CNBlockTask)initWithName:(id)name block:(id)block;
@end

@implementation _CNBlockTask

- (_CNBlockTask)initWithName:(id)name block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  if (!blockCopy)
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
  v9 = [(CNTask *)&v14 initWithName:nameCopy];
  if (v9)
  {
    v10 = [blockCopy copy];
    block = v9->_block;
    v9->_block = v10;

    v12 = v9;
  }

  return v9;
}

@end
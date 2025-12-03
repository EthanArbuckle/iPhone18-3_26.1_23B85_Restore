@interface IMDMessagePTask
- (IMDMessagePTask)initWithGUID:(id)d;
- (IMDMessagePTask)initWithStoreDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation IMDMessagePTask

- (IMDMessagePTask)initWithGUID:(id)d
{
  v6.receiver = self;
  v6.super_class = IMDMessagePTask;
  v4 = [(IMDMessagePTask *)&v6 init];
  if (v4)
  {
    v4->_guid = d;
    v4->_taskFlags = 0;
  }

  return v4;
}

- (IMDMessagePTask)initWithStoreDictionary:(id)dictionary
{
  v5 = objc_msgSend_objectForKeyedSubscript_(dictionary, a2, @"guid");
  v8 = objc_msgSend_initWithGUID_(self, v6, v5);
  if (v8)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(dictionary, v7, @"task_flags");
    v8->_taskFlags = objc_msgSend_integerValue(v9, v10, v11);
  }

  return v8;
}

- (void)dealloc
{
  self->_guid = 0;
  v3.receiver = self;
  v3.super_class = IMDMessagePTask;
  [(IMDMessagePTask *)&v3 dealloc];
}

@end
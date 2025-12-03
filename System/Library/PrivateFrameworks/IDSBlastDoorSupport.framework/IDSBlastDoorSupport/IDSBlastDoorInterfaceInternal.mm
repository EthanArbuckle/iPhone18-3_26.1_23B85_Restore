@interface IDSBlastDoorInterfaceInternal
- (void)unpackClientMessage:(id)message context:(id)context resultHandler:(id)handler;
- (void)unpackPayloadDictionary:(id)dictionary resultHandler:(id)handler;
@end

@implementation IDSBlastDoorInterfaceInternal

- (void)unpackPayloadDictionary:(id)dictionary resultHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_254735FE4();
  _Block_copy(v5);
  selfCopy = self;
  sub_254734A58(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)unpackClientMessage:(id)message context:(id)context resultHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_254735FE4();
  v8 = sub_254735FE4();
  _Block_copy(v6);
  selfCopy = self;
  sub_254735414(v7, v8, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end
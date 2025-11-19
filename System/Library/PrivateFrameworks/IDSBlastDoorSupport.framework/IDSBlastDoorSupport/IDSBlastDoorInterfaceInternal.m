@interface IDSBlastDoorInterfaceInternal
- (void)unpackClientMessage:(id)a3 context:(id)a4 resultHandler:(id)a5;
- (void)unpackPayloadDictionary:(id)a3 resultHandler:(id)a4;
@end

@implementation IDSBlastDoorInterfaceInternal

- (void)unpackPayloadDictionary:(id)a3 resultHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_254735FE4();
  _Block_copy(v5);
  v7 = self;
  sub_254734A58(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)unpackClientMessage:(id)a3 context:(id)a4 resultHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_254735FE4();
  v8 = sub_254735FE4();
  _Block_copy(v6);
  v9 = self;
  sub_254735414(v7, v8, v9, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end
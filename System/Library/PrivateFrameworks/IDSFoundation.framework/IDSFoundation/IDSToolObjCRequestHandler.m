@interface IDSToolObjCRequestHandler
+ (void)handleMessage:(NSData *)a3 completionHandler:(id)a4;
- (IDSToolObjCRequestHandler)init;
@end

@implementation IDSToolObjCRequestHandler

+ (void)handleMessage:(NSData *)a3 completionHandler:(id)a4
{
  v7 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_1A7E226D0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A7E48E58;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E48E60;
  v15[5] = v14;
  v16 = a3;
  sub_1A7DE5274(0, 0, v10, &unk_1A7E45700, v15);
}

- (IDSToolObjCRequestHandler)init
{
  v3.receiver = self;
  v3.super_class = IDSToolObjCRequestHandler;
  return [(IDSToolObjCRequestHandler *)&v3 init];
}

@end
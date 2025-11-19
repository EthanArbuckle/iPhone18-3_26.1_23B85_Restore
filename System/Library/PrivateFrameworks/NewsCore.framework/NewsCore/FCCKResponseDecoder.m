@interface FCCKResponseDecoder
+ (void)processResponseWithPayload:(id)a3 operationHandler:(id)a4 recordHandler:(id)a5 completionHandler:(id)a6;
- (FCCKResponseDecoder)init;
@end

@implementation FCCKResponseDecoder

+ (void)processResponseWithPayload:(id)a3 operationHandler:(id)a4 recordHandler:(id)a5 completionHandler:(id)a6
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a4);
  v15 = _Block_copy(a5);
  v16 = _Block_copy(a6);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = sub_1B67D993C();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = sub_1B644DBF4;
  v21[5] = v18;
  v21[6] = sub_1B648C670;
  v21[7] = v17;
  v21[8] = a3;
  v21[9] = sub_1B648C6AC;
  v21[10] = v19;
  v22 = a3;
  sub_1B644BCA8(0, 0, v13, &unk_1B68131F0, v21);
}

- (FCCKResponseDecoder)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FCCKResponseDecoder *)&v3 init];
}

@end
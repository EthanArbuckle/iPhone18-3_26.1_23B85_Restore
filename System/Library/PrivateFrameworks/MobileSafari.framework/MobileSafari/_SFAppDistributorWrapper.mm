@interface _SFAppDistributorWrapper
+ (void)handlePunchoutWithBundleID:(NSString *)d adamID:(NSNumber *)iD externalVersionID:(NSNumber *)versionID completionHandler:(id)handler;
- (_SFAppDistributorWrapper)init;
@end

@implementation _SFAppDistributorWrapper

+ (void)handlePunchoutWithBundleID:(NSString *)d adamID:(NSNumber *)iD externalVersionID:(NSNumber *)versionID completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAE10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = d;
  v15[3] = iD;
  v15[4] = versionID;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_18BC20F48();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_18BC55D00;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_18BC4A550;
  v18[5] = v17;
  dCopy = d;
  iDCopy = iD;
  versionIDCopy = versionID;
  sub_18BC10FA8(0, 0, v13, &unk_18BC55D20, v18);
}

- (_SFAppDistributorWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SFAppDistributorWrapper();
  return [(_SFAppDistributorWrapper *)&v3 init];
}

@end
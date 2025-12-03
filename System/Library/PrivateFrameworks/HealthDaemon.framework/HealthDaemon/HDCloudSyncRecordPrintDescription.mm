@interface HDCloudSyncRecordPrintDescription
+ (id)printDescriptionForRecord:(id)record;
- (HDCloudSyncRecordPrintDescription)init;
@end

@implementation HDCloudSyncRecordPrintDescription

+ (id)printDescriptionForRecord:(id)record
{
  v4 = sub_22911BF0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  recordCopy = record;
  sub_2289B47F0();
  sub_22911BEFC();

  (*(v5 + 8))(v8, v4);
  v10 = sub_22911C34C();

  return v10;
}

- (HDCloudSyncRecordPrintDescription)init
{
  v3.receiver = self;
  v3.super_class = HDCloudSyncRecordPrintDescription;
  return [(HDCloudSyncRecordPrintDescription *)&v3 init];
}

@end
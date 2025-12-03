@interface NTKBundleComplicationMigrationTypeLookupGenerator
+ (void)generateLookupUsingService:(NTKBundleComplicationMigrationService *)service device:(CLKDevice *)device completion:(id)completion;
- (NTKBundleComplicationMigrationTypeLookupGenerator)init;
@end

@implementation NTKBundleComplicationMigrationTypeLookupGenerator

+ (void)generateLookupUsingService:(NTKBundleComplicationMigrationService *)service device:(CLKDevice *)device completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v9 - 8, v10, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = service;
  v15[3] = device;
  v15[4] = v14;
  v15[5] = self;
  v16 = sub_22DCB62BC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22DCED430;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22DCEA300;
  v18[5] = v17;
  serviceCopy = service;
  deviceCopy = device;
  sub_22DC9E89C(0, 0, v13, &unk_22DCEC670, v18);
}

- (NTKBundleComplicationMigrationTypeLookupGenerator)init
{
  v3.receiver = self;
  v3.super_class = NTKBundleComplicationMigrationTypeLookupGenerator;
  return [(NTKBundleComplicationMigrationTypeLookupGenerator *)&v3 init];
}

@end
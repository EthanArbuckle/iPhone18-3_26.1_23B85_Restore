@interface NTKBundleComplicationMigrationTypeLookupGenerator
+ (void)generateLookupUsingService:(NTKBundleComplicationMigrationService *)a3 device:(CLKDevice *)a4 completion:(id)a5;
- (NTKBundleComplicationMigrationTypeLookupGenerator)init;
@end

@implementation NTKBundleComplicationMigrationTypeLookupGenerator

+ (void)generateLookupUsingService:(NTKBundleComplicationMigrationService *)a3 device:(CLKDevice *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v9 - 8, v10, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v14;
  v15[5] = a1;
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
  v19 = a3;
  v20 = a4;
  sub_22DC9E89C(0, 0, v13, &unk_22DCEC670, v18);
}

- (NTKBundleComplicationMigrationTypeLookupGenerator)init
{
  v3.receiver = self;
  v3.super_class = NTKBundleComplicationMigrationTypeLookupGenerator;
  return [(NTKBundleComplicationMigrationTypeLookupGenerator *)&v3 init];
}

@end
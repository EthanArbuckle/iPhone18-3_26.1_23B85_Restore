@interface JEMetricsSecretMigrator
+ (void)migrateSecretIfNecessaryAndReturnSecretValueWithNamespace:(NSString *)a3 topic:(NSString *)a4 secretKey:(AMSMetricsIdentifierKey *)a5 configuration:(NSDictionary *)a6 completionHandler:(id)a7;
- (_TtC9JetEngine23JEMetricsSecretMigrator)init;
@end

@implementation JEMetricsSecretMigrator

+ (void)migrateSecretIfNecessaryAndReturnSecretValueWithNamespace:(NSString *)a3 topic:(NSString *)a4 secretKey:(AMSMetricsIdentifierKey *)a5 configuration:(NSDictionary *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = a1;
  v18 = sub_1AB460BE4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1AB4EB940;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1AB4E3820;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  sub_1AB39BBA8(0, 0, v15, &unk_1AB4EB960, v20);
}

- (_TtC9JetEngine23JEMetricsSecretMigrator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JEMetricsSecretMigrator();
  return [(JEMetricsSecretMigrator *)&v3 init];
}

@end
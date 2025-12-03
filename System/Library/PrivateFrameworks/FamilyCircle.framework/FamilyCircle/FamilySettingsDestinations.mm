@interface FamilySettingsDestinations
+ (id)urlDestinationTo:(int64_t)to error:(id *)error;
+ (id)urlDestinationTo:(int64_t)to params:(id)params error:(id *)error;
- (FamilySettingsDestinations)init;
@end

@implementation FamilySettingsDestinations

+ (id)urlDestinationTo:(int64_t)to error:(id *)error
{
  v5 = sub_1B715DB20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjCClassMetadata();
  static FamilySettingsDestinations.urlDestination(to:)(to);
  v10 = sub_1B715DAE0();
  (*(v6 + 8))(v9, v5);

  return v10;
}

+ (id)urlDestinationTo:(int64_t)to params:(id)params error:(id *)error
{
  v6 = sub_1B715DB20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B715DFE0();
  static FamilySettingsDestinations.urlDestination(to:params:)(to, v11, v10);

  v12 = sub_1B715DAE0();
  (*(v7 + 8))(v10, v6);

  return v12;
}

- (FamilySettingsDestinations)init
{
  v3.receiver = self;
  v3.super_class = FamilySettingsDestinations;
  return [(FamilySettingsDestinations *)&v3 init];
}

@end
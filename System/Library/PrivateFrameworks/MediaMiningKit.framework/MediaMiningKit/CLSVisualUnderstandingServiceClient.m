@interface CLSVisualUnderstandingServiceClient
- (CLSVisualUnderstandingServiceClient)init;
- (CLSVisualUnderstandingServiceClient)initWithVisionCacheURL:(id)a3 error:(id *)a4;
- (id)deviceOwnerPersonUUIDWithIgnoreContactsLinking:(BOOL)a3;
@end

@implementation CLSVisualUnderstandingServiceClient

- (CLSVisualUnderstandingServiceClient)initWithVisionCacheURL:(id)a3 error:(id *)a4
{
  v4 = sub_22F989450();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F989440();
  return CLSVisualUnderstandingServiceClient.init(visionCacheURL:)(v6);
}

- (id)deviceOwnerPersonUUIDWithIgnoreContactsLinking:(BOOL)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1DE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = self;
  sub_22F91E270(a3, v7);

  v9 = sub_22F9894F0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_22F9894E0();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

- (CLSVisualUnderstandingServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
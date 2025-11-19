@interface NAPAssembly
- (NAPAssembly)init;
@end

@implementation NAPAssembly

- (NAPAssembly)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___NAPAssembly_assemblies;
  sub_1C6B0BE1C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = type metadata accessor for SuggestionsAssembly();
  v7 = swift_allocObject();
  *(v5 + 56) = v6;
  *(v5 + 64) = sub_1C6B0C47C(qword_1EDCE7428, type metadata accessor for SuggestionsAssembly);
  *(v5 + 32) = v7;
  v8 = type metadata accessor for ComputeServiceAssembly();
  v9 = swift_allocObject();
  *(v5 + 96) = v8;
  *(v5 + 104) = sub_1C6B0C47C(&qword_1EDCE7168, type metadata accessor for ComputeServiceAssembly);
  *(v5 + 72) = v9;
  *(&self->super.isa + v4) = v5;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(NAPAssembly *)&v11 init];
}

@end
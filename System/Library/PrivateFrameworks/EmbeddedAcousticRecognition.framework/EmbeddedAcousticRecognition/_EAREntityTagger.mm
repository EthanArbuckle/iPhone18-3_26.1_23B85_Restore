@interface _EAREntityTagger
- (id)tagEntitiesIn:(id)a3;
- (id)tagEntitiesInArray:(id)a3;
- (id)tagEntitiesWithTagNamesIn:(id)a3;
@end

@implementation _EAREntityTagger

- (id)tagEntitiesWithTagNamesIn:(id)a3
{
  sub_1B5AD6664();
  v4 = self;
  sub_1B5A91CB4();

  type metadata accessor for _EARExtractedEntity();
  sub_1B5A951DC(&qword_1EB909538, v5, type metadata accessor for _EARExtractedEntity);
  v6 = sub_1B5AD66E4();

  return v6;
}

- (id)tagEntitiesIn:(id)a3
{
  v4 = sub_1B5AD6664();
  v6 = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v8 = self;
  v9 = v7(v4, v6);

  sub_1B5A920F0(v9);
  v11 = v10;

  sub_1B5A94ED4(v11);

  v12 = sub_1B5AD66E4();

  return v12;
}

- (id)tagEntitiesInArray:(id)a3
{
  v4 = sub_1B5AD66D4();
  v5 = self;
  sub_1B5A92544(v4);

  v6 = sub_1B5AD66E4();

  return v6;
}

@end
@interface AppEntityAssociator
- (AppEntityAssociator)init;
- (void)associateAppEntityFromHeadline:(id)a3 with:(id)a4;
@end

@implementation AppEntityAssociator

- (AppEntityAssociator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppEntityAssociator();
  return [(AppEntityAssociator *)&v3 init];
}

- (void)associateAppEntityFromHeadline:(id)a3 with:(id)a4
{
  sub_218AC1C94(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1634();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain_n();
  v12 = a4;
  sub_219BF1624();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    swift_unknownObjectRelease();

    sub_2190D42D8(v7);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_2190D4334();
    sub_219BF6354();
    swift_unknownObjectRelease();

    (*(v9 + 8))(v11, v8);
  }
}

@end
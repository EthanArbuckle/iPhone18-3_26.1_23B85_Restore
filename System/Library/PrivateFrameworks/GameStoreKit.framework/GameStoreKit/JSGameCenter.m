@interface JSGameCenter
- (_TtC12GameStoreKit12JSGameCenter)init;
- (id)fetchGameInfo:(id)a3;
- (id)fetchRecentlyPlayedGamesWithinSeconds:(id)a3 :(int64_t)a4 :(int64_t)a5;
- (id)fetchRengagementDataForLocalPlayer;
- (id)fetchSuggestedFriends:(int64_t)a3;
@end

@implementation JSGameCenter

- (id)fetchRecentlyPlayedGamesWithinSeconds:(id)a3 :(int64_t)a4 :(int64_t)a5
{
  v8 = sub_24F922028();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_24F92B0D8();
  v14 = v13;
  sub_24F929778();
  v15 = self;
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v16 = sub_24F929768();
  sub_24F921FE8();

  sub_24E69A5C4(0, &qword_27F21C8C8);
  v17 = sub_24F92C448();
  v21 = v12;
  v22 = v14;
  v23 = v15;
  v24 = a4;
  v25 = a5;
  v26 = v11;
  v18 = sub_24F92C458();

  (*(v9 + 8))(v11, v8);

  return v18;
}

- (id)fetchSuggestedFriends:(int64_t)a3
{
  v3 = qword_27F210590;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_24F92AAE8();
  __swift_project_value_buffer(v5, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  sub_24E69A5C4(0, &qword_27F21C8C8);
  v6 = sub_24F92C448();
  MEMORY[0x28223BE20](v6);
  v7 = sub_24F92C458();

  return v7;
}

- (id)fetchRengagementDataForLocalPlayer
{
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v3 = self;
  v4 = sub_24F92C448();
  v5 = sub_24F92C458();

  return v5;
}

- (id)fetchGameInfo:(id)a3
{
  sub_24F92B0D8();
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v3 = sub_24F92C448();
  v4 = sub_24F92C458();

  return v4;
}

- (_TtC12GameStoreKit12JSGameCenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
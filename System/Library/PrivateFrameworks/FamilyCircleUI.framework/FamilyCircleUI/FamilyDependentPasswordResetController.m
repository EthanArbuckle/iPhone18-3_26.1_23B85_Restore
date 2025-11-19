@interface FamilyDependentPasswordResetController
- (_TtC14FamilyCircleUI38FamilyDependentPasswordResetController)init;
- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didRefreshObjectModel:(id)a4;
- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6;
@end

@implementation FamilyDependentPasswordResetController

- (_TtC14FamilyCircleUI38FamilyDependentPasswordResetController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = sub_21BC0FF38;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  sub_21BC0F350(a4, a5, v10, v11);
  sub_21BB5AEC4(v10);
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  if (a5)
  {
    sub_21BE2574C();
    v13 = sub_21BE2575C();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_21BE2575C();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_21BC0F5F0(a4, v12);

  sub_21BB3A4CC(v12, &qword_27CDB6EE8, &unk_21BE36250);
}

- (void)remoteUIController:(id)a3 didRefreshObjectModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21BC0FABC(a4);
}

- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_21BC0FC48(a4, a5);
}

@end
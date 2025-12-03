@interface FamilyDependentPasswordResetController
- (_TtC14FamilyCircleUI38FamilyDependentPasswordResetController)init;
- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response forRequest:(id)request;
- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation FamilyDependentPasswordResetController

- (_TtC14FamilyCircleUI38FamilyDependentPasswordResetController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  v10 = _Block_copy(handler);
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

  controllerCopy = controller;
  requestCopy = request;
  responseCopy = response;
  selfCopy = self;
  sub_21BC0F350(request, response, v10, v11);
  sub_21BB5AEC4(v10);
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response forRequest:(id)request
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  if (request)
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

  controllerCopy = controller;
  responseCopy = response;
  selfCopy = self;
  sub_21BC0F5F0(response, v12);

  sub_21BB3A4CC(v12, &qword_27CDB6EE8, &unk_21BE36250);
}

- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  selfCopy = self;
  sub_21BC0FABC(model);
}

- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally
{
  controllerCopy = controller;
  modelCopy = model;
  selfCopy = self;
  sub_21BC0FC48(model, modally);
}

@end
@interface RequestsHandlerPresenter
- (_TtC16CallsAppServices24RequestsHandlerPresenter)init;
- (id)presentingViewControllerForAcceptedContactActionsManager:(id)manager sourceView:(id *)view sourceRect:(CGRect *)rect;
- (void)acceptedContactActionsManager:(id)manager didCreateNewContact:(id)contact;
- (void)acceptedContactActionsManager:(id)manager didRecordRecentEvent:(id)event;
- (void)acceptedContactActionsManagerDidCancel:(id)cancel;
@end

@implementation RequestsHandlerPresenter

- (_TtC16CallsAppServices24RequestsHandlerPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentingViewControllerForAcceptedContactActionsManager:(id)manager sourceView:(id *)view sourceRect:(CGRect *)rect
{
  v5 = sub_1D336A144(view);

  return v5;
}

- (void)acceptedContactActionsManager:(id)manager didRecordRecentEvent:(id)event
{
  if (event)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D33DED44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    selfCopy2 = self;
  }

  v7 = (self + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  if (v8)
  {
    v9 = v7[1];

    v8(1);
    sub_1D331EEDC(v8);
    sub_1D331E880(v13, &qword_1EC7616D0, &unk_1D33E2890);
    v10 = *v7;
    v11 = v7[1];
    *v7 = 0;
    v7[1] = 0;
    sub_1D331EEDC(v10);
    v12 = *(&self->super.isa + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
    *(&self->super.isa + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
  }

  else
  {

    sub_1D331E880(v13, &qword_1EC7616D0, &unk_1D33E2890);
  }
}

- (void)acceptedContactActionsManager:(id)manager didCreateNewContact:(id)contact
{
  v4 = (self + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  if (v5)
  {
    v6 = v4[1];
    selfCopy = self;
    sub_1D331FEDC(v5);
    v5(1);
    sub_1D331EEDC(v5);
    v8 = *v4;
    v9 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    sub_1D331EEDC(v8);
    v10 = *(&selfCopy->super.isa + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
    *(&selfCopy->super.isa + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
  }
}

- (void)acceptedContactActionsManagerDidCancel:(id)cancel
{
  v3 = (self + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_actionCompletionHandler);
  if (v4)
  {
    v5 = v3[1];
    selfCopy = self;
    sub_1D331FEDC(v4);
    v4(0);
    sub_1D331EEDC(v4);
    v7 = *v3;
    v8 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    sub_1D331EEDC(v7);
    v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager);
    *(&selfCopy->super.isa + OBJC_IVAR____TtC16CallsAppServices24RequestsHandlerPresenter_acceptedContactActionsManager) = 0;
  }
}

@end
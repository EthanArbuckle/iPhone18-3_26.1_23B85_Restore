@interface CHUISControlInstance
- (CHSControlDescriptor)descriptor;
- (CHSControlIdentity)control;
- (CHUISControlIconView)iconView;
- (CHUISControlInstance)init;
- (CHUISControlInstance)initWithControl:(id)a3 contentType:(unint64_t)a4;
- (CHUISControlInstance)initWithInstanceIdentity:(id)a3;
- (CHUISControlInstanceConfiguration)configuration;
- (CHUISControlInstanceDelegate)delegate;
- (NSString)title;
- (UIColor)tintColor;
- (unint64_t)contentType;
- (unint64_t)visibility;
- (void)activate;
- (void)invalidate;
- (void)modifyConfiguration:(id)a3;
- (void)performControlActionWithCompletion:(id)a3;
- (void)registerObserver:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setVisibility:(unint64_t)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CHUISControlInstance

- (CHSControlIdentity)control
{
  v2 = self;
  v3 = [(CHUISControlInstance *)v2 instanceIdentity];
  v4 = [(CHSControlInstanceIdentity *)v3 control];

  return v4;
}

- (unint64_t)contentType
{
  v2 = self;
  v3 = [(CHUISControlInstance *)v2 instanceIdentity];
  v4 = [(CHSControlInstanceIdentity *)v3 contentType];

  return v4;
}

- (unint64_t)visibility
{
  v3 = OBJC_IVAR___CHUISControlInstance_visibility;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setVisibility:(unint64_t)a3
{
  v5 = OBJC_IVAR___CHUISControlInstance_visibility;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self + OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  v7 = *(v6 + 3);
  v8 = *(v6 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 88);
  v10 = self;
  v9(a3, v7, v8);
  swift_endAccess();
}

- (CHUISControlInstanceConfiguration)configuration
{
  v3 = (self + OBJC_IVAR___CHUISControlInstance__adapter);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 56);
  v7 = self;
  v6(v15, v4, v5);
  LOBYTE(v4) = v15[0];
  LOBYTE(v5) = BYTE1(v15[0]);
  v8 = v15[1];
  LOBYTE(v6) = v16;
  v9 = v17;
  v10 = v18;
  swift_endAccess();
  v11 = [objc_allocWithZone(CHUISControlInstanceConfiguration) init];

  v12 = &v11[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  v13 = *&v11[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32];
  *v12 = v4;
  v12[1] = v5;
  *(v12 + 1) = v8;
  v12[16] = v6;
  *(v12 + 3) = v9;
  *(v12 + 4) = v10;

  return v11;
}

- (void)setConfiguration:(id)a3
{
  v5 = *(a3 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v6 = *(a3 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v7 = *(a3 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  v8 = *(a3 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v9 = *(a3 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  v16 = *(a3 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v10 = self + OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  v11 = *(v10 + 3);
  v12 = *(v10 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v17[0] = v5;
  v17[1] = v6;
  v18 = v7;
  v19 = v8;
  v20 = v16;
  v21 = v9;
  v13 = *(v12 + 64);

  v14 = a3;
  v15 = self;
  v13(v17, v11, v12);
  swift_endAccess();
}

- (CHSControlDescriptor)descriptor
{
  v3 = (self + OBJC_IVAR___CHUISControlInstance__adapter);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 32);
  v7 = self;
  v8 = v6(v4, v5);
  swift_endAccess();

  return v8;
}

- (CHUISControlInstanceDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)title
{
  result = sub_1D9328534();
  __break(1u);
  return result;
}

- (CHUISControlIconView)iconView
{
  result = sub_1D9328534();
  __break(1u);
  return result;
}

- (UIColor)tintColor
{
  result = sub_1D9328534();
  __break(1u);
  return result;
}

- (CHUISControlInstance)initWithControl:(id)a3 contentType:(unint64_t)a4
{
  v7 = objc_allocWithZone(MEMORY[0x1E6994270]);
  v8 = a3;
  v9 = [v7 initWithControl:v8 contentType:a4 hostIdentifier:0 configurationIdentifier:0];
  v10 = [(CHUISControlInstance *)self initWithInstanceIdentity:v9];

  return v10;
}

- (CHUISControlInstance)initWithInstanceIdentity:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___CHUISControlInstance__implicitlyActivateOnObserverRegistration) = 0;
  v5 = type metadata accessor for EmptyControlInstanceAdapter();
  v6 = swift_allocObject();
  v7 = (self + OBJC_IVAR___CHUISControlInstance__adapter);
  v7[3] = v5;
  v7[4] = &off_1F54C1CA0;
  *v7 = v6;
  *(self + OBJC_IVAR___CHUISControlInstance_instanceIdentity) = a3;
  *(self + OBJC_IVAR___CHUISControlInstance_visibility) = 0;
  v10.receiver = self;
  v10.super_class = CHUISControlInstance;
  v8 = a3;
  return [(CHUISControlInstance *)&v10 init];
}

- (void)activate
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(self + v3, v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 112))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

- (void)invalidate
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(self + v3, v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 120))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

- (void)modifyConfiguration:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1D9300C2C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)performControlActionWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D92E5F5C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(self + v8, v13);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v11 = *(v10 + 128);
  v12 = self;
  v11(v7, v6, v9, v10);

  sub_1D92E5F4C(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

- (void)registerObserver:(id)a3
{
  v5 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(self + v5, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = *(v7 + 136);
  swift_unknownObjectRetain();
  v9 = self;
  v8(a3, v6, v7);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

- (void)unregisterObserver:(id)a3
{
  v5 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(self + v5, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = *(v7 + 144);
  swift_unknownObjectRetain();
  v9 = self;
  v8(a3, v6, v7);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

- (CHUISControlInstance)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
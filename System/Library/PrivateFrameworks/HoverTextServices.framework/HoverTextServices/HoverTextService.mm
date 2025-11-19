@interface HoverTextService
+ (_TtC17HoverTextServices16HoverTextService)sharedInstance;
- (BOOL)startHoverTextAndReturnError:(id *)a3;
- (BOOL)startHoverTextTypingAndReturnError:(id *)a3;
- (BOOL)stopHoverTextAndReturnError:(id *)a3;
- (BOOL)stopHoverTextTypingAndReturnError:(id *)a3;
- (_TtC17HoverTextServices16HoverTextService)init;
- (void)showAlert:(id)a3;
@end

@implementation HoverTextService

+ (_TtC17HoverTextServices16HoverTextService)sharedInstance
{
  if (qword_28133E178 != -1)
  {
    swift_once();
  }

  v3 = static HoverTextService.sharedInstance;

  return v3;
}

- (_TtC17HoverTextServices16HoverTextService)init
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for HoverTextServiceAXUIService();
  v5 = [objc_allocWithZone(v4) init];
  v6 = (&self->super.isa + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl);
  v6[3] = v4;
  v6[4] = &off_286679398;
  *v6 = v5;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(HoverTextService *)&v8 init];
}

- (BOOL)startHoverTextAndReturnError:(id *)a3
{
  sub_2546121F8(self + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

- (BOOL)stopHoverTextAndReturnError:(id *)a3
{
  sub_2546121F8(self + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

- (void)showAlert:(id)a3
{
  v4 = sub_254612948();
  v6 = v5;
  sub_2546121F8(self + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = *(v8 + 24);
  v10 = self;
  v9(v4, v6, v7, v8);

  __swift_destroy_boxed_opaque_existential_0(v11);
}

- (BOOL)startHoverTextTypingAndReturnError:(id *)a3
{
  sub_2546121F8(self + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

- (BOOL)stopHoverTextTypingAndReturnError:(id *)a3
{
  sub_2546121F8(self + OBJC_IVAR____TtC17HoverTextServices16HoverTextService_serviceImpl, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

@end
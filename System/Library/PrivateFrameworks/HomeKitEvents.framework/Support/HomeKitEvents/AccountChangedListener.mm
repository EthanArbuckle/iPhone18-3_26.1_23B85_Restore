@interface AccountChangedListener
- (_TtC11homeeventsd22AccountChangedListener)init;
- (void)accountChangedWithNotification:(id)notification;
@end

@implementation AccountChangedListener

- (void)accountChangedWithNotification:(id)notification
{
  v3 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    sub_100080ECC(0, 0, v6, &unk_100087FB8, v10);
  }
}

- (_TtC11homeeventsd22AccountChangedListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface MRDGroupSessionHomeObserver
+ (MRDGroupSessionHomeObserver)shared;
- (MRDGroupSessionHomeObserver)init;
- (void)currentHomeUserIdentifiersWithCompletionHandler:(id)a3;
- (void)currentUserHomeIdentifiersWithCompletionHandler:(id)a3;
@end

@implementation MRDGroupSessionHomeObserver

+ (MRDGroupSessionHomeObserver)shared
{
  if (qword_1005363C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1005385B0;

  return v3;
}

- (void)currentHomeUserIdentifiersWithCompletionHandler:(id)a3
{
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10045ADE0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10045ADE8;
  v13[5] = v12;
  v14 = self;
  sub_1001D34BC(0, 0, v8, &unk_10045ADF0, v13);
}

- (void)currentUserHomeIdentifiersWithCompletionHandler:(id)a3
{
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10045ADA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10045ADB8;
  v13[5] = v12;
  v14 = self;
  sub_1001D34BC(0, 0, v8, &unk_10045ADC8, v13);
}

- (MRDGroupSessionHomeObserver)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MRDGroupSessionHomeObserver_managerWrapper;
  sub_1001BC5A8(&qword_100528700, &qword_10045AD48);
  *(&self->super.isa + v4) = sub_10039A0CC(&unk_10045AD50, 0);
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MRDGroupSessionHomeObserver *)&v6 init];
}

@end
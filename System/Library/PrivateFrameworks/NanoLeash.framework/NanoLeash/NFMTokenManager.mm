@interface NFMTokenManager
+ (void)getTokenWithCompletionHandler:(id)a3;
- (NFMTokenManager)init;
@end

@implementation NFMTokenManager

+ (void)getTokenWithCompletionHandler:(id)a3
{
  v5 = (*(*(sub_100006144(&qword_100011080, "D*") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100007EF8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100007F08;
  v12[5] = v11;
  sub_10000565C(0, 0, v7, &unk_100007F18, v12);
}

- (NFMTokenManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TokenManager();
  return [(NFMTokenManager *)&v3 init];
}

@end
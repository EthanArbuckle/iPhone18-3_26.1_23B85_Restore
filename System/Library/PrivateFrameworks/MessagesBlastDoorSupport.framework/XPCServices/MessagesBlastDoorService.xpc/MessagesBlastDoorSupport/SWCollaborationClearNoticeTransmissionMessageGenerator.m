@interface SWCollaborationClearNoticeTransmissionMessageGenerator
+ (id)initWithData:(id)a3;
@end

@implementation SWCollaborationClearNoticeTransmissionMessageGenerator

+ (id)initWithData:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_1000FE0E0;
  v12 = qword_1000FE0E0;
  if (!qword_1000FE0E0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000A294;
    v8[3] = &unk_1000F0B70;
    v8[4] = &v9;
    sub_10000A294(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [[v4 alloc] initWithData:v3];

  return v6;
}

@end
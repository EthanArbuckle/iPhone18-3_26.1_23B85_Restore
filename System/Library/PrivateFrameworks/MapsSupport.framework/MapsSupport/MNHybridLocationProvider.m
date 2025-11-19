@interface MNHybridLocationProvider
+ (id)navdInstance;
@end

@implementation MNHybridLocationProvider

+ (id)navdInstance
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100028CEC;
  v8[3] = &unk_100065B28;
  v8[4] = a1;
  v2 = objc_retainBlock(v8);
  if (+[NSThread isMainThread])
  {
    if (qword_100075990 != -1)
    {
      dispatch_once(&qword_100075990, v2);
    }
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100028E54;
    v6[3] = &unk_1000660A0;
    v7 = v2;
    dispatch_sync(&_dispatch_main_q, v6);
  }

  v3 = qword_100075988;
  v4 = qword_100075988;

  return v3;
}

@end
@interface Transcriber
+ (Transcriber)sharedInstance;
- (BOOL)startTranscribing;
- (BOOL)stopTranscribing;
- (Transcriber)init;
- (void)dealloc;
@end

@implementation Transcriber

+ (Transcriber)sharedInstance
{
  if (qword_100008850 != -1)
  {
    sub_10000150C();
  }

  v3 = qword_100008848;

  return v3;
}

- (Transcriber)init
{
  v6.receiver = self;
  v6.super_class = Transcriber;
  v2 = [(Transcriber *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXLTLiveTranscription);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    [*(v2 + 2) setNoPunctuation:0];
    [*(v2 + 2) setTaskHint:2];
    *(v2 + 24) = xmmword_100002420;
  }

  return v2;
}

- (void)dealloc
{
  [(Transcriber *)self cleanUp];
  v3.receiver = self;
  v3.super_class = Transcriber;
  [(Transcriber *)&v3 dealloc];
}

- (BOOL)startTranscribing
{
  selfCopy = self;
  transcriber = [(Transcriber *)self transcriber];
  v6 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000012A0;
  v7[3] = &unk_1000041A0;
  v7[4] = selfCopy;
  LOBYTE(selfCopy) = [transcriber startTranscribing:-[Transcriber requestType](selfCopy targetPID:"requestType") callbackBlock:-[Transcriber tapType](selfCopy error:{"tapType"), v7, &v6}];
  v4 = v6;

  return selfCopy;
}

- (BOOL)stopTranscribing
{
  transcriber = [(Transcriber *)self transcriber];

  if (!transcriber)
  {
    return 1;
  }

  transcriber2 = [(Transcriber *)self transcriber];
  v5 = [transcriber2 stopTranscribing:-[Transcriber requestType](self error:{"requestType"), 0}];

  return v5;
}

@end
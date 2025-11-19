@interface DMDiagnostics
+ (id)sharedInstance;
- (void)captureDiagnosticsForIncident:(id)a3 async:(BOOL)a4;
@end

@implementation DMDiagnostics

+ (id)sharedInstance
{
  if (qword_1000309D8 != -1)
  {
    sub_100012AFC();
  }

  v3 = qword_1000309D0;

  return v3;
}

- (void)captureDiagnosticsForIncident:(id)a3 async:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v14 = v5;
  if (qword_1000309F0 != -1)
  {
    sub_100012B10();
    v5 = v14;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = off_1000309E8;
    if (!off_1000309E8)
    {
      goto LABEL_10;
    }

    v11 = [v5 diagnosticMessage];
    v12 = getpid();
    v13 = v10(v11, 3135167405, v12);

    if ((v13 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = off_1000309E0;
  if (!off_1000309E0 || ([v5 diagnosticMessage], v7 = objc_claimAutoreleasedReturnValue(), v8 = getpid(), v9 = v6(v7, 3135167405, v8), v7, (v9 & 1) == 0))
  {
LABEL_10:
    _DMLogFunc();
  }

LABEL_11:
}

@end
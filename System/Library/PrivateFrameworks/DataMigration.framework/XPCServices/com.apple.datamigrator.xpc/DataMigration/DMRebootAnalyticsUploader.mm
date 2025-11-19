@interface DMRebootAnalyticsUploader
+ (id)_createSubmissionClientWithErrorHandler:(id)a3;
+ (id)createRebootAnalyticsUploaderIfAppropriateWithEnvironment:(id)a3;
- (id)_initWithSubmissionClient:(id)a3;
- (void)start;
- (void)waitForCompletionWithTimeoutTimeInterval:(double)a3;
@end

@implementation DMRebootAnalyticsUploader

+ (id)createRebootAnalyticsUploaderIfAppropriateWithEnvironment:(id)a3
{
  if ([a3 migrationRebootCount] == 1)
  {
    v4 = [a1 _createSubmissionClientWithErrorHandler:&stru_100024740];
    v5 = [[DMRebootAnalyticsUploader alloc] _initWithSubmissionClient:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_createSubmissionClientWithErrorHandler:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_100030970;
  v12 = qword_100030970;
  if (!qword_100030970)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003414;
    v8[3] = &unk_100024790;
    v8[4] = &v9;
    sub_100003414(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [[v4 alloc] initWithErrorHandler:v3];

  return v6;
}

- (id)_initWithSubmissionClient:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DMRebootAnalyticsUploader;
  v5 = [(DMRebootAnalyticsUploader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DMRebootAnalyticsUploader *)v5 setSubmissionClient:v4];
  }

  return v6;
}

- (void)start
{
  [(DMRebootAnalyticsUploader *)self submissionClient];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000326C;
  v8 = block[3] = &unk_100024768;
  v3 = v8;
  v4 = dispatch_block_create(0, block);
  [(DMRebootAnalyticsUploader *)self setSubmissionBlock:v4];

  v5 = dispatch_get_global_queue(25, 0);
  v6 = [(DMRebootAnalyticsUploader *)self submissionBlock];
  dispatch_async(v5, v6);
}

- (void)waitForCompletionWithTimeoutTimeInterval:(double)a3
{
  _DMLogFunc();
  v5 = [(DMRebootAnalyticsUploader *)self submissionBlock];
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  v7 = dispatch_block_wait(v5, v6);

  v8 = [NSNumber numberWithInt:v7 != 0];
  _DMLogFunc();
}

@end
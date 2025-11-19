void sub_100000DF0(uint64_t a1, void *a2)
{
  v3 = [a2 asDictionary];
  v4 = [*(a1 + 32) results];
  [v4 setObject:v3 forKeyedSubscript:@"download"];

  v5 = [*(a1 + 32) pass];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000ED4;
  v7[3] = &unk_100004120;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 startUploadWithCompletion:v7];
}

intptr_t sub_100000ED4(uint64_t a1, void *a2)
{
  v3 = [a2 asDictionary];
  v4 = [*(a1 + 32) results];
  [v4 setObject:v3 forKeyedSubscript:@"upload"];

  [*(a1 + 32) saveResults];
  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}
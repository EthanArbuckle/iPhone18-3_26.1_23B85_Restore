@interface BDSBookWidgetDataSource
+ (id)sharedServiceProxy;
- (void)getBookWidgetDataWithLimit:(int64_t)limit completion:(id)completion;
@end

@implementation BDSBookWidgetDataSource

+ (id)sharedServiceProxy
{
  if (qword_1EE2B04A0 != -1)
  {
    sub_1E4706054();
  }

  v3 = qword_1EE2B04D0;

  return v3;
}

- (void)getBookWidgetDataWithLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  v6 = BDSWidgetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BDSBookWidgetDataSource getBookWidgetDataWithLimit reading file.", buf, 2u);
  }

  v7 = +[BDSBookWidgetDataFile sharedInstance];
  load = [v7 load];
  v9 = BDSWidgetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (load)
  {
    if (v10)
    {
      *v16 = 0;
      _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "BDSBookWidgetDataSource getBookWidgetDataWithLimit - Using saved data", v16, 2u);
    }

    v11 = [load count];
    if (v11 >= limit)
    {
      limitCopy = limit;
    }

    else
    {
      limitCopy = v11;
    }

    v13 = [load subarrayWithRange:{0, limitCopy}];
    v14 = _Block_copy(completionCopy);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, v13, 0);
    }
  }

  else
  {
    if (v10)
    {
      *v17 = 0;
      _os_log_impl(&dword_1E45E0000, v9, OS_LOG_TYPE_DEFAULT, "BDSBookWidgetDataSource getBookWidgetDataWithLimit - Cannot load saved data, calling remote.", v17, 2u);
    }

    v13 = +[BDSBookWidgetDataSource sharedServiceProxy];
    [v13 getBookWidgetDataWithLimit:limit completion:completionCopy];
  }
}

@end
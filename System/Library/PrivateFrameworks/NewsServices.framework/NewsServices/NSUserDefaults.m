@interface NSUserDefaults
+ (id)nanoNewsSyncDefaults;
- (void)nn_synchronizeKeys:(id)a3;
@end

@implementation NSUserDefaults

+ (id)nanoNewsSyncDefaults
{
  if (qword_100016E70 != -1)
  {
    sub_100008EBC();
  }

  v3 = qword_100016E68;

  return v3;
}

- (void)nn_synchronizeKeys:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = qword_100016E78;
  v11 = qword_100016E78;
  if (!qword_100016E78)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100001294;
    v7[3] = &unk_100010380;
    v7[4] = &v8;
    sub_100001294(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = objc_opt_new();
  [v6 synchronizeUserDefaultsDomain:@"com.apple.nanonews.sync" keys:v3];
}

@end
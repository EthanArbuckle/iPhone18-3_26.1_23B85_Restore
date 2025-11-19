@interface GSUserDefaults
+ (id)defaults;
- (BOOL)BOOLForKey:(id)a3 byDefault:(BOOL)a4;
- (GSUserDefaults)init;
- (double)doubleForKey:(id)a3 min:(double)a4 max:(double)a5 byDefault:(double)a6;
- (id)objectForKey:(id)a3 validateWithBlock:(id)a4;
- (int)intForKey:(id)a3 min:(int)a4 max:(int)a5 byDefault:(int)a6;
- (int64_t)longLongForKey:(id)a3 min:(int64_t)a4 max:(int64_t)a5 byDefault:(int64_t)a6;
@end

@implementation GSUserDefaults

+ (id)defaults
{
  if (qword_10004C9D8 != -1)
  {
    sub_100026408();
  }

  v3 = qword_10004C9E0;

  return v3;
}

- (GSUserDefaults)init
{
  v6.receiver = self;
  v6.super_class = GSUserDefaults;
  v2 = [(GSUserDefaults *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)objectForKey:(id)a3 validateWithBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_cache;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v6];
  if (v9)
  {
    v10 = +[NSNull null];

    if (v9 == v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    objc_sync_exit(v8);
  }

  else
  {
    objc_sync_exit(v8);

    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [v12 valueForKey:v6];
    if (v13)
    {
      v14 = sub_100003164();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        v20 = v6;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] user default for %@: %@", &v19, 0x16u);
      }
    }

    if (v7)
    {
      v15 = v7[2](v7, v13);

      v13 = v15;
    }

    v16 = self->_cache;
    objc_sync_enter(v16);
    v17 = v13;
    if (!v13)
    {
      v17 = +[NSNull null];
    }

    [(NSMutableDictionary *)self->_cache setObject:v17 forKeyedSubscript:v6];
    if (!v13)
    {
    }

    objc_sync_exit(v16);

    v9 = v13;
    v11 = v9;
  }

  return v11;
}

- (int)intForKey:(id)a3 min:(int)a4 max:(int)a5 byDefault:(int)a6
{
  v10 = a3;
  if (a4 >= a5)
  {
    sub_10002641C();
  }

  if (a4 > a6)
  {
    sub_100026474();
  }

  if (a6 > a5)
  {
    sub_100026448();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000088A0;
  v15[3] = &unk_100040ED8;
  v17 = a4;
  v18 = a5;
  v16 = v10;
  v19 = a6;
  v11 = v10;
  v12 = [(GSUserDefaults *)self objectForKey:v11 validateWithBlock:v15];
  v13 = [v12 intValue];

  return v13;
}

- (int64_t)longLongForKey:(id)a3 min:(int64_t)a4 max:(int64_t)a5 byDefault:(int64_t)a6
{
  v10 = a3;
  if (a4 >= a5)
  {
    sub_10002653C();
  }

  if (a4 > a6)
  {
    sub_100026594();
  }

  if (a6 > a5)
  {
    sub_100026568();
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100008A9C;
  v18 = &unk_100040F00;
  v19 = v10;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v11 = v10;
  v12 = [(GSUserDefaults *)self objectForKey:v11 validateWithBlock:&v15];
  v13 = [v12 longLongValue];

  return v13;
}

- (double)doubleForKey:(id)a3 min:(double)a4 max:(double)a5 byDefault:(double)a6
{
  v10 = a3;
  if (a4 >= a5)
  {
    sub_100026698();
  }

  if (a4 > a6)
  {
    sub_10002666C();
  }

  if (a6 > a5)
  {
    sub_100026640();
  }

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100008CA4;
  v19 = &unk_100040F00;
  v21 = a4;
  v22 = a5;
  v20 = v10;
  v23 = a6;
  v11 = v10;
  v12 = [(GSUserDefaults *)self objectForKey:v11 validateWithBlock:&v16];
  [v12 doubleValue];
  v14 = v13;

  return v14;
}

- (BOOL)BOOLForKey:(id)a3 byDefault:(BOOL)a4
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100008E54;
  v13 = &unk_100040F28;
  v14 = a3;
  v15 = a4;
  v6 = v14;
  v7 = [(GSUserDefaults *)self objectForKey:v6 validateWithBlock:&v10];
  v8 = [v7 BOOLValue];

  return v8;
}

@end
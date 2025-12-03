@interface GSUserDefaults
+ (id)defaults;
- (BOOL)BOOLForKey:(id)key byDefault:(BOOL)default;
- (GSUserDefaults)init;
- (double)doubleForKey:(id)key min:(double)min max:(double)max byDefault:(double)default;
- (id)objectForKey:(id)key validateWithBlock:(id)block;
- (int)intForKey:(id)key min:(int)min max:(int)max byDefault:(int)default;
- (int64_t)longLongForKey:(id)key min:(int64_t)min max:(int64_t)max byDefault:(int64_t)default;
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

- (id)objectForKey:(id)key validateWithBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v8 = self->_cache;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:keyCopy];
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
    v13 = [v12 valueForKey:keyCopy];
    if (v13)
    {
      v14 = sub_100003164();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        v20 = keyCopy;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] user default for %@: %@", &v19, 0x16u);
      }
    }

    if (blockCopy)
    {
      v15 = blockCopy[2](blockCopy, v13);

      v13 = v15;
    }

    v16 = self->_cache;
    objc_sync_enter(v16);
    v17 = v13;
    if (!v13)
    {
      v17 = +[NSNull null];
    }

    [(NSMutableDictionary *)self->_cache setObject:v17 forKeyedSubscript:keyCopy];
    if (!v13)
    {
    }

    objc_sync_exit(v16);

    v9 = v13;
    v11 = v9;
  }

  return v11;
}

- (int)intForKey:(id)key min:(int)min max:(int)max byDefault:(int)default
{
  keyCopy = key;
  if (min >= max)
  {
    sub_10002641C();
  }

  if (min > default)
  {
    sub_100026474();
  }

  if (default > max)
  {
    sub_100026448();
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000088A0;
  v15[3] = &unk_100040ED8;
  minCopy = min;
  maxCopy = max;
  v16 = keyCopy;
  defaultCopy = default;
  v11 = keyCopy;
  v12 = [(GSUserDefaults *)self objectForKey:v11 validateWithBlock:v15];
  intValue = [v12 intValue];

  return intValue;
}

- (int64_t)longLongForKey:(id)key min:(int64_t)min max:(int64_t)max byDefault:(int64_t)default
{
  keyCopy = key;
  if (min >= max)
  {
    sub_10002653C();
  }

  if (min > default)
  {
    sub_100026594();
  }

  if (default > max)
  {
    sub_100026568();
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100008A9C;
  v18 = &unk_100040F00;
  v19 = keyCopy;
  minCopy = min;
  maxCopy = max;
  defaultCopy = default;
  v11 = keyCopy;
  v12 = [(GSUserDefaults *)self objectForKey:v11 validateWithBlock:&v15];
  longLongValue = [v12 longLongValue];

  return longLongValue;
}

- (double)doubleForKey:(id)key min:(double)min max:(double)max byDefault:(double)default
{
  keyCopy = key;
  if (min >= max)
  {
    sub_100026698();
  }

  if (min > default)
  {
    sub_10002666C();
  }

  if (default > max)
  {
    sub_100026640();
  }

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100008CA4;
  v19 = &unk_100040F00;
  minCopy = min;
  maxCopy = max;
  v20 = keyCopy;
  defaultCopy = default;
  v11 = keyCopy;
  v12 = [(GSUserDefaults *)self objectForKey:v11 validateWithBlock:&v16];
  [v12 doubleValue];
  v14 = v13;

  return v14;
}

- (BOOL)BOOLForKey:(id)key byDefault:(BOOL)default
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100008E54;
  v13 = &unk_100040F28;
  keyCopy = key;
  defaultCopy = default;
  v6 = keyCopy;
  v7 = [(GSUserDefaults *)self objectForKey:v6 validateWithBlock:&v10];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

@end
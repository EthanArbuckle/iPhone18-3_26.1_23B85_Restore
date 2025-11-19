@interface IDSAsyncMapper
+ (void)mapArray:(id)a3 onQueue:(id)a4 withBlock:(id)a5 completion:(id)a6 onQueue:(id)a7;
+ (void)mapArray:(id)a3 withBlock:(id)a4 completion:(id)a5 onQueue:(id)a6;
+ (void)mapDictionary:(id)a3 onQueue:(id)a4 withBlock:(id)a5 completion:(id)a6 onQueue:(id)a7;
+ (void)mapDictionary:(id)a3 withBlock:(id)a4 completion:(id)a5 onQueue:(id)a6;
@end

@implementation IDSAsyncMapper

+ (void)mapArray:(id)a3 withBlock:(id)a4 completion:(id)a5 onQueue:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = sub_1005B4778();
  [a1 mapArray:v13 onQueue:v14 withBlock:v12 completion:v11 onQueue:v10];
}

+ (void)mapArray:(id)a3 onQueue:(id)a4 withBlock:(id)a5 completion:(id)a6 onQueue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    v24 = a1;
    v17 = objc_alloc_init(NSMutableArray);
    v18 = objc_alloc_init(NSMutableDictionary);
    if ([v12 count])
    {
      v19 = 0;
      do
      {
        v20 = +[NSNull null];
        [v17 addObject:v20];

        v21 = [v12 objectAtIndexedSubscript:v19];
        v22 = [NSNumber numberWithUnsignedInteger:v19];
        [v18 setObject:v21 forKey:v22];

        ++v19;
      }

      while (v19 < [v12 count]);
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1005B4A0C;
    v28[3] = &unk_100BE0EF8;
    v29 = v14;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1005B4A24;
    v25[3] = &unk_100BD94B8;
    v26 = v17;
    v27 = v15;
    v23 = v17;
    [v24 mapDictionary:v18 onQueue:v13 withBlock:v28 completion:v25 onQueue:v16];
  }
}

+ (void)mapDictionary:(id)a3 withBlock:(id)a4 completion:(id)a5 onQueue:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = sub_1005B4778();
  [a1 mapDictionary:v13 onQueue:v14 withBlock:v12 completion:v11 onQueue:v10];
}

+ (void)mapDictionary:(id)a3 onQueue:(id)a4 withBlock:(id)a5 completion:(id)a6 onQueue:(id)a7
{
  v11 = a3;
  v12 = a4;
  v32 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v12)
  {
    queue = v14;
    v30 = v13;
    v16 = dispatch_group_create();
    v17 = objc_alloc_init(NSMutableDictionary);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = v11;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v43 + 1) + 8 * i);
          v24 = [v18 objectForKeyedSubscript:v23];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1005B4EF8;
          block[3] = &unk_100BE0F48;
          v25 = v16;
          v37 = v25;
          v42 = v32;
          v38 = v23;
          v39 = v24;
          v26 = v12;
          v40 = v26;
          v41 = v17;
          v27 = v24;
          dispatch_group_async(v25, v26, block);
        }

        v20 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v20);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1005B5128;
    v33[3] = &unk_100BD7298;
    v13 = v30;
    v34 = v17;
    v35 = v30;
    v28 = v17;
    v15 = queue;
    dispatch_group_notify(v16, queue, v33);

    v11 = v31;
  }
}

@end
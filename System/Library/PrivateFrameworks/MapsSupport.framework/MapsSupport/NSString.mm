@interface NSString
- (id)_maps_prefixMatchesForSearchString:(id)string;
@end

@implementation NSString

- (id)_maps_prefixMatchesForSearchString:(id)string
{
  stringCopy = string;
  v5 = +[NSMutableArray array];
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableArray array];
  v8 = [stringCopy length];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000281DC;
  v44[3] = &unk_1000860A8;
  v9 = v7;
  v45 = v9;
  [stringCopy enumerateSubstringsInRange:0 options:v8 usingBlock:{1027, v44}];
  v10 = +[NSMutableArray array];
  v11 = [(NSString *)self length];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000281E8;
  v42[3] = &unk_1000860A8;
  v12 = v10;
  v43 = v12;
  [(NSString *)self enumerateSubstringsInRange:0 options:v11 usingBlock:1027, v42];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v9;
  v33 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v33)
  {
    v31 = v5;
    v32 = *v39;
    context = v6;
    v28 = stringCopy;
    v30 = v12;
    while (1)
    {
      v13 = 0;
LABEL_4:
      if (*v39 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v38 + 1) + 8 * v13);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = [v12 copy];
      v16 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = *v35;
LABEL_8:
      v19 = 0;
      while (1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * v19);
        v21 = [v20 objectAtIndexedSubscript:0];
        v22 = [v20 objectAtIndexedSubscript:1];
        rangeValue = [v22 rangeValue];

        if (![v21 localizedStandardRangeOfString:v14])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v17)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      v24 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", rangeValue, [v14 length]);
      v5 = v31;
      [v31 addObject:v24];

      v12 = v30;
      [v30 removeObject:v20];

      if (++v13 != v33)
      {
        goto LABEL_4;
      }

      v6 = context;
      stringCopy = v28;
      v33 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (!v33)
      {
        goto LABEL_17;
      }
    }

LABEL_18:

    objc_autoreleasePoolPop(context);
    v25 = 0;
    stringCopy = v28;
    v5 = v31;
  }

  else
  {
LABEL_17:

    objc_autoreleasePoolPop(v6);
    v25 = v5;
  }

  return v25;
}

@end
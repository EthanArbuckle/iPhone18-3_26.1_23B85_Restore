@interface IDSMMLBuilder
+ (id)mmlsFromAggregates:(id)a3 service:(id)a4 sendMode:(id)a5 guid:(id)a6;
@end

@implementation IDSMMLBuilder

+ (id)mmlsFromAggregates:(id)a3 service:(id)a4 sendMode:(id)a5 guid:(id)a6
{
  v9 = a3;
  v29 = a4;
  v28 = a5;
  v10 = a6;
  v11 = objc_alloc_init(NSMutableArray);
  v12 = [v9 firstObject];
  v13 = [v12 maxSize];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v31;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        if ([v11 count] && (objc_msgSend(v11, "lastObject"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "hasSpaceForAggregateMessage:", v19), v20, v21))
        {
          v22 = [v11 lastObject];
          [(IDSMMLMessage *)v22 addAggregateMessage:v19];
        }

        else
        {
          ++v16;
          v22 = [[IDSMMLMessage alloc] initWithSendMode:v28 topic:v29 maxSize:v13];
          [(IDSMMLMessage *)v22 addAggregateMessage:v19];
          v23 = [NSNumber numberWithInteger:v16];
          [(IDSMMLMessage *)v22 setChunkNumber:v23];

          [(IDSMMLMessage *)v22 setIdentifier:v10];
          [v11 addObject:v22];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v15);
  }

  v24 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v11 count];
    *buf = 138413058;
    v35 = v10;
    v36 = 2048;
    v37 = v25;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Finished creating MMLs { mmlGUID : %@ count : %ld service : %@ sendMode : %@ }", buf, 0x2Au);
  }

  return v11;
}

@end
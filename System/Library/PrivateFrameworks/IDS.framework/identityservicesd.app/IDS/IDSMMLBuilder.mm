@interface IDSMMLBuilder
+ (id)mmlsFromAggregates:(id)aggregates service:(id)service sendMode:(id)mode guid:(id)guid;
@end

@implementation IDSMMLBuilder

+ (id)mmlsFromAggregates:(id)aggregates service:(id)service sendMode:(id)mode guid:(id)guid
{
  aggregatesCopy = aggregates;
  serviceCopy = service;
  modeCopy = mode;
  guidCopy = guid;
  v11 = objc_alloc_init(NSMutableArray);
  firstObject = [aggregatesCopy firstObject];
  maxSize = [firstObject maxSize];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = aggregatesCopy;
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
          lastObject = [v11 lastObject];
          [(IDSMMLMessage *)lastObject addAggregateMessage:v19];
        }

        else
        {
          ++v16;
          lastObject = [[IDSMMLMessage alloc] initWithSendMode:modeCopy topic:serviceCopy maxSize:maxSize];
          [(IDSMMLMessage *)lastObject addAggregateMessage:v19];
          v23 = [NSNumber numberWithInteger:v16];
          [(IDSMMLMessage *)lastObject setChunkNumber:v23];

          [(IDSMMLMessage *)lastObject setIdentifier:guidCopy];
          [v11 addObject:lastObject];
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
    v35 = guidCopy;
    v36 = 2048;
    v37 = v25;
    v38 = 2112;
    v39 = serviceCopy;
    v40 = 2112;
    v41 = modeCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Finished creating MMLs { mmlGUID : %@ count : %ld service : %@ sendMode : %@ }", buf, 0x2Au);
  }

  return v11;
}

@end
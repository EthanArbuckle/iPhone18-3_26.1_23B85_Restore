@interface BLEvaluatorDownload
+ (id)copyEvaluatorDownloadForDownloadMetadataArray:(id)array logKey:(id)key;
+ (id)copyEvaluatorDownloadForPurchaseResponse:(id)response storeIdentifiersToDownload:(id)download;
+ (id)copyEvaluatorDownloadWithParameters:(id)parameters;
+ (id)formatSize:(unint64_t)size;
@end

@implementation BLEvaluatorDownload

+ (id)formatSize:(unint64_t)size
{
  if (size - 1000001 <= 0x3B8B87BE)
  {
    size = (round(size / 1000000.0) * 1000000.0);
  }

  if (size >= 0x3B9ACA01)
  {
    size = (round(size / 100000000.0) * 100000000.0);
  }

  return [NSByteCountFormatter stringFromByteCount:size countStyle:2];
}

+ (id)copyEvaluatorDownloadForPurchaseResponse:(id)response storeIdentifiersToDownload:(id)download
{
  selfCopy = self;
  responseCopy = response;
  downloadCopy = download;
  v7 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = responseCopy;
  purchaseResponseItems = [responseCopy purchaseResponseItems];
  v9 = [purchaseResponseItems countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(purchaseResponseItems);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        v14 = [BLDownloadMetadata alloc];
        item = [v13 item];
        v16 = [v14 initWithDictionary:item];

        if (!downloadCopy || (+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 itemIdentifier]), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(downloadCopy, "containsObject:", v17), v17, v18))
        {
          [v7 addObject:{v16, selfCopy}];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [purchaseResponseItems countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  logUUID = [v23 logUUID];
  v20 = [selfCopy copyEvaluatorDownloadForDownloadMetadataArray:v7 logKey:logUUID];

  return v20;
}

+ (id)copyEvaluatorDownloadForDownloadMetadataArray:(id)array logKey:(id)key
{
  arrayCopy = array;
  keyCopy = key;
  firstObject = [arrayCopy firstObject];
  isAutomaticDownload = [firstObject isAutomaticDownload];
  kind = [firstObject kind];
  collectionName = [firstObject collectionName];
  v10 = collectionName;
  if (collectionName)
  {
    title = collectionName;
  }

  else
  {
    title = [firstObject title];
  }

  v12 = title;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = arrayCopy;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v24;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v13);
        }

        bl_assetFileSize = [*(*(&v23 + 1) + 8 * i) bl_assetFileSize];
        v16 += [bl_assetFileSize unsignedLongValue];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v20 = objc_alloc_init(BLEvaluatorDownload);
  [(BLEvaluatorDownload *)v20 setAutomatic:isAutomaticDownload];
  [(BLEvaluatorDownload *)v20 setBytes:v16];
  [(BLEvaluatorDownload *)v20 setKind:kind];
  [(BLEvaluatorDownload *)v20 setLogKey:keyCopy];
  [(BLEvaluatorDownload *)v20 setName:v12];
  [(BLEvaluatorDownload *)v20 setRemaining:0];

  return v20;
}

+ (id)copyEvaluatorDownloadWithParameters:(id)parameters
{
  parametersCopy = parameters;
  title = [parametersCopy title];
  fileSize = [parametersCopy fileSize];
  v6 = objc_alloc_init(BLEvaluatorDownload);
  isAutomaticDownload = [parametersCopy isAutomaticDownload];
  if ([isAutomaticDownload BOOLValue])
  {
    [(BLEvaluatorDownload *)v6 setAutomatic:1];
  }

  else
  {
    isRestore = [parametersCopy isRestore];
    -[BLEvaluatorDownload setAutomatic:](v6, "setAutomatic:", [isRestore BOOLValue]);
  }

  [(BLEvaluatorDownload *)v6 setBytes:fileSize];
  kind = [parametersCopy kind];
  [(BLEvaluatorDownload *)v6 setKind:kind];

  downloadID = [parametersCopy downloadID];
  [(BLEvaluatorDownload *)v6 setLogKey:downloadID];

  [(BLEvaluatorDownload *)v6 setName:title];
  [(BLEvaluatorDownload *)v6 setRemaining:0];

  return v6;
}

@end
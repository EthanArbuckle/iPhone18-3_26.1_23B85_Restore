@interface BLEvaluatorDownload
+ (id)copyEvaluatorDownloadForDownloadMetadataArray:(id)a3 logKey:(id)a4;
+ (id)copyEvaluatorDownloadForPurchaseResponse:(id)a3 storeIdentifiersToDownload:(id)a4;
+ (id)copyEvaluatorDownloadWithParameters:(id)a3;
+ (id)formatSize:(unint64_t)a3;
@end

@implementation BLEvaluatorDownload

+ (id)formatSize:(unint64_t)a3
{
  if (a3 - 1000001 <= 0x3B8B87BE)
  {
    a3 = (round(a3 / 1000000.0) * 1000000.0);
  }

  if (a3 >= 0x3B9ACA01)
  {
    a3 = (round(a3 / 100000000.0) * 100000000.0);
  }

  return [NSByteCountFormatter stringFromByteCount:a3 countStyle:2];
}

+ (id)copyEvaluatorDownloadForPurchaseResponse:(id)a3 storeIdentifiersToDownload:(id)a4
{
  v22 = a1;
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = v5;
  v8 = [v5 purchaseResponseItems];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        v14 = [BLDownloadMetadata alloc];
        v15 = [v13 item];
        v16 = [v14 initWithDictionary:v15];

        if (!v6 || (+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v16 itemIdentifier]), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v6, "containsObject:", v17), v17, v18))
        {
          [v7 addObject:{v16, v22}];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [v23 logUUID];
  v20 = [v22 copyEvaluatorDownloadForDownloadMetadataArray:v7 logKey:v19];

  return v20;
}

+ (id)copyEvaluatorDownloadForDownloadMetadataArray:(id)a3 logKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 firstObject];
  v22 = [v7 isAutomaticDownload];
  v8 = [v7 kind];
  v9 = [v7 collectionName];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v7 title];
  }

  v12 = v11;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v5;
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

        v19 = [*(*(&v23 + 1) + 8 * i) bl_assetFileSize];
        v16 += [v19 unsignedLongValue];
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
  [(BLEvaluatorDownload *)v20 setAutomatic:v22];
  [(BLEvaluatorDownload *)v20 setBytes:v16];
  [(BLEvaluatorDownload *)v20 setKind:v8];
  [(BLEvaluatorDownload *)v20 setLogKey:v6];
  [(BLEvaluatorDownload *)v20 setName:v12];
  [(BLEvaluatorDownload *)v20 setRemaining:0];

  return v20;
}

+ (id)copyEvaluatorDownloadWithParameters:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = [v3 fileSize];
  v6 = objc_alloc_init(BLEvaluatorDownload);
  v7 = [v3 isAutomaticDownload];
  if ([v7 BOOLValue])
  {
    [(BLEvaluatorDownload *)v6 setAutomatic:1];
  }

  else
  {
    v8 = [v3 isRestore];
    -[BLEvaluatorDownload setAutomatic:](v6, "setAutomatic:", [v8 BOOLValue]);
  }

  [(BLEvaluatorDownload *)v6 setBytes:v5];
  v9 = [v3 kind];
  [(BLEvaluatorDownload *)v6 setKind:v9];

  v10 = [v3 downloadID];
  [(BLEvaluatorDownload *)v6 setLogKey:v10];

  [(BLEvaluatorDownload *)v6 setName:v4];
  [(BLEvaluatorDownload *)v6 setRemaining:0];

  return v6;
}

@end
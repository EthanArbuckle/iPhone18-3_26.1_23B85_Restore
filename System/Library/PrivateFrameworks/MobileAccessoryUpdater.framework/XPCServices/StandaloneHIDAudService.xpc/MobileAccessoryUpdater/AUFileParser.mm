@interface AUFileParser
+ (id)loadParsersFromFWDirectory:(id)a3 logHandle:(id)a4 productID:(id)a5 equivalentPIDs:(id)a6 errorDomain:(id)a7 STFWFirst:(id)a8 parsers:(id)a9;
- (AUFileParser)initWithFilePath:(id)a3 productID:(id)a4 equivalentPIDs:(id)a5 logHandle:(id)a6 errorDomain:(id)a7 error:(id *)a8;
- (BOOL)personalizationRequired;
- (id)createAFUManifest:(id)a3;
- (id)description;
- (id)getAppleUpdateHeaderField:(unint64_t)a3;
- (id)getFTABDigests;
- (id)getHardwareRevisionID;
@end

@implementation AUFileParser

- (AUFileParser)initWithFilePath:(id)a3 productID:(id)a4 equivalentPIDs:(id)a5 logHandle:(id)a6 errorDomain:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v73.receiver = self;
  v73.super_class = AUFileParser;
  v19 = [(AUFileParser *)&v73 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_logHandle, a6);
    v21 = +[NSFileManager defaultManager];
    v72 = 0;
    if (![v21 fileExistsAtPath:v14 isDirectory:&v72] || v72 == 1)
    {

      v22 = [NSString stringWithFormat:@"Invalid AU file %@", v14];
      if (a8)
      {
        v23 = [NSError alloc];
        v83 = NSLocalizedDescriptionKey;
        v84 = v22;
        v24 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        *a8 = [v23 initWithDomain:v18 code:47 userInfo:v24];
      }

      goto LABEL_18;
    }

    v25 = [v21 attributesOfItemAtPath:v14 error:0];
    v26 = v25;
    if (!v25)
    {

      v20 = [NSString stringWithFormat:@"No file attributes for %@", v14];
      if (!a8)
      {
LABEL_17:

LABEL_18:
        v20 = 0;
        goto LABEL_19;
      }

      v66 = [NSError alloc];
      v81 = NSLocalizedDescriptionKey;
      v82 = v20;
      v30 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v31 = [v66 initWithDomain:v18 code:47 userInfo:v30];
LABEL_13:
      *a8 = v31;

      goto LABEL_17;
    }

    v65 = v25;
    v27 = [v25 objectForKeyedSubscript:NSFileSize];
    v28 = [v27 unsignedLongLongValue];

    if (v28 <= 0x7F)
    {

      v20 = [NSString stringWithFormat:@"%@ has invalid size of %llu bytes", v14, v28];
      if (a8)
      {
        v29 = [NSError alloc];
        v79 = NSLocalizedDescriptionKey;
        v80 = v20;
        v30 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v31 = [v29 initWithDomain:v18 code:5 userInfo:v30];
        v26 = v65;
        goto LABEL_13;
      }

LABEL_16:
      v26 = v65;
      goto LABEL_17;
    }

    v32 = [NSString stringWithString:v14];
    filePath = v20->_filePath;
    v20->_filePath = v32;

    v34 = [NSData dataWithContentsOfFile:v20->_filePath options:1 error:a8];
    payload = v20->_payload;
    v20->_payload = v34;

    if (a8 && *a8)
    {
      goto LABEL_16;
    }

    v63 = a8;
    v64 = v17;

    v37 = [(AUFileParser *)v20 getPID];
    v38 = [v37 intValue];
    v39 = [v15 intValue];

    if (v38 == v39)
    {
      goto LABEL_29;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v40 = v16;
    v41 = [v40 countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v41)
    {
      v42 = v41;
      v61 = v18;
      v62 = v16;
      v67 = v15;
      v43 = 0;
      v44 = *v69;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v69 != v44)
          {
            objc_enumerationMutation(v40);
          }

          v46 = *(*(&v68 + 1) + 8 * i);
          v47 = [(AUFileParser *)v20 getPID];
          v48 = [v47 intValue];
          LOBYTE(v48) = v48 == [v46 intValue];

          v43 |= v48;
        }

        v42 = [v40 countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v42);

      v15 = v67;
      v18 = v61;
      v16 = v62;
      if (v43)
      {
LABEL_29:
        v49 = v16;
        v50 = [(AUFileParser *)v20 headerSignature];
        v51 = [v50 unsignedIntValue];

        if (v51 == 41671)
        {
          v16 = v49;
          v17 = v64;
          goto LABEL_19;
        }

        v52 = [(AUFileParser *)v20 headerSignature];
        v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ has invalid header signature %u", v14, [v52 unsignedIntValue]);

        v53 = v63;
        if (!v63)
        {
          goto LABEL_37;
        }

        v54 = [NSError alloc];
        v74 = NSLocalizedDescriptionKey;
        v75 = v21;
        v55 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v56 = v54;
        v57 = v18;
        v58 = 51;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v49 = v16;
    v59 = [(AUFileParser *)v20 getPID];
    v21 = [NSString stringWithFormat:@"%@ has incorrect product ID %@ instead of %@ or equivalent PIDs %@", v14, v59, v15, v40];

    v53 = v63;
    if (!v63)
    {
LABEL_37:

      v16 = v49;
      v17 = v64;
      goto LABEL_18;
    }

    v60 = [NSError alloc];
    v76 = NSLocalizedDescriptionKey;
    v77 = v21;
    v55 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v56 = v60;
    v57 = v18;
    v58 = 6;
LABEL_36:
    *v53 = [v56 initWithDomain:v57 code:v58 userInfo:v55];

    goto LABEL_37;
  }

LABEL_19:

  return v20;
}

- (id)description
{
  v3 = [(AUFileParser *)self getFirmwareType];
  v4 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v3 unsignedIntValue]);
  v5 = [(AUFileParser *)self getFirmwareVersion];
  v6 = [v5 unsignedIntValue];
  v7 = [(AUFileParser *)self getHardwareRevisionID];
  v8 = [v7 unsignedIntValue];
  v9 = [(AUFileParser *)self getPID];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ version 0x%X HW revision ID 0x%X product ID 0x%X", v4, v6, v8, [v9 unsignedIntValue]);

  return v10;
}

- (id)getAppleUpdateHeaderField:(unint64_t)a3
{
  v7 = 0;
  v4 = [(AUFileParser *)self payload];
  [v4 getBytes:&v7 range:{a3, 2}];

  v5 = [NSNumber numberWithUnsignedShort:v7];

  return v5;
}

- (id)getHardwareRevisionID
{
  v2 = [(AUFileParser *)self getAppleUpdateHeaderField:18];
  if (![v2 intValue])
  {

    v2 = &off_1000269D0;
  }

  return v2;
}

- (BOOL)personalizationRequired
{
  v2 = [(AUFileParser *)self getFirmwareType];
  v3 = [v2 unsignedIntValue] == 112;

  return v3;
}

- (id)getFTABDigests
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(AUFileParser *)self payload];
  v5 = [v4 length];

  if (v5 <= 0xC0)
  {
    v6 = [(AUFileParser *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000150DC(v5, v6);
    }

LABEL_8:

    goto LABEL_9;
  }

  v7 = v5 - 128;
  v8 = [(AUFileParser *)self payload];
  v9 = [v8 subdataWithRange:{128, v7}];
  v10 = [v9 bytes];

  v11 = v10[10];
  if (v7 < 16 * v11 + 64 || [&off_100026B28 count] > v11)
  {
    v6 = [(AUFileParser *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100015064(v11, v6);
    }

    goto LABEL_8;
  }

  if ([&off_100026B28 count])
  {
    v13 = 0;
    v14 = v10 + 14;
    while (v7 >= (*v14 + *(v14 - 1)))
    {
      ccdigest();
      v15 = [NSData dataWithBytes:v17 length:48];
      v16 = [&off_100026B28 objectAtIndexedSubscript:v13];
      [v3 setObject:v15 forKeyedSubscript:v16];

      ++v13;
      v14 += 4;
      if (v13 >= [&off_100026B28 count])
      {
        goto LABEL_9;
      }
    }

    v6 = [(AUFileParser *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100015020(v6);
    }

    goto LABEL_8;
  }

LABEL_9:

  return v3;
}

- (id)createAFUManifest:(id)a3
{
  v4 = a3;
  v5 = [(AUFileParser *)self payload];
  [v5 getBytes:v9 range:{0, 20}];

  v10 = 113;
  v11 = [v4 length];
  v12 = crc32(0, [v4 bytes], objc_msgSend(v4, "length"));
  v6 = [NSMutableData dataWithLength:124];
  [v6 replaceBytesInRange:0 withBytes:{20, v9}];
  v8 = crc32(0, [v6 bytes], objc_msgSend(v6, "length"));
  [v6 appendBytes:&v8 length:4];
  [v6 appendData:v4];

  return v6;
}

+ (id)loadParsersFromFWDirectory:(id)a3 logHandle:(id)a4 productID:(id)a5 equivalentPIDs:(id)a6 errorDomain:(id)a7 STFWFirst:(id)a8 parsers:(id)a9
{
  v60 = a3;
  v14 = a4;
  v62 = a5;
  v61 = a6;
  v63 = a7;
  v67 = a8;
  v66 = a9;
  oslog = v14;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100015154(v60, v14);
  }

  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = sub_10000B2EC;
  v106 = sub_10000B2FC;
  v107 = 0;
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_10000B304;
  v101[3] = &unk_100024710;
  v101[4] = &v102;
  v59 = objc_retainBlock(v101);
  v15 = +[NSFileManager defaultManager];
  v117[0] = NSURLNameKey;
  v117[1] = NSURLIsDirectoryKey;
  v16 = [NSArray arrayWithObjects:v117 count:2];
  v17 = [v15 enumeratorAtURL:v60 includingPropertiesForKeys:v16 options:4 errorHandler:v59];

  v18 = objc_alloc_init(NSMutableDictionary);
  v70 = objc_alloc_init(NSMutableArray);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v97 objects:v116 count:16];
  if (v19)
  {
    v20 = *v98;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v98 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v97 + 1) + 8 * i);
        v95 = 0;
        v96 = 0;
        v23 = v103;
        [v22 getResourceValue:&v96 forKey:NSURLIsDirectoryKey error:&v95];
        v24 = v96;
        objc_storeStrong(v23 + 5, v95);
        if (v103[5])
        {
          goto LABEL_25;
        }

        if (([v24 BOOLValue] & 1) == 0)
        {
          v93 = 0;
          v94 = 0;
          v25 = v103;
          [v22 getResourceValue:&v94 forKey:NSURLNameKey error:&v93];
          v26 = v94;
          objc_storeStrong(v25 + 5, v93);
          if (v103[5])
          {
            goto LABEL_24;
          }

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v115 = v26;
            _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "loading firmware file %@", buf, 0xCu);
          }

          v27 = [AUFileParser alloc];
          v28 = [v22 path];
          v29 = v103 + 5;
          v92 = v103[5];
          v30 = [(AUFileParser *)v27 initWithFilePath:v28 productID:v62 equivalentPIDs:v61 logHandle:oslog errorDomain:v63 error:&v92];
          objc_storeStrong(v29, v92);

          if (v103[5])
          {

LABEL_24:
LABEL_25:

            goto LABEL_26;
          }

          v31 = [(AUFileParser *)v30 getHardwareRevisionID];
          if ([v31 isEqualToNumber:&off_1000269D0])
          {
            [v70 addObject:v30];
          }

          else
          {
            v32 = [v18 objectForKeyedSubscript:v31];
            if (!v32)
            {
              v32 = objc_alloc_init(NSMutableArray);
              [v18 setObject:v32 forKeyedSubscript:v31];
            }

            [v32 addObject:v30];
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v97 objects:v116 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:

  if ([v70 count])
  {
    v33 = objc_alloc_init(NSMutableArray);
    [v18 setObject:v33 forKeyedSubscript:&off_1000269D0];
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v71 = v70;
  v34 = [v71 countByEnumeratingWithState:&v88 objects:v113 count:16];
  if (v34)
  {
    v35 = *v89;
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v89 != v35)
        {
          objc_enumerationMutation(v71);
        }

        v37 = *(*(&v88 + 1) + 8 * j);
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v38 = v18;
        v39 = [v38 countByEnumeratingWithState:&v84 objects:v112 count:16];
        if (v39)
        {
          v40 = *v85;
          do
          {
            for (k = 0; k != v39; k = k + 1)
            {
              if (*v85 != v40)
              {
                objc_enumerationMutation(v38);
              }

              v42 = [v38 objectForKeyedSubscript:*(*(&v84 + 1) + 8 * k)];
              [v42 addObject:v37];
            }

            v39 = [v38 countByEnumeratingWithState:&v84 objects:v112 count:16];
          }

          while (v39);
        }
      }

      v34 = [v71 countByEnumeratingWithState:&v88 objects:v113 count:16];
    }

    while (v34);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v72 = v18;
  v43 = [v72 countByEnumeratingWithState:&v80 objects:v111 count:16];
  if (v43)
  {
    v65 = *v81;
    do
    {
      v68 = v43;
      for (m = 0; m != v68; m = m + 1)
      {
        if (*v81 != v65)
        {
          objc_enumerationMutation(v72);
        }

        v45 = *(*(&v80 + 1) + 8 * m);
        v46 = [v72 objectForKeyedSubscript:v45];
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v78[2] = sub_10000B330;
        v78[3] = &unk_100024738;
        v79 = v67;
        [v46 sortUsingComparator:v78];
        v73 = v45;
        v47 = [NSMutableString stringWithFormat:@"Devices that report HW Revision ID %@ will receive FW files in the following order:", v45];
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v48 = v46;
        v49 = [v48 countByEnumeratingWithState:&v74 objects:v110 count:16];
        if (v49)
        {
          v50 = *v75;
          do
          {
            for (n = 0; n != v49; n = n + 1)
            {
              if (*v75 != v50)
              {
                objc_enumerationMutation(v48);
              }

              v52 = [*(*(&v74 + 1) + 8 * n) getFirmwareType];
              v53 = +[AUFileParser auTypeString:](AUFileParser, "auTypeString:", [v52 unsignedIntValue]);
              [v47 appendFormat:@" %@", v53];
            }

            v49 = [v48 countByEnumeratingWithState:&v74 objects:v110 count:16];
          }

          while (v49);
        }

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v115 = v47;
          _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        [v66 setObject:v48 forKeyedSubscript:v73];
      }

      v43 = [v72 countByEnumeratingWithState:&v80 objects:v111 count:16];
    }

    while (v43);
  }

  v54 = v103[5];
  if (v54)
  {
    goto LABEL_61;
  }

  if ([v66 count])
  {
    v54 = v103[5];
LABEL_61:
    v55 = v54;
    goto LABEL_62;
  }

  v57 = [NSError alloc];
  v108 = NSLocalizedDescriptionKey;
  v109 = @"No assets found";
  v58 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
  v55 = [v57 initWithDomain:v63 code:3 userInfo:v58];

LABEL_62:
  _Block_object_dispose(&v102, 8);

  return v55;
}

@end
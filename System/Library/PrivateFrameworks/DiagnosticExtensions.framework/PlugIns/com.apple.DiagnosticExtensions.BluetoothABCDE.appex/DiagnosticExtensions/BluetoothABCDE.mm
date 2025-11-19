@interface BluetoothABCDE
- (BOOL)shouldAllowCoreCapture;
- (id)attachmentsForParameters:(id)a3;
- (id)getFilesAtPathSortedByModificationDate:(id)a3 numberOfFirstNFiles:(int)a4;
@end

@implementation BluetoothABCDE

- (id)attachmentsForParameters:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ([v4 isEqualToString:@"com.apple.symptomsd"])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BluetoothABCDE: DiagnosticExtension for AutoBugCapture launched.", buf, 2u);
    }

    v5 = [NSRegularExpression regularExpressionWithPattern:@"bluetoothd-hci.*.pklg" options:1 error:0];
    v6 = [NSRegularExpression regularExpressionWithPattern:@"bluetoothd-FWCOREDUMP.*.log" options:1 error:0];
    v7 = [NSRegularExpression regularExpressionWithPattern:@"bluetoothd-UART.*.log" options:1 error:0];
    v8 = +[NSMutableArray array];
    v9 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/Bluetooth"];
    v52 = v6;
    v10 = [(BluetoothABCDE *)self filesInDir:v9 matchingPattern:v6 excludingPattern:0];
    [v8 addObjectsFromArray:v10];

    v11 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/Bluetooth"];
    v51 = v7;
    v12 = [(BluetoothABCDE *)self filesInDir:v11 matchingPattern:v7 excludingPattern:0];
    v60 = v8;
    [v8 addObjectsFromArray:v12];

    v13 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/Bluetooth"];
    v53 = v5;
    v14 = [(BluetoothABCDE *)self filesInDir:v13 matchingPattern:v5 excludingPattern:0];

    v15 = [(BluetoothABCDE *)self getFilesAtPathSortedByModificationDate:v14 numberOfFirstNFiles:2];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v15;
    v16 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v71;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v71 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v70 + 1) + 8 * i);
          v21 = [v20 filesize];
          v22 = [v21 unsignedIntegerValue];

          if (v22 <= 0x4C5054)
          {
            [v8 addObject:v20];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v17);
    }

    if ([(BluetoothABCDE *)self shouldAllowCoreCapture])
    {
      v50 = v4;
      v23 = [NSURL fileURLWithPath:@"/Library/Logs/CrashReporter/CoreCapture/BT"];
      v78[0] = v23;
      v24 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/CoreCapture/BT"];
      v78[1] = v24;
      v25 = [NSURL fileURLWithPath:@"/Library/Logs/CrashReporter/CoreCapture/MultiFunctionManager"];
      v78[2] = v25;
      v26 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/CoreCapture/MultiFunctionManager"];
      v78[3] = v26;
      v27 = [NSURL fileURLWithPath:@"/var/log/CoreCapture/com.apple.driver.AppleMarconiBTDriver"];
      v78[4] = v27;
      v28 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/CoreCapture/MarconiBT"];
      v78[5] = v28;
      v29 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/CoreCapture/MarconiBT-sysdiagnose"];
      v78[6] = v29;
      v30 = [NSArray arrayWithObjects:v78 count:7];

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v54 = v30;
      v56 = [v54 countByEnumeratingWithState:&v66 objects:v77 count:16];
      if (v56)
      {
        v55 = *v67;
        do
        {
          v31 = 0;
          do
          {
            if (*v67 != v55)
            {
              objc_enumerationMutation(v54);
            }

            v58 = v31;
            v32 = *(*(&v66 + 1) + 8 * v31);
            v33 = +[NSFileManager defaultManager];
            v76[0] = NSURLNameKey;
            v76[1] = NSURLIsDirectoryKey;
            v34 = [NSArray arrayWithObjects:v76 count:2];
            v35 = [v33 enumeratorAtURL:v32 includingPropertiesForKeys:v34 options:5 errorHandler:0];

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v59 = v35;
            v36 = [v59 countByEnumeratingWithState:&v62 objects:v75 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v63;
              do
              {
                for (j = 0; j != v37; j = j + 1)
                {
                  if (*v63 != v38)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v40 = *(*(&v62 + 1) + 8 * j);
                  v61 = 0;
                  [v40 getResourceValue:&v61 forKey:NSURLNameKey error:0];
                  v41 = v61;
                  v42 = [v40 lastPathComponent];
                  v43 = +[NSFileManager defaultManager];
                  v44 = [v40 path];
                  v45 = [v43 attributesOfItemAtPath:v44 error:0];

                  v46 = [v45 fileModificationDate];
                  v47 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v45 fileSize]);
                  v48 = [DEAttachmentItem attachmentWithPath:v40 withDisplayName:v42 modificationDate:v46 andFilesize:v47];

                  [v60 addObject:v48];
                }

                v37 = [v59 countByEnumeratingWithState:&v62 objects:v75 count:16];
              }

              while (v37);
            }

            v31 = v58 + 1;
          }

          while ((v58 + 1) != v56);
          v56 = [v54 countByEnumeratingWithState:&v66 objects:v77 count:16];
        }

        while (v56);
      }

      v4 = v50;
    }
  }

  else
  {
    v60 = &__NSArray0__struct;
  }

  return v60;
}

- (id)getFilesAtPathSortedByModificationDate:(id)a3 numberOfFirstNFiles:(int)a4
{
  v5 = [a3 sortedArrayUsingComparator:&stru_100004160];
  v6 = [v5 count];
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    [v5 subarrayWithRange:0];
  }

  else
  {
    +[NSArray array];
  }
  v8 = ;

  return v8;
}

- (BOOL)shouldAllowCoreCapture
{
  if (qword_1000081E0 != -1)
  {
    sub_10000152C();
  }

  return byte_1000081D8;
}

@end
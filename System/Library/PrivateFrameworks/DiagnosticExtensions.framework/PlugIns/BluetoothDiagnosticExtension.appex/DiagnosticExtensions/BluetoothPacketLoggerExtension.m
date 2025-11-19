@interface BluetoothPacketLoggerExtension
- (BOOL)shouldAllowCoreCapture;
- (id)attachmentsForParameters:(id)a3;
- (id)getFilesAtPathSortedByModificationDate:(id)a3 numberOfFirstNFiles:(int)a4;
@end

@implementation BluetoothPacketLoggerExtension

- (id)attachmentsForParameters:(id)a3
{
  v50 = a3;
  v81 = 0;
  v80 = -1;
  sub_100001B04(buf, "HCITraces");
  sub_100001B04(__p, "UnlimitedHCIFileSize");
  getBoolValue(buf, __p, &v81);
  if (v77 < 0)
  {
    operator delete(__p[0]);
  }

  if (v79 < 0)
  {
    operator delete(*buf);
  }

  sub_100001B04(buf, "HCITraces");
  sub_100001B04(__p, "MaxFileSize");
  IntValue = getIntValue(buf, __p, &v80);
  if (v77 < 0)
  {
    operator delete(__p[0]);
  }

  if (v79 < 0)
  {
    operator delete(*buf);
  }

  v48 = [v50 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ([v48 isEqualToString:@"com.apple.taptoradard"])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BluetoothPacketLoggerExtension: DiagnosticExtension for PacketLogger launched.", buf, 2u);
    }

    v58 = +[NSMutableArray array];
    v46 = [NSRegularExpression regularExpressionWithPattern:@".*SunriseBT_FWLog.*\\.bin$" options:1 error:0];
    v45 = [@"/var/mobile/Library/Logs/Bluetooth" stringByAppendingString:@"/FWlogBackup"];
    v5 = [NSURL fileURLWithPath:?];
    v47 = [(BluetoothPacketLoggerExtension *)self filesInDir:v5 matchingPattern:v46 excludingPattern:0];

    [(BluetoothPacketLoggerExtension *)self getFilesAtPathSortedByModificationDate:v47 numberOfFirstNFiles:30];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    obj = v73 = 0u;
    v6 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
    if (v6)
    {
      v7 = *v73;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v73 != v7)
          {
            objc_enumerationMutation(obj);
          }

          [v58 addObject:*(*(&v72 + 1) + 8 * i)];
        }

        v6 = [obj countByEnumeratingWithState:&v72 objects:v87 count:16];
      }

      while (v6);
    }

    if (v81 && (v80 > 209715200 ? (v9 = IntValue) : (v9 = 0), v9 != 1))
    {
      v42 = [NSRegularExpression regularExpressionWithPattern:@"bluetoothd-hci.*.pklg" options:1 error:0];
      v43 = [NSRegularExpression regularExpressionWithPattern:@"bluetoothd-FWCOREDUMP.*.log" options:1 error:0];
      v44 = [NSRegularExpression regularExpressionWithPattern:@"bluetoothd-UART.*.log" options:1 error:0];
      v10 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/Bluetooth"];
      v11 = [(BluetoothPacketLoggerExtension *)self filesInDir:v10 matchingPattern:v43 excludingPattern:0];
      [v58 addObjectsFromArray:v11];

      v12 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/Bluetooth"];
      v13 = [(BluetoothPacketLoggerExtension *)self filesInDir:v12 matchingPattern:v44 excludingPattern:0];
      [v58 addObjectsFromArray:v13];

      v14 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/Bluetooth"];
      v54 = [(BluetoothPacketLoggerExtension *)self filesInDir:v14 matchingPattern:v42 excludingPattern:0];

      v15 = [(BluetoothPacketLoggerExtension *)self getFilesAtPathSortedByModificationDate:v54 numberOfFirstNFiles:2];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v55 = v15;
      v16 = [v55 countByEnumeratingWithState:&v68 objects:v86 count:16];
      if (v16)
      {
        v17 = *v69;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v69 != v17)
            {
              objc_enumerationMutation(v55);
            }

            v19 = *(*(&v68 + 1) + 8 * j);
            v20 = [v19 filesize];
            v21 = [v20 unsignedIntegerValue] < 0xC800001;

            if (v21)
            {
              [v58 addObject:v19];
            }
          }

          v16 = [v55 countByEnumeratingWithState:&v68 objects:v86 count:16];
        }

        while (v16);
      }

      if ([(BluetoothPacketLoggerExtension *)self shouldAllowCoreCapture])
      {
        v22 = [NSURL fileURLWithPath:@"/Library/Logs/CrashReporter/CoreCapture/BT"];
        v85[0] = v22;
        v23 = [NSURL fileURLWithPath:@"/Library/Logs/CrashReporter/CoreCapture/MultiFunctionManager"];
        v85[1] = v23;
        v24 = [NSArray arrayWithObjects:v85 count:2];

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v49 = v24;
        v52 = [v49 countByEnumeratingWithState:&v64 objects:v84 count:16];
        if (v52)
        {
          v51 = *v65;
          do
          {
            for (k = 0; k != v52; k = k + 1)
            {
              if (*v65 != v51)
              {
                objc_enumerationMutation(v49);
              }

              v25 = *(*(&v64 + 1) + 8 * k);
              v26 = +[NSFileManager defaultManager];
              v83[0] = NSURLNameKey;
              v83[1] = NSURLIsDirectoryKey;
              v27 = [NSArray arrayWithObjects:v83 count:2];
              v28 = [v26 enumeratorAtURL:v25 includingPropertiesForKeys:v27 options:5 errorHandler:0];

              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v57 = v28;
              v29 = [v57 countByEnumeratingWithState:&v60 objects:v82 count:16];
              if (v29)
              {
                v30 = *v61;
                do
                {
                  for (m = 0; m != v29; m = m + 1)
                  {
                    if (*v61 != v30)
                    {
                      objc_enumerationMutation(v57);
                    }

                    v32 = *(*(&v60 + 1) + 8 * m);
                    v59 = 0;
                    [v32 getResourceValue:&v59 forKey:NSURLNameKey error:0];
                    v33 = v59;
                    v34 = [v32 lastPathComponent];
                    v35 = +[NSFileManager defaultManager];
                    v36 = [v32 path];
                    v37 = [v35 attributesOfItemAtPath:v36 error:0];

                    v38 = [v37 fileModificationDate];
                    v39 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v37 fileSize]);
                    v40 = [DEAttachmentItem attachmentWithPath:v32 withDisplayName:v34 modificationDate:v38 andFilesize:v39];

                    [v58 addObject:v40];
                  }

                  v29 = [v57 countByEnumeratingWithState:&v60 objects:v82 count:16];
                }

                while (v29);
              }
            }

            v52 = [v49 countByEnumeratingWithState:&v64 objects:v84 count:16];
          }

          while (v52);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "UnlimitedHCIFileSize is not enabled or maxFileSize is less than 200MB. Returning only fwlogs if there are any. Exiting.", buf, 2u);
    }
  }

  else
  {
    v58 = &__NSArray0__struct;
  }

  return v58;
}

- (id)getFilesAtPathSortedByModificationDate:(id)a3 numberOfFirstNFiles:(int)a4
{
  v5 = [a3 sortedArrayUsingComparator:&stru_100004210];
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
  if (qword_100008208 != -1)
  {
    sub_100001F04();
  }

  return byte_100008200;
}

@end
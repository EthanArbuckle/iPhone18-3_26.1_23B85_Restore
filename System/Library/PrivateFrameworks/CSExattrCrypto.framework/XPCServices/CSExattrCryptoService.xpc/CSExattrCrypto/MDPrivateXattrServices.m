@interface MDPrivateXattrServices
+ (id)defaultServices;
- (id)copyPrivateXattrsDictionary:(id)a3 cryptoCallback:(id)a4;
- (id)copyPrivateXattrsFromData:(id)a3 decryptedXids:(id *)a4;
- (id)decryptDataArrayWithCryptoCallback:(id)a3 dataArray:(id)a4 existingXIDArray:(id)a5 uuids:(id)a6 xpc_uuids:(id)a7 xids:(id)a8 decrypted:(id *)a9;
- (id)xidDictWithUUIDs:(id)a3 allKeyUUIDs:(id)a4;
- (id)xidDictWithUUIDs:(id)a3 fromKeyRing:(id)a4;
- (id)xidDictWithXPCUUIDs:(id)a3 allKeyUUIDs:(id)a4;
- (void)_restoreAttributesFromDictionary:(id)a3 intoDictionary:(id)a4;
- (void)_restoreAttributesFromPlistBytes:(id)a3 intoDictionary:(id)a4;
- (void)digestUUIDBytesWithKey:(id)a3 forUUID:(id)a4 uuidBytes:(unsigned __int8)a5[16];
- (void)digestUUIDBytesWithKey:(id)a3 forXPCUUID:(id)a4 uuidBytes:(unsigned __int8)a5[16];
- (void)extractDecryptedDataWith:(id)a3 cryptoCallback:(id)a4 decryptableXids:(id)a5 intoDict:(id)a6 keyRing:(id)a7 xid:(id)a8;
- (void)updatePrivateXattrParams:(id)a3 flags:(unint64_t)a4 forFileDescriptor:(int)a5 mergeCallback:(id)a6 completionHandler:(id)a7;
@end

@implementation MDPrivateXattrServices

+ (id)defaultServices
{
  if (qword_10001A1C0 != -1)
  {
    sub_10000CC1C();
  }

  return qword_10001A1C8;
}

- (void)_restoreAttributesFromDictionary:(id)a3 intoDictionary:(id)a4
{
  v6 = [a3 objectForKey:@"uuid"];
  v7 = [a3 objectForKey:@"keys"];
  v8 = [a3 objectForKey:@"values"];
  if (v6 != CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x71u, 0x9Fu, 0xB8u, 0xCAu, 0x18u, 0x13u, 0x49u, 0xB0u, 0x8Bu, 0x20u, 0x36u, 0x5Eu, 0xEBu, 0xC3u, 0xEDu, 0x57u))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006DB0;
    v9[3] = &unk_100014D10;
    v9[4] = a4;
    v9[5] = v8;
    [v7 enumerateObjectsUsingBlock:v9];
  }
}

- (void)_restoreAttributesFromPlistBytes:(id)a3 intoDictionary:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006E68;
  v4[3] = &unk_100014D10;
  v4[4] = self;
  v4[5] = a4;
  [a3 enumerateObjectsUsingBlock:v4];
}

- (id)xidDictWithUUIDs:(id)a3 fromKeyRing:(id)a4
{
  v6 = [NSMutableDictionary dictionaryWithCapacity:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [a4 allKeyUUIDs];
  v17 = [obj countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v17)
  {
    v16 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(obj);
        }

        if (a3)
        {
          v8 = *(*(&v18 + 1) + 8 * v7);
          count = xpc_array_get_count(a3);
          if (count)
          {
            v10 = count;
            for (i = 0; i != v10; ++i)
            {
              uuid = xpc_array_get_uuid(a3, i);
              if (uuid)
              {
                memset(v25, 0, sizeof(v25));
                v26 = 0;
                v24 = 0uLL;
                v24 = *uuid;
                v13 = [[NSUUID alloc] initWithUUIDBytes:&v24];
                v22 = 0;
                v23 = 0;
                [a4 digestUUIDBytesWithKey:v8 forUUID:v13 uuidBytes:&v22];
                _MDLabelUUIDEncode(v22, v23, v25);
                [(NSMutableDictionary *)v6 setObject:v8 forKey:[NSString stringWithFormat:@"com.apple.metadata.%s", v25]];
              }
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v7 != v17);
      v17 = [obj countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v17);
  }

  return v6;
}

- (id)decryptDataArrayWithCryptoCallback:(id)a3 dataArray:(id)a4 existingXIDArray:(id)a5 uuids:(id)a6 xpc_uuids:(id)a7 xids:(id)a8 decrypted:(id *)a9
{
  v16 = [a5 count];
  if (v16 != [a4 count])
  {
    return 0;
  }

  v31 = a3;
  v17 = objc_alloc_init(NSMutableDictionary);
  v18 = +[MDKeyRing defaultKeyRing];
  v19 = objc_alloc_init(NSMutableDictionary);
  v32 = v18;
  if (a7)
  {
    v20 = -[MDPrivateXattrServices xidDictWithXPCUUIDs:allKeyUUIDs:](self, "xidDictWithXPCUUIDs:allKeyUUIDs:", a7, [v18 allKeyUUIDs]);
    a7 = v20;
    if (!a6)
    {
LABEL_10:
      if (v16)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  v21 = -[MDPrivateXattrServices xidDictWithUUIDs:allKeyUUIDs:](self, "xidDictWithUUIDs:allKeyUUIDs:", a6, [v32 allKeyUUIDs]);
  a7 = v21;
  if (!v20)
  {
    goto LABEL_10;
  }

  if (v21)
  {
    v22 = [v20 mutableCopy];
    [v22 addEntriesFromDictionary:a7];
    a7 = v22;
    goto LABEL_10;
  }

  a7 = v20;
  if (v16)
  {
LABEL_11:
    for (i = 0; i != v16; ++i)
    {
      v24 = [a5 objectAtIndex:i];
      if ([a7 objectForKey:v24])
      {
        [v19 setObject:objc_msgSend(a4 forKey:{"objectAtIndex:", i), v24}];
      }
    }
  }

LABEL_15:
  if ([v19 count])
  {
    if (a9)
    {
      *a9 = [v19 allKeys];
    }

    if (a8)
    {
      count = xpc_array_get_count(a8);
      v26 = [[NSMutableArray alloc] initWithCapacity:count];
      if (count)
      {
        for (j = 0; j != count; ++j)
        {
          string = xpc_array_get_string(a8, j);
          if (string)
          {
            v29 = [[NSString alloc] initWithCString:string encoding:4];
            [v26 addObject:v29];
          }

          else
          {
            NSLog(@"Nil xid_string");
          }
        }
      }

      [(MDPrivateXattrServices *)self extractDecryptedDataWith:v19 cryptoCallback:v31 decryptableXids:a7 intoDict:v17 keyRing:v32 xid:v26];
    }

    else
    {
      [(MDPrivateXattrServices *)self extractDecryptedDataWith:v19 cryptoCallback:v31 decryptableXids:a7 intoDict:v17 keyRing:v32 xid:a5];
    }
  }

  return v17;
}

- (void)extractDecryptedDataWith:(id)a3 cryptoCallback:(id)a4 decryptableXids:(id)a5 intoDict:(id)a6 keyRing:(id)a7 xid:(id)a8
{
  v8 = a8;
  v64 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a8, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v12 = [v8 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v12)
  {
    v13 = v12;
    v71 = *v77;
    v62 = a7;
    v63 = v8;
    v65 = a3;
    v66 = a5;
    do
    {
      v14 = 0;
      v67 = v13;
      do
      {
        if (*v77 != v71)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v76 + 1) + 8 * v14);
        v16 = [a3 objectForKey:v15];
        if (!v16)
        {
          NSLog(@"Don't know how to decrypt %@", v15);
        }

        v17 = [a5 objectForKey:v15];
        if (!v17)
        {
          v18 = [a7 copyDesignatedKeyUUID];
          if (!v16)
          {
            goto LABEL_48;
          }

LABEL_12:
          v19 = [v16 bytes];
          v20 = [v16 length];
          if (v20 < 0xA)
          {
            NSLog(@"Crypted too small to contain header", v58);
          }

          else
          {
            v21 = *v19;
            if (v21 == 242)
            {
              v27 = sub_10000AB64(a4, v19, v18, v19, v20);
              if (v27)
              {
                v28 = v27;
                BytePtr = CFDataGetBytePtr(v27);
                Length = CFDataGetLength(v28);
                if (qword_10001A200 != -1)
                {
                  sub_10000CC30();
                }

                p_cb = &OBJC_PROTOCOL___CSExattrCryptoServiceProtocol.cb;
                v68 = v28;
                v32 = [[NSMutableDictionary alloc] initWithCapacity:0];
                v80 = 0;
                v33 = 0;
                while (v80 < Length)
                {
                  v34 = sub_10000ABF4(BytePtr, &v80, Length);
                  if (v34)
                  {
                    v35 = v34;
                    v36 = sub_10000ABF4(BytePtr, &v80, Length);
                    if (v36)
                    {
                      v37 = v36;
                      if (CFGetTypeID(v35) == *(p_cb + 63))
                      {
                        if (CFEqual(@"mod_date", v35))
                        {
                          v38 = CFGetTypeID(v37);
                          v39 = v38 == CFDateGetTypeID();
                          p_cb = (&OBJC_PROTOCOL___CSExattrCryptoServiceProtocol + 64);
                          if (v39)
                          {
                            v33 = CFRetain(v37);
                          }
                        }

                        else
                        {
                          [v32 setObject:v37 forKey:v35];
                        }
                      }

                      CFRelease(v37);
                    }

                    CFRelease(v35);
                  }
                }

                if (![v32 count])
                {

                  v32 = 0;
                }

                a3 = v65;
                a5 = v66;
                v13 = v67;
                v40 = [v32 allKeys];
                v41 = [v32 allValues];

                if (v40 && v41)
                {
                  v42 = [NSMutableDictionary alloc];
                  if (!v33)
                  {
                    v33 = +[NSDate distantPast];
                  }

                  v32 = [v42 initWithObjectsAndKeys:{v40, @"keys", v41, @"values", v33, @"mod_date", 0}];
                }

                v23 = v68;
                v26 = v32;
                a7 = v62;
                v8 = v63;
                goto LABEL_42;
              }

              NSLog(@"Failed to decrypt private attr with %@", v18);
            }

            else if (v21 == 241)
            {
              v22 = sub_10000AB64(a4, v19, v18, v19, v20);
              if (v22)
              {
                v23 = v22;
                v24 = CFDataGetBytePtr(v22);
                v25 = CFDataGetLength(v23);
                v26 = objc_alloc_init(NSMutableDictionary);
                if (v25 >= 20 && *v24 == 1279345228)
                {
                  v43 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, *(v24 + 4));
                  v44 = v26;
                  v45 = v43;
                  v61 = v44;
                  [v44 setValue:v43 forKey:@"uuid"];
                  CFRelease(v45);
                  v70 = [[NSMutableArray alloc] initWithCapacity:0];
                  v46 = [[NSMutableArray alloc] initWithCapacity:0];
                  if (v25 >= 0x24)
                  {
                    v47 = &v24[v25];
                    v48 = (v24 + 36);
                    v49 = (v24 + 20);
                    do
                    {
                      v50 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, *v49);
                      v51 = 0.0;
                      if (&v49[1].byte8 <= v47)
                      {
                        v51 = *&v48->byte0;
                        v48 = (v49 + 24);
                      }

                      v49 = v48;
                      v52 = CFDateCreate(kCFAllocatorDefault, v51);
                      [v70 addObject:v50];
                      CFRelease(v50);
                      [v46 addObject:v52];
                      CFRelease(v52);
                      ++v48;
                    }

                    while (v48 <= v47);
                  }

                  [v61 setValue:v70 forKey:@"keys"];

                  [v61 setValue:v46 forKey:@"values"];
                  v26 = v61;
                  a7 = v62;
                  v8 = v63;
                  a3 = v65;
                  a5 = v66;
                  v13 = v67;
                }

                else
                {
                  a3 = v65;
                  a5 = v66;
                  v13 = v67;
                }

LABEL_42:
                CFRelease(v23);
                if (v26)
                {
                  [v64 addObject:v26];

                  goto LABEL_48;
                }
              }

              else
              {
                NSLog(@"Failed to decrypt private label with %@", v18);
              }
            }

            else
            {
              NSLog(@"Unexpected head %x", *v19);
            }
          }

          NSLog(@"Bad format? %@", v15);
          goto LABEL_48;
        }

        v18 = v17;
        CFRetain(v17);
        if (v16)
        {
          goto LABEL_12;
        }

LABEL_48:
        if (v18)
        {
          CFRelease(v18);
        }

        v14 = v14 + 1;
      }

      while (v14 != v13);
      v53 = [v8 countByEnumeratingWithState:&v76 objects:v82 count:16];
      v13 = v53;
    }

    while (v53);
  }

  if ([v64 count])
  {
    [v64 sortUsingComparator:&stru_100014D50];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v54 = [v64 countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v73;
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v73 != v56)
          {
            objc_enumerationMutation(v64);
          }

          [(MDPrivateXattrServices *)self _restoreAttributesFromDictionary:*(*(&v72 + 1) + 8 * i) intoDictionary:a6];
        }

        v55 = [v64 countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v55);
    }
  }
}

- (id)copyPrivateXattrsDictionary:(id)a3 cryptoCallback:(id)a4
{
  +[MDKeyRing defaultKeyRing];
  v7 = [a3 objectForKey:@"xids"];
  v8 = [a3 objectForKey:@"uuids"];
  v9 = [a3 objectForKey:@"datas"];
  if (!v8 || !v9 || !v7)
  {
    return 0;
  }

  return [(MDPrivateXattrServices *)self decryptDataArrayWithCryptoCallback:a4 dataArray:v9 existingXIDArray:v7 uuids:0 xpc_uuids:v8 xids:0];
}

- (id)copyPrivateXattrsFromData:(id)a3 decryptedXids:(id *)a4
{
  v28 = 0uLL;
  v29 = 0;
  [a3 bytes];
  [a3 length];
  _MDPlistGetRootPlistObjectFromBytes();
  v26 = 0uLL;
  v27 = 0;
  v24 = 0uLL;
  v25 = 0;
  if (!_MDPlistDictionaryGetPlistObjectForKey())
  {
    v7 = 0;
LABEL_9:
    v8 = 0;
LABEL_10:
    v9 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v24 = v26;
  v25 = v27;
  if (_MDPlistGetPlistObjectType() == 240)
  {
    v24 = v26;
    v25 = v27;
    v7 = _MDPlistContainerCopyObject();
  }

  else
  {
    v7 = 0;
  }

  v26 = 0uLL;
  v27 = 0;
  v24 = v28;
  v25 = v29;
  if (!_MDPlistDictionaryGetPlistObjectForKey())
  {
    goto LABEL_9;
  }

  v24 = v26;
  v25 = v27;
  if (_MDPlistGetPlistObjectType() == 240)
  {
    v24 = v26;
    v25 = v27;
    v8 = _MDPlistContainerCopyObject();
  }

  else
  {
    v8 = 0;
  }

  v26 = 0uLL;
  v27 = 0;
  v24 = v28;
  v25 = v29;
  if (!_MDPlistDictionaryGetPlistObjectForKey())
  {
    goto LABEL_10;
  }

  v24 = v26;
  v25 = v27;
  if (_MDPlistGetPlistObjectType() != 240)
  {
    goto LABEL_10;
  }

  v19 = self;
  v24 = v26;
  v25 = v27;
  v12 = _MDPlistContainerCopyObject();
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v12 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [[NSUUID alloc] initWithUUIDString:*(*(&v20 + 1) + 8 * v17)];
        [v13 addObject:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v12 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v15);
  }

  v9 = [v13 copy];

  v10 = 0;
  if (v9 && v8 && v7)
  {
    v10 = [(MDPrivateXattrServices *)v19 decryptDataArrayWithCryptoCallback:&stru_100014D90 dataArray:v8 existingXIDArray:v7 uuids:v9 xpc_uuids:0 xids:0 decrypted:a4];
  }

LABEL_11:

  return v10;
}

- (void)digestUUIDBytesWithKey:(id)a3 forUUID:(id)a4 uuidBytes:(unsigned __int8)a5[16]
{
  data = 0uLL;
  memset(&v8, 0, sizeof(v8));
  CC_MD5_Init(&v8);
  [a4 getUUIDBytes:&data];
  CC_MD5_Update(&v8, &data, 0x10u);
  [a3 getUUIDBytes:&data];
  CC_MD5_Update(&v8, &data, 0x10u);
  CC_MD5_Final(&data, &v8);
  *a5 = data;
}

- (id)xidDictWithUUIDs:(id)a3 allKeyUUIDs:(id)a4
{
  v7 = [NSMutableDictionary dictionaryWithCapacity:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a4;
  v18 = [a4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [a3 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            v13 = 0;
            do
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(a3);
              }

              v14 = *(*(&v19 + 1) + 8 * v13);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                sub_1000091A0(self, v9, v14, v7);
              }

              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [a3 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }

        sub_1000091A0(self, v9, v9, v7);
        v8 = v8 + 1;
      }

      while (v8 != v18);
      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  return v7;
}

- (void)digestUUIDBytesWithKey:(id)a3 forXPCUUID:(id)a4 uuidBytes:(unsigned __int8)a5[16]
{
  data = 0uLL;
  memset(&v9, 0, sizeof(v9));
  CC_MD5_Init(&v9);
  bytes = xpc_uuid_get_bytes(a4);
  CC_MD5_Update(&v9, bytes, 0x10u);
  [a3 getUUIDBytes:&data];
  CC_MD5_Update(&v9, &data, 0x10u);
  CC_MD5_Final(&data, &v9);
  *a5 = data;
}

- (id)xidDictWithXPCUUIDs:(id)a3 allKeyUUIDs:(id)a4
{
  v7 = [NSMutableDictionary dictionaryWithCapacity:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a4;
  v8 = [a4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 3221225472;
        applier[2] = sub_1000094AC;
        applier[3] = &unk_100014DB8;
        applier[4] = self;
        applier[5] = v12;
        applier[6] = v7;
        xpc_array_apply(a3, applier);
        sub_1000091A0(self, v12, v12, v7);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v7;
}

- (void)updatePrivateXattrParams:(id)a3 flags:(unint64_t)a4 forFileDescriptor:(int)a5 mergeCallback:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  if (qword_10001A1E0 != -1)
  {
    sub_10000CCF8();
  }

  v12 = dup(a5);
  v13 = [a3 objectForKey:@"uuid"];
  v14 = v13;
  if (v13 && (v15 = CFGetTypeID(v13), v15 == CFUUIDGetTypeID()))
  {
    v23 = CFUUIDGetUUIDBytes(v14);
    v16 = [[NSUUID alloc] initWithUUIDBytes:&v23];
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;
  v18 = [qword_10001A1D8 isEqual:v16];
  v19 = MDFSOnlyMDCopyXattrsDictionaryForFD(v12);
  v20 = CFDictionaryGetValue(v19, @"_kMDItemEncryptedData");
  CFRelease(v19);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100009784;
  v21[3] = &unk_100014E00;
  v22 = v12;
  v21[5] = v20;
  v21[6] = a7;
  v21[4] = v17;
  (*(a6 + 2))(a6, v20, a3, v18, v10 & 1, v21);
}

@end
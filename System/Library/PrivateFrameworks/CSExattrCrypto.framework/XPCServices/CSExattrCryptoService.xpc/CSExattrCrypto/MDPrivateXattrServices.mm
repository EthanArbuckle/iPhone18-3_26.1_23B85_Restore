@interface MDPrivateXattrServices
+ (id)defaultServices;
- (id)copyPrivateXattrsDictionary:(id)dictionary cryptoCallback:(id)callback;
- (id)copyPrivateXattrsFromData:(id)data decryptedXids:(id *)xids;
- (id)decryptDataArrayWithCryptoCallback:(id)callback dataArray:(id)array existingXIDArray:(id)dArray uuids:(id)uuids xpc_uuids:(id)xpc_uuids xids:(id)xids decrypted:(id *)decrypted;
- (id)xidDictWithUUIDs:(id)ds allKeyUUIDs:(id)iDs;
- (id)xidDictWithUUIDs:(id)ds fromKeyRing:(id)ring;
- (id)xidDictWithXPCUUIDs:(id)ds allKeyUUIDs:(id)iDs;
- (void)_restoreAttributesFromDictionary:(id)dictionary intoDictionary:(id)intoDictionary;
- (void)_restoreAttributesFromPlistBytes:(id)bytes intoDictionary:(id)dictionary;
- (void)digestUUIDBytesWithKey:(id)key forUUID:(id)d uuidBytes:(unsigned __int8)bytes[16];
- (void)digestUUIDBytesWithKey:(id)key forXPCUUID:(id)d uuidBytes:(unsigned __int8)bytes[16];
- (void)extractDecryptedDataWith:(id)with cryptoCallback:(id)callback decryptableXids:(id)xids intoDict:(id)dict keyRing:(id)ring xid:(id)xid;
- (void)updatePrivateXattrParams:(id)params flags:(unint64_t)flags forFileDescriptor:(int)descriptor mergeCallback:(id)callback completionHandler:(id)handler;
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

- (void)_restoreAttributesFromDictionary:(id)dictionary intoDictionary:(id)intoDictionary
{
  v6 = [dictionary objectForKey:@"uuid"];
  v7 = [dictionary objectForKey:@"keys"];
  v8 = [dictionary objectForKey:@"values"];
  if (v6 != CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x71u, 0x9Fu, 0xB8u, 0xCAu, 0x18u, 0x13u, 0x49u, 0xB0u, 0x8Bu, 0x20u, 0x36u, 0x5Eu, 0xEBu, 0xC3u, 0xEDu, 0x57u))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006DB0;
    v9[3] = &unk_100014D10;
    v9[4] = intoDictionary;
    v9[5] = v8;
    [v7 enumerateObjectsUsingBlock:v9];
  }
}

- (void)_restoreAttributesFromPlistBytes:(id)bytes intoDictionary:(id)dictionary
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006E68;
  v4[3] = &unk_100014D10;
  v4[4] = self;
  v4[5] = dictionary;
  [bytes enumerateObjectsUsingBlock:v4];
}

- (id)xidDictWithUUIDs:(id)ds fromKeyRing:(id)ring
{
  v6 = [NSMutableDictionary dictionaryWithCapacity:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [ring allKeyUUIDs];
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

        if (ds)
        {
          v8 = *(*(&v18 + 1) + 8 * v7);
          count = xpc_array_get_count(ds);
          if (count)
          {
            v10 = count;
            for (i = 0; i != v10; ++i)
            {
              uuid = xpc_array_get_uuid(ds, i);
              if (uuid)
              {
                memset(v25, 0, sizeof(v25));
                v26 = 0;
                v24 = 0uLL;
                v24 = *uuid;
                v13 = [[NSUUID alloc] initWithUUIDBytes:&v24];
                v22 = 0;
                v23 = 0;
                [ring digestUUIDBytesWithKey:v8 forUUID:v13 uuidBytes:&v22];
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

- (id)decryptDataArrayWithCryptoCallback:(id)callback dataArray:(id)array existingXIDArray:(id)dArray uuids:(id)uuids xpc_uuids:(id)xpc_uuids xids:(id)xids decrypted:(id *)decrypted
{
  v16 = [dArray count];
  if (v16 != [array count])
  {
    return 0;
  }

  callbackCopy = callback;
  v17 = objc_alloc_init(NSMutableDictionary);
  v18 = +[MDKeyRing defaultKeyRing];
  v19 = objc_alloc_init(NSMutableDictionary);
  v32 = v18;
  if (xpc_uuids)
  {
    v20 = -[MDPrivateXattrServices xidDictWithXPCUUIDs:allKeyUUIDs:](self, "xidDictWithXPCUUIDs:allKeyUUIDs:", xpc_uuids, [v18 allKeyUUIDs]);
    xpc_uuids = v20;
    if (!uuids)
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
    if (!uuids)
    {
      goto LABEL_10;
    }
  }

  v21 = -[MDPrivateXattrServices xidDictWithUUIDs:allKeyUUIDs:](self, "xidDictWithUUIDs:allKeyUUIDs:", uuids, [v32 allKeyUUIDs]);
  xpc_uuids = v21;
  if (!v20)
  {
    goto LABEL_10;
  }

  if (v21)
  {
    v22 = [v20 mutableCopy];
    [v22 addEntriesFromDictionary:xpc_uuids];
    xpc_uuids = v22;
    goto LABEL_10;
  }

  xpc_uuids = v20;
  if (v16)
  {
LABEL_11:
    for (i = 0; i != v16; ++i)
    {
      v24 = [dArray objectAtIndex:i];
      if ([xpc_uuids objectForKey:v24])
      {
        [v19 setObject:objc_msgSend(array forKey:{"objectAtIndex:", i), v24}];
      }
    }
  }

LABEL_15:
  if ([v19 count])
  {
    if (decrypted)
    {
      *decrypted = [v19 allKeys];
    }

    if (xids)
    {
      count = xpc_array_get_count(xids);
      v26 = [[NSMutableArray alloc] initWithCapacity:count];
      if (count)
      {
        for (j = 0; j != count; ++j)
        {
          string = xpc_array_get_string(xids, j);
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

      [(MDPrivateXattrServices *)self extractDecryptedDataWith:v19 cryptoCallback:callbackCopy decryptableXids:xpc_uuids intoDict:v17 keyRing:v32 xid:v26];
    }

    else
    {
      [(MDPrivateXattrServices *)self extractDecryptedDataWith:v19 cryptoCallback:callbackCopy decryptableXids:xpc_uuids intoDict:v17 keyRing:v32 xid:dArray];
    }
  }

  return v17;
}

- (void)extractDecryptedDataWith:(id)with cryptoCallback:(id)callback decryptableXids:(id)xids intoDict:(id)dict keyRing:(id)ring xid:(id)xid
{
  xidCopy = xid;
  v64 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(xid, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v12 = [xidCopy countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v12)
  {
    v13 = v12;
    v71 = *v77;
    ringCopy = ring;
    v63 = xidCopy;
    withCopy = with;
    xidsCopy = xids;
    do
    {
      v14 = 0;
      v67 = v13;
      do
      {
        if (*v77 != v71)
        {
          objc_enumerationMutation(xidCopy);
        }

        v15 = *(*(&v76 + 1) + 8 * v14);
        v16 = [with objectForKey:v15];
        if (!v16)
        {
          NSLog(@"Don't know how to decrypt %@", v15);
        }

        v17 = [xids objectForKey:v15];
        if (!v17)
        {
          copyDesignatedKeyUUID = [ring copyDesignatedKeyUUID];
          if (!v16)
          {
            goto LABEL_48;
          }

LABEL_12:
          bytes = [v16 bytes];
          v20 = [v16 length];
          if (v20 < 0xA)
          {
            NSLog(@"Crypted too small to contain header", v58);
          }

          else
          {
            v21 = *bytes;
            if (v21 == 242)
            {
              v27 = sub_10000AB64(callback, bytes, copyDesignatedKeyUUID, bytes, v20);
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

                with = withCopy;
                xids = xidsCopy;
                v13 = v67;
                allKeys = [v32 allKeys];
                allValues = [v32 allValues];

                if (allKeys && allValues)
                {
                  v42 = [NSMutableDictionary alloc];
                  if (!v33)
                  {
                    v33 = +[NSDate distantPast];
                  }

                  v32 = [v42 initWithObjectsAndKeys:{allKeys, @"keys", allValues, @"values", v33, @"mod_date", 0}];
                }

                v23 = v68;
                v26 = v32;
                ring = ringCopy;
                xidCopy = v63;
                goto LABEL_42;
              }

              NSLog(@"Failed to decrypt private attr with %@", copyDesignatedKeyUUID);
            }

            else if (v21 == 241)
            {
              v22 = sub_10000AB64(callback, bytes, copyDesignatedKeyUUID, bytes, v20);
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
                  ring = ringCopy;
                  xidCopy = v63;
                  with = withCopy;
                  xids = xidsCopy;
                  v13 = v67;
                }

                else
                {
                  with = withCopy;
                  xids = xidsCopy;
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
                NSLog(@"Failed to decrypt private label with %@", copyDesignatedKeyUUID);
              }
            }

            else
            {
              NSLog(@"Unexpected head %x", *bytes);
            }
          }

          NSLog(@"Bad format? %@", v15);
          goto LABEL_48;
        }

        copyDesignatedKeyUUID = v17;
        CFRetain(v17);
        if (v16)
        {
          goto LABEL_12;
        }

LABEL_48:
        if (copyDesignatedKeyUUID)
        {
          CFRelease(copyDesignatedKeyUUID);
        }

        v14 = v14 + 1;
      }

      while (v14 != v13);
      v53 = [xidCopy countByEnumeratingWithState:&v76 objects:v82 count:16];
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

          [(MDPrivateXattrServices *)self _restoreAttributesFromDictionary:*(*(&v72 + 1) + 8 * i) intoDictionary:dict];
        }

        v55 = [v64 countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v55);
    }
  }
}

- (id)copyPrivateXattrsDictionary:(id)dictionary cryptoCallback:(id)callback
{
  +[MDKeyRing defaultKeyRing];
  v7 = [dictionary objectForKey:@"xids"];
  v8 = [dictionary objectForKey:@"uuids"];
  v9 = [dictionary objectForKey:@"datas"];
  if (!v8 || !v9 || !v7)
  {
    return 0;
  }

  return [(MDPrivateXattrServices *)self decryptDataArrayWithCryptoCallback:callback dataArray:v9 existingXIDArray:v7 uuids:0 xpc_uuids:v8 xids:0];
}

- (id)copyPrivateXattrsFromData:(id)data decryptedXids:(id *)xids
{
  v28 = 0uLL;
  v29 = 0;
  [data bytes];
  [data length];
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

  selfCopy = self;
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
    v10 = [(MDPrivateXattrServices *)selfCopy decryptDataArrayWithCryptoCallback:&stru_100014D90 dataArray:v8 existingXIDArray:v7 uuids:v9 xpc_uuids:0 xids:0 decrypted:xids];
  }

LABEL_11:

  return v10;
}

- (void)digestUUIDBytesWithKey:(id)key forUUID:(id)d uuidBytes:(unsigned __int8)bytes[16]
{
  data = 0uLL;
  memset(&v8, 0, sizeof(v8));
  CC_MD5_Init(&v8);
  [d getUUIDBytes:&data];
  CC_MD5_Update(&v8, &data, 0x10u);
  [key getUUIDBytes:&data];
  CC_MD5_Update(&v8, &data, 0x10u);
  CC_MD5_Final(&data, &v8);
  *bytes = data;
}

- (id)xidDictWithUUIDs:(id)ds allKeyUUIDs:(id)iDs
{
  v7 = [NSMutableDictionary dictionaryWithCapacity:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = iDs;
  v18 = [iDs countByEnumeratingWithState:&v23 objects:v28 count:16];
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
        v10 = [ds countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(ds);
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
            v11 = [ds countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (void)digestUUIDBytesWithKey:(id)key forXPCUUID:(id)d uuidBytes:(unsigned __int8)bytes[16]
{
  data = 0uLL;
  memset(&v9, 0, sizeof(v9));
  CC_MD5_Init(&v9);
  bytes = xpc_uuid_get_bytes(d);
  CC_MD5_Update(&v9, bytes, 0x10u);
  [key getUUIDBytes:&data];
  CC_MD5_Update(&v9, &data, 0x10u);
  CC_MD5_Final(&data, &v9);
  *bytes = data;
}

- (id)xidDictWithXPCUUIDs:(id)ds allKeyUUIDs:(id)iDs
{
  v7 = [NSMutableDictionary dictionaryWithCapacity:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = iDs;
  v8 = [iDs countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        xpc_array_apply(ds, applier);
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

- (void)updatePrivateXattrParams:(id)params flags:(unint64_t)flags forFileDescriptor:(int)descriptor mergeCallback:(id)callback completionHandler:(id)handler
{
  flagsCopy = flags;
  if (qword_10001A1E0 != -1)
  {
    sub_10000CCF8();
  }

  v12 = dup(descriptor);
  v13 = [params objectForKey:@"uuid"];
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
  v21[6] = handler;
  v21[4] = v17;
  (*(callback + 2))(callback, v20, params, v18, flagsCopy & 1, v21);
}

@end
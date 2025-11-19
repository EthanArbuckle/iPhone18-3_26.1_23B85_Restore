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
  if (defaultServices_once != -1)
  {
    +[MDPrivateXattrServices defaultServices];
  }

  return gDefaultServices;
}

dispatch_queue_t __41__MDPrivateXattrServices_defaultServices__block_invoke()
{
  gDefaultServices = objc_alloc_init(MDPrivateXattrServices);
  result = dispatch_queue_create("com.apple.metadata.MDPrivateXattrServices.gImportQueue", 0);
  gImportQueue = result;
  return result;
}

- (void)_restoreAttributesFromDictionary:(id)a3 intoDictionary:(id)a4
{
  v6 = [a3 objectForKey:@"uuid"];
  v7 = [a3 objectForKey:@"keys"];
  v8 = [a3 objectForKey:@"values"];
  if (v6 != CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 0x71u, 0x9Fu, 0xB8u, 0xCAu, 0x18u, 0x13u, 0x49u, 0xB0u, 0x8Bu, 0x20u, 0x36u, 0x5Eu, 0xEBu, 0xC3u, 0xEDu, 0x57u))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__MDPrivateXattrServices__restoreAttributesFromDictionary_intoDictionary___block_invoke;
    v9[3] = &unk_278D63580;
    v9[4] = a4;
    v9[5] = v8;
    [v7 enumerateObjectsUsingBlock:v9];
  }
}

uint64_t __74__MDPrivateXattrServices__restoreAttributesFromDictionary_intoDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndex:?];

  return [v3 setObject:v4 forKey:a2];
}

- (void)_restoreAttributesFromPlistBytes:(id)a3 intoDictionary:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__MDPrivateXattrServices__restoreAttributesFromPlistBytes_intoDictionary___block_invoke;
  v4[3] = &unk_278D63580;
  v4[4] = self;
  v4[5] = a4;
  [a3 enumerateObjectsUsingBlock:v4];
}

- (id)xidDictWithUUIDs:(id)a3 fromKeyRing:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [a4 allKeyUUIDs];
  v18 = [obj countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v18)
  {
    v17 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(obj);
        }

        if (a3)
        {
          v8 = *(*(&v19 + 1) + 8 * v7);
          count = xpc_array_get_count(a3);
          if (count)
          {
            v10 = count;
            for (i = 0; i != v10; ++i)
            {
              uuid = xpc_array_get_uuid(a3, i);
              if (uuid)
              {
                memset(v26, 0, sizeof(v26));
                v27 = 0;
                v25 = 0uLL;
                v25 = *uuid;
                v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v25];
                v23 = 0;
                v24 = 0;
                [a4 digestUUIDBytesWithKey:v8 forUUID:v13 uuidBytes:&v23];
                _MDLabelUUIDEncode(v23, v24, v26);
                [v6 setObject:v8 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"com.apple.metadata.%s", v26)}];
              }
            }
          }
        }

        ++v7;
      }

      while (v7 != v18);
      v18 = [obj countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v18);
  }

  v14 = *MEMORY[0x277D85DE8];
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
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = +[MDKeyRing defaultKeyRing];
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
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
      v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
      if (count)
      {
        for (j = 0; j != count; ++j)
        {
          string = xpc_array_get_string(a8, j);
          if (string)
          {
            v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:string encoding:4];
            [v26 addObject:v29];
          }

          else
          {
            NSLog(&cfstr_NilXidString.isa);
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
  v85 = *MEMORY[0x277D85DE8];
  v66 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a8, "count")}];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v12 = [v8 countByEnumeratingWithState:&v78 objects:v84 count:16];
  if (v12)
  {
    v13 = v12;
    v73 = *v79;
    alloc = *MEMORY[0x277CBECE8];
    v64 = a7;
    v65 = v8;
    v67 = a3;
    v68 = a5;
    do
    {
      v14 = 0;
      v69 = v13;
      do
      {
        if (*v79 != v73)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v78 + 1) + 8 * v14);
        v16 = [a3 objectForKey:v15];
        if (!v16)
        {
          NSLog(&cfstr_DonTKnowHowToD.isa, v15);
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
            NSLog(&cfstr_CryptedTooSmal.isa, v59);
          }

          else
          {
            v21 = *v19;
            if (v21 == 242)
            {
              v27 = copyDecryptedData(a4, v19, v18, v19, v20);
              if (v27)
              {
                v28 = v27;
                BytePtr = CFDataGetBytePtr(v27);
                Length = CFDataGetLength(v28);
                if (_init_private_attributes_once != -1)
                {
                  [MDPrivateXattrServices extractDecryptedDataWith:cryptoCallback:decryptableXids:intoDict:keyRing:xid:];
                }

                v31 = 0x27ECB5000uLL;
                v70 = v28;
                v32 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
                v82 = 0;
                v33 = 0;
                while (v82 < Length)
                {
                  v34 = copyCFTypeFromBuffer(BytePtr, &v82, Length);
                  if (v34)
                  {
                    v35 = v34;
                    v36 = copyCFTypeFromBuffer(BytePtr, &v82, Length);
                    if (v36)
                    {
                      v37 = v36;
                      if (CFGetTypeID(v35) == *(v31 + 976))
                      {
                        if (CFEqual(@"mod_date", v35))
                        {
                          v38 = CFGetTypeID(v37);
                          v39 = v38 == CFDateGetTypeID();
                          v31 = 0x27ECB5000;
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

                a3 = v67;
                a5 = v68;
                v13 = v69;
                v40 = [v32 allKeys];
                v41 = [v32 allValues];

                if (v40 && v41)
                {
                  v42 = objc_alloc(MEMORY[0x277CBEB38]);
                  if (!v33)
                  {
                    v33 = [MEMORY[0x277CBEAA8] distantPast];
                  }

                  v32 = [v42 initWithObjectsAndKeys:{v40, @"keys", v41, @"values", v33, @"mod_date", 0}];
                }

                v23 = v70;
                v26 = v32;
                a7 = v64;
                v8 = v65;
                goto LABEL_42;
              }

              NSLog(&cfstr_FailedToDecryp_0.isa, v18);
            }

            else if (v21 == 241)
            {
              v22 = copyDecryptedData(a4, v19, v18, v19, v20);
              if (v22)
              {
                v23 = v22;
                v24 = CFDataGetBytePtr(v22);
                v25 = CFDataGetLength(v23);
                v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
                if (v25 >= 20 && *v24 == 1279345228)
                {
                  v43 = CFUUIDCreateFromUUIDBytes(alloc, *(v24 + 4));
                  v44 = v26;
                  v45 = v43;
                  v63 = v44;
                  [v44 setValue:v43 forKey:@"uuid"];
                  CFRelease(v45);
                  v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
                  v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
                  if (v25 >= 0x24)
                  {
                    v47 = &v24[v25];
                    v48 = (v24 + 36);
                    v49 = (v24 + 20);
                    do
                    {
                      v50 = CFUUIDCreateFromUUIDBytes(alloc, *v49);
                      v51 = 0.0;
                      if (&v49[1].byte8 <= v47)
                      {
                        v51 = *&v48->byte0;
                        v48 = (v49 + 24);
                      }

                      v49 = v48;
                      v52 = CFDateCreate(alloc, v51);
                      [v72 addObject:v50];
                      CFRelease(v50);
                      [v46 addObject:v52];
                      CFRelease(v52);
                      ++v48;
                    }

                    while (v48 <= v47);
                  }

                  [v63 setValue:v72 forKey:@"keys"];

                  [v63 setValue:v46 forKey:@"values"];
                  v26 = v63;
                  a7 = v64;
                  v8 = v65;
                  a3 = v67;
                  a5 = v68;
                  v13 = v69;
                }

                else
                {
                  a3 = v67;
                  a5 = v68;
                  v13 = v69;
                }

LABEL_42:
                CFRelease(v23);
                if (v26)
                {
                  [v66 addObject:v26];

                  goto LABEL_48;
                }
              }

              else
              {
                NSLog(&cfstr_FailedToDecryp.isa, v18);
              }
            }

            else
            {
              NSLog(&cfstr_UnexpectedHead.isa, *v19);
            }
          }

          NSLog(&cfstr_BadFormat.isa, v15);
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

        ++v14;
      }

      while (v14 != v13);
      v53 = [v8 countByEnumeratingWithState:&v78 objects:v84 count:16];
      v13 = v53;
    }

    while (v53);
  }

  if ([v66 count])
  {
    [v66 sortUsingComparator:&__block_literal_global_32];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v54 = [v66 countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v75;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v75 != v56)
          {
            objc_enumerationMutation(v66);
          }

          [(MDPrivateXattrServices *)self _restoreAttributesFromDictionary:*(*(&v74 + 1) + 8 * i) intoDictionary:a6];
        }

        v55 = [v66 countByEnumeratingWithState:&v74 objects:v83 count:16];
      }

      while (v55);
    }
  }

  v58 = *MEMORY[0x277D85DE8];
}

uint64_t __103__MDPrivateXattrServices_extractDecryptedDataWith_cryptoCallback_decryptableXids_intoDict_keyRing_xid___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 objectForKey:@"mod_date"];
  v5 = [a3 objectForKey:@"mod_date"];

  return [v4 compare:v5];
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
  v35 = *MEMORY[0x277D85DE8];
  v32 = 0uLL;
  v33 = 0;
  [a3 bytes];
  [a3 length];
  _MDPlistGetRootPlistObjectFromBytes();
  v30 = 0uLL;
  v31 = 0;
  v28 = 0uLL;
  v29 = 0;
  if (!_MDPlistDictionaryGetPlistObjectForKey())
  {
    v8 = 0;
LABEL_9:
    v10 = 0;
LABEL_10:
    v11 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  v28 = v30;
  v29 = v31;
  if (_MDPlistGetPlistObjectType() == 240)
  {
    v7 = *MEMORY[0x277CBECE8];
    v28 = v30;
    v29 = v31;
    v8 = _MDPlistContainerCopyObject();
  }

  else
  {
    v8 = 0;
  }

  v30 = 0uLL;
  v31 = 0;
  v28 = v32;
  v29 = v33;
  if (!_MDPlistDictionaryGetPlistObjectForKey())
  {
    goto LABEL_9;
  }

  v28 = v30;
  v29 = v31;
  if (_MDPlistGetPlistObjectType() == 240)
  {
    v9 = *MEMORY[0x277CBECE8];
    v28 = v30;
    v29 = v31;
    v10 = _MDPlistContainerCopyObject();
  }

  else
  {
    v10 = 0;
  }

  v30 = 0uLL;
  v31 = 0;
  v28 = v32;
  v29 = v33;
  if (!_MDPlistDictionaryGetPlistObjectForKey())
  {
    goto LABEL_10;
  }

  v28 = v30;
  v29 = v31;
  if (_MDPlistGetPlistObjectType() != 240)
  {
    goto LABEL_10;
  }

  v23 = self;
  v15 = *MEMORY[0x277CBECE8];
  v28 = v30;
  v29 = v31;
  v16 = _MDPlistContainerCopyObject();
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v16 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v24 + 1) + 8 * v21)];
        [v17 addObject:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v16 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v19);
  }

  v11 = [v17 copy];

  v12 = 0;
  if (v11 && v10 && v8)
  {
    v12 = [(MDPrivateXattrServices *)v23 decryptDataArrayWithCryptoCallback:&__block_literal_global_50 dataArray:v10 existingXIDArray:v8 uuids:v11 xpc_uuids:0 xids:0 decrypted:a4];
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __66__MDPrivateXattrServices_copyPrivateXattrsFromData_decryptedXids___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = +[MDKeyRing defaultKeyRing];
  if (a6 == 1)
  {

    return [v11 copyEncryptedData:a5 withKeyUUID:a2 iv1:a3 iv2:a4];
  }

  else
  {

    return [v11 copyDecryptedData:a5 withKeyUUID:a2 iv1:a3 iv2:a4];
  }
}

- (void)digestUUIDBytesWithKey:(id)a3 forUUID:(id)a4 uuidBytes:(unsigned __int8)a5[16]
{
  v11 = *MEMORY[0x277D85DE8];
  data = 0uLL;
  memset(&v9, 0, sizeof(v9));
  CC_MD5_Init(&v9);
  [a4 getUUIDBytes:&data];
  CC_MD5_Update(&v9, &data, 0x10u);
  [a3 getUUIDBytes:&data];
  CC_MD5_Update(&v9, &data, 0x10u);
  CC_MD5_Final(&data, &v9);
  *a5 = data;
  v8 = *MEMORY[0x277D85DE8];
}

- (id)xidDictWithUUIDs:(id)a3 allKeyUUIDs:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a4;
  v19 = [a4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [a3 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            v13 = 0;
            do
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(a3);
              }

              v14 = *(*(&v20 + 1) + 8 * v13);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                digestOneInternal(self, v9, v14, v7);
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [a3 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }

        digestOneInternal(self, v9, v9, v7);
        ++v8;
      }

      while (v8 != v19);
      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)digestUUIDBytesWithKey:(id)a3 forXPCUUID:(id)a4 uuidBytes:(unsigned __int8)a5[16]
{
  v12 = *MEMORY[0x277D85DE8];
  data = 0uLL;
  memset(&v10, 0, sizeof(v10));
  CC_MD5_Init(&v10);
  bytes = xpc_uuid_get_bytes(a4);
  CC_MD5_Update(&v10, bytes, 0x10u);
  [a3 getUUIDBytes:&data];
  CC_MD5_Update(&v10, &data, 0x10u);
  CC_MD5_Final(&data, &v10);
  *a5 = data;
  v9 = *MEMORY[0x277D85DE8];
}

- (id)xidDictWithXPCUUIDs:(id)a3 allKeyUUIDs:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a4;
  v8 = [a4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 3221225472;
        applier[2] = __58__MDPrivateXattrServices_xidDictWithXPCUUIDs_allKeyUUIDs___block_invoke;
        applier[3] = &unk_278D635E8;
        applier[4] = self;
        applier[5] = v12;
        applier[6] = v7;
        xpc_array_apply(a3, applier);
        digestOneInternal(self, v12, v12, v7);
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __58__MDPrivateXattrServices_xidDictWithXPCUUIDs_allKeyUUIDs___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v8 = 0;
  v9 = 0;
  [v3 digestUUIDBytesWithKey:v4 forXPCUUID:a3 uuidBytes:&v8];
  _MDLabelUUIDEncode(v8, v9, v10);
  [v5 setObject:v4 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"com.apple.metadata.%s", v10)}];
  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)updatePrivateXattrParams:(id)a3 flags:(unint64_t)a4 forFileDescriptor:(int)a5 mergeCallback:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  if (updatePrivateXattrParams_flags_forFileDescriptor_mergeCallback_completionHandler__once != -1)
  {
    [MDPrivateXattrServices updatePrivateXattrParams:flags:forFileDescriptor:mergeCallback:completionHandler:];
  }

  v12 = dup(a5);
  v13 = [a3 objectForKey:@"uuid"];
  v14 = v13;
  if (v13 && (v15 = CFGetTypeID(v13), v15 == CFUUIDGetTypeID()))
  {
    v23 = CFUUIDGetUUIDBytes(v14);
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v23];
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;
  v18 = [updatePrivateXattrParams_flags_forFileDescriptor_mergeCallback_completionHandler__sMDPrivateMDAttributesXattrNSUUID isEqual:v16];
  v19 = MDFSOnlyMDCopyXattrsDictionaryForFD(v12);
  v20 = CFDictionaryGetValue(v19, @"_kMDItemEncryptedData");
  CFRelease(v19);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __107__MDPrivateXattrServices_updatePrivateXattrParams_flags_forFileDescriptor_mergeCallback_completionHandler___block_invoke_2;
  v21[3] = &unk_278D63610;
  v22 = v12;
  v21[5] = v20;
  v21[6] = a7;
  v21[4] = v17;
  (*(a6 + 2))(a6, v20, a3, v18, v10 & 1, v21);
}

uint64_t __107__MDPrivateXattrServices_updatePrivateXattrParams_flags_forFileDescriptor_mergeCallback_completionHandler___block_invoke()
{
  v0 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 0xFEu, 0x65u, 0x61u, 0x5Bu, 0xFu, 0xF3u, 0x4Eu, 0x3Du, 0xBBu, 0x10u, 0xA7u, 0xACu, 0x81u, 0x62u, 0x22u, 0x6Eu);
  v2 = CFUUIDGetUUIDBytes(v0);
  result = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v2];
  updatePrivateXattrParams_flags_forFileDescriptor_mergeCallback_completionHandler__sMDPrivateMDAttributesXattrNSUUID = result;
  return result;
}

void __107__MDPrivateXattrServices_updatePrivateXattrParams_flags_forFileDescriptor_mergeCallback_completionHandler___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!(a3 | a4))
  {
    v14 = *(a1 + 48);
    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    (*(v14 + 16))(v14, [v15 initWithDomain:*MEMORY[0x277CCA5B8] code:32 userInfo:0]);
    goto LABEL_24;
  }

  if ([a3 length] && objc_msgSend(a2, "length"))
  {
    v8 = *(a1 + 56);
    v9 = [a2 UTF8String];
    if ([a3 length])
    {
      v10 = [a3 bytes];
      v11 = [a3 length];
      if (!strcmp(v9, "com.apple.metadata:kMDItemIsShared"))
      {
        v13 = "com.apple.metadata:kMDItemIsShared#PS";
      }

      else
      {
        if (strcmp(v9, "com.apple.metadata:kMDItemSharedItemCurrentUserRole"))
        {
          v12 = v8;
          v13 = v9;
LABEL_13:
          fsetxattr(v12, v13, v10, v11, 0, 0);
          goto LABEL_14;
        }

        v13 = "com.apple.metadata:kMDItemSharedItemCurrentUserRole#PS";
      }

      v12 = v8;
      goto LABEL_13;
    }

    fremovexattr(v8, v9, 0);
  }

LABEL_14:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [a4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(a4);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        if (([a2 isEqual:v20] & 1) == 0)
        {
          fremovexattr(*(a1 + 56), [v20 UTF8String], 0);
        }
      }

      v17 = [a4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
LABEL_24:
  close(*(a1 + 56));

  v21 = *MEMORY[0x277D85DE8];
}

void __93__MDPrivateXattrServices_updatePrivateXattrParams_flags_forFileDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = copyUpdatedData(*(a1 + 32));
  (*(a6 + 16))(a6, 0, v7);
}

uint64_t __93__MDPrivateXattrServices_updatePrivateXattrParams_flags_forFileDescriptor_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = +[MDKeyRing defaultKeyRing];
  if (a6 == 1)
  {

    return [v11 copyEncryptedData:a5 withKeyUUID:a2 iv1:a3 iv2:a4];
  }

  else
  {

    return [v11 copyDecryptedData:a5 withKeyUUID:a2 iv1:a3 iv2:a4];
  }
}

@end
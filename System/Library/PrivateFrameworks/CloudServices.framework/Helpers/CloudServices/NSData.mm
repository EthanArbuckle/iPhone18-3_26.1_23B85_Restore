@interface NSData
- (id)backupKeyDigests;
- (id)bskb;
- (id)hexString;
- (id)peerIDForKeybagDigest:(id)digest;
- (id)peerIDs;
- (id)peersAndBackupKeyDigests;
- (id)recoveryKey;
- (id)sha1Digest;
- (id)sha256Digest;
- (void)enumeratePeersWithBlock:(id)block;
@end

@implementation NSData

- (id)bskb
{
  v11 = 0;
  v2 = SOSBackupSliceKeyBagCreateFromData();
  if (!v2)
  {
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004865C(&v11, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return v2;
}

- (void)enumeratePeersWithBlock:(id)block
{
  blockCopy = block;
  bskb = [(NSData *)self bskb];
  if (bskb)
  {
    v6 = SOSBSKBGetPeers();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10));
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (id)hexString
{
  v3 = 2 * [(NSData *)self length];
  v4 = malloc_type_malloc(v3, 0x922905A3uLL);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000058B4;
  v7[3] = &unk_100075070;
  v7[4] = v4;
  [(NSData *)self enumerateByteRangesUsingBlock:v7];
  v5 = [[NSString alloc] initWithBytesNoCopy:v4 length:v3 encoding:4 freeWhenDone:1];

  return v5;
}

- (id)sha256Digest
{
  v3 = malloc_type_malloc(0x20uLL, 0x6BF1344AuLL);
  BytePtr = CFDataGetBytePtr(self);
  CC_SHA256(BytePtr, [(NSData *)self length], v3);
  v5 = [[NSData alloc] initWithBytesNoCopy:v3 length:32 freeWhenDone:1];

  return v5;
}

- (id)sha1Digest
{
  v3 = malloc_type_malloc(0x14uLL, 0x1722B817uLL);
  BytePtr = CFDataGetBytePtr(self);
  CC_SHA1(BytePtr, [(NSData *)self length], v3);
  v5 = [[NSData alloc] initWithBytesNoCopy:v3 length:20 freeWhenDone:1];

  return v5;
}

- (id)peerIDs
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100005B64;
  v15 = &unk_100075098;
  v3 = objc_alloc_init(NSMutableArray);
  v16 = v3;
  [(NSData *)self enumeratePeersWithBlock:&v12];
  bskb = [(NSData *)self bskb];
  if (bskb && SOSBSKBHasRecoveryKey())
  {
    v5 = SOSBSKBCopyRecoveryKey();
    v6 = [NSString alloc];
    sha1Digest = [v5 sha1Digest];
    hexString = [sha1Digest hexString];
    v9 = [v6 initWithFormat:@"recovery key (%@)", hexString, v12, v13, v14, v15];
    [v3 addObject:v9];
  }

  v10 = v3;

  return v3;
}

- (id)recoveryKey
{
  bskb = [(NSData *)self bskb];
  if (bskb && SOSBSKBHasRecoveryKey())
  {
    v3 = SOSBSKBCopyRecoveryKey();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)peersAndBackupKeyDigests
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005D50;
  v5[3] = &unk_100075098;
  v3 = objc_alloc_init(NSMutableDictionary);
  v6 = v3;
  [(NSData *)self enumeratePeersWithBlock:v5];

  return v3;
}

- (id)backupKeyDigests
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005E90;
  v5[3] = &unk_100075098;
  v3 = objc_alloc_init(NSMutableSet);
  v6 = v3;
  [(NSData *)self enumeratePeersWithBlock:v5];

  return v3;
}

- (id)peerIDForKeybagDigest:(id)digest
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000060A0;
  v20 = sub_1000060B0;
  v21 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000060B8;
  v13 = &unk_1000750C0;
  digestCopy = digest;
  v14 = digestCopy;
  v15 = &v16;
  [(NSData *)self enumeratePeersWithBlock:&v10];
  v5 = v17[5];
  if (!v5)
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      hexString = [digestCopy hexString];
      sub_1000486D8(hexString, buf, v6);
    }

    v5 = v17[5];
  }

  v8 = v5;

  _Block_object_dispose(&v16, 8);

  return v8;
}

@end
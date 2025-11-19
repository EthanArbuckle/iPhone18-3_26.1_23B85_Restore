@interface _DPDAPPayloadEncoder
+ (id)encoderForDonation:(id)a3 keys:(id)a4 error:(id *)a5;
+ (unint64_t)secondsSinceEpochWithPrecision;
- (BOOL)encryptHelperSharesWithError:(id *)a3;
- (BOOL)encryptLeaderSharesWithError:(id *)a3;
- (BOOL)isDonationValidWithError:(id *)a3;
- (_DPDAPPayloadEncoder)init;
- (_DPDAPPayloadEncoder)initWithDonation:(id)a3 keys:(id)a4 error:(id *)a5;
- (_DPDAPPayloadEncoder)initWithDonation:(id)a3 keys:(id)a4 taskProv:(id)a5 error:(id *)a6;
- (id)dediscoPayloadWithError:(id *)a3;
- (id)encodedInfoForServerRole:(unsigned __int8)a3;
- (id)encodedReportAuthExtensionDataWithError:(id *)a3;
- (id)encodedTaskProvExtensionDataWithError:(id *)a3;
- (id)inputShareInfoString;
- (id)taskIDWithError:(id *)a3;
- (void)encodePublicShare;
- (void)encodeReportID;
@end

@implementation _DPDAPPayloadEncoder

+ (id)encoderForDonation:(id)a3 keys:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [_DPDediscoUtils dediscoVersionForDonation:v7];
  if (v9 - 3 < 2)
  {
    v10 = _DPDAP09PayloadEncoder;
LABEL_5:
    v11 = [[v10 alloc] initWithDonation:v7 keys:v8 error:a5];
    goto LABEL_7;
  }

  if (v9 == 2)
  {
    v10 = _DPDAP02PayloadEncoder;
    goto LABEL_5;
  }

  v12 = [NSString stringWithFormat:@"Failed to find matching DAP version from PPM version %lu.", v9];
  v13 = [_DPDediscoError errorWithCode:400 description:v12];

  [v13 logAndStoreInError:a5];
  v11 = 0;
LABEL_7:

  return v11;
}

- (id)taskIDWithError:(id *)a3
{
  v4 = [(_DPDAPPayloadEncoder *)self taskProv];
  v5 = [v4 taskIDWithError:a3];

  return v5;
}

- (id)encodedTaskProvExtensionDataWithError:(id *)a3
{
  v4 = [(_DPDAPPayloadEncoder *)self taskProv];
  v5 = [v4 encodedTaskConfigWithError:a3];

  return v5;
}

- (id)dediscoPayloadWithError:(id *)a3
{
  v5 = objc_autoreleasePoolPush();
  v14 = 0;
  v6 = [(_DPDAPPayloadEncoder *)self encodedReportWithError:&v14];
  v7 = v14;
  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    v8 = [_DPDediscoPayload alloc];
    v9 = [(_DPDAPPayloadEncoder *)self taskProv];
    v10 = [v9 collectionID];
    v11 = [(_DPDediscoPayload *)v8 initWithCollectionId:v10 algorithm:&stru_1000741F0 algorithmParameters:0 fsEncryptedShare:0 dsEncryptedShare:0 fsPublicKey:&stru_1000741F0 dsPublicKey:&stru_1000741F0 versionHash:&stru_1000741F0 report:v6];
  }

  else if (a3)
  {
    v12 = v7;
    v11 = 0;
    *a3 = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)encodedReportAuthExtensionDataWithError:(id *)a3
{
  v3 = +[_DPLog framework];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10004DBF0(v3);
  }

  return 0;
}

- (_DPDAPPayloadEncoder)initWithDonation:(id)a3 keys:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 leaderURL];
  v11 = [v9 helperURL];
  v12 = [_DPTaskProv taskProvFromDonation:v8 leaderURL:v10 helperURL:v11 error:a5];

  if (v12)
  {
    self = [(_DPDAPPayloadEncoder *)self initWithDonation:v8 keys:v9 taskProv:v12 error:a5];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_DPDAPPayloadEncoder)initWithDonation:(id)a3 keys:(id)a4 taskProv:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v24.receiver = self;
  v24.super_class = _DPDAPPayloadEncoder;
  v14 = [(_DPDAPPayloadEncoder *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_donation, a3);
    objc_storeStrong(&v15->_keys, a4);
    objc_storeStrong(&v15->_taskProv, a5);
    if (![(_DPDAPPayloadEncoder *)v15 isDonationValidWithError:a6])
    {
      v22 = 0;
      goto LABEL_6;
    }

    v16 = [objc_opt_class() secondsSinceEpochWithPrecision];
    reportID = v15->_reportID;
    v15->_time = v16;
    v15->_reportID = 0;

    publicShare = v15->_publicShare;
    v15->_publicShare = 0;

    encryptedLeaderShares = v15->_encryptedLeaderShares;
    v15->_encryptedLeaderShares = 0;

    encryptedHelperShares = v15->_encryptedHelperShares;
    v15->_encryptedHelperShares = 0;

    report = v15->_report;
    v15->_report = 0;
  }

  v22 = v15;
LABEL_6:

  return v22;
}

+ (unint64_t)secondsSinceEpochWithPrecision
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return 14400 * (v4 / 0x3840);
}

- (void)encodeReportID
{
  v3 = [(_DPDAPPayloadEncoder *)self reportID];

  if (!v3)
  {
    v4 = [(_DPDAPPayloadEncoder *)self taskProv];
    v5 = [v4 vdafType];

    if (v5 == -65536)
    {
      v9 = [NSMutableData dataWithLength:16];
      arc4random_buf([v9 mutableBytes], 0x10uLL);
    }

    else
    {
      v6 = [(_DPDAPPayloadEncoder *)self donation];
      v7 = [v6 metadata];
      v8 = [v7 objectForKeyedSubscript:kDPMetadataVDAF];
      v9 = [v8 objectForKeyedSubscript:kDPMetadataVDAFNonce];
    }

    [(_DPDAPPayloadEncoder *)self setReportID:v9];
  }
}

- (void)encodePublicShare
{
  v3 = [(_DPDAPPayloadEncoder *)self publicShare];

  if (!v3)
  {
    v4 = [(_DPDAPPayloadEncoder *)self taskProv];
    v5 = [v4 vdafType];

    if (v5 == -65536)
    {
      v9 = +[NSData data];
      [(_DPDAPPayloadEncoder *)self setPublicShare:?];
    }

    else
    {
      v9 = [(_DPDAPPayloadEncoder *)self donation];
      v6 = [v9 metadata];
      v7 = [v6 objectForKeyedSubscript:kDPMetadataVDAF];
      v8 = [v7 objectForKeyedSubscript:kDPMetadataVDAFPublicShare];
      [(_DPDAPPayloadEncoder *)self setPublicShare:v8];
    }
  }
}

- (id)encodedInfoForServerRole:(unsigned __int8)a3
{
  v8 = a3;
  v7 = 1;
  v3 = [(_DPDAPPayloadEncoder *)self inputShareInfoString];
  v4 = [v3 dataUsingEncoding:4];
  v5 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v4 length] + 2);
  [v5 appendData:v4];
  [v5 appendBytes:&v7 length:1];
  [v5 appendBytes:&v8 length:1];

  return v5;
}

- (BOOL)encryptLeaderSharesWithError:(id *)a3
{
  v5 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];

  if (!v5)
  {
    v6 = [(_DPDAPPayloadEncoder *)self keys];
    v7 = [v6 destinationPublicKey];
    v8 = [(_DPDAPPayloadEncoder *)self encryptedShareForServerRole:2 publicKey:v7 error:a3];
    [(_DPDAPPayloadEncoder *)self setEncryptedLeaderShares:v8];
  }

  return v5 == 0;
}

- (BOOL)encryptHelperSharesWithError:(id *)a3
{
  v5 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];

  if (!v5)
  {
    v6 = [(_DPDAPPayloadEncoder *)self keys];
    v7 = [v6 facilitatorPublicKey];
    v8 = [(_DPDAPPayloadEncoder *)self encryptedShareForServerRole:3 publicKey:v7 error:a3];
    [(_DPDAPPayloadEncoder *)self setEncryptedHelperShares:v8];
  }

  return v5 == 0;
}

- (id)inputShareInfoString
{
  v2 = [(_DPDAPPayloadEncoder *)self dapVersion];
  v3 = [NSString stringWithFormat:@"dap-%@ input share", v2];

  return v3;
}

- (BOOL)isDonationValidWithError:(id *)a3
{
  v4 = [(_DPDAPPayloadEncoder *)self taskProv];
  v5 = [v4 vdafType];

  if (v5 == -65536)
  {
    return 1;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v28[0] = kDPMetadataVDAFNonce;
  v28[1] = kDPMetadataVDAFPublicShare;
  obj = [NSArray arrayWithObjects:v28 count:2];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = a3;
    v9 = *v25;
    v10 = kDPMetadataVDAF;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [(_DPDAPPayloadEncoder *)self donation];
        v14 = [v13 metadata];
        v15 = [v14 objectForKeyedSubscript:v10];
        v16 = [v15 objectForKeyedSubscript:v12];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v18 = [NSString stringWithFormat:@"Invalid VDAF parameter(%@) in metadata.", v12];
          v19 = [_DPDediscoError errorWithCode:701 description:v18];

          [v19 logAndStoreInError:v21];
          v6 = 0;
          goto LABEL_13;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_13:

  return v6;
}

- (_DPDAPPayloadEncoder)init
{
  [(_DPDAPPayloadEncoder *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end
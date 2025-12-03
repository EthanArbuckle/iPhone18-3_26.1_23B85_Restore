@interface _DPDAPPayloadEncoder
+ (id)encoderForDonation:(id)donation keys:(id)keys error:(id *)error;
+ (unint64_t)secondsSinceEpochWithPrecision;
- (BOOL)encryptHelperSharesWithError:(id *)error;
- (BOOL)encryptLeaderSharesWithError:(id *)error;
- (BOOL)isDonationValidWithError:(id *)error;
- (_DPDAPPayloadEncoder)init;
- (_DPDAPPayloadEncoder)initWithDonation:(id)donation keys:(id)keys error:(id *)error;
- (_DPDAPPayloadEncoder)initWithDonation:(id)donation keys:(id)keys taskProv:(id)prov error:(id *)error;
- (id)dediscoPayloadWithError:(id *)error;
- (id)encodedInfoForServerRole:(unsigned __int8)role;
- (id)encodedReportAuthExtensionDataWithError:(id *)error;
- (id)encodedTaskProvExtensionDataWithError:(id *)error;
- (id)inputShareInfoString;
- (id)taskIDWithError:(id *)error;
- (void)encodePublicShare;
- (void)encodeReportID;
@end

@implementation _DPDAPPayloadEncoder

+ (id)encoderForDonation:(id)donation keys:(id)keys error:(id *)error
{
  donationCopy = donation;
  keysCopy = keys;
  v9 = [_DPDediscoUtils dediscoVersionForDonation:donationCopy];
  if (v9 - 3 < 2)
  {
    v10 = _DPDAP09PayloadEncoder;
LABEL_5:
    v11 = [[v10 alloc] initWithDonation:donationCopy keys:keysCopy error:error];
    goto LABEL_7;
  }

  if (v9 == 2)
  {
    v10 = _DPDAP02PayloadEncoder;
    goto LABEL_5;
  }

  v12 = [NSString stringWithFormat:@"Failed to find matching DAP version from PPM version %lu.", v9];
  v13 = [_DPDediscoError errorWithCode:400 description:v12];

  [v13 logAndStoreInError:error];
  v11 = 0;
LABEL_7:

  return v11;
}

- (id)taskIDWithError:(id *)error
{
  taskProv = [(_DPDAPPayloadEncoder *)self taskProv];
  v5 = [taskProv taskIDWithError:error];

  return v5;
}

- (id)encodedTaskProvExtensionDataWithError:(id *)error
{
  taskProv = [(_DPDAPPayloadEncoder *)self taskProv];
  v5 = [taskProv encodedTaskConfigWithError:error];

  return v5;
}

- (id)dediscoPayloadWithError:(id *)error
{
  v5 = objc_autoreleasePoolPush();
  v14 = 0;
  v6 = [(_DPDAPPayloadEncoder *)self encodedReportWithError:&v14];
  v7 = v14;
  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    v8 = [_DPDediscoPayload alloc];
    taskProv = [(_DPDAPPayloadEncoder *)self taskProv];
    collectionID = [taskProv collectionID];
    v11 = [(_DPDediscoPayload *)v8 initWithCollectionId:collectionID algorithm:&stru_1000741F0 algorithmParameters:0 fsEncryptedShare:0 dsEncryptedShare:0 fsPublicKey:&stru_1000741F0 dsPublicKey:&stru_1000741F0 versionHash:&stru_1000741F0 report:v6];
  }

  else if (error)
  {
    v12 = v7;
    v11 = 0;
    *error = v7;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)encodedReportAuthExtensionDataWithError:(id *)error
{
  v3 = +[_DPLog framework];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10004DBF0(v3);
  }

  return 0;
}

- (_DPDAPPayloadEncoder)initWithDonation:(id)donation keys:(id)keys error:(id *)error
{
  donationCopy = donation;
  keysCopy = keys;
  leaderURL = [keysCopy leaderURL];
  helperURL = [keysCopy helperURL];
  v12 = [_DPTaskProv taskProvFromDonation:donationCopy leaderURL:leaderURL helperURL:helperURL error:error];

  if (v12)
  {
    self = [(_DPDAPPayloadEncoder *)self initWithDonation:donationCopy keys:keysCopy taskProv:v12 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_DPDAPPayloadEncoder)initWithDonation:(id)donation keys:(id)keys taskProv:(id)prov error:(id *)error
{
  donationCopy = donation;
  keysCopy = keys;
  provCopy = prov;
  v24.receiver = self;
  v24.super_class = _DPDAPPayloadEncoder;
  v14 = [(_DPDAPPayloadEncoder *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_donation, donation);
    objc_storeStrong(&v15->_keys, keys);
    objc_storeStrong(&v15->_taskProv, prov);
    if (![(_DPDAPPayloadEncoder *)v15 isDonationValidWithError:error])
    {
      v22 = 0;
      goto LABEL_6;
    }

    secondsSinceEpochWithPrecision = [objc_opt_class() secondsSinceEpochWithPrecision];
    reportID = v15->_reportID;
    v15->_time = secondsSinceEpochWithPrecision;
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
  reportID = [(_DPDAPPayloadEncoder *)self reportID];

  if (!reportID)
  {
    taskProv = [(_DPDAPPayloadEncoder *)self taskProv];
    vdafType = [taskProv vdafType];

    if (vdafType == -65536)
    {
      v9 = [NSMutableData dataWithLength:16];
      arc4random_buf([v9 mutableBytes], 0x10uLL);
    }

    else
    {
      donation = [(_DPDAPPayloadEncoder *)self donation];
      metadata = [donation metadata];
      v8 = [metadata objectForKeyedSubscript:kDPMetadataVDAF];
      v9 = [v8 objectForKeyedSubscript:kDPMetadataVDAFNonce];
    }

    [(_DPDAPPayloadEncoder *)self setReportID:v9];
  }
}

- (void)encodePublicShare
{
  publicShare = [(_DPDAPPayloadEncoder *)self publicShare];

  if (!publicShare)
  {
    taskProv = [(_DPDAPPayloadEncoder *)self taskProv];
    vdafType = [taskProv vdafType];

    if (vdafType == -65536)
    {
      donation = +[NSData data];
      [(_DPDAPPayloadEncoder *)self setPublicShare:?];
    }

    else
    {
      donation = [(_DPDAPPayloadEncoder *)self donation];
      metadata = [donation metadata];
      v7 = [metadata objectForKeyedSubscript:kDPMetadataVDAF];
      v8 = [v7 objectForKeyedSubscript:kDPMetadataVDAFPublicShare];
      [(_DPDAPPayloadEncoder *)self setPublicShare:v8];
    }
  }
}

- (id)encodedInfoForServerRole:(unsigned __int8)role
{
  roleCopy = role;
  v7 = 1;
  inputShareInfoString = [(_DPDAPPayloadEncoder *)self inputShareInfoString];
  v4 = [inputShareInfoString dataUsingEncoding:4];
  v5 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v4 length] + 2);
  [v5 appendData:v4];
  [v5 appendBytes:&v7 length:1];
  [v5 appendBytes:&roleCopy length:1];

  return v5;
}

- (BOOL)encryptLeaderSharesWithError:(id *)error
{
  encryptedLeaderShares = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];

  if (!encryptedLeaderShares)
  {
    keys = [(_DPDAPPayloadEncoder *)self keys];
    destinationPublicKey = [keys destinationPublicKey];
    v8 = [(_DPDAPPayloadEncoder *)self encryptedShareForServerRole:2 publicKey:destinationPublicKey error:error];
    [(_DPDAPPayloadEncoder *)self setEncryptedLeaderShares:v8];
  }

  return encryptedLeaderShares == 0;
}

- (BOOL)encryptHelperSharesWithError:(id *)error
{
  encryptedHelperShares = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];

  if (!encryptedHelperShares)
  {
    keys = [(_DPDAPPayloadEncoder *)self keys];
    facilitatorPublicKey = [keys facilitatorPublicKey];
    v8 = [(_DPDAPPayloadEncoder *)self encryptedShareForServerRole:3 publicKey:facilitatorPublicKey error:error];
    [(_DPDAPPayloadEncoder *)self setEncryptedHelperShares:v8];
  }

  return encryptedHelperShares == 0;
}

- (id)inputShareInfoString
{
  dapVersion = [(_DPDAPPayloadEncoder *)self dapVersion];
  v3 = [NSString stringWithFormat:@"dap-%@ input share", dapVersion];

  return v3;
}

- (BOOL)isDonationValidWithError:(id *)error
{
  taskProv = [(_DPDAPPayloadEncoder *)self taskProv];
  vdafType = [taskProv vdafType];

  if (vdafType == -65536)
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
    errorCopy = error;
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
        donation = [(_DPDAPPayloadEncoder *)self donation];
        metadata = [donation metadata];
        v15 = [metadata objectForKeyedSubscript:v10];
        v16 = [v15 objectForKeyedSubscript:v12];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v18 = [NSString stringWithFormat:@"Invalid VDAF parameter(%@) in metadata.", v12];
          v19 = [_DPDediscoError errorWithCode:701 description:v18];

          [v19 logAndStoreInError:errorCopy];
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
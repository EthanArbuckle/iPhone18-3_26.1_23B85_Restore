@interface _DPDAP02PayloadEncoder
- (BOOL)encodeExtensionsWithError:(id *)error;
- (BOOL)encodeHPKECipherTextWithError:(id *)error;
- (BOOL)encodeReportMetadataWithError:(id *)error;
- (_DPDAP02PayloadEncoder)initWithDonation:(id)donation keys:(id)keys error:(id *)error;
- (id)encodedAdditionalDataWithError:(id *)error;
- (id)encodedReportWithError:(id *)error;
@end

@implementation _DPDAP02PayloadEncoder

- (_DPDAP02PayloadEncoder)initWithDonation:(id)donation keys:(id)keys error:(id *)error
{
  v11.receiver = self;
  v11.super_class = _DPDAP02PayloadEncoder;
  v5 = [(_DPDAPPayloadEncoder *)&v11 initWithDonation:donation keys:keys error:error];
  v6 = v5;
  if (v5)
  {
    extensions = v5->_extensions;
    v5->_extensions = 0;

    hpkeCipherText = v6->_hpkeCipherText;
    v6->_hpkeCipherText = 0;

    reportMetadata = v6->_reportMetadata;
    v6->_reportMetadata = 0;
  }

  return v6;
}

- (id)encodedReportWithError:(id *)error
{
  report = [(_DPDAPPayloadEncoder *)self report];

  if (report)
  {
    report2 = [(_DPDAPPayloadEncoder *)self report];
    goto LABEL_14;
  }

  v7 = [(_DPDAPPayloadEncoder *)self taskIDWithError:error];
  if (!v7)
  {
    goto LABEL_12;
  }

  [(_DPDAP02PayloadEncoder *)self encodeReportMetadataWithError:error];
  reportMetadata = [(_DPDAP02PayloadEncoder *)self reportMetadata];

  if (!reportMetadata)
  {
    goto LABEL_12;
  }

  [(_DPDAPPayloadEncoder *)self encodePublicShare];
  publicShare = [(_DPDAPPayloadEncoder *)self publicShare];
  v10 = [publicShare length];

  if (HIDWORD(v10))
  {
    v11 = @"Public share length exceeds 4GB.";
    goto LABEL_10;
  }

  [(_DPDAP02PayloadEncoder *)self encodeHPKECipherTextWithError:error];
  hpkeCipherText = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];

  if (!hpkeCipherText)
  {
LABEL_12:
    report2 = 0;
    goto LABEL_13;
  }

  hpkeCipherText2 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];
  v14 = [hpkeCipherText2 length];

  if (!HIDWORD(v14))
  {
    v17 = [v7 length];
    reportMetadata2 = [(_DPDAP02PayloadEncoder *)self reportMetadata];
    v19 = [reportMetadata2 length];
    publicShare2 = [(_DPDAPPayloadEncoder *)self publicShare];
    v21 = [publicShare2 length];
    hpkeCipherText3 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];
    v23 = &v19[v17 + [hpkeCipherText3 length] + v21];

    v15 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:v23 + 8];
    [v15 appendData:v7];
    reportMetadata3 = [(_DPDAP02PayloadEncoder *)self reportMetadata];
    [v15 appendData:reportMetadata3];

    publicShare3 = [(_DPDAPPayloadEncoder *)self publicShare];
    [v15 writeUInt32:{objc_msgSend(publicShare3, "length")}];

    publicShare4 = [(_DPDAPPayloadEncoder *)self publicShare];
    [v15 appendData:publicShare4];

    hpkeCipherText4 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];
    [v15 writeUInt32:{objc_msgSend(hpkeCipherText4, "length")}];

    hpkeCipherText5 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];
    [v15 appendData:hpkeCipherText5];

    buffer = [v15 buffer];
    [(_DPDAPPayloadEncoder *)self setReport:buffer];

    report2 = [(_DPDAPPayloadEncoder *)self report];
    goto LABEL_11;
  }

  v11 = @"Encrypted input share length exceeds 4GB.";
LABEL_10:
  v15 = [_DPDediscoError errorWithCode:800 description:v11];
  [v15 logAndStoreInError:error];
  report2 = 0;
LABEL_11:

LABEL_13:
LABEL_14:

  return report2;
}

- (id)encodedAdditionalDataWithError:(id *)error
{
  v5 = [(_DPDAPPayloadEncoder *)self taskIDWithError:?];
  if (v5 && ([(_DPDAP02PayloadEncoder *)self encodeReportMetadataWithError:error], [(_DPDAP02PayloadEncoder *)self reportMetadata], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(_DPDAPPayloadEncoder *)self encodePublicShare];
    v7 = [v5 length];
    reportMetadata = [(_DPDAP02PayloadEncoder *)self reportMetadata];
    v9 = [reportMetadata length];
    publicShare = [(_DPDAPPayloadEncoder *)self publicShare];
    v11 = &v9[v7 + [publicShare length]];

    v12 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:v11 + 4];
    [v12 appendData:v5];
    reportMetadata2 = [(_DPDAP02PayloadEncoder *)self reportMetadata];
    [v12 appendData:reportMetadata2];

    publicShare2 = [(_DPDAPPayloadEncoder *)self publicShare];
    [v12 writeUInt32:{objc_msgSend(publicShare2, "length")}];

    publicShare3 = [(_DPDAPPayloadEncoder *)self publicShare];
    [v12 appendData:publicShare3];

    buffer = [v12 buffer];
  }

  else
  {
    buffer = 0;
  }

  return buffer;
}

- (BOOL)encodeExtensionsWithError:(id *)error
{
  extensions = [(_DPDAP02PayloadEncoder *)self extensions];

  if (extensions)
  {
    return 0;
  }

  v7 = [(_DPDAPPayloadEncoder *)self encodedTaskProvExtensionDataWithError:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 length];
    v6 = v9 < 0x10000;
    if (v9 >= 0x10000)
    {
      v10 = [_DPDediscoError errorWithCode:800 description:@"TaskProv extension data length exceeds 64KB."];
      [v10 logAndStoreInError:error];
    }

    else
    {
      v10 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:{objc_msgSend(v8, "length") + 4}];
      [v10 writeUInt16:65280];
      [v10 writeUInt16:{objc_msgSend(v8, "length")}];
      [v10 appendData:v8];
      buffer = [v10 buffer];
      [(_DPDAP02PayloadEncoder *)self setExtensions:buffer];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)encodeReportMetadataWithError:(id *)error
{
  reportMetadata = [(_DPDAP02PayloadEncoder *)self reportMetadata];

  if (reportMetadata)
  {
    LOBYTE(extensions) = 0;
  }

  else
  {
    [(_DPDAPPayloadEncoder *)self encodeReportID];
    [(_DPDAP02PayloadEncoder *)self encodeExtensionsWithError:error];
    extensions = [(_DPDAP02PayloadEncoder *)self extensions];

    if (extensions)
    {
      extensions = [(_DPDAP02PayloadEncoder *)self extensions];
      v7 = [extensions length];

      LOBYTE(extensions) = v7 < 0x10000;
      if (v7 >= 0x10000)
      {
        v12 = [_DPDediscoError errorWithCode:800 description:@"Extension length exceeds 64KB."];
        [v12 logAndStoreInError:error];
      }

      else
      {
        reportID = [(_DPDAPPayloadEncoder *)self reportID];
        v9 = [reportID length];
        extensions2 = [(_DPDAP02PayloadEncoder *)self extensions];
        v11 = [extensions2 length] + v9;

        v12 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:v11 + 10];
        reportID2 = [(_DPDAPPayloadEncoder *)self reportID];
        [v12 appendData:reportID2];

        [v12 writeUInt64:{-[_DPDAPPayloadEncoder time](self, "time")}];
        extensions3 = [(_DPDAP02PayloadEncoder *)self extensions];
        [v12 writeUInt16:{objc_msgSend(extensions3, "length")}];

        extensions4 = [(_DPDAP02PayloadEncoder *)self extensions];
        [v12 appendData:extensions4];

        buffer = [v12 buffer];
        [(_DPDAP02PayloadEncoder *)self setReportMetadata:buffer];
      }
    }
  }

  return extensions;
}

- (BOOL)encodeHPKECipherTextWithError:(id *)error
{
  hpkeCipherText = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];

  if (hpkeCipherText)
  {
    return 0;
  }

  [(_DPDAPPayloadEncoder *)self encryptLeaderSharesWithError:error];
  encryptedLeaderShares = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
  v7 = [encryptedLeaderShares count];

  if (v7 != 2)
  {
    return 0;
  }

  [(_DPDAPPayloadEncoder *)self encryptHelperSharesWithError:error];
  encryptedHelperShares = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
  v9 = [encryptedHelperShares count];

  if (v9 != 2)
  {
    return 0;
  }

  v10 = 1;
  v11 = @"%@ encrypted key length exceeds 64KB.";
  while (1)
  {
    v12 = v10;
    if (v10)
    {
      [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
    }

    else
    {
      [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
    }
    v13 = ;
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v14 length];

    if (v15 >> 16)
    {
      break;
    }

    v16 = [v13 objectAtIndexedSubscript:1];
    v17 = [v16 length];

    if (HIDWORD(v17))
    {
      v11 = @"%@ encrypted payload length exceeds 4GB.";
      break;
    }

    v10 = 0;
    if ((v12 & 1) == 0)
    {
      encryptedLeaderShares2 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v53 = [encryptedLeaderShares2 objectAtIndexedSubscript:0];
      v52 = [v53 length];
      encryptedLeaderShares3 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v19 = 1;
      v20 = [encryptedLeaderShares3 objectAtIndexedSubscript:1];
      v21 = [v20 length];
      encryptedHelperShares2 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v23 = [encryptedHelperShares2 objectAtIndexedSubscript:0];
      v24 = [v23 length];
      encryptedHelperShares3 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v26 = [encryptedHelperShares3 objectAtIndexedSubscript:1];
      v27 = &v21[v52 + [v26 length] + v24];

      v13 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:v27 + 14];
      keys = [(_DPDAPPayloadEncoder *)self keys];
      leaderHPKEConfigID = [keys leaderHPKEConfigID];

      [v13 writeUChar:leaderHPKEConfigID];
      encryptedLeaderShares4 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v31 = [encryptedLeaderShares4 objectAtIndexedSubscript:0];
      [v13 writeUInt16:{objc_msgSend(v31, "length")}];

      encryptedLeaderShares5 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v33 = [encryptedLeaderShares5 objectAtIndexedSubscript:0];
      [v13 appendData:v33];

      encryptedLeaderShares6 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v35 = [encryptedLeaderShares6 objectAtIndexedSubscript:1];
      [v13 writeUInt32:{objc_msgSend(v35, "length")}];

      encryptedLeaderShares7 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v37 = [encryptedLeaderShares7 objectAtIndexedSubscript:1];
      [v13 appendData:v37];

      keys2 = [(_DPDAPPayloadEncoder *)self keys];
      helperHPKEConfigID = [keys2 helperHPKEConfigID];

      [v13 writeUChar:helperHPKEConfigID];
      encryptedHelperShares4 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v41 = [encryptedHelperShares4 objectAtIndexedSubscript:0];
      [v13 writeUInt16:{objc_msgSend(v41, "length")}];

      encryptedHelperShares5 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v43 = [encryptedHelperShares5 objectAtIndexedSubscript:0];
      [v13 appendData:v43];

      encryptedHelperShares6 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v45 = [encryptedHelperShares6 objectAtIndexedSubscript:1];
      [v13 writeUInt32:{objc_msgSend(v45, "length")}];

      encryptedHelperShares7 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v47 = [encryptedHelperShares7 objectAtIndexedSubscript:1];
      [v13 appendData:v47];

      buffer = [v13 buffer];
      [(_DPDAP02PayloadEncoder *)self setHpkeCipherText:buffer];
      goto LABEL_18;
    }
  }

  v50 = @"Helper";
  if (v12)
  {
    v50 = @"Leader";
  }

  buffer = [NSString stringWithFormat:v11, v50];
  v51 = [_DPDediscoError errorWithCode:800 description:buffer];
  [v51 logAndStoreInError:error];

  v19 = 0;
LABEL_18:

  return v19;
}

@end
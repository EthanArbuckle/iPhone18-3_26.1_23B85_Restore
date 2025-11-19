@interface _DPDAP02PayloadEncoder
- (BOOL)encodeExtensionsWithError:(id *)a3;
- (BOOL)encodeHPKECipherTextWithError:(id *)a3;
- (BOOL)encodeReportMetadataWithError:(id *)a3;
- (_DPDAP02PayloadEncoder)initWithDonation:(id)a3 keys:(id)a4 error:(id *)a5;
- (id)encodedAdditionalDataWithError:(id *)a3;
- (id)encodedReportWithError:(id *)a3;
@end

@implementation _DPDAP02PayloadEncoder

- (_DPDAP02PayloadEncoder)initWithDonation:(id)a3 keys:(id)a4 error:(id *)a5
{
  v11.receiver = self;
  v11.super_class = _DPDAP02PayloadEncoder;
  v5 = [(_DPDAPPayloadEncoder *)&v11 initWithDonation:a3 keys:a4 error:a5];
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

- (id)encodedReportWithError:(id *)a3
{
  v5 = [(_DPDAPPayloadEncoder *)self report];

  if (v5)
  {
    v6 = [(_DPDAPPayloadEncoder *)self report];
    goto LABEL_14;
  }

  v7 = [(_DPDAPPayloadEncoder *)self taskIDWithError:a3];
  if (!v7)
  {
    goto LABEL_12;
  }

  [(_DPDAP02PayloadEncoder *)self encodeReportMetadataWithError:a3];
  v8 = [(_DPDAP02PayloadEncoder *)self reportMetadata];

  if (!v8)
  {
    goto LABEL_12;
  }

  [(_DPDAPPayloadEncoder *)self encodePublicShare];
  v9 = [(_DPDAPPayloadEncoder *)self publicShare];
  v10 = [v9 length];

  if (HIDWORD(v10))
  {
    v11 = @"Public share length exceeds 4GB.";
    goto LABEL_10;
  }

  [(_DPDAP02PayloadEncoder *)self encodeHPKECipherTextWithError:a3];
  v12 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];

  if (!v12)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v13 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];
  v14 = [v13 length];

  if (!HIDWORD(v14))
  {
    v17 = [v7 length];
    v18 = [(_DPDAP02PayloadEncoder *)self reportMetadata];
    v19 = [v18 length];
    v20 = [(_DPDAPPayloadEncoder *)self publicShare];
    v21 = [v20 length];
    v22 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];
    v23 = &v19[v17 + [v22 length] + v21];

    v15 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:v23 + 8];
    [v15 appendData:v7];
    v24 = [(_DPDAP02PayloadEncoder *)self reportMetadata];
    [v15 appendData:v24];

    v25 = [(_DPDAPPayloadEncoder *)self publicShare];
    [v15 writeUInt32:{objc_msgSend(v25, "length")}];

    v26 = [(_DPDAPPayloadEncoder *)self publicShare];
    [v15 appendData:v26];

    v27 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];
    [v15 writeUInt32:{objc_msgSend(v27, "length")}];

    v28 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];
    [v15 appendData:v28];

    v29 = [v15 buffer];
    [(_DPDAPPayloadEncoder *)self setReport:v29];

    v6 = [(_DPDAPPayloadEncoder *)self report];
    goto LABEL_11;
  }

  v11 = @"Encrypted input share length exceeds 4GB.";
LABEL_10:
  v15 = [_DPDediscoError errorWithCode:800 description:v11];
  [v15 logAndStoreInError:a3];
  v6 = 0;
LABEL_11:

LABEL_13:
LABEL_14:

  return v6;
}

- (id)encodedAdditionalDataWithError:(id *)a3
{
  v5 = [(_DPDAPPayloadEncoder *)self taskIDWithError:?];
  if (v5 && ([(_DPDAP02PayloadEncoder *)self encodeReportMetadataWithError:a3], [(_DPDAP02PayloadEncoder *)self reportMetadata], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(_DPDAPPayloadEncoder *)self encodePublicShare];
    v7 = [v5 length];
    v8 = [(_DPDAP02PayloadEncoder *)self reportMetadata];
    v9 = [v8 length];
    v10 = [(_DPDAPPayloadEncoder *)self publicShare];
    v11 = &v9[v7 + [v10 length]];

    v12 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:v11 + 4];
    [v12 appendData:v5];
    v13 = [(_DPDAP02PayloadEncoder *)self reportMetadata];
    [v12 appendData:v13];

    v14 = [(_DPDAPPayloadEncoder *)self publicShare];
    [v12 writeUInt32:{objc_msgSend(v14, "length")}];

    v15 = [(_DPDAPPayloadEncoder *)self publicShare];
    [v12 appendData:v15];

    v16 = [v12 buffer];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)encodeExtensionsWithError:(id *)a3
{
  v5 = [(_DPDAP02PayloadEncoder *)self extensions];

  if (v5)
  {
    return 0;
  }

  v7 = [(_DPDAPPayloadEncoder *)self encodedTaskProvExtensionDataWithError:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 length];
    v6 = v9 < 0x10000;
    if (v9 >= 0x10000)
    {
      v10 = [_DPDediscoError errorWithCode:800 description:@"TaskProv extension data length exceeds 64KB."];
      [v10 logAndStoreInError:a3];
    }

    else
    {
      v10 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:{objc_msgSend(v8, "length") + 4}];
      [v10 writeUInt16:65280];
      [v10 writeUInt16:{objc_msgSend(v8, "length")}];
      [v10 appendData:v8];
      v11 = [v10 buffer];
      [(_DPDAP02PayloadEncoder *)self setExtensions:v11];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)encodeReportMetadataWithError:(id *)a3
{
  v5 = [(_DPDAP02PayloadEncoder *)self reportMetadata];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    [(_DPDAPPayloadEncoder *)self encodeReportID];
    [(_DPDAP02PayloadEncoder *)self encodeExtensionsWithError:a3];
    v6 = [(_DPDAP02PayloadEncoder *)self extensions];

    if (v6)
    {
      v6 = [(_DPDAP02PayloadEncoder *)self extensions];
      v7 = [v6 length];

      LOBYTE(v6) = v7 < 0x10000;
      if (v7 >= 0x10000)
      {
        v12 = [_DPDediscoError errorWithCode:800 description:@"Extension length exceeds 64KB."];
        [v12 logAndStoreInError:a3];
      }

      else
      {
        v8 = [(_DPDAPPayloadEncoder *)self reportID];
        v9 = [v8 length];
        v10 = [(_DPDAP02PayloadEncoder *)self extensions];
        v11 = [v10 length] + v9;

        v12 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:v11 + 10];
        v13 = [(_DPDAPPayloadEncoder *)self reportID];
        [v12 appendData:v13];

        [v12 writeUInt64:{-[_DPDAPPayloadEncoder time](self, "time")}];
        v14 = [(_DPDAP02PayloadEncoder *)self extensions];
        [v12 writeUInt16:{objc_msgSend(v14, "length")}];

        v15 = [(_DPDAP02PayloadEncoder *)self extensions];
        [v12 appendData:v15];

        v16 = [v12 buffer];
        [(_DPDAP02PayloadEncoder *)self setReportMetadata:v16];
      }
    }
  }

  return v6;
}

- (BOOL)encodeHPKECipherTextWithError:(id *)a3
{
  v5 = [(_DPDAP02PayloadEncoder *)self hpkeCipherText];

  if (v5)
  {
    return 0;
  }

  [(_DPDAPPayloadEncoder *)self encryptLeaderSharesWithError:a3];
  v6 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
  v7 = [v6 count];

  if (v7 != 2)
  {
    return 0;
  }

  [(_DPDAPPayloadEncoder *)self encryptHelperSharesWithError:a3];
  v8 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
  v9 = [v8 count];

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
      v54 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v53 = [v54 objectAtIndexedSubscript:0];
      v52 = [v53 length];
      v18 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v19 = 1;
      v20 = [v18 objectAtIndexedSubscript:1];
      v21 = [v20 length];
      v22 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v23 = [v22 objectAtIndexedSubscript:0];
      v24 = [v23 length];
      v25 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v26 = [v25 objectAtIndexedSubscript:1];
      v27 = &v21[v52 + [v26 length] + v24];

      v13 = [[_DPBigEndianDataEncoder alloc] initWithCapacity:v27 + 14];
      v28 = [(_DPDAPPayloadEncoder *)self keys];
      v29 = [v28 leaderHPKEConfigID];

      [v13 writeUChar:v29];
      v30 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v31 = [v30 objectAtIndexedSubscript:0];
      [v13 writeUInt16:{objc_msgSend(v31, "length")}];

      v32 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v33 = [v32 objectAtIndexedSubscript:0];
      [v13 appendData:v33];

      v34 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v35 = [v34 objectAtIndexedSubscript:1];
      [v13 writeUInt32:{objc_msgSend(v35, "length")}];

      v36 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v37 = [v36 objectAtIndexedSubscript:1];
      [v13 appendData:v37];

      v38 = [(_DPDAPPayloadEncoder *)self keys];
      v39 = [v38 helperHPKEConfigID];

      [v13 writeUChar:v39];
      v40 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v41 = [v40 objectAtIndexedSubscript:0];
      [v13 writeUInt16:{objc_msgSend(v41, "length")}];

      v42 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v43 = [v42 objectAtIndexedSubscript:0];
      [v13 appendData:v43];

      v44 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v45 = [v44 objectAtIndexedSubscript:1];
      [v13 writeUInt32:{objc_msgSend(v45, "length")}];

      v46 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v47 = [v46 objectAtIndexedSubscript:1];
      [v13 appendData:v47];

      v48 = [v13 buffer];
      [(_DPDAP02PayloadEncoder *)self setHpkeCipherText:v48];
      goto LABEL_18;
    }
  }

  v50 = @"Helper";
  if (v12)
  {
    v50 = @"Leader";
  }

  v48 = [NSString stringWithFormat:v11, v50];
  v51 = [_DPDediscoError errorWithCode:800 description:v48];
  [v51 logAndStoreInError:a3];

  v19 = 0;
LABEL_18:

  return v19;
}

@end
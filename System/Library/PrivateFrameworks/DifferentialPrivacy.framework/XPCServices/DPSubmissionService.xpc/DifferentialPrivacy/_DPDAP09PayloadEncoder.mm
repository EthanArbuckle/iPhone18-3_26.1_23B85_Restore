@interface _DPDAP09PayloadEncoder
- (_DPDAP09PayloadEncoder)initWithDonation:(id)a3 keys:(id)a4 error:(id *)a5;
- (id)encodedAdditionalDataWithError:(id *)a3;
- (id)encodedPlaintextInputShareForServerRole:(unsigned __int8)a3 error:(id *)a4;
- (id)encodedReportAuthExtensionDataWithError:(id *)a3;
- (id)encodedReportWithError:(id *)a3;
@end

@implementation _DPDAP09PayloadEncoder

- (_DPDAP09PayloadEncoder)initWithDonation:(id)a3 keys:(id)a4 error:(id *)a5
{
  v6.receiver = self;
  v6.super_class = _DPDAP09PayloadEncoder;
  return [(_DPDAPPayloadEncoder *)&v6 initWithDonation:a3 keys:a4 error:a5];
}

- (id)encodedReportWithError:(id *)a3
{
  v5 = [(_DPDAPPayloadEncoder *)self report];

  if (v5)
  {
    goto LABEL_2;
  }

  [(_DPDAPPayloadEncoder *)self encodeReportID];
  [(_DPDAPPayloadEncoder *)self encodePublicShare];
  [(_DPDAPPayloadEncoder *)self encryptLeaderSharesWithError:a3];
  v7 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
  v8 = [v7 count];

  if (v8 == 2)
  {
    [(_DPDAPPayloadEncoder *)self encryptHelperSharesWithError:a3];
    v9 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
    v10 = [v9 count];

    if (v10 == 2)
    {
      v11 = [(_DPDAPPayloadEncoder *)self reportID];
      v25 = [(_DPDAPPayloadEncoder *)self time];
      v24 = [(_DPDAPPayloadEncoder *)self publicShare];
      v28 = [(_DPDAPPayloadEncoder *)self keys];
      v22 = [v28 leaderHPKEConfigID];
      v27 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v21 = [v27 objectAtIndexedSubscript:0];
      v26 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v12 = [v26 objectAtIndexedSubscript:1];
      v23 = [(_DPDAPPayloadEncoder *)self keys];
      v13 = [v23 helperHPKEConfigID];
      v14 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v15 = [v14 objectAtIndexedSubscript:0];
      v16 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v17 = [v16 objectAtIndexedSubscript:1];
      LOBYTE(v20) = v13;
      v18 = [_DPPPM_0_2_1_PayloadEncoderShim encodedReportWithReportID:v11 time:v25 publicShare:v24 leaderHPKEConfigID:v22 leaderEnc:v21 leaderPayload:v12 helperHPKEConfigID:v20 helperEnc:v15 helperPayload:v17 error:a3];
      [(_DPDAPPayloadEncoder *)self setReport:v18];

LABEL_2:
      v6 = [(_DPDAPPayloadEncoder *)self report];
      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)encodedAdditionalDataWithError:(id *)a3
{
  v5 = [(_DPDAPPayloadEncoder *)self taskIDWithError:?];
  if (v5)
  {
    [(_DPDAPPayloadEncoder *)self encodeReportID];
    [(_DPDAPPayloadEncoder *)self encodePublicShare];
    v6 = [(_DPDAPPayloadEncoder *)self reportID];
    v7 = [(_DPDAPPayloadEncoder *)self time];
    v8 = [(_DPDAPPayloadEncoder *)self publicShare];
    v9 = [_DPPPM_0_2_1_PayloadEncoderShim encodedInputShareAADWithTaskID:v5 reportID:v6 time:v7 publicShare:v8 error:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)encodedPlaintextInputShareForServerRole:(unsigned __int8)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [(_DPDAPPayloadEncoder *)self encodedTaskProvExtensionDataWithError:a4];
  if (v7)
  {
    v8 = [(_DPDAPPayloadEncoder *)self donation];
    v9 = v8;
    if (v5 == 2)
    {
      [v8 share1];
    }

    else
    {
      [v8 share2];
    }
    v11 = ;

    v10 = [_DPPPM_0_2_1_PayloadEncoderShim encodedPlaintextInputShareWithTaskProvExtensionData:v7 payload:v11 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)encodedReportAuthExtensionDataWithError:(id *)a3
{
  v5 = [(_DPDAPPayloadEncoder *)self donation];
  v6 = [v5 isPrivateAccessTokenEnabledWithError:a3];

  if (a3 && *a3)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[_DPLog service];
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v9->super, OS_LOG_TYPE_INFO, "Report requires Private Access Token", buf, 2u);
      }

      v9 = objc_alloc_init(_DPPrivateAccessTokenManager);
      v10 = [(_DPDAPPayloadEncoder *)self donation];
      v11 = [v10 getLeaderServerName];

      v12 = [(_DPDAPPayloadEncoder *)self donation];
      v13 = [v12 getLeaderServerName];
      v20 = 0;
      v14 = [(_DPPrivateAccessTokenManager *)v9 reportAuthForAggregator:v13 withError:&v20];
      v15 = v20;

      if (v14)
      {
        v7 = [v14 encodeWithError:a3];
      }

      else if (a3 && v15)
      {
        v16 = v15;
        v7 = 0;
        *a3 = v15;
      }

      else
      {
        v17 = [NSString stringWithFormat:@"Failed to allocate Private Access Token for %@", v11];
        v18 = +[_DPLog service];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000500D0(v17, v18);
        }

        if (a3)
        {
          *a3 = [_DPDediscoError errorWithCode:800 description:v17];
        }

        v7 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10005008C(&v9->super);
      }

      v7 = 0;
    }
  }

  return v7;
}

@end
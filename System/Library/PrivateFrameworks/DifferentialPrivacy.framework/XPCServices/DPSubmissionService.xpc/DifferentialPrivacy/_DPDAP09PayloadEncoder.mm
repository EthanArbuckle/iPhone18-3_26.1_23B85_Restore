@interface _DPDAP09PayloadEncoder
- (_DPDAP09PayloadEncoder)initWithDonation:(id)donation keys:(id)keys error:(id *)error;
- (id)encodedAdditionalDataWithError:(id *)error;
- (id)encodedPlaintextInputShareForServerRole:(unsigned __int8)role error:(id *)error;
- (id)encodedReportAuthExtensionDataWithError:(id *)error;
- (id)encodedReportWithError:(id *)error;
@end

@implementation _DPDAP09PayloadEncoder

- (_DPDAP09PayloadEncoder)initWithDonation:(id)donation keys:(id)keys error:(id *)error
{
  v6.receiver = self;
  v6.super_class = _DPDAP09PayloadEncoder;
  return [(_DPDAPPayloadEncoder *)&v6 initWithDonation:donation keys:keys error:error];
}

- (id)encodedReportWithError:(id *)error
{
  report = [(_DPDAPPayloadEncoder *)self report];

  if (report)
  {
    goto LABEL_2;
  }

  [(_DPDAPPayloadEncoder *)self encodeReportID];
  [(_DPDAPPayloadEncoder *)self encodePublicShare];
  [(_DPDAPPayloadEncoder *)self encryptLeaderSharesWithError:error];
  encryptedLeaderShares = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
  v8 = [encryptedLeaderShares count];

  if (v8 == 2)
  {
    [(_DPDAPPayloadEncoder *)self encryptHelperSharesWithError:error];
    encryptedHelperShares = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
    v10 = [encryptedHelperShares count];

    if (v10 == 2)
    {
      reportID = [(_DPDAPPayloadEncoder *)self reportID];
      time = [(_DPDAPPayloadEncoder *)self time];
      publicShare = [(_DPDAPPayloadEncoder *)self publicShare];
      keys = [(_DPDAPPayloadEncoder *)self keys];
      leaderHPKEConfigID = [keys leaderHPKEConfigID];
      encryptedLeaderShares2 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v21 = [encryptedLeaderShares2 objectAtIndexedSubscript:0];
      encryptedLeaderShares3 = [(_DPDAPPayloadEncoder *)self encryptedLeaderShares];
      v12 = [encryptedLeaderShares3 objectAtIndexedSubscript:1];
      keys2 = [(_DPDAPPayloadEncoder *)self keys];
      helperHPKEConfigID = [keys2 helperHPKEConfigID];
      encryptedHelperShares2 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v15 = [encryptedHelperShares2 objectAtIndexedSubscript:0];
      encryptedHelperShares3 = [(_DPDAPPayloadEncoder *)self encryptedHelperShares];
      v17 = [encryptedHelperShares3 objectAtIndexedSubscript:1];
      LOBYTE(v20) = helperHPKEConfigID;
      v18 = [_DPPPM_0_2_1_PayloadEncoderShim encodedReportWithReportID:reportID time:time publicShare:publicShare leaderHPKEConfigID:leaderHPKEConfigID leaderEnc:v21 leaderPayload:v12 helperHPKEConfigID:v20 helperEnc:v15 helperPayload:v17 error:error];
      [(_DPDAPPayloadEncoder *)self setReport:v18];

LABEL_2:
      report2 = [(_DPDAPPayloadEncoder *)self report];
      goto LABEL_7;
    }
  }

  report2 = 0;
LABEL_7:

  return report2;
}

- (id)encodedAdditionalDataWithError:(id *)error
{
  v5 = [(_DPDAPPayloadEncoder *)self taskIDWithError:?];
  if (v5)
  {
    [(_DPDAPPayloadEncoder *)self encodeReportID];
    [(_DPDAPPayloadEncoder *)self encodePublicShare];
    reportID = [(_DPDAPPayloadEncoder *)self reportID];
    time = [(_DPDAPPayloadEncoder *)self time];
    publicShare = [(_DPDAPPayloadEncoder *)self publicShare];
    v9 = [_DPPPM_0_2_1_PayloadEncoderShim encodedInputShareAADWithTaskID:v5 reportID:reportID time:time publicShare:publicShare error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)encodedPlaintextInputShareForServerRole:(unsigned __int8)role error:(id *)error
{
  roleCopy = role;
  v7 = [(_DPDAPPayloadEncoder *)self encodedTaskProvExtensionDataWithError:error];
  if (v7)
  {
    donation = [(_DPDAPPayloadEncoder *)self donation];
    v9 = donation;
    if (roleCopy == 2)
    {
      [donation share1];
    }

    else
    {
      [donation share2];
    }
    v11 = ;

    v10 = [_DPPPM_0_2_1_PayloadEncoderShim encodedPlaintextInputShareWithTaskProvExtensionData:v7 payload:v11 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)encodedReportAuthExtensionDataWithError:(id *)error
{
  donation = [(_DPDAPPayloadEncoder *)self donation];
  v6 = [donation isPrivateAccessTokenEnabledWithError:error];

  if (error && *error)
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
      donation2 = [(_DPDAPPayloadEncoder *)self donation];
      getLeaderServerName = [donation2 getLeaderServerName];

      donation3 = [(_DPDAPPayloadEncoder *)self donation];
      getLeaderServerName2 = [donation3 getLeaderServerName];
      v20 = 0;
      v14 = [(_DPPrivateAccessTokenManager *)v9 reportAuthForAggregator:getLeaderServerName2 withError:&v20];
      v15 = v20;

      if (v14)
      {
        v7 = [v14 encodeWithError:error];
      }

      else if (error && v15)
      {
        v16 = v15;
        v7 = 0;
        *error = v15;
      }

      else
      {
        v17 = [NSString stringWithFormat:@"Failed to allocate Private Access Token for %@", getLeaderServerName];
        v18 = +[_DPLog service];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000500D0(v17, v18);
        }

        if (error)
        {
          *error = [_DPDediscoError errorWithCode:800 description:v17];
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
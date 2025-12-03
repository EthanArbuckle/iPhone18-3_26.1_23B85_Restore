@interface MIBUNetworkInfoResponse
- (BOOL)_deserialize:(id)_deserialize;
- (MIBUNetworkInfoResponse)init;
- (id)serialize;
@end

@implementation MIBUNetworkInfoResponse

- (MIBUNetworkInfoResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUNetworkInfoResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUNetworkInfoResponse *)v2 setNetworkInfo:0];
  }

  return v3;
}

void __36__MIBUNetworkInfoResponse_serialize__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNetworkInfoResponse_serialize__block_invoke_31()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserialize:(id)_deserialize
{
  _deserializeCopy = _deserialize;
  v5 = [[MIBUDeserializer alloc] initWithData:_deserializeCopy];

  deserialize = [(MIBUDeserializer *)v5 deserialize];
  if (!deserialize)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNetworkInfoResponse _deserialize:];
    }

    v42 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUNetworkInfoResponse *)v42 _deserialize:v43, v44, v45, v46, v47, v48, v49];
    }

    v69 = 0;
    v70 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v34 = 0;
    v33 = 0;
    v37 = 0;
    v39 = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_15;
  }

  v71 = 0;
  v7 = [(MIBUDeserializer *)v5 deserializeResponseError:&v71];
  v64 = v71;
  if (!v7)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNetworkInfoResponse _deserialize:];
    }

    v50 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUNetworkInfoResponse *)v50 _deserialize:v51, v52, v53, v54, v55, v56, v57];
    }

    v69 = 0;
    v70 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v34 = 0;
    v33 = 0;
    v37 = 0;
    v39 = 0;
    v65 = 0;
LABEL_15:
    v31 = 0;
    v62 = 0;
    v63 = 0;
    v40 = 0;
    goto LABEL_4;
  }

  v63 = [deserialize objectForKey:&unk_286AC7E18];
  v62 = [deserialize objectForKey:&unk_286AC7E30];
  v8 = [deserialize objectForKey:&unk_286AC7E48];
  v70 = [deserialize objectForKey:&unk_286AC7E60];
  v69 = [deserialize objectForKey:&unk_286AC7E78];
  v9 = [deserialize objectForKey:&unk_286AC7E90];
  v10 = [deserialize objectForKey:&unk_286AC7EA8];
  v11 = [deserialize objectForKey:&unk_286AC7EC0];
  v68 = [deserialize objectForKey:&unk_286AC7ED8];
  v59 = [deserialize objectForKey:&unk_286AC7EF0];
  v58 = [deserialize objectForKey:&unk_286AC7F08];
  v60 = [deserialize objectForKey:&unk_286AC7F20];
  v61 = [deserialize objectForKey:&unk_286AC7F38];
  v12 = objc_alloc_init(MIBUNetworkInfo);
  [(MIBUNetworkInfoResponse *)self setNetworkInfo:v12];

  networkInfo = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo setNetworkName:v63];

  longValue = [v62 longValue];
  [(MIBUNetworkInfoResponse *)self networkInfo];
  v16 = v15 = v5;
  [v16 setRSSI:longValue];

  longValue2 = [v8 longValue];
  networkInfo2 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo2 setNoise:longValue2];

  longValue3 = [v70 longValue];
  networkInfo3 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo3 setChannel:longValue3];

  intValue = [v69 intValue];
  networkInfo4 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo4 setChannelWidth:intValue];

  v67 = v9;
  intValue2 = [v9 intValue];
  networkInfo5 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo5 setChannelBand:intValue2];

  v66 = v10;
  intValue3 = [v10 intValue];
  networkInfo6 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo6 setPHYMode:intValue3];

  v65 = v11;
  unsignedLongValue = [v11 unsignedLongValue];
  networkInfo7 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo7 setNumberOfSpatialStreams:unsignedLongValue];

  unsignedLongValue2 = [v68 unsignedLongValue];
  networkInfo8 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo8 setMCSIndex:unsignedLongValue2];

  v5 = v15;
  v31 = v8;
  networkInfo9 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v33 = v58;
  v34 = v59;
  [networkInfo9 setMACAddress:?];

  networkInfo10 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [networkInfo10 setIPV4Address:v58];

  networkInfo11 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v37 = v60;
  [networkInfo11 setIPV6Address:?];

  networkInfo12 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v39 = v61;
  [networkInfo12 setBSSID:?];

  v40 = 1;
LABEL_4:
  [(MIBUNFCResponse *)self setError:v64];

  return v40;
}

void __40__MIBUNetworkInfoResponse__deserialize___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUNetworkInfoResponse__deserialize___block_invoke_37()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)serialize
{
  v59[13] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  networkInfo = [(MIBUNetworkInfoResponse *)self networkInfo];

  if (networkInfo)
  {
    if (![(MIBUNFCResponse *)self rejected])
    {
      networkInfo2 = [(MIBUNetworkInfoResponse *)self networkInfo];
      [networkInfo2 networkName];
      networkInfo19 = 0x277CCA000;
      v51 = v56 = v3;
      if (v51)
      {
        networkInfo3 = [(MIBUNetworkInfoResponse *)self networkInfo];
        networkName = [networkInfo3 networkName];
      }

      else
      {
        networkName = objc_opt_new();
        networkInfo3 = networkName;
      }

      v29 = networkName;
      v59[0] = networkName;
      networkInfo4 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [networkInfo4 RSSI];
      v49 = [OUTLINED_FUNCTION_7_0() numberWithInteger:?];
      v59[1] = v49;
      networkInfo5 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [networkInfo5 noise];
      v47 = [OUTLINED_FUNCTION_7_0() numberWithInteger:?];
      v59[2] = v47;
      networkInfo6 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [networkInfo6 channel];
      v45 = [OUTLINED_FUNCTION_7_0() numberWithInteger:?];
      v59[3] = v45;
      networkInfo7 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [networkInfo7 channelWidth];
      v43 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[4] = v43;
      networkInfo8 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [networkInfo8 channelBand];
      v41 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[5] = v41;
      networkInfo9 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [networkInfo9 PHYMode];
      v39 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[6] = v39;
      networkInfo10 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [networkInfo10 numberOfSpatialStreams];
      v37 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[7] = v37;
      networkInfo11 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [networkInfo11 MCSIndex];
      v35 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[8] = v35;
      networkInfo12 = [(MIBUNetworkInfoResponse *)self networkInfo];
      mACAddress = [networkInfo12 MACAddress];
      if (mACAddress)
      {
        networkInfo13 = [(MIBUNetworkInfoResponse *)self networkInfo];
        mACAddress2 = [networkInfo13 MACAddress];
      }

      else
      {
        mACAddress2 = objc_opt_new();
        networkInfo13 = mACAddress2;
      }

      v28 = mACAddress2;
      v59[9] = mACAddress2;
      networkInfo14 = [(MIBUNetworkInfoResponse *)self networkInfo];
      iPV4Address = [networkInfo14 iPV4Address];
      if (iPV4Address)
      {
        networkInfo15 = [(MIBUNetworkInfoResponse *)self networkInfo];
        iPV4Address2 = [networkInfo15 iPV4Address];
      }

      else
      {
        iPV4Address2 = objc_opt_new();
        networkInfo15 = iPV4Address2;
      }

      v31 = iPV4Address;
      v59[10] = iPV4Address2;
      networkInfo16 = [(MIBUNetworkInfoResponse *)self networkInfo];
      iPV6Address = [networkInfo16 iPV6Address];
      if (iPV6Address)
      {
        networkInfo17 = [(MIBUNetworkInfoResponse *)self networkInfo];
        iPV6Address2 = [networkInfo17 iPV6Address];
      }

      else
      {
        iPV6Address2 = objc_opt_new();
        networkInfo17 = iPV6Address2;
      }

      v14 = iPV6Address2;
      v59[11] = iPV6Address2;
      networkInfo18 = [(MIBUNetworkInfoResponse *)self networkInfo];
      bSSID = [networkInfo18 BSSID];
      if (bSSID)
      {
        networkInfo19 = [(MIBUNetworkInfoResponse *)self networkInfo];
        bSSID2 = [networkInfo19 BSSID];
      }

      else
      {
        bSSID2 = objc_opt_new();
      }

      v59[12] = bSSID2;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:13];
      v30 = [v56 serialize:&unk_286AC83E8 withValue:v18];

      if (bSSID)
      {

        bSSID2 = networkInfo19;
      }

      if (iPV6Address)
      {
      }

      v3 = v56;
      if (v31)
      {
      }

      if (mACAddress)
      {
      }

      if (v51)
      {
      }

      if (v30)
      {
        error = [(MIBUNFCResponse *)self error];
        v20 = [v56 serializeResponseError:error];

        if (v20)
        {
          networkInfo = [v56 serializedData];
          goto LABEL_31;
        }

        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_33_0);
        }

        v24 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          v25 = v24;
          error2 = [(MIBUNFCResponse *)self error];
          *buf = 138543362;
          v58 = error2;
          _os_log_error_impl(&dword_259ABF000, v25, OS_LOG_TYPE_ERROR, "Failed to serialize response error: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          dispatch_once(&MIBUOnceToken, &__block_literal_global_6);
        }

        v23 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_259ABF000, v23, OS_LOG_TYPE_ERROR, "Failed to serialize network info", buf, 2u);
        }
      }
    }

    networkInfo = 0;
  }

LABEL_31:

  v21 = *MEMORY[0x277D85DE8];

  return networkInfo;
}

@end
@interface MIBUNetworkInfoResponse
- (BOOL)_deserialize:(id)a3;
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

- (BOOL)_deserialize:(id)a3
{
  v4 = a3;
  v5 = [[MIBUDeserializer alloc] initWithData:v4];

  v6 = [(MIBUDeserializer *)v5 deserialize];
  if (!v6)
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

  v63 = [v6 objectForKey:&unk_286AC7E18];
  v62 = [v6 objectForKey:&unk_286AC7E30];
  v8 = [v6 objectForKey:&unk_286AC7E48];
  v70 = [v6 objectForKey:&unk_286AC7E60];
  v69 = [v6 objectForKey:&unk_286AC7E78];
  v9 = [v6 objectForKey:&unk_286AC7E90];
  v10 = [v6 objectForKey:&unk_286AC7EA8];
  v11 = [v6 objectForKey:&unk_286AC7EC0];
  v68 = [v6 objectForKey:&unk_286AC7ED8];
  v59 = [v6 objectForKey:&unk_286AC7EF0];
  v58 = [v6 objectForKey:&unk_286AC7F08];
  v60 = [v6 objectForKey:&unk_286AC7F20];
  v61 = [v6 objectForKey:&unk_286AC7F38];
  v12 = objc_alloc_init(MIBUNetworkInfo);
  [(MIBUNetworkInfoResponse *)self setNetworkInfo:v12];

  v13 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v13 setNetworkName:v63];

  v14 = [v62 longValue];
  [(MIBUNetworkInfoResponse *)self networkInfo];
  v16 = v15 = v5;
  [v16 setRSSI:v14];

  v17 = [v8 longValue];
  v18 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v18 setNoise:v17];

  v19 = [v70 longValue];
  v20 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v20 setChannel:v19];

  v21 = [v69 intValue];
  v22 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v22 setChannelWidth:v21];

  v67 = v9;
  v23 = [v9 intValue];
  v24 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v24 setChannelBand:v23];

  v66 = v10;
  v25 = [v10 intValue];
  v26 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v26 setPHYMode:v25];

  v65 = v11;
  v27 = [v11 unsignedLongValue];
  v28 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v28 setNumberOfSpatialStreams:v27];

  v29 = [v68 unsignedLongValue];
  v30 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v30 setMCSIndex:v29];

  v5 = v15;
  v31 = v8;
  v32 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v33 = v58;
  v34 = v59;
  [v32 setMACAddress:?];

  v35 = [(MIBUNetworkInfoResponse *)self networkInfo];
  [v35 setIPV4Address:v58];

  v36 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v37 = v60;
  [v36 setIPV6Address:?];

  v38 = [(MIBUNetworkInfoResponse *)self networkInfo];
  v39 = v61;
  [v38 setBSSID:?];

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
  v4 = [(MIBUNetworkInfoResponse *)self networkInfo];

  if (v4)
  {
    if (![(MIBUNFCResponse *)self rejected])
    {
      v52 = [(MIBUNetworkInfoResponse *)self networkInfo];
      [v52 networkName];
      v5 = 0x277CCA000;
      v51 = v56 = v3;
      if (v51)
      {
        v55 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v6 = [v55 networkName];
      }

      else
      {
        v6 = objc_opt_new();
        v55 = v6;
      }

      v29 = v6;
      v59[0] = v6;
      v50 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [v50 RSSI];
      v49 = [OUTLINED_FUNCTION_7_0() numberWithInteger:?];
      v59[1] = v49;
      v48 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [v48 noise];
      v47 = [OUTLINED_FUNCTION_7_0() numberWithInteger:?];
      v59[2] = v47;
      v46 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [v46 channel];
      v45 = [OUTLINED_FUNCTION_7_0() numberWithInteger:?];
      v59[3] = v45;
      v44 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [v44 channelWidth];
      v43 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[4] = v43;
      v42 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [v42 channelBand];
      v41 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[5] = v41;
      v40 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [v40 PHYMode];
      v39 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[6] = v39;
      v38 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [v38 numberOfSpatialStreams];
      v37 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[7] = v37;
      v36 = [OUTLINED_FUNCTION_2_1() networkInfo];
      [v36 MCSIndex];
      v35 = [OUTLINED_FUNCTION_7_0() numberWithUnsignedInteger:?];
      v59[8] = v35;
      v34 = [(MIBUNetworkInfoResponse *)self networkInfo];
      v33 = [v34 MACAddress];
      if (v33)
      {
        v54 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v7 = [v54 MACAddress];
      }

      else
      {
        v7 = objc_opt_new();
        v54 = v7;
      }

      v28 = v7;
      v59[9] = v7;
      v32 = [(MIBUNetworkInfoResponse *)self networkInfo];
      v8 = [v32 iPV4Address];
      if (v8)
      {
        v53 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v9 = [v53 iPV4Address];
      }

      else
      {
        v9 = objc_opt_new();
        v53 = v9;
      }

      v31 = v8;
      v59[10] = v9;
      v10 = [(MIBUNetworkInfoResponse *)self networkInfo];
      v11 = [v10 iPV6Address];
      if (v11)
      {
        v12 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v13 = [v12 iPV6Address];
      }

      else
      {
        v13 = objc_opt_new();
        v12 = v13;
      }

      v14 = v13;
      v59[11] = v13;
      v15 = [(MIBUNetworkInfoResponse *)self networkInfo];
      v16 = [v15 BSSID];
      if (v16)
      {
        v5 = [(MIBUNetworkInfoResponse *)self networkInfo];
        v17 = [v5 BSSID];
      }

      else
      {
        v17 = objc_opt_new();
      }

      v59[12] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:13];
      v30 = [v56 serialize:&unk_286AC83E8 withValue:v18];

      if (v16)
      {

        v17 = v5;
      }

      if (v11)
      {
      }

      v3 = v56;
      if (v31)
      {
      }

      if (v33)
      {
      }

      if (v51)
      {
      }

      if (v30)
      {
        v19 = [(MIBUNFCResponse *)self error];
        v20 = [v56 serializeResponseError:v19];

        if (v20)
        {
          v4 = [v56 serializedData];
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
          v26 = [(MIBUNFCResponse *)self error];
          *buf = 138543362;
          v58 = v26;
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

    v4 = 0;
  }

LABEL_31:

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

@end
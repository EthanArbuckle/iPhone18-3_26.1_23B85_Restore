@interface MIBUDeviceInfoResponse
- (BOOL)_deserialize:(id)a3;
- (MIBUDeviceInfoResponse)init;
- (id)serialize;
@end

@implementation MIBUDeviceInfoResponse

- (MIBUDeviceInfoResponse)init
{
  v5.receiver = self;
  v5.super_class = MIBUDeviceInfoResponse;
  v2 = [(MIBUNFCResponse *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUDeviceInfoResponse *)v2 setSerialNumber:0];
    [(MIBUDeviceInfoResponse *)v3 setEcid:0];
    [(MIBUDeviceInfoResponse *)v3 setBoardID:0];
    [(MIBUDeviceInfoResponse *)v3 setChipID:0];
    [(MIBUDeviceInfoResponse *)v3 setApNonce:0];
    [(MIBUDeviceInfoResponse *)v3 setSepNonce:0];
    [(MIBUDeviceInfoResponse *)v3 setSecurityDomain:0];
    [(MIBUDeviceInfoResponse *)v3 setProductionMode:0];
    [(MIBUDeviceInfoResponse *)v3 setSecurityMode:0];
    [(MIBUDeviceInfoResponse *)v3 setUidMode:0];
    [(MIBUDeviceInfoResponse *)v3 setSikaFuse:0];
    [(MIBUDeviceInfoResponse *)v3 setSikaFuseExists:1];
  }

  return v3;
}

void __35__MIBUDeviceInfoResponse_serialize__block_invoke()
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

void __35__MIBUDeviceInfoResponse_serialize__block_invoke_29()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_35()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_38()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_41()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_44()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_47()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_50()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_53()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_59()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_62()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_65()
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

void __39__MIBUDeviceInfoResponse__deserialize___block_invoke_68()
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
  v34[12] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (![(MIBUNFCResponse *)self rejected])
  {
    v31 = [(MIBUDeviceInfoResponse *)self serialNumber];
    v34[0] = v31;
    v30 = [(MIBUDeviceInfoResponse *)self ecid];
    v34[1] = v30;
    v29 = [(MIBUDeviceInfoResponse *)self boardID];
    v34[2] = v29;
    v28 = [(MIBUDeviceInfoResponse *)self chipID];
    v34[3] = v28;
    v27 = [(MIBUDeviceInfoResponse *)self securityDomain];
    v34[4] = v27;
    v26 = [(MIBUDeviceInfoResponse *)self apNonce];
    if (v26)
    {
      v4 = [(MIBUDeviceInfoResponse *)self apNonce];
    }

    else
    {
      v4 = objc_opt_new();
    }

    v25 = v4;
    v34[5] = v4;
    v24 = [(MIBUDeviceInfoResponse *)self sepNonce];
    if (v24)
    {
      v5 = [(MIBUDeviceInfoResponse *)self sepNonce];
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;
    v34[6] = v5;
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[MIBUDeviceInfoResponse productionMode](self, "productionMode")}];
    v34[7] = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[MIBUDeviceInfoResponse securityMode](self, "securityMode")}];
    v34[8] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[MIBUDeviceInfoResponse uidMode](self, "uidMode")}];
    v34[9] = v9;
    v10 = [(MIBUDeviceInfoResponse *)self sikaFuse];
    v34[10] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[MIBUDeviceInfoResponse sikaFuseExists](self, "sikaFuseExists")}];
    v34[11] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:12];
    v13 = [v3 serialize:&unk_286AC83B8 withValue:v12];

    if (v13)
    {
      v14 = [(MIBUNFCResponse *)self error];
      v15 = [v3 serializeResponseError:v14];

      if (v15)
      {
        v16 = [v3 serializedData];
        goto LABEL_11;
      }

      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_31);
      }

      v21 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = [(MIBUNFCResponse *)self error];
        *buf = 138543362;
        v33 = v23;
        _os_log_error_impl(&dword_259ABF000, v22, OS_LOG_TYPE_ERROR, "Failed to serialize response error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_4);
      }

      v19 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_0(&dword_259ABF000, v19, v20, "Failed to serialize serial number & nonce", buf);
      }
    }
  }

  v16 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)_deserialize:(id)a3
{
  v8 = a3;
  v9 = [[MIBUDeserializer alloc] initWithData:v8];

  v10 = [(MIBUDeserializer *)v9 deserialize];
  v94 = v9;
  if (!v10)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_34);
    }

    v11 = MIBUConnObj;
    if (!OUTLINED_FUNCTION_5_0())
    {
      goto LABEL_37;
    }

    *buf = 0;
    v36 = "Failed to deserialize payload for DeviceInfo command";
    goto LABEL_82;
  }

  v100 = 0;
  v11 = [(MIBUDeserializer *)v9 deserializeResponseError:&v100];
  v12 = v100;
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_37);
    }

    v11 = MIBUConnObj;
    if (OUTLINED_FUNCTION_5_0())
    {
      OUTLINED_FUNCTION_1_1(&dword_259ABF000, v37, v38, "Failed to deserialize response error", v39, v40, v41, v42, v83, v84, v87, v90, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0();
    v26 = 0;
    goto LABEL_44;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0();
    v26 = 0;
    goto LABEL_22;
  }

  v14 = [v10 objectForKey:&unk_286AC7CE0];
  if (!v14)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_40);
    }

    v11 = MIBUConnObj;
    if (!OUTLINED_FUNCTION_5_0())
    {
      goto LABEL_37;
    }

    *buf = 0;
    v36 = "Failed to deserialize serial number";
LABEL_82:
    OUTLINED_FUNCTION_1_1(&dword_259ABF000, v30, v31, v36, v32, v33, v34, v35, v83, v84, v87, v90, v93, v9, v95, v96, v97, v98, v99, v100, buf[0]);
LABEL_37:
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0();
    v26 = 0;
LABEL_43:
    v13 = 0;
LABEL_44:
    LOBYTE(v9) = 0;
    goto LABEL_23;
  }

  v13 = v14;
  v15 = [v10 objectForKey:&unk_286AC7CF8];
  if (!v15)
  {
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_43);
    }

    v26 = v13;
    v11 = MIBUConnObj;
    if (OUTLINED_FUNCTION_5_0())
    {
      OUTLINED_FUNCTION_1_1(&dword_259ABF000, v43, v44, "Failed to deserialize ecid", v45, v46, v47, v48, v83, v84, v87, v90, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0();
    goto LABEL_43;
  }

  v16 = v15;
  v17 = [v10 objectForKey:&unk_286AC7D10];
  if (!v17)
  {
    v91 = v16;
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_46);
    }

    v26 = v13;
    if (OUTLINED_FUNCTION_5_0())
    {
      OUTLINED_FUNCTION_1_1(&dword_259ABF000, v49, v50, "Failed to deserialize board ID", v51, v52, v53, v54, v83, v84, v87, v91, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    OUTLINED_FUNCTION_0_0();
    v4 = 0;
    v3 = 0;
    goto LABEL_65;
  }

  v18 = v17;
  v19 = [v10 objectForKey:&unk_286AC7D28];
  if (!v19)
  {
    v91 = v16;
    v3 = v18;
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_49);
    }

    v26 = v13;
    if (OUTLINED_FUNCTION_5_0())
    {
      OUTLINED_FUNCTION_1_1(&dword_259ABF000, v55, v56, "Failed to deserialize chip ID", v57, v58, v59, v60, v83, v84, v87, v91, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    OUTLINED_FUNCTION_0_0();
    v4 = 0;
    goto LABEL_65;
  }

  v20 = v19;
  v21 = [v10 objectForKey:&unk_286AC7D40];
  if (!v21)
  {
    v4 = v20;
    v91 = v16;
    v3 = v18;
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_52);
    }

    v26 = v13;
    if (OUTLINED_FUNCTION_5_0())
    {
      OUTLINED_FUNCTION_1_1(&dword_259ABF000, v61, v62, "Failed to deserialize security domain", v63, v64, v65, v66, v83, v84, v87, v91, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    OUTLINED_FUNCTION_0_0();
    goto LABEL_65;
  }

  v4 = v21;
  v22 = [v10 objectForKey:&unk_286AC7D58];
  if (!v22)
  {
    OUTLINED_FUNCTION_8_0();
    v91 = v16;
    v3 = v18;
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_55_0);
    }

    v26 = v13;
    if (OUTLINED_FUNCTION_5_0())
    {
      OUTLINED_FUNCTION_1_1(&dword_259ABF000, v67, v68, "Failed to deserialize ap nonce", v69, v70, v71, v72, v83, v84, v87, v91, v93, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    v95 = 0;
    v96 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v93 = 0;
    v5 = 0;
LABEL_65:
    OUTLINED_FUNCTION_6_0();
    v11 = v91;
    goto LABEL_23;
  }

  v5 = v22;
  v6 = [v10 objectForKey:&unk_286AC7D70];
  v23 = [v10 objectForKey:&unk_286AC7D88];
  v93 = v6;
  if (v23)
  {
    v98 = v23;
    v24 = [v10 objectForKey:&unk_286AC7DA0];
    if (v24)
    {
      v97 = v24;
      v25 = [v10 objectForKey:&unk_286AC7DB8];
      if (v25)
      {
        v95 = v25;
        v96 = [v10 objectForKey:&unk_286AC7DE8];
        if (v96)
        {
          v99 = [v10 objectForKey:&unk_286AC7DD0];
          if (!v99)
          {
            OUTLINED_FUNCTION_8_0();
            v3 = v18;
            v88 = v5;
            v11 = v16;
            if (MIBUOnceToken != -1)
            {
              dispatch_once(&MIBUOnceToken, &__block_literal_global_70_0);
            }

            v26 = v13;
            v27 = MIBUConnObj;
            if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_4_0(&dword_259ABF000, v27, v28, "Failed to deserialize sikaFuse", buf);
            }

            v99 = 0;
            OUTLINED_FUNCTION_6_0();
            v5 = v88;
            goto LABEL_23;
          }
        }

        else
        {
          v99 = 0;
        }

        [(MIBUDeviceInfoResponse *)self setSerialNumber:v13];
        [(MIBUDeviceInfoResponse *)self setEcid:v16];
        [(MIBUDeviceInfoResponse *)self setBoardID:v18];
        [(MIBUDeviceInfoResponse *)self setChipID:v20];
        [(MIBUDeviceInfoResponse *)self setSecurityDomain:v4];
        [(MIBUDeviceInfoResponse *)self setApNonce:v5];
        [(MIBUDeviceInfoResponse *)self setSepNonce:v6];
        [v98 BOOLValue];
        [OUTLINED_FUNCTION_7_0() setProductionMode:?];
        [v97 BOOLValue];
        [OUTLINED_FUNCTION_7_0() setSecurityMode:?];
        [v95 BOOLValue];
        [OUTLINED_FUNCTION_7_0() setUidMode:?];
        [(MIBUDeviceInfoResponse *)self setSikaFuse:v99];
        [v96 BOOLValue];
        [OUTLINED_FUNCTION_7_0() setSikaFuseExists:?];
        OUTLINED_FUNCTION_8_0();
        v3 = v18;
        v11 = v16;
        v26 = v13;
        v13 = 0;
LABEL_22:
        LOBYTE(v9) = 1;
        goto LABEL_23;
      }

      v86 = v20;
      v3 = v18;
      v6 = v4;
      v11 = v16;
      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_67_0);
      }

      v26 = v13;
      v81 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_0(&dword_259ABF000, v81, v82, "Failed to deserialize UID mode", buf);
      }

      v95 = 0;
      v96 = 0;
      v99 = 0;
      OUTLINED_FUNCTION_6_0();
      v4 = v86;
    }

    else
    {
      v85 = v18;
      v6 = v4;
      v4 = v20;
      v11 = v16;
      if (MIBUOnceToken != -1)
      {
        dispatch_once(&MIBUOnceToken, &__block_literal_global_64);
      }

      v26 = v13;
      v79 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4_0(&dword_259ABF000, v79, v80, "Failed to deserialize security mode", buf);
      }

      v95 = 0;
      v96 = 0;
      v99 = 0;
      v97 = 0;
      OUTLINED_FUNCTION_6_0();
      v3 = v85;
    }
  }

  else
  {
    v89 = v5;
    OUTLINED_FUNCTION_8_0();
    v92 = v16;
    v3 = v18;
    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_61_0);
    }

    v26 = v13;
    if (OUTLINED_FUNCTION_5_0())
    {
      OUTLINED_FUNCTION_1_1(&dword_259ABF000, v73, v74, "Failed to deserialize production mode", v75, v76, v77, v78, v83, v84, v5, v92, v6, v9, v95, v96, v97, v98, v99, v100, 0);
    }

    v95 = 0;
    v96 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    OUTLINED_FUNCTION_6_0();
    v5 = v89;
    v11 = v92;
  }

LABEL_23:
  [(MIBUNFCResponse *)self setError:v13];

  return v9;
}

@end
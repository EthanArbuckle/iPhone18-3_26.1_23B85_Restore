@interface CWFRoamStatus
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoamStatus:(id)a3;
- (CWFRoamStatus)init;
- (CWFRoamStatus)initWithCoder:(id)a3;
- (NSString)description;
- (NSString)networkName;
- (double)duration;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFRoamStatus

- (CWFRoamStatus)init
{
  v6.receiver = self;
  v6.super_class = CWFRoamStatus;
  v2 = [(CWFRoamStatus *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;
  }

  return v2;
}

- (double)duration
{
  if (![(CWFRoamStatus *)self timeEnded])
  {
    return 0.0;
  }

  [(CWFRoamStatus *)self timeEnded];
  [(CWFRoamStatus *)self timeStarted];
  v3 = [(CWFRoamStatus *)self timeEnded];
  return (v3 - [(CWFRoamStatus *)self timeStarted]) / 1000.0;
}

- (NSString)networkName
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_SSID encoding:4];

  return v2;
}

- (NSString)description
{
  v22 = MEMORY[0x1E696AEC0];
  v25 = [(NSUUID *)self->_UUID UUIDString];
  v3 = [v25 substringToIndex:5];
  interfaceName = self->_interfaceName;
  v21 = v3;
  v24 = [(CWFRoamStatus *)self networkName];
  v19 = [v24 redactedForWiFi];
  v23 = CWFHexadecimalStringFromData(self->_SSID);
  v18 = [v23 redactedForWiFi];
  v17 = sub_1E0BCC248(self->_startedAt);
  v16 = sub_1E0BCC248(self->_endedAt);
  [(CWFRoamStatus *)self duration];
  v5 = (v4 * 1000.0);
  v6 = sub_1E0BEEF44(self->_reason);
  v7 = sub_1E0BEEF44(self->_status);
  originOUI = self->_originOUI;
  v9 = [(NSString *)self->_fromBSSID redactedForWiFi];
  fromRSSI = self->_fromRSSI;
  targetOUI = self->_targetOUI;
  fromChannel = self->_fromChannel;
  v13 = [(NSString *)self->_toBSSID redactedForWiFi];
  v14 = [v22 stringWithFormat:@"uuid=%@, intf=%@, ssid='%@' (%@), start=%@, end=%@ (%lums), reason=%@, status=%@, from=[oui=%@ bssid=%@ ch=%lu rssi=%ld] to=[oui=%@ bssid=%@ ch=%lu rssi=%ld]", v21, interfaceName, v19, v18, v17, v16, v5, v6, v7, originOUI, v9, fromChannel, fromRSSI, targetOUI, v13, self->_toChannel, self->_toRSSI];

  return v14;
}

- (BOOL)isEqualToRoamStatus:(id)a3
{
  v6 = a3;
  UUID = self->_UUID;
  v8 = [v6 UUID];
  if (UUID != v8)
  {
    if (!self->_UUID || ([v6 UUID], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_78;
    }

    v3 = v9;
    v10 = self->_UUID;
    v4 = [v6 UUID];
    if (![(NSUUID *)v10 isEqual:v4])
    {
      v11 = 0;
LABEL_77:

      goto LABEL_78;
    }
  }

  interfaceName = self->_interfaceName;
  v13 = [v6 interfaceName];
  if (interfaceName != v13)
  {
    if (!self->_interfaceName)
    {
      v11 = 0;
LABEL_60:

      goto LABEL_76;
    }

    v14 = [v6 interfaceName];
    if (!v14)
    {
      goto LABEL_75;
    }

    v115 = v14;
    v15 = self->_interfaceName;
    v16 = [v6 interfaceName];
    v17 = v15;
    v18 = v16;
    if (([(NSString *)v17 isEqual:v16]& 1) == 0)
    {

LABEL_74:
      goto LABEL_75;
    }

    v113 = v18;
  }

  SSID = self->_SSID;
  v20 = [v6 SSID];
  if (SSID == v20)
  {
    v114 = SSID;
    goto LABEL_19;
  }

  if (!self->_SSID)
  {
    v11 = 0;
    goto LABEL_58;
  }

  v21 = [v6 SSID];
  if (v21)
  {
    v114 = SSID;
    v110 = v21;
    v22 = self->_SSID;
    v23 = [v6 SSID];
    v24 = v22;
    v25 = v23;
    if (([(NSData *)v24 isEqual:v23]& 1) == 0)
    {

LABEL_71:
      goto LABEL_72;
    }

    v111 = v25;
LABEL_19:
    originOUI = self->_originOUI;
    v27 = [v6 originOUI];
    if (originOUI != v27)
    {
      if (!self->_originOUI)
      {
        v11 = 0;
        goto LABEL_56;
      }

      v112 = v27;
      v28 = [v6 originOUI];
      if (v28)
      {
        v104 = interfaceName;
        v29 = originOUI;
        v107 = v28;
        v30 = v4;
        v31 = self->_originOUI;
        v32 = [v6 originOUI];
        v33 = v31;
        v34 = v32;
        if (([(NSString *)v33 isEqual:v32]& 1) != 0)
        {
          v103 = v34;
          v4 = v30;
          v109 = v29;
          interfaceName = v104;
          goto LABEL_27;
        }

        v4 = v30;
        if (v114 != v20)
        {
        }

        v52 = v104 == v13;
      }

      else
      {

        if (v114 != v20)
        {
        }

        v52 = interfaceName == v13;
      }

      if (v52)
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    }

    v109 = originOUI;
    v112 = v27;
LABEL_27:
    fromBSSID = self->_fromBSSID;
    v36 = [v6 fromBSSID];
    if (fromBSSID == v36)
    {
      v108 = v36;
      v106 = v4;
    }

    else
    {
      if (!self->_fromBSSID)
      {
        v11 = 0;
        goto LABEL_54;
      }

      v108 = v36;
      v37 = [v6 fromBSSID];
      if (!v37)
      {
        v53 = v108;
        goto LABEL_62;
      }

      v102 = v37;
      v106 = v4;
      v38 = self->_fromBSSID;
      v39 = [v6 fromBSSID];
      v40 = v38;
      v41 = v39;
      if (([(NSString *)v40 isEqual:v39]& 1) == 0)
      {

        v56 = v108;
        goto LABEL_66;
      }

      v101 = v41;
    }

    fromChannel = self->_fromChannel;
    if (fromChannel != [v6 fromChannel] || (fromRSSI = self->_fromRSSI, fromRSSI != objc_msgSend(v6, "fromRSSI")))
    {
      v11 = 0;
      v36 = v108;
      v4 = v106;
      if (fromBSSID == v108)
      {
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    targetOUI = self->_targetOUI;
    v45 = [v6 targetOUI];
    if (targetOUI == v45)
    {
      v96 = fromBSSID;
      v99 = v45;
      goto LABEL_80;
    }

    if (!self->_targetOUI)
    {
      v11 = 0;
      goto LABEL_108;
    }

    v99 = v45;
    v46 = [v6 targetOUI];
    if (v46)
    {
      v97 = targetOUI;
      v93 = v46;
      v47 = self->_targetOUI;
      v48 = [v6 targetOUI];
      v49 = v47;
      v50 = v48;
      if (([(NSString *)v49 isEqual:v48]& 1) == 0)
      {

        v53 = v108;
        v4 = v106;
        if (fromBSSID != v108)
        {
LABEL_122:
          v80 = v53;

LABEL_63:
          v54 = v112;
          if (v109 != v112)
          {
LABEL_64:
            v55 = v54;

LABEL_69:
            if (v114 == v20)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

LABEL_68:

          goto LABEL_69;
        }

LABEL_62:

        goto LABEL_63;
      }

      v96 = fromBSSID;
      v92 = v50;
      targetOUI = v97;
LABEL_80:
      toBSSID = self->_toBSSID;
      v59 = [v6 toBSSID];
      v94 = toBSSID;
      v98 = targetOUI;
      if (toBSSID == v59)
      {
        v95 = v59;
        goto LABEL_87;
      }

      if (!self->_toBSSID)
      {
        v11 = 0;
        fromBSSID = v96;
LABEL_106:

        v45 = v99;
        if (v98 != v99)
        {

          v45 = v99;
        }

LABEL_108:
        v4 = v106;

        v36 = v108;
        if (fromBSSID == v108)
        {
LABEL_54:

          v27 = v112;
          if (v109 != v112)
          {

            v27 = v112;
          }

LABEL_56:

          if (v114 == v20)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

LABEL_43:
        v51 = v36;

        v36 = v51;
        goto LABEL_54;
      }

      v95 = v59;
      v60 = [v6 toBSSID];
      v61 = v96;
      if (!v60)
      {
        v11 = 0;
        v4 = v106;
        goto LABEL_111;
      }

      v91 = v60;
      v62 = self->_toBSSID;
      v63 = [v6 toBSSID];
      v64 = v62;
      v65 = v63;
      if (([(NSString *)v64 isEqual:v63]& 1) != 0)
      {
        v90 = v65;
LABEL_87:
        toChannel = self->_toChannel;
        if (toChannel != [v6 toChannel] || (toRSSI = self->_toRSSI, toRSSI != objc_msgSend(v6, "toRSSI")) || (status = self->_status, status != objc_msgSend(v6, "status")) || (reason = self->_reason, reason != objc_msgSend(v6, "reason")) || (timeStarted = self->_timeStarted, timeStarted != objc_msgSend(v6, "timeStarted")) || (timeEnded = self->_timeEnded, timeEnded != objc_msgSend(v6, "timeEnded")))
        {
          v76 = 0;
          v11 = 0;
          v59 = v95;
          v77 = v94 == v95;
          goto LABEL_99;
        }

        v105 = interfaceName;
        v89 = v20;
        startedAt = self->_startedAt;
        v73 = [v6 startedAt];
        v74 = startedAt;
        if (startedAt != v73)
        {
          if (!self->_startedAt || ([v6 startedAt], (v88 = objc_claimAutoreleasedReturnValue()) == 0))
          {
LABEL_136:
            v76 = 0;
            goto LABEL_137;
          }

          v75 = self->_startedAt;
          v87 = [v6 startedAt];
          if (([(NSDate *)v75 isEqual:?]& 1) == 0)
          {

            v11 = 0;
LABEL_129:
            if (v94 == v95)
            {

              v79 = v99;
              interfaceName = v105;
              v4 = v106;
              v20 = v89;
              v61 = v96;
              if (v98 == v99)
              {
LABEL_113:

                if (v61 != v108)
                {
                }

                if (v109 != v112)
                {
                }

                if (v114 == v20)
                {
                  goto LABEL_58;
                }

LABEL_57:

LABEL_58:
                if (interfaceName != v13)
                {
                }

                goto LABEL_60;
              }

LABEL_112:
              v100 = v79;

              v79 = v100;
              goto LABEL_113;
            }

            interfaceName = v105;
            v4 = v106;
            v20 = v89;
            v61 = v96;
LABEL_111:

            v79 = v99;
            if (v98 == v99)
            {
              goto LABEL_113;
            }

            goto LABEL_112;
          }
        }

        endedAt = self->_endedAt;
        v82 = [v6 endedAt];
        v83 = v82;
        v76 = endedAt == v82;
        if (v76 || !self->_endedAt)
        {

          if (v74 == v73)
          {
LABEL_137:

            v11 = v76;
            v59 = v95;
            v77 = v94 == v95;
            v20 = v89;
            interfaceName = v105;
LABEL_99:
            fromBSSID = v96;
            if (!v77)
            {
              v78 = v59;

              v59 = v78;
              v11 = v76;
            }

            goto LABEL_106;
          }
        }

        else
        {
          v86 = [v6 endedAt];
          if (v86)
          {
            v84 = self->_endedAt;
            v85 = [v6 endedAt];
            v11 = [(NSDate *)v84 isEqual:v85];

            if (v74 != v73)
            {
            }

            goto LABEL_129;
          }

          if (v74 == v73)
          {
            goto LABEL_136;
          }
        }

        goto LABEL_137;
      }

      v4 = v106;
      if (v98 != v99)
      {
      }

      v53 = v108;
      if (v96 != v108)
      {
        goto LABEL_122;
      }

      goto LABEL_62;
    }

    v56 = v108;
    if (fromBSSID != v108)
    {

LABEL_67:
      v54 = v112;
      v4 = v106;
      if (v109 != v112)
      {
        goto LABEL_64;
      }

      goto LABEL_68;
    }

LABEL_66:

    goto LABEL_67;
  }

LABEL_72:

  if (interfaceName != v13)
  {
LABEL_73:

    goto LABEL_74;
  }

LABEL_75:

  v11 = 0;
LABEL_76:
  if (UUID != v8)
  {
    goto LABEL_77;
  }

LABEL_78:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRoamStatus *)self isEqualToRoamStatus:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v17 = [(NSUUID *)self->_UUID hash];
  v3 = [(NSString *)self->_interfaceName hash];
  v4 = [(NSData *)self->_SSID hash];
  v5 = [(NSDate *)self->_startedAt hash];
  v6 = [(NSDate *)self->_endedAt hash];
  v7 = [(NSString *)self->_originOUI hash];
  v8 = [(NSString *)self->_fromBSSID hash];
  fromChannel = self->_fromChannel;
  fromRSSI = self->_fromRSSI;
  v9 = [(NSString *)self->_targetOUI hash];
  v10 = [(NSString *)self->_toBSSID hash];
  v12.i64[0] = fromRSSI;
  v11.i64[0] = fromChannel;
  v12.i64[1] = self->_toRSSI;
  v11.i64[1] = self->_toChannel;
  v13 = veorq_s8(v11, v12);
  return *&veor_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) ^ self->_timeStarted ^ self->_timeEnded ^ self->_status ^ v10 ^ self->_reason ^ v9 ^ v8 ^ v7 ^ v6 ^ v5 ^ v4 ^ v17 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFRoamStatus allocWithZone:?]];
  [(CWFRoamStatus *)v4 setUUID:self->_UUID];
  [(CWFRoamStatus *)v4 setInterfaceName:self->_interfaceName];
  [(CWFRoamStatus *)v4 setSSID:self->_SSID];
  [(CWFRoamStatus *)v4 setReason:self->_reason];
  [(CWFRoamStatus *)v4 setStatus:self->_status];
  [(CWFRoamStatus *)v4 setStartedAt:self->_startedAt];
  [(CWFRoamStatus *)v4 setEndedAt:self->_endedAt];
  [(CWFRoamStatus *)v4 setOriginOUI:self->_originOUI];
  [(CWFRoamStatus *)v4 setFromBSSID:self->_fromBSSID];
  [(CWFRoamStatus *)v4 setFromChannel:self->_fromChannel];
  [(CWFRoamStatus *)v4 setFromRSSI:self->_fromRSSI];
  [(CWFRoamStatus *)v4 setTargetOUI:self->_targetOUI];
  [(CWFRoamStatus *)v4 setToBSSID:self->_toBSSID];
  [(CWFRoamStatus *)v4 setToChannel:self->_toChannel];
  [(CWFRoamStatus *)v4 setToRSSI:self->_toRSSI];
  [(CWFRoamStatus *)v4 setTimeStarted:self->_timeStarted];
  [(CWFRoamStatus *)v4 setTimeEnded:self->_timeEnded];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"_UUID"];
  [v5 encodeObject:self->_interfaceName forKey:@"_interfaceName"];
  [v5 encodeObject:self->_startedAt forKey:@"_startedAt"];
  [v5 encodeObject:self->_endedAt forKey:@"_endedAt"];
  [v5 encodeObject:self->_SSID forKey:@"_SSID"];
  [v5 encodeObject:self->_originOUI forKey:@"_originOUI"];
  [v5 encodeObject:self->_fromBSSID forKey:@"_fromBSSID"];
  [v5 encodeInteger:self->_fromRSSI forKey:@"_fromRSSI"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_fromChannel];
  [v5 encodeObject:v6 forKey:@"_fromChannel"];

  [v5 encodeObject:self->_targetOUI forKey:@"_targetOUI"];
  [v5 encodeObject:self->_toBSSID forKey:@"_toBSSID"];
  [v5 encodeInteger:self->_toRSSI forKey:@"_toRSSI"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_toChannel];
  [v5 encodeObject:v7 forKey:@"_toChannel"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_reason];
  [v5 encodeObject:v8 forKey:@"_reason"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_status];
  [v5 encodeObject:v9 forKey:@"_status"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timeStarted];
  [v5 encodeObject:v10 forKey:@"_timeStarted"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timeEnded];
  [v5 encodeObject:v11 forKey:@"_timeEnded"];
}

- (CWFRoamStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CWFRoamStatus;
  v5 = [(CWFRoamStatus *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startedAt"];
    startedAt = v5->_startedAt;
    v5->_startedAt = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_endedAt"];
    endedAt = v5->_endedAt;
    v5->_endedAt = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_SSID"];
    SSID = v5->_SSID;
    v5->_SSID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originOUI"];
    originOUI = v5->_originOUI;
    v5->_originOUI = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fromBSSID"];
    fromBSSID = v5->_fromBSSID;
    v5->_fromBSSID = v18;

    v5->_fromRSSI = [v4 decodeIntegerForKey:@"_fromRSSI"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fromChannel"];
    v5->_fromChannel = [v20 unsignedIntegerValue];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_targetOUI"];
    targetOUI = v5->_targetOUI;
    v5->_targetOUI = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_toBSSID"];
    toBSSID = v5->_toBSSID;
    v5->_toBSSID = v23;

    v5->_toRSSI = [v4 decodeIntegerForKey:@"_toRSSI"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_toChannel"];
    v5->_toChannel = [v25 unsignedIntegerValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_reason"];
    v5->_reason = [v26 unsignedIntegerValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    v5->_status = [v27 unsignedIntegerValue];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timeStarted"];
    v5->_timeStarted = [v28 unsignedLongLongValue];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timeEnded"];
    v5->_timeEnded = [v29 unsignedLongLongValue];
  }

  return v5;
}

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFRoamStatus *)self UUID];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"uuid"];

  v6 = [(CWFRoamStatus *)self interfaceName];
  [v3 setObject:v6 forKeyedSubscript:@"interface_name"];

  v7 = [(CWFRoamStatus *)self startedAt];
  [v3 setObject:v7 forKeyedSubscript:@"started_at"];

  v8 = [(CWFRoamStatus *)self endedAt];
  [v3 setObject:v8 forKeyedSubscript:@"ended_at"];

  v9 = MEMORY[0x1E696AD98];
  [(CWFRoamStatus *)self duration];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"duration"];

  v11 = [(CWFRoamStatus *)self networkName];
  [v3 setObject:v11 forKeyedSubscript:@"network_name"];

  v12 = [(CWFRoamStatus *)self originOUI];
  [v3 setObject:v12 forKeyedSubscript:@"origin_oui"];

  v13 = [(CWFRoamStatus *)self targetOUI];
  [v3 setObject:v13 forKeyedSubscript:@"target_oui"];

  v14 = [(CWFRoamStatus *)self fromBSSID];
  [v3 setObject:v14 forKeyedSubscript:@"from_bssid"];

  v15 = [(CWFRoamStatus *)self toBSSID];
  [v3 setObject:v15 forKeyedSubscript:@"to_bssid"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFRoamStatus fromChannel](self, "fromChannel")}];
  [v3 setObject:v16 forKeyedSubscript:@"from_channel"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFRoamStatus toChannel](self, "toChannel")}];
  [v3 setObject:v17 forKeyedSubscript:@"to_channel"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFRoamStatus fromRSSI](self, "fromRSSI")}];
  [v3 setObject:v18 forKeyedSubscript:@"from_rssi"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFRoamStatus toRSSI](self, "toRSSI")}];
  [v3 setObject:v19 forKeyedSubscript:@"to_rssi"];

  v20 = sub_1E0BEEF44([(CWFRoamStatus *)self reason]);
  [v3 setObject:v20 forKeyedSubscript:@"roam_reason"];

  v21 = sub_1E0BEEF44([(CWFRoamStatus *)self status]);
  [v3 setObject:v21 forKeyedSubscript:@"status"];

  v22 = sub_1E0BCEC64(v3, 0, 1u);
  if (v22)
  {
    v23 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v22];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end
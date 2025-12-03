@interface CWFRoamStatus
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoamStatus:(id)status;
- (CWFRoamStatus)init;
- (CWFRoamStatus)initWithCoder:(id)coder;
- (NSString)description;
- (NSString)networkName;
- (double)duration;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFRoamStatus

- (CWFRoamStatus)init
{
  v6.receiver = self;
  v6.super_class = CWFRoamStatus;
  v2 = [(CWFRoamStatus *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;
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
  timeEnded = [(CWFRoamStatus *)self timeEnded];
  return (timeEnded - [(CWFRoamStatus *)self timeStarted]) / 1000.0;
}

- (NSString)networkName
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_SSID encoding:4];

  return v2;
}

- (NSString)description
{
  v22 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v3 = [uUIDString substringToIndex:5];
  interfaceName = self->_interfaceName;
  v21 = v3;
  networkName = [(CWFRoamStatus *)self networkName];
  redactedForWiFi = [networkName redactedForWiFi];
  v23 = CWFHexadecimalStringFromData(self->_SSID);
  redactedForWiFi2 = [v23 redactedForWiFi];
  v17 = sub_1E0BCC248(self->_startedAt);
  v16 = sub_1E0BCC248(self->_endedAt);
  [(CWFRoamStatus *)self duration];
  v5 = (v4 * 1000.0);
  v6 = sub_1E0BEEF44(self->_reason);
  v7 = sub_1E0BEEF44(self->_status);
  originOUI = self->_originOUI;
  redactedForWiFi3 = [(NSString *)self->_fromBSSID redactedForWiFi];
  fromRSSI = self->_fromRSSI;
  targetOUI = self->_targetOUI;
  fromChannel = self->_fromChannel;
  redactedForWiFi4 = [(NSString *)self->_toBSSID redactedForWiFi];
  v14 = [v22 stringWithFormat:@"uuid=%@, intf=%@, ssid='%@' (%@), start=%@, end=%@ (%lums), reason=%@, status=%@, from=[oui=%@ bssid=%@ ch=%lu rssi=%ld] to=[oui=%@ bssid=%@ ch=%lu rssi=%ld]", v21, interfaceName, redactedForWiFi, redactedForWiFi2, v17, v16, v5, v6, v7, originOUI, redactedForWiFi3, fromChannel, fromRSSI, targetOUI, redactedForWiFi4, self->_toChannel, self->_toRSSI];

  return v14;
}

- (BOOL)isEqualToRoamStatus:(id)status
{
  statusCopy = status;
  UUID = self->_UUID;
  uUID = [statusCopy UUID];
  if (UUID != uUID)
  {
    if (!self->_UUID || ([statusCopy UUID], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_78;
    }

    v3 = v9;
    v10 = self->_UUID;
    uUID2 = [statusCopy UUID];
    if (![(NSUUID *)v10 isEqual:uUID2])
    {
      v11 = 0;
LABEL_77:

      goto LABEL_78;
    }
  }

  interfaceName = self->_interfaceName;
  interfaceName = [statusCopy interfaceName];
  if (interfaceName != interfaceName)
  {
    if (!self->_interfaceName)
    {
      v11 = 0;
LABEL_60:

      goto LABEL_76;
    }

    interfaceName2 = [statusCopy interfaceName];
    if (!interfaceName2)
    {
      goto LABEL_75;
    }

    v115 = interfaceName2;
    v15 = self->_interfaceName;
    interfaceName3 = [statusCopy interfaceName];
    v17 = v15;
    v18 = interfaceName3;
    if (([(NSString *)v17 isEqual:interfaceName3]& 1) == 0)
    {

LABEL_74:
      goto LABEL_75;
    }

    v113 = v18;
  }

  SSID = self->_SSID;
  sSID = [statusCopy SSID];
  if (SSID == sSID)
  {
    v114 = SSID;
    goto LABEL_19;
  }

  if (!self->_SSID)
  {
    v11 = 0;
    goto LABEL_58;
  }

  sSID2 = [statusCopy SSID];
  if (sSID2)
  {
    v114 = SSID;
    v110 = sSID2;
    v22 = self->_SSID;
    sSID3 = [statusCopy SSID];
    v24 = v22;
    v25 = sSID3;
    if (([(NSData *)v24 isEqual:sSID3]& 1) == 0)
    {

LABEL_71:
      goto LABEL_72;
    }

    v111 = v25;
LABEL_19:
    originOUI = self->_originOUI;
    originOUI = [statusCopy originOUI];
    if (originOUI != originOUI)
    {
      if (!self->_originOUI)
      {
        v11 = 0;
        goto LABEL_56;
      }

      v112 = originOUI;
      originOUI2 = [statusCopy originOUI];
      if (originOUI2)
      {
        v104 = interfaceName;
        v29 = originOUI;
        v107 = originOUI2;
        v30 = uUID2;
        v31 = self->_originOUI;
        originOUI3 = [statusCopy originOUI];
        v33 = v31;
        v34 = originOUI3;
        if (([(NSString *)v33 isEqual:originOUI3]& 1) != 0)
        {
          v103 = v34;
          uUID2 = v30;
          v109 = v29;
          interfaceName = v104;
          goto LABEL_27;
        }

        uUID2 = v30;
        if (v114 != sSID)
        {
        }

        v52 = v104 == interfaceName;
      }

      else
      {

        if (v114 != sSID)
        {
        }

        v52 = interfaceName == interfaceName;
      }

      if (v52)
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    }

    v109 = originOUI;
    v112 = originOUI;
LABEL_27:
    fromBSSID = self->_fromBSSID;
    fromBSSID = [statusCopy fromBSSID];
    if (fromBSSID == fromBSSID)
    {
      v108 = fromBSSID;
      v106 = uUID2;
    }

    else
    {
      if (!self->_fromBSSID)
      {
        v11 = 0;
        goto LABEL_54;
      }

      v108 = fromBSSID;
      fromBSSID2 = [statusCopy fromBSSID];
      if (!fromBSSID2)
      {
        v53 = v108;
        goto LABEL_62;
      }

      v102 = fromBSSID2;
      v106 = uUID2;
      v38 = self->_fromBSSID;
      fromBSSID3 = [statusCopy fromBSSID];
      v40 = v38;
      v41 = fromBSSID3;
      if (([(NSString *)v40 isEqual:fromBSSID3]& 1) == 0)
      {

        v56 = v108;
        goto LABEL_66;
      }

      v101 = v41;
    }

    fromChannel = self->_fromChannel;
    if (fromChannel != [statusCopy fromChannel] || (fromRSSI = self->_fromRSSI, fromRSSI != objc_msgSend(statusCopy, "fromRSSI")))
    {
      v11 = 0;
      fromBSSID = v108;
      uUID2 = v106;
      if (fromBSSID == v108)
      {
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    targetOUI = self->_targetOUI;
    targetOUI = [statusCopy targetOUI];
    if (targetOUI == targetOUI)
    {
      v96 = fromBSSID;
      v99 = targetOUI;
      goto LABEL_80;
    }

    if (!self->_targetOUI)
    {
      v11 = 0;
      goto LABEL_108;
    }

    v99 = targetOUI;
    targetOUI2 = [statusCopy targetOUI];
    if (targetOUI2)
    {
      v97 = targetOUI;
      v93 = targetOUI2;
      v47 = self->_targetOUI;
      targetOUI3 = [statusCopy targetOUI];
      v49 = v47;
      v50 = targetOUI3;
      if (([(NSString *)v49 isEqual:targetOUI3]& 1) == 0)
      {

        v53 = v108;
        uUID2 = v106;
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
            if (v114 == sSID)
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
      toBSSID = [statusCopy toBSSID];
      v94 = toBSSID;
      v98 = targetOUI;
      if (toBSSID == toBSSID)
      {
        v95 = toBSSID;
        goto LABEL_87;
      }

      if (!self->_toBSSID)
      {
        v11 = 0;
        fromBSSID = v96;
LABEL_106:

        targetOUI = v99;
        if (v98 != v99)
        {

          targetOUI = v99;
        }

LABEL_108:
        uUID2 = v106;

        fromBSSID = v108;
        if (fromBSSID == v108)
        {
LABEL_54:

          originOUI = v112;
          if (v109 != v112)
          {

            originOUI = v112;
          }

LABEL_56:

          if (v114 == sSID)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }

LABEL_43:
        v51 = fromBSSID;

        fromBSSID = v51;
        goto LABEL_54;
      }

      v95 = toBSSID;
      toBSSID2 = [statusCopy toBSSID];
      v61 = v96;
      if (!toBSSID2)
      {
        v11 = 0;
        uUID2 = v106;
        goto LABEL_111;
      }

      v91 = toBSSID2;
      v62 = self->_toBSSID;
      toBSSID3 = [statusCopy toBSSID];
      v64 = v62;
      v65 = toBSSID3;
      if (([(NSString *)v64 isEqual:toBSSID3]& 1) != 0)
      {
        v90 = v65;
LABEL_87:
        toChannel = self->_toChannel;
        if (toChannel != [statusCopy toChannel] || (toRSSI = self->_toRSSI, toRSSI != objc_msgSend(statusCopy, "toRSSI")) || (status = self->_status, status != objc_msgSend(statusCopy, "status")) || (reason = self->_reason, reason != objc_msgSend(statusCopy, "reason")) || (timeStarted = self->_timeStarted, timeStarted != objc_msgSend(statusCopy, "timeStarted")) || (timeEnded = self->_timeEnded, timeEnded != objc_msgSend(statusCopy, "timeEnded")))
        {
          v76 = 0;
          v11 = 0;
          toBSSID = v95;
          v77 = v94 == v95;
          goto LABEL_99;
        }

        v105 = interfaceName;
        v89 = sSID;
        startedAt = self->_startedAt;
        startedAt = [statusCopy startedAt];
        v74 = startedAt;
        if (startedAt != startedAt)
        {
          if (!self->_startedAt || ([statusCopy startedAt], (v88 = objc_claimAutoreleasedReturnValue()) == 0))
          {
LABEL_136:
            v76 = 0;
            goto LABEL_137;
          }

          v75 = self->_startedAt;
          startedAt2 = [statusCopy startedAt];
          if (([(NSDate *)v75 isEqual:?]& 1) == 0)
          {

            v11 = 0;
LABEL_129:
            if (v94 == v95)
            {

              v79 = v99;
              interfaceName = v105;
              uUID2 = v106;
              sSID = v89;
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

                if (v114 == sSID)
                {
                  goto LABEL_58;
                }

LABEL_57:

LABEL_58:
                if (interfaceName != interfaceName)
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
            uUID2 = v106;
            sSID = v89;
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
        endedAt = [statusCopy endedAt];
        v83 = endedAt;
        v76 = endedAt == endedAt;
        if (v76 || !self->_endedAt)
        {

          if (v74 == startedAt)
          {
LABEL_137:

            v11 = v76;
            toBSSID = v95;
            v77 = v94 == v95;
            sSID = v89;
            interfaceName = v105;
LABEL_99:
            fromBSSID = v96;
            if (!v77)
            {
              v78 = toBSSID;

              toBSSID = v78;
              v11 = v76;
            }

            goto LABEL_106;
          }
        }

        else
        {
          endedAt2 = [statusCopy endedAt];
          if (endedAt2)
          {
            v84 = self->_endedAt;
            endedAt3 = [statusCopy endedAt];
            v11 = [(NSDate *)v84 isEqual:endedAt3];

            if (v74 != startedAt)
            {
            }

            goto LABEL_129;
          }

          if (v74 == startedAt)
          {
            goto LABEL_136;
          }
        }

        goto LABEL_137;
      }

      uUID2 = v106;
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
      uUID2 = v106;
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

  if (interfaceName != interfaceName)
  {
LABEL_73:

    goto LABEL_74;
  }

LABEL_75:

  v11 = 0;
LABEL_76:
  if (UUID != uUID)
  {
    goto LABEL_77;
  }

LABEL_78:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFRoamStatus *)self isEqualToRoamStatus:v5];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"_UUID"];
  [coderCopy encodeObject:self->_interfaceName forKey:@"_interfaceName"];
  [coderCopy encodeObject:self->_startedAt forKey:@"_startedAt"];
  [coderCopy encodeObject:self->_endedAt forKey:@"_endedAt"];
  [coderCopy encodeObject:self->_SSID forKey:@"_SSID"];
  [coderCopy encodeObject:self->_originOUI forKey:@"_originOUI"];
  [coderCopy encodeObject:self->_fromBSSID forKey:@"_fromBSSID"];
  [coderCopy encodeInteger:self->_fromRSSI forKey:@"_fromRSSI"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_fromChannel];
  [coderCopy encodeObject:v6 forKey:@"_fromChannel"];

  [coderCopy encodeObject:self->_targetOUI forKey:@"_targetOUI"];
  [coderCopy encodeObject:self->_toBSSID forKey:@"_toBSSID"];
  [coderCopy encodeInteger:self->_toRSSI forKey:@"_toRSSI"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_toChannel];
  [coderCopy encodeObject:v7 forKey:@"_toChannel"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_reason];
  [coderCopy encodeObject:v8 forKey:@"_reason"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_status];
  [coderCopy encodeObject:v9 forKey:@"_status"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timeStarted];
  [coderCopy encodeObject:v10 forKey:@"_timeStarted"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timeEnded];
  [coderCopy encodeObject:v11 forKey:@"_timeEnded"];
}

- (CWFRoamStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = CWFRoamStatus;
  v5 = [(CWFRoamStatus *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startedAt"];
    startedAt = v5->_startedAt;
    v5->_startedAt = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_endedAt"];
    endedAt = v5->_endedAt;
    v5->_endedAt = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_SSID"];
    SSID = v5->_SSID;
    v5->_SSID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_originOUI"];
    originOUI = v5->_originOUI;
    v5->_originOUI = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fromBSSID"];
    fromBSSID = v5->_fromBSSID;
    v5->_fromBSSID = v18;

    v5->_fromRSSI = [coderCopy decodeIntegerForKey:@"_fromRSSI"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fromChannel"];
    v5->_fromChannel = [v20 unsignedIntegerValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_targetOUI"];
    targetOUI = v5->_targetOUI;
    v5->_targetOUI = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_toBSSID"];
    toBSSID = v5->_toBSSID;
    v5->_toBSSID = v23;

    v5->_toRSSI = [coderCopy decodeIntegerForKey:@"_toRSSI"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_toChannel"];
    v5->_toChannel = [v25 unsignedIntegerValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_reason"];
    v5->_reason = [v26 unsignedIntegerValue];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    v5->_status = [v27 unsignedIntegerValue];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timeStarted"];
    v5->_timeStarted = [v28 unsignedLongLongValue];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timeEnded"];
    v5->_timeEnded = [v29 unsignedLongLongValue];
  }

  return v5;
}

- (id)JSONCompatibleKeyValueMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  uUID = [(CWFRoamStatus *)self UUID];
  uUIDString = [uUID UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"uuid"];

  interfaceName = [(CWFRoamStatus *)self interfaceName];
  [v3 setObject:interfaceName forKeyedSubscript:@"interface_name"];

  startedAt = [(CWFRoamStatus *)self startedAt];
  [v3 setObject:startedAt forKeyedSubscript:@"started_at"];

  endedAt = [(CWFRoamStatus *)self endedAt];
  [v3 setObject:endedAt forKeyedSubscript:@"ended_at"];

  v9 = MEMORY[0x1E696AD98];
  [(CWFRoamStatus *)self duration];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"duration"];

  networkName = [(CWFRoamStatus *)self networkName];
  [v3 setObject:networkName forKeyedSubscript:@"network_name"];

  originOUI = [(CWFRoamStatus *)self originOUI];
  [v3 setObject:originOUI forKeyedSubscript:@"origin_oui"];

  targetOUI = [(CWFRoamStatus *)self targetOUI];
  [v3 setObject:targetOUI forKeyedSubscript:@"target_oui"];

  fromBSSID = [(CWFRoamStatus *)self fromBSSID];
  [v3 setObject:fromBSSID forKeyedSubscript:@"from_bssid"];

  toBSSID = [(CWFRoamStatus *)self toBSSID];
  [v3 setObject:toBSSID forKeyedSubscript:@"to_bssid"];

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
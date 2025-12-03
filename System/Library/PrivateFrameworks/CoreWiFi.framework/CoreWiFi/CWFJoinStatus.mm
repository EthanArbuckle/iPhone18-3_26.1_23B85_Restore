@interface CWFJoinStatus
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToJoinStatus:(id)status;
- (CWFJoinStatus)init;
- (CWFJoinStatus)initWithCoder:(id)coder;
- (NSString)description;
- (double)duration;
- (double)durationUntilAssociationEnded;
- (double)durationUntilAuthenticationEnded;
- (double)durationUntilIPv4Assigned;
- (double)durationUntilIPv4Primary;
- (double)durationUntilIPv6Assigned;
- (double)durationUntilIPv6Primary;
- (double)durationUntilLinkUp;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionForEAP8021XControlState;
- (id)descriptionForEAPOLClientStatus;
- (id)descriptionForEAPOLControlMode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFJoinStatus

- (CWFJoinStatus)init
{
  v6.receiver = self;
  v6.super_class = CWFJoinStatus;
  v2 = [(CWFJoinStatus *)&v6 init];
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
  endedAt = [(CWFJoinStatus *)self endedAt];
  if (endedAt)
  {
    endedAt2 = [(CWFJoinStatus *)self endedAt];
    [endedAt2 timeIntervalSinceReferenceDate];
    v6 = v5;
    startedAt = [(CWFJoinStatus *)self startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v8 = 0.0;
    if (v6 >= v9)
    {
      endedAt3 = [(CWFJoinStatus *)self endedAt];
      [endedAt3 timeIntervalSinceReferenceDate];
      v12 = v11;
      startedAt2 = [(CWFJoinStatus *)self startedAt];
      [startedAt2 timeIntervalSinceReferenceDate];
      v8 = v12 - v14;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)durationUntilAssociationEnded
{
  associationEndedAt = [(CWFJoinStatus *)self associationEndedAt];
  if (associationEndedAt)
  {
    associationEndedAt2 = [(CWFJoinStatus *)self associationEndedAt];
    [associationEndedAt2 timeIntervalSinceReferenceDate];
    v6 = v5;
    startedAt = [(CWFJoinStatus *)self startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v8 = 0.0;
    if (v6 >= v9)
    {
      associationEndedAt3 = [(CWFJoinStatus *)self associationEndedAt];
      [associationEndedAt3 timeIntervalSinceReferenceDate];
      v12 = v11;
      startedAt2 = [(CWFJoinStatus *)self startedAt];
      [startedAt2 timeIntervalSinceReferenceDate];
      v8 = v12 - v14;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)durationUntilAuthenticationEnded
{
  authenticationEndedAt = [(CWFJoinStatus *)self authenticationEndedAt];
  if (authenticationEndedAt)
  {
    authenticationEndedAt2 = [(CWFJoinStatus *)self authenticationEndedAt];
    [authenticationEndedAt2 timeIntervalSinceReferenceDate];
    v6 = v5;
    startedAt = [(CWFJoinStatus *)self startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v8 = 0.0;
    if (v6 >= v9)
    {
      authenticationEndedAt3 = [(CWFJoinStatus *)self authenticationEndedAt];
      [authenticationEndedAt3 timeIntervalSinceReferenceDate];
      v12 = v11;
      startedAt2 = [(CWFJoinStatus *)self startedAt];
      [startedAt2 timeIntervalSinceReferenceDate];
      v8 = v12 - v14;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)durationUntilIPv4Assigned
{
  iPv4AssignedAt = [(CWFJoinStatus *)self IPv4AssignedAt];
  if (iPv4AssignedAt)
  {
    iPv4AssignedAt2 = [(CWFJoinStatus *)self IPv4AssignedAt];
    [iPv4AssignedAt2 timeIntervalSinceReferenceDate];
    v6 = v5;
    startedAt = [(CWFJoinStatus *)self startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v8 = 0.0;
    if (v6 >= v9)
    {
      iPv4AssignedAt3 = [(CWFJoinStatus *)self IPv4AssignedAt];
      [iPv4AssignedAt3 timeIntervalSinceReferenceDate];
      v12 = v11;
      startedAt2 = [(CWFJoinStatus *)self startedAt];
      [startedAt2 timeIntervalSinceReferenceDate];
      v8 = v12 - v14;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)durationUntilIPv6Assigned
{
  iPv6AssignedAt = [(CWFJoinStatus *)self IPv6AssignedAt];
  if (iPv6AssignedAt)
  {
    iPv6AssignedAt2 = [(CWFJoinStatus *)self IPv6AssignedAt];
    [iPv6AssignedAt2 timeIntervalSinceReferenceDate];
    v6 = v5;
    startedAt = [(CWFJoinStatus *)self startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v8 = 0.0;
    if (v6 >= v9)
    {
      iPv6AssignedAt3 = [(CWFJoinStatus *)self IPv6AssignedAt];
      [iPv6AssignedAt3 timeIntervalSinceReferenceDate];
      v12 = v11;
      startedAt2 = [(CWFJoinStatus *)self startedAt];
      [startedAt2 timeIntervalSinceReferenceDate];
      v8 = v12 - v14;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)durationUntilIPv4Primary
{
  iPv4PrimaryAt = [(CWFJoinStatus *)self IPv4PrimaryAt];
  if (iPv4PrimaryAt)
  {
    iPv4PrimaryAt2 = [(CWFJoinStatus *)self IPv4PrimaryAt];
    [iPv4PrimaryAt2 timeIntervalSinceReferenceDate];
    v6 = v5;
    startedAt = [(CWFJoinStatus *)self startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v8 = 0.0;
    if (v6 >= v9)
    {
      iPv4PrimaryAt3 = [(CWFJoinStatus *)self IPv4PrimaryAt];
      [iPv4PrimaryAt3 timeIntervalSinceReferenceDate];
      v12 = v11;
      startedAt2 = [(CWFJoinStatus *)self startedAt];
      [startedAt2 timeIntervalSinceReferenceDate];
      v8 = v12 - v14;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)durationUntilIPv6Primary
{
  iPv6PrimaryAt = [(CWFJoinStatus *)self IPv6PrimaryAt];
  if (iPv6PrimaryAt)
  {
    iPv6PrimaryAt2 = [(CWFJoinStatus *)self IPv6PrimaryAt];
    [iPv6PrimaryAt2 timeIntervalSinceReferenceDate];
    v6 = v5;
    startedAt = [(CWFJoinStatus *)self startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v8 = 0.0;
    if (v6 >= v9)
    {
      iPv6PrimaryAt3 = [(CWFJoinStatus *)self IPv6PrimaryAt];
      [iPv6PrimaryAt3 timeIntervalSinceReferenceDate];
      v12 = v11;
      startedAt2 = [(CWFJoinStatus *)self startedAt];
      [startedAt2 timeIntervalSinceReferenceDate];
      v8 = v12 - v14;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)durationUntilLinkUp
{
  linkUpAt = [(CWFJoinStatus *)self linkUpAt];
  if (linkUpAt)
  {
    linkUpAt2 = [(CWFJoinStatus *)self linkUpAt];
    [linkUpAt2 timeIntervalSinceReferenceDate];
    v6 = v5;
    startedAt = [(CWFJoinStatus *)self startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v8 = 0.0;
    if (v6 >= v9)
    {
      linkUpAt3 = [(CWFJoinStatus *)self linkUpAt];
      [linkUpAt3 timeIntervalSinceReferenceDate];
      v12 = v11;
      startedAt2 = [(CWFJoinStatus *)self startedAt];
      [startedAt2 timeIntervalSinceReferenceDate];
      v8 = v12 - v14;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (NSString)description
{
  sSID = [(CWFScanResult *)self->_scanResult SSID];
  networkName = [(CWFScanResult *)self->_scanResult networkName];
  if (!sSID)
  {
    sSID = [(CWFNetworkProfile *)self->_knownNetworkProfile SSID];
    networkName2 = [(CWFNetworkProfile *)self->_knownNetworkProfile networkName];

    networkName = networkName2;
  }

  v31 = sSID;
  v36 = networkName;
  v45 = MEMORY[0x1E696AEC0];
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v6 = [uUIDString substringToIndex:5];
  interfaceName = self->_interfaceName;
  v44 = v6;
  redactedForWiFi = [networkName redactedForWiFi];
  v47 = CWFHexadecimalStringFromData(sSID);
  redactedForWiFi2 = [v47 redactedForWiFi];
  code = [(NSError *)self->_error code];
  EAP8021XSupplicantState = self->_EAP8021XSupplicantState;
  EAP8021XControlMode = self->_EAP8021XControlMode;
  EAP8021XControlState = self->_EAP8021XControlState;
  EAP8021XClientStatus = self->_EAP8021XClientStatus;
  v34 = sub_1E0BCC248(self->_startedAt);
  v33 = sub_1E0BCC248(self->_associationEndedAt);
  [(CWFJoinStatus *)self durationUntilAssociationEnded];
  v32 = (v7 * 1000.0);
  v8 = sub_1E0BCC248(self->_authenticationEndedAt);
  [(CWFJoinStatus *)self durationUntilAuthenticationEnded];
  v30 = (v9 * 1000.0);
  v29 = sub_1E0BCC248(self->_linkUpAt);
  [(CWFJoinStatus *)self durationUntilLinkUp];
  v28 = (v10 * 1000.0);
  v11 = sub_1E0BCC248(self->_endedAt);
  [(CWFJoinStatus *)self duration];
  v27 = (v12 * 1000.0);
  v13 = sub_1E0BCC248(self->_IPv4AssignedAt);
  [(CWFJoinStatus *)self durationUntilIPv4Assigned];
  v15 = (v14 * 1000.0);
  v16 = sub_1E0BCC248(self->_IPv4PrimaryAt);
  [(CWFJoinStatus *)self durationUntilIPv4Primary];
  v18 = (v17 * 1000.0);
  v19 = sub_1E0BCC248(self->_IPv6AssignedAt);
  [(CWFJoinStatus *)self durationUntilIPv6Assigned];
  v21 = (v20 * 1000.0);
  v22 = sub_1E0BCC248(self->_IPv6PrimaryAt);
  [(CWFJoinStatus *)self durationUntilIPv6Primary];
  v24 = v23 * 1000.0;
  if (self->_autoJoin)
  {
    v25 = "yes";
  }

  else
  {
    v25 = "no";
  }

  v46 = [v45 stringWithFormat:@"uuid=%@, intf=%@, ssid='%@' (%@), error=%ld, eap=[sup=%d mode=%d state=%d client=%d], start=%@, assoc=%@ (%lums), auth=%@ (%lums), linkup=%@ (%lums), end=%@ (%lums), ipv4=%@ (%lums), ipv4Primary=%@ (%lums), ipv6=%@ (%lums), ipv6Primary=%@ (%lums), auto=%s", v44, interfaceName, redactedForWiFi, redactedForWiFi2, code, EAP8021XSupplicantState, EAP8021XControlMode, EAP8021XControlState, EAP8021XClientStatus, v34, v33, v32, v8, v30, v29, v28, v11, v27, v13, v15, v16, v18, v19, v21, v22, v24, v25];

  return v46;
}

- (BOOL)isEqualToJoinStatus:(id)status
{
  statusCopy = status;
  UUID = self->_UUID;
  uUID = [statusCopy UUID];
  error3 = UUID != uUID;
  if (UUID != uUID)
  {
    v8 = self->_UUID;
    if (!v8)
    {
      v182 = 0;
      *v178 = 0;
      v181 = 0;
      v180 = 0uLL;
      v11 = 0;
      memset(v177, 0, sizeof(v177));
      v12 = 0;
      v13 = 0;
      v176 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v178[8] = 0;
      goto LABEL_112;
    }

    uUID2 = [statusCopy UUID];
    if (!uUID2)
    {
      v168 = 0;
      *v178 = 0;
      v181 = 0;
      v180 = 0uLL;
      v11 = 0;
      memset(v177, 0, sizeof(v177));
      v12 = 0;
      v13 = 0;
      v176 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      v178[8] = 0;
      v182 = 1;
      goto LABEL_112;
    }

    v168 = uUID2;
    v10 = self->_UUID;
    uUID3 = [statusCopy UUID];
    if (![(NSUUID *)v10 isEqual:?])
    {
      v181 = 0;
      v180 = 0uLL;
      v11 = 0;
      memset(v177, 0, sizeof(v177));
      v12 = 0;
      v13 = 0;
      v176 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      v178[8] = 0;
      v182 = 1;
      *v178 = 1;
      goto LABEL_112;
    }
  }

  interfaceName = self->_interfaceName;
  interfaceName = [statusCopy interfaceName];
  v21 = interfaceName != interfaceName;
  v182 = error3;
  if (interfaceName != interfaceName)
  {
    v8 = self->_interfaceName;
    if (!v8)
    {
      v181 = 0;
      v180 = 0uLL;
      v11 = 0;
      memset(v177, 0, sizeof(v177));
      v12 = 0;
      v13 = 0;
      v176 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      *v178 = error3;
      goto LABEL_112;
    }

    interfaceName2 = [statusCopy interfaceName];
    if (!interfaceName2)
    {
      v165 = 0;
      *(&v180 + 4) = 0;
      v181 = 0;
      v11 = 0;
      LODWORD(v180) = 0;
      memset(v177, 0, sizeof(v177));
      v12 = 0;
      v13 = 0;
      v176 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      *v178 = error3;
      HIDWORD(v180) = 1;
      goto LABEL_112;
    }

    v165 = interfaceName2;
    v23 = self->_interfaceName;
    interfaceName3 = [statusCopy interfaceName];
    if (![(NSString *)v23 isEqual:?])
    {
      *(&v180 + 4) = 0;
      v181 = 0;
      v11 = 0;
      LODWORD(v180) = 0;
      v12 = 0;
      v13 = 0;
      v176 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      memset(v177, 0, 36);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      v178[8] = 0;
      HIDWORD(v180) = 1;
      HIDWORD(v177[4]) = 1;
      *v178 = error3 | 0x100000000;
      goto LABEL_112;
    }
  }

  startedAt = self->_startedAt;
  startedAt = [statusCopy startedAt];
  v25 = startedAt != startedAt;
  HIDWORD(v180) = v21;
  if (startedAt != startedAt)
  {
    v8 = self->_startedAt;
    if (!v8)
    {
      *(&v180 + 4) = 0;
      v181 = 0;
      v11 = 0;
      LODWORD(v180) = 0;
      memset(v177, 0, 32);
      v13 = 0;
      v35 = v21;
      v12 = 0;
      v176 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v6 = 1;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v35;
      *v178 = error3;
      LODWORD(v177[4]) = 1;
      goto LABEL_112;
    }

    startedAt2 = [statusCopy startedAt];
    if (!startedAt2)
    {
      v163 = 0;
      v181 = 0;
      *&v180 = 0;
      v11 = 0;
      memset(v177, 0, 32);
      v13 = 0;
      v43 = v21;
      v12 = 0;
      v176 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      v6 = 1;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v43;
      *v178 = error3;
      LODWORD(v177[4]) = 1;
      DWORD2(v180) = 1;
      goto LABEL_112;
    }

    v163 = startedAt2;
    v27 = self->_startedAt;
    startedAt3 = [statusCopy startedAt];
    if (![(NSDate *)v27 isEqual:?])
    {
      v181 = 0;
      *&v180 = 0;
      v11 = 0;
      v13 = 0;
      v28 = v21;
      v12 = 0;
      v176 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      memset(v177, 0, 28);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      v6 = 1;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v28;
      *v178 = error3;
      LODWORD(v177[4]) = 1;
      DWORD2(v180) = 1;
      HIDWORD(v177[3]) = 1;
      goto LABEL_112;
    }
  }

  endedAt = self->_endedAt;
  endedAt = [statusCopy endedAt];
  v31 = endedAt != endedAt;
  DWORD2(v180) = v25;
  v174 = endedAt;
  if (endedAt != endedAt)
  {
    v8 = self->_endedAt;
    if (!v8)
    {
      v181 = 0;
      *&v180 = 0;
      v11 = 0;
      memset(v177, 0, 24);
      v13 = 0;
      v44 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v44;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      LODWORD(v177[3]) = 1;
      goto LABEL_112;
    }

    endedAt2 = [statusCopy endedAt];
    if (!endedAt2)
    {
      v172 = 0;
      *&v180 = 0;
      v11 = 0;
      memset(v177, 0, 24);
      v13 = 0;
      v53 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v53;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      LODWORD(v177[3]) = 1;
      v181 = 1;
      goto LABEL_112;
    }

    v172 = endedAt2;
    v33 = self->_endedAt;
    endedAt3 = [statusCopy endedAt];
    if (![(NSDate *)v33 isEqual:?])
    {
      *&v180 = 0;
      v11 = 0;
      v13 = 0;
      v34 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      memset(v177, 0, 20);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v34;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      LODWORD(v177[3]) = 1;
      v181 = 1;
      HIDWORD(v177[2]) = 1;
      goto LABEL_112;
    }
  }

  associationEndedAt = self->_associationEndedAt;
  associationEndedAt = [statusCopy associationEndedAt];
  v38 = associationEndedAt != associationEndedAt;
  LODWORD(v181) = v31;
  v173 = associationEndedAt;
  if (associationEndedAt != associationEndedAt)
  {
    v8 = self->_associationEndedAt;
    if (!v8)
    {
      *&v180 = 0;
      v177[1] = 0;
      v11 = 0;
      v177[0] = 0;
      v54 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v55 = v31;
      v13 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v54;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v55;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      goto LABEL_112;
    }

    associationEndedAt2 = [statusCopy associationEndedAt];
    if (!associationEndedAt2)
    {
      v170 = 0;
      v177[1] = 0;
      v11 = 0;
      *&v180 = 0x100000000;
      v177[0] = 0;
      v62 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v63 = v31;
      v13 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v62;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v63;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      goto LABEL_112;
    }

    v170 = associationEndedAt2;
    v40 = self->_associationEndedAt;
    associationEndedAt3 = [statusCopy associationEndedAt];
    if (![(NSDate *)v40 isEqual:?])
    {
      v11 = 0;
      *&v180 = 0x100000000;
      *(v177 + 4) = 0;
      v41 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v42 = v31;
      v13 = 0;
      v175 = 0uLL;
      memset(v183, 0, sizeof(v183));
      LODWORD(v177[0]) = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v41;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v42;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      HIDWORD(v177[1]) = 1;
      goto LABEL_112;
    }
  }

  authenticationEndedAt = self->_authenticationEndedAt;
  authenticationEndedAt = [statusCopy authenticationEndedAt];
  v47 = authenticationEndedAt != authenticationEndedAt;
  DWORD1(v180) = v38;
  v171 = authenticationEndedAt;
  if (authenticationEndedAt != authenticationEndedAt)
  {
    v8 = self->_authenticationEndedAt;
    if (!v8)
    {
      LODWORD(v180) = 0;
      *(v177 + 4) = 0;
      v64 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v65 = v31;
      v13 = 0;
      v175 = 0uLL;
      v66 = v38;
      memset(v183, 0, sizeof(v183));
      LODWORD(v177[0]) = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v64;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v65;
      LODWORD(v177[3]) = 1;
      HIDWORD(v177[1]) = v66;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      goto LABEL_112;
    }

    authenticationEndedAt2 = [statusCopy authenticationEndedAt];
    if (!authenticationEndedAt2)
    {
      v158 = 0;
      *(v177 + 4) = 0;
      v73 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v74 = v31;
      v13 = 0;
      v175 = 0uLL;
      v75 = v38;
      memset(v183, 0, sizeof(v183));
      LODWORD(v177[0]) = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v73;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v74;
      LODWORD(v177[3]) = 1;
      HIDWORD(v177[1]) = v75;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      LODWORD(v180) = 1;
      goto LABEL_112;
    }

    v158 = authenticationEndedAt2;
    v49 = self->_authenticationEndedAt;
    authenticationEndedAt3 = [statusCopy authenticationEndedAt];
    if (![(NSDate *)v49 isEqual:?])
    {
      v177[0] = 0;
      v50 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v51 = v31;
      v13 = 0;
      v175 = 0uLL;
      v52 = v38;
      memset(v183, 0, sizeof(v183));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v50;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v51;
      LODWORD(v177[3]) = 1;
      HIDWORD(v177[1]) = v52;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      LODWORD(v180) = 1;
      LODWORD(v177[1]) = 1;
      goto LABEL_112;
    }
  }

  linkUpAt = self->_linkUpAt;
  linkUpAt = [statusCopy linkUpAt];
  HIDWORD(v183[2]) = linkUpAt != linkUpAt;
  LODWORD(v180) = v47;
  if (linkUpAt != linkUpAt)
  {
    v8 = self->_linkUpAt;
    if (!v8)
    {
      v76 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v77 = v31;
      v13 = 0;
      v175 = 0uLL;
      v78 = v38;
      memset(v183, 0, sizeof(v183));
      v79 = v47;
      v177[0] = 0x100000000;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v76;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v77;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v78, v79);
      goto LABEL_112;
    }

    linkUpAt2 = [statusCopy linkUpAt];
    if (!linkUpAt2)
    {
      v155 = 0;
      v86 = v21;
      v12 = 0;
      v176 = 0;
      v6 = v25;
      v87 = v31;
      v13 = 0;
      v175 = 0uLL;
      v88 = v38;
      v89 = v47;
      v177[0] = 0x100000000;
      v14 = 0;
      memset(v183, 0, 20);
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v86;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v87;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v88, v89);
      HIDWORD(v183[2]) = 1;
      goto LABEL_112;
    }

    v155 = linkUpAt2;
    v58 = self->_linkUpAt;
    linkUpAt3 = [statusCopy linkUpAt];
    if (![(NSDate *)v58 isEqual:?])
    {
      v176 = 0;
      v6 = v25;
      v59 = v31;
      v13 = 0;
      v175 = 0uLL;
      v60 = v38;
      v61 = v47;
      v177[0] = 0x100000000;
      v14 = 0;
      memset(v183, 0, 20);
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v59;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v60, v61);
      HIDWORD(v183[2]) = 1;
      v12 = 1;
      goto LABEL_112;
    }
  }

  IPv4AssignedAt = self->_IPv4AssignedAt;
  iPv4AssignedAt = [statusCopy IPv4AssignedAt];
  LODWORD(v183[2]) = IPv4AssignedAt != iPv4AssignedAt;
  if (IPv4AssignedAt != iPv4AssignedAt)
  {
    v8 = self->_IPv4AssignedAt;
    if (!v8)
    {
      v176 = 0;
      v6 = v25;
      v175 = 0uLL;
      v90 = v38;
      v91 = v47;
      v177[0] = 0x100000000;
      v14 = 0;
      memset(v183, 0, 20);
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v90, v91);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      goto LABEL_112;
    }

    iPv4AssignedAt2 = [statusCopy IPv4AssignedAt];
    if (!iPv4AssignedAt2)
    {
      v152 = 0;
      v176 = 0;
      v6 = v25;
      v183[0] = 0;
      v183[1] = 0;
      v175 = 0uLL;
      v96 = v38;
      v97 = v47;
      v177[0] = 0x100000000;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v6;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v96, v97);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      LODWORD(v183[2]) = 1;
      goto LABEL_112;
    }

    v152 = iPv4AssignedAt2;
    v69 = self->_IPv4AssignedAt;
    iPv4AssignedAt3 = [statusCopy IPv4AssignedAt];
    if (![(NSDate *)v69 isEqual:?])
    {
      v70 = v25;
      v183[0] = 0;
      v183[1] = 0;
      v175 = 0uLL;
      v71 = v38;
      v176 = 0x100000000;
      v72 = v47;
      v177[0] = 0x100000000;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v70;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v71, v72);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      LODWORD(v183[2]) = 1;
      goto LABEL_112;
    }
  }

  IPv6AssignedAt = self->_IPv6AssignedAt;
  iPv6AssignedAt = [statusCopy IPv6AssignedAt];
  v82 = IPv6AssignedAt != iPv6AssignedAt;
  v154 = iPv6AssignedAt;
  if (IPv6AssignedAt != iPv6AssignedAt)
  {
    v8 = self->_IPv6AssignedAt;
    if (!v8)
    {
      v183[0] = 0;
      v183[1] = 0;
      *&v175 = 0;
      v6 = v38;
      *(&v175 + 1) = 0x100000000;
      v176 = __PAIR64__(v183[2], 0);
      v98 = v47;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v6, v98);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      v177[0] = 0x100000000;
      goto LABEL_112;
    }

    iPv6AssignedAt2 = [statusCopy IPv6AssignedAt];
    if (!iPv6AssignedAt2)
    {
      v149 = 0;
      *&v175 = 0;
      v6 = v38;
      *(&v175 + 1) = 0x100000000;
      v176 = __PAIR64__(v183[2], 0);
      v183[0] = 0;
      v105 = v47;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v6, v105);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      v177[0] = 0x100000000;
      v183[1] = 1;
      goto LABEL_112;
    }

    v149 = iPv6AssignedAt2;
    v84 = v82;
    v85 = self->_IPv6AssignedAt;
    iPv6AssignedAt3 = [statusCopy IPv6AssignedAt];
    if (![(NSDate *)v85 isEqual:?])
    {
      *&v175 = 0x100000000;
      v106 = v38;
      *(&v175 + 1) = 0x100000000;
      v176 = __PAIR64__(v183[2], 0);
      v183[0] = 0;
      v6 = v47;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v106, v6);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      v177[0] = 0x100000000;
      v183[1] = 1;
      goto LABEL_112;
    }

    v82 = v84;
  }

  IPv4PrimaryAt = self->_IPv4PrimaryAt;
  iPv4PrimaryAt = [statusCopy IPv4PrimaryAt];
  LODWORD(v183[1]) = v82;
  HIDWORD(v183[1]) = IPv4PrimaryAt != iPv4PrimaryAt;
  v151 = iPv4PrimaryAt;
  if (IPv4PrimaryAt != iPv4PrimaryAt)
  {
    v8 = self->_IPv4PrimaryAt;
    if (!v8)
    {
      HIDWORD(v183[1]) = 0;
      v107 = v38;
      *(&v175 + 1) = 0x100000000;
      v176 = __PAIR64__(v183[2], 0);
      v183[0] = 0;
      v6 = v47;
      v14 = 0;
      v15 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v107, v6);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      v177[0] = 0x100000000;
      DWORD1(v175) = v82;
      v16 = 0;
      LODWORD(v175) = 1;
      goto LABEL_112;
    }

    iPv4PrimaryAt2 = [statusCopy IPv4PrimaryAt];
    if (!iPv4PrimaryAt2)
    {
      v146 = 0;
      v111 = v38;
      *(&v175 + 1) = 0x100000000;
      LODWORD(v176) = 0;
      v183[0] = 0;
      v6 = v47;
      v14 = 0;
      v15 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v111, v6);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v176) = v183[2];
      v177[0] = 0x100000000;
      LODWORD(v175) = 1;
      DWORD1(v175) = v82;
      v16 = 0;
      HIDWORD(v183[1]) = 1;
      goto LABEL_112;
    }

    v146 = iPv4PrimaryAt2;
    v95 = self->_IPv4PrimaryAt;
    iPv4PrimaryAt3 = [statusCopy IPv4PrimaryAt];
    if (![(NSDate *)v95 isEqual:?])
    {
      LODWORD(v176) = 0;
      v183[0] = 0;
      v112 = v47;
      v15 = 0;
      v16 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      HIDWORD(v177[1]) = v38;
      LODWORD(v177[2]) = 1;
      v14 = 0;
      v11 = 1;
      LODWORD(v177[1]) = v112;
      v177[0] = 0x100000000;
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v176) = v183[2];
      v6 = LODWORD(v183[1]);
      LODWORD(v175) = 1;
      DWORD1(v175) = v183[1];
      HIDWORD(v183[1]) = 1;
      *(&v175 + 1) = 0x100000001;
      goto LABEL_112;
    }

    v82 = v183[1];
  }

  IPv6PrimaryAt = self->_IPv6PrimaryAt;
  iPv6PrimaryAt = [statusCopy IPv6PrimaryAt];
  v101 = IPv6PrimaryAt == iPv6PrimaryAt;
  v102 = IPv6PrimaryAt != iPv6PrimaryAt;
  v148 = iPv6PrimaryAt;
  if (v101)
  {
    HIDWORD(v183[0]) = v102;
  }

  else
  {
    v8 = self->_IPv6PrimaryAt;
    if (!v8)
    {
      v183[0] = 0;
      v113 = v47;
      v15 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      v6 = 1;
      *&v178[4] = 1;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      HIDWORD(v177[1]) = v38;
      LODWORD(v177[2]) = 1;
      v14 = 0;
      v11 = 1;
      LODWORD(v177[1]) = v113;
      v177[0] = 0x100000000;
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v175) = 1;
      LODWORD(v175) = 1;
      *(&v175 + 4) = __PAIR64__(HIDWORD(v183[1]), v82);
      v16 = 0;
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      goto LABEL_112;
    }

    iPv6PrimaryAt2 = [statusCopy IPv6PrimaryAt];
    if (!iPv6PrimaryAt2)
    {
      v143 = 0;
      v116 = v47;
      v183[0] = 0x100000000;
      v15 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      HIDWORD(v177[1]) = v38;
      LODWORD(v177[2]) = 1;
      v14 = 0;
      v11 = 1;
      LODWORD(v177[1]) = v116;
      v177[0] = 0x100000000;
      v6 = LODWORD(v183[2]);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v175) = 1;
      LODWORD(v175) = 1;
      *(&v175 + 4) = __PAIR64__(HIDWORD(v183[1]), v82);
      v16 = 0;
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      goto LABEL_112;
    }

    v143 = iPv6PrimaryAt2;
    v104 = self->_IPv6PrimaryAt;
    iPv6PrimaryAt3 = [statusCopy IPv6PrimaryAt];
    if (![(NSDate *)v104 isEqual:?])
    {
      v183[0] = 0x100000000;
      v16 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      HIDWORD(v177[1]) = v38;
      LODWORD(v177[2]) = 1;
      v14 = 0;
      v11 = 1;
      LODWORD(v177[1]) = v47;
      v15 = 0;
      v6 = LODWORD(v183[2]);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      *&v175 = __PAIR64__(v183[1], 1);
      *(&v175 + 1) = HIDWORD(v183[1]) | 0x100000000;
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      v177[0] = 0x100000001;
      goto LABEL_112;
    }

    HIDWORD(v183[0]) = v102;
    v82 = v183[1];
  }

  scanResult = self->_scanResult;
  scanResult = [statusCopy scanResult];
  LODWORD(v183[0]) = scanResult != scanResult;
  v145 = scanResult;
  if (scanResult != scanResult)
  {
    v8 = self->_scanResult;
    if (!v8)
    {
      LODWORD(v183[0]) = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v38, v47);
      v15 = 0;
      v6 = LODWORD(v183[2]);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v175) = 1;
      LODWORD(v175) = 1;
      *(&v175 + 4) = __PAIR64__(HIDWORD(v183[1]), v82);
      v16 = 0;
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      v177[0] = HIDWORD(v183[0]) | 0x100000000;
      v14 = 1;
      goto LABEL_112;
    }

    scanResult2 = [statusCopy scanResult];
    if (!scanResult2)
    {
      scanResult2 = 0;
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v38, v47);
      v15 = 0;
      v6 = LODWORD(v183[2]);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v175) = 1;
      LODWORD(v175) = 1;
      *(&v175 + 4) = __PAIR64__(HIDWORD(v183[1]), v82);
      v16 = 0;
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      v177[0] = HIDWORD(v183[0]) | 0x100000000;
      v14 = 1;
      LODWORD(v183[0]) = 1;
      goto LABEL_112;
    }

    v110 = self->_scanResult;
    scanResult3 = [statusCopy scanResult];
    if (![(CWFScanResult *)v110 isEqual:?])
    {
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      HIDWORD(v177[4]) = v21;
      *v178 = v182;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v38, v47);
      v6 = LODWORD(v183[2]);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v175) = 1;
      LODWORD(v175) = 1;
      *(&v175 + 4) = __PAIR64__(HIDWORD(v183[1]), v82);
      v16 = 0;
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      v177[0] = HIDWORD(v183[0]) | 0x100000000;
      v14 = 1;
      LODWORD(v183[0]) = 1;
      v15 = 1;
      goto LABEL_112;
    }

    error3 = v182;
  }

  knownNetworkProfile = self->_knownNetworkProfile;
  knownNetworkProfile = [statusCopy knownNetworkProfile];
  HIDWORD(v181) = knownNetworkProfile != knownNetworkProfile;
  v141 = knownNetworkProfile;
  if (knownNetworkProfile != knownNetworkProfile)
  {
    v8 = self->_knownNetworkProfile;
    if (!v8)
    {
      HIDWORD(v181) = 0;
      v18 = 0;
      v19 = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      HIDWORD(v177[4]) = v21;
      *v178 = error3;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v38, v47);
      v6 = LODWORD(v183[2]);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v175) = 1;
      LODWORD(v175) = 1;
      *(&v175 + 4) = __PAIR64__(HIDWORD(v183[1]), v82);
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      v15 = v183[0];
      v177[0] = HIDWORD(v183[0]) | 0x100000000;
      v14 = 1;
      v16 = 1;
      goto LABEL_112;
    }

    knownNetworkProfile2 = [statusCopy knownNetworkProfile];
    if (!knownNetworkProfile2)
    {
      knownNetworkProfile2 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      HIDWORD(v177[4]) = v21;
      *v178 = v182;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      v17 = 0;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v38, v47);
      v6 = LODWORD(v183[2]);
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v175) = 1;
      LODWORD(v175) = 1;
      *(&v175 + 4) = __PAIR64__(HIDWORD(v183[1]), v82);
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      v15 = v183[0];
      v177[0] = HIDWORD(v183[0]) | 0x100000000;
      v14 = 1;
      v16 = 1;
      HIDWORD(v181) = 1;
      goto LABEL_112;
    }

    error3 = self->_knownNetworkProfile;
    knownNetworkProfile3 = [statusCopy knownNetworkProfile];
    if (![error3 isEqual:?])
    {
      v18 = 0;
      v19 = 0;
      LODWORD(v8) = 0;
      *&v178[4] = 1;
      v178[8] = 0;
      HIDWORD(v177[4]) = v21;
      *v178 = v182;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[2]) = v31;
      LODWORD(v177[3]) = 1;
      LODWORD(v177[2]) = 1;
      v11 = 1;
      v177[1] = __PAIR64__(v38, v47);
      v6 = 1;
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      HIDWORD(v175) = 1;
      *(&v175 + 4) = v183[1];
      LODWORD(v175) = 1;
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      v15 = v183[0];
      v177[0] = HIDWORD(v183[0]) | 0x100000000;
      v14 = 1;
      v16 = 1;
      HIDWORD(v181) = 1;
      v17 = 1;
      goto LABEL_112;
    }
  }

  error = self->_error;
  error = [statusCopy error];
  v134 = error != error;
  if (error == error)
  {
    goto LABEL_101;
  }

  v8 = self->_error;
  if (v8)
  {
    error2 = [statusCopy error];
    if (error2)
    {
      v118 = self->_error;
      error3 = [statusCopy error];
      if (![(NSError *)v118 isEqual:?])
      {
        *&v178[4] = 1;
        v178[8] = 0;
        HIDWORD(v177[4]) = v21;
        *v178 = v182;
        HIDWORD(v177[3]) = v25;
        LODWORD(v177[4]) = 1;
        HIDWORD(v177[2]) = v31;
        LODWORD(v177[3]) = 1;
        LODWORD(v177[2]) = 1;
        v11 = 1;
        v177[1] = __PAIR64__(v38, v47);
        v12 = HIDWORD(v183[2]);
        v13 = 1;
        LODWORD(v175) = 1;
        *(&v175 + 4) = v183[1];
        HIDWORD(v175) = 1;
        LODWORD(v176) = 1;
        HIDWORD(v176) = v183[2];
        v15 = v183[0];
        v177[0] = HIDWORD(v183[0]) | 0x100000000;
        v14 = 1;
        v16 = 1;
        v17 = HIDWORD(v181);
        v18 = 1;
        v19 = 1;
        LODWORD(v8) = 1;
LABEL_108:
        v6 = error3;
        goto LABEL_112;
      }

LABEL_101:
      EAP8021XSupplicantState = self->_EAP8021XSupplicantState;
      if (EAP8021XSupplicantState == [statusCopy EAP8021XSupplicantState] && (EAP8021XControlMode = self->_EAP8021XControlMode, EAP8021XControlMode == objc_msgSend(statusCopy, "EAP8021XControlMode")) && (EAP8021XControlState = self->_EAP8021XControlState, EAP8021XControlState == objc_msgSend(statusCopy, "EAP8021XControlState")) && (EAP8021XClientStatus = self->_EAP8021XClientStatus, EAP8021XClientStatus == objc_msgSend(statusCopy, "EAP8021XClientStatus")))
      {
        autoJoin = self->_autoJoin;
        v178[8] = autoJoin == [statusCopy isAutoJoin];
      }

      else
      {
        v178[8] = 0;
      }

      *v178 = v182;
      *&v178[4] = 1;
      LODWORD(v177[4]) = 1;
      HIDWORD(v177[4]) = v21;
      LODWORD(v177[3]) = 1;
      HIDWORD(v177[3]) = v25;
      LODWORD(v177[2]) = 1;
      HIDWORD(v177[2]) = v31;
      v177[1] = __PAIR64__(v38, v47);
      v11 = 1;
      v12 = HIDWORD(v183[2]);
      v13 = 1;
      DWORD1(v175) = v183[1];
      LODWORD(v175) = 1;
      *(&v175 + 1) = HIDWORD(v183[1]) | 0x100000000;
      LODWORD(v176) = 1;
      HIDWORD(v176) = v183[2];
      v15 = v183[0];
      v177[0] = HIDWORD(v183[0]) | 0x100000000;
      v14 = 1;
      v16 = 1;
      v17 = HIDWORD(v181);
      v18 = 1;
      v19 = v134;
      LODWORD(v8) = v134;
      goto LABEL_108;
    }

    error2 = 0;
    LODWORD(v8) = 0;
    *&v178[4] = 1;
    v178[8] = 0;
    HIDWORD(v177[4]) = v21;
    *v178 = v182;
    HIDWORD(v177[3]) = v25;
    LODWORD(v177[4]) = 1;
    HIDWORD(v177[2]) = v31;
    LODWORD(v177[3]) = 1;
    LODWORD(v177[2]) = 1;
    v11 = 1;
    v177[1] = __PAIR64__(v38, v47);
    v6 = 1;
    v12 = HIDWORD(v183[2]);
    v13 = 1;
    HIDWORD(v175) = 1;
    *(&v175 + 4) = v183[1];
    LODWORD(v175) = 1;
    LODWORD(v176) = 1;
    HIDWORD(v176) = v183[2];
    v15 = v183[0];
    v177[0] = HIDWORD(v183[0]) | 0x100000000;
    v14 = 1;
    v16 = 1;
    v17 = HIDWORD(v181);
    v18 = 1;
    v19 = 1;
  }

  else
  {
    v19 = 0;
    *&v178[4] = 1;
    v178[8] = 0;
    HIDWORD(v177[4]) = v21;
    *v178 = v182;
    HIDWORD(v177[3]) = v25;
    LODWORD(v177[4]) = 1;
    HIDWORD(v177[2]) = v31;
    LODWORD(v177[3]) = 1;
    LODWORD(v177[2]) = 1;
    v11 = 1;
    v177[1] = __PAIR64__(v38, v47);
    v6 = 1;
    v12 = HIDWORD(v183[2]);
    v13 = 1;
    HIDWORD(v175) = 1;
    *(&v175 + 4) = v183[1];
    LODWORD(v175) = 1;
    LODWORD(v176) = 1;
    HIDWORD(v176) = v183[2];
    v15 = v183[0];
    v177[0] = HIDWORD(v183[0]) | 0x100000000;
    v14 = 1;
    v16 = 1;
    v17 = HIDWORD(v181);
    v18 = 1;
  }

LABEL_112:
  if (v8)
  {
    v124 = v13;
    v125 = v14;
    v126 = v12;
    v127 = v15;
    v128 = v16;
    v129 = v17;
    v130 = v11;
    v131 = v18;
    v132 = v19;

    v19 = v132;
    v18 = v131;
    v11 = v130;
    v17 = v129;
    v16 = v128;
    v15 = v127;
    v12 = v126;
    v14 = v125;
    v13 = v124;
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v17)
  {
  }

  if (HIDWORD(v181))
  {

    if (!v16)
    {
LABEL_122:
      if (!v15)
      {
        goto LABEL_124;
      }

      goto LABEL_123;
    }
  }

  else if (!v16)
  {
    goto LABEL_122;
  }

  if (v15)
  {
LABEL_123:
  }

LABEL_124:
  if (LODWORD(v183[0]))
  {
  }

  if (v14)
  {
  }

  if (LODWORD(v177[0]))
  {
  }

  if (HIDWORD(v183[0]))
  {
  }

  if (v176)
  {
  }

  if (DWORD2(v175))
  {
  }

  if (HIDWORD(v183[1]))
  {
  }

  if (v175)
  {
  }

  if (DWORD1(v175))
  {
  }

  if (LODWORD(v183[1]))
  {
  }

  if (HIDWORD(v175))
  {
  }

  if (HIDWORD(v176))
  {
  }

  if (LODWORD(v183[2]))
  {
  }

  if (v13)
  {
  }

  if (v12)
  {
  }

  if (HIDWORD(v183[2]))
  {
  }

  if (HIDWORD(v177[0]))
  {
  }

  if (LODWORD(v177[1]))
  {
  }

  if (v180)
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v177[1]))
  {
  }

  if (DWORD1(v180))
  {
  }

  if (LODWORD(v177[2]))
  {
  }

  if (HIDWORD(v177[2]))
  {
  }

  if (v181)
  {
  }

  if (LODWORD(v177[3]))
  {
  }

  if (HIDWORD(v177[3]))
  {
  }

  if (DWORD2(v180))
  {
  }

  if (LODWORD(v177[4]))
  {
  }

  if (HIDWORD(v177[4]))
  {
  }

  if (HIDWORD(v180))
  {
  }

  if (*&v178[4])
  {
  }

  if (*v178)
  {
  }

  if (v182)
  {
  }

  return v178[8];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFJoinStatus *)self isEqualToJoinStatus:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(NSString *)self->_interfaceName hash]^ v3;
  v5 = [(NSDate *)self->_startedAt hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_endedAt hash];
  v7 = [(NSDate *)self->_associationEndedAt hash];
  v8 = v7 ^ [(NSDate *)self->_authenticationEndedAt hash];
  v9 = v6 ^ v8 ^ [(NSDate *)self->_linkUpAt hash];
  v10 = [(NSDate *)self->_IPv4AssignedAt hash];
  v11 = v10 ^ [(NSDate *)self->_IPv4PrimaryAt hash];
  v12 = v11 ^ [(NSDate *)self->_IPv6AssignedAt hash];
  v13 = v9 ^ v12 ^ [(NSDate *)self->_IPv6PrimaryAt hash];
  v14 = [(CWFScanResult *)self->_scanResult hash];
  v15 = v14 ^ [(CWFNetworkProfile *)self->_knownNetworkProfile hash];
  return v13 ^ v15 ^ [(NSError *)self->_error hash]^ self->_EAP8021XSupplicantState ^ self->_EAP8021XControlMode ^ self->_EAP8021XControlState ^ self->_EAP8021XClientStatus ^ self->_autoJoin;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFJoinStatus allocWithZone:?]];
  [(CWFJoinStatus *)v4 setUUID:self->_UUID];
  [(CWFJoinStatus *)v4 setInterfaceName:self->_interfaceName];
  [(CWFJoinStatus *)v4 setStartedAt:self->_startedAt];
  [(CWFJoinStatus *)v4 setEndedAt:self->_endedAt];
  [(CWFJoinStatus *)v4 setAssociationEndedAt:self->_associationEndedAt];
  [(CWFJoinStatus *)v4 setAuthenticationEndedAt:self->_authenticationEndedAt];
  [(CWFJoinStatus *)v4 setLinkUpAt:self->_linkUpAt];
  [(CWFJoinStatus *)v4 setIPv4AssignedAt:self->_IPv4AssignedAt];
  [(CWFJoinStatus *)v4 setIPv4PrimaryAt:self->_IPv4PrimaryAt];
  [(CWFJoinStatus *)v4 setIPv6AssignedAt:self->_IPv6AssignedAt];
  [(CWFJoinStatus *)v4 setIPv6PrimaryAt:self->_IPv6PrimaryAt];
  [(CWFJoinStatus *)v4 setScanResult:self->_scanResult];
  [(CWFJoinStatus *)v4 setKnownNetworkProfile:self->_knownNetworkProfile];
  [(CWFJoinStatus *)v4 setError:self->_error];
  [(CWFJoinStatus *)v4 setEAP8021XSupplicantState:self->_EAP8021XSupplicantState];
  [(CWFJoinStatus *)v4 setEAP8021XControlMode:self->_EAP8021XControlMode];
  [(CWFJoinStatus *)v4 setEAP8021XControlState:self->_EAP8021XControlState];
  [(CWFJoinStatus *)v4 setEAP8021XClientStatus:self->_EAP8021XClientStatus];
  [(CWFJoinStatus *)v4 setAutoJoin:self->_autoJoin];
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
  [coderCopy encodeObject:self->_associationEndedAt forKey:@"_associationEndedAt"];
  [coderCopy encodeObject:self->_authenticationEndedAt forKey:@"_authenticationEndedAt"];
  [coderCopy encodeObject:self->_linkUpAt forKey:@"_linkUpAt"];
  [coderCopy encodeObject:self->_IPv4AssignedAt forKey:@"_IPv4AssignedAt"];
  [coderCopy encodeObject:self->_IPv6AssignedAt forKey:@"_IPv6AssignedAt"];
  [coderCopy encodeObject:self->_IPv4PrimaryAt forKey:@"_IPv4PrimaryAt"];
  [coderCopy encodeObject:self->_IPv6PrimaryAt forKey:@"_IPv6PrimaryAt"];
  [coderCopy encodeObject:self->_error forKey:@"_error"];
  [coderCopy encodeObject:self->_scanResult forKey:@"_scanResult"];
  [coderCopy encodeObject:self->_knownNetworkProfile forKey:@"_knownNetworkProfile"];
  [coderCopy encodeInteger:self->_EAP8021XSupplicantState forKey:@"_EAP8021XSupplicantState"];
  [coderCopy encodeInteger:self->_EAP8021XControlState forKey:@"_EAP8021XControlState"];
  [coderCopy encodeInteger:self->_EAP8021XControlMode forKey:@"_EAP8021XControlMode"];
  [coderCopy encodeInteger:self->_EAP8021XClientStatus forKey:@"_EAP8021XClientStatus"];
  [coderCopy encodeBool:self->_autoJoin forKey:@"_autoJoin"];
}

- (CWFJoinStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = CWFJoinStatus;
  v5 = [(CWFJoinStatus *)&v35 init];
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

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_associationEndedAt"];
    associationEndedAt = v5->_associationEndedAt;
    v5->_associationEndedAt = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_authenticationEndedAt"];
    authenticationEndedAt = v5->_authenticationEndedAt;
    v5->_authenticationEndedAt = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_linkUpAt"];
    linkUpAt = v5->_linkUpAt;
    v5->_linkUpAt = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_IPv4AssignedAt"];
    IPv4AssignedAt = v5->_IPv4AssignedAt;
    v5->_IPv4AssignedAt = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_IPv6AssignedAt"];
    IPv6AssignedAt = v5->_IPv6AssignedAt;
    v5->_IPv6AssignedAt = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_IPv4PrimaryAt"];
    IPv4PrimaryAt = v5->_IPv4PrimaryAt;
    v5->_IPv4PrimaryAt = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_IPv6PrimaryAt"];
    IPv6PrimaryAt = v5->_IPv6PrimaryAt;
    v5->_IPv6PrimaryAt = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_scanResult"];
    scanResult = v5->_scanResult;
    v5->_scanResult = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_knownNetworkProfile"];
    knownNetworkProfile = v5->_knownNetworkProfile;
    v5->_knownNetworkProfile = v32;

    v5->_EAP8021XSupplicantState = [coderCopy decodeIntegerForKey:@"_EAP8021XSupplicantState"];
    v5->_EAP8021XControlMode = [coderCopy decodeIntegerForKey:@"_EAP8021XControlMode"];
    v5->_EAP8021XControlState = [coderCopy decodeIntegerForKey:@"_EAP8021XControlState"];
    v5->_EAP8021XClientStatus = [coderCopy decodeIntegerForKey:@"_EAP8021XClientStatus"];
    v5->_autoJoin = [coderCopy decodeBoolForKey:@"_autoJoin"];
  }

  return v5;
}

- (id)JSONCompatibleKeyValueMap
{
  v62[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  uUID = [(CWFJoinStatus *)self UUID];
  uUIDString = [uUID UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"uuid"];

  interfaceName = [(CWFJoinStatus *)self interfaceName];
  [v3 setObject:interfaceName forKeyedSubscript:@"interface_name"];

  scanResult = [(CWFJoinStatus *)self scanResult];
  jSONCompatibleKeyValueMap = [scanResult JSONCompatibleKeyValueMap];
  [v3 setObject:jSONCompatibleKeyValueMap forKeyedSubscript:@"scan_result"];

  error = [(CWFJoinStatus *)self error];
  if ([error code] <= 0)
  {
    [v3 setObject:0 forKeyedSubscript:@"error"];
  }

  else
  {
    v61[0] = @"description";
    error2 = [(CWFJoinStatus *)self error];
    localizedDescription = [error2 localizedDescription];
    v61[1] = @"code";
    v62[0] = localizedDescription;
    v12 = MEMORY[0x1E696AD98];
    error3 = [(CWFJoinStatus *)self error];
    v14 = [v12 numberWithInteger:{objc_msgSend(error3, "code")}];
    v62[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
    [v3 setObject:v15 forKeyedSubscript:@"error"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFJoinStatus isAutoJoin](self, "isAutoJoin")}];
  [v3 setObject:v16 forKeyedSubscript:@"is_auto_join"];

  startedAt = [(CWFJoinStatus *)self startedAt];
  [v3 setObject:startedAt forKeyedSubscript:@"started_at"];

  endedAt = [(CWFJoinStatus *)self endedAt];
  [v3 setObject:endedAt forKeyedSubscript:@"ended_at"];

  v19 = MEMORY[0x1E696AD98];
  [(CWFJoinStatus *)self duration];
  v21 = [v19 numberWithUnsignedInteger:(v20 * 1000.0)];
  [v3 setObject:v21 forKeyedSubscript:@"duration"];

  associationEndedAt = [(CWFJoinStatus *)self associationEndedAt];
  [v3 setObject:associationEndedAt forKeyedSubscript:@"associated_ended_at"];

  v23 = MEMORY[0x1E696AD98];
  [(CWFJoinStatus *)self durationUntilAssociationEnded];
  v25 = [v23 numberWithUnsignedInteger:(v24 * 1000.0)];
  [v3 setObject:v25 forKeyedSubscript:@"duration_until_association_ended"];

  authenticationEndedAt = [(CWFJoinStatus *)self authenticationEndedAt];
  [v3 setObject:authenticationEndedAt forKeyedSubscript:@"authentication_ended_at"];

  v27 = MEMORY[0x1E696AD98];
  [(CWFJoinStatus *)self durationUntilAuthenticationEnded];
  v29 = [v27 numberWithUnsignedInteger:(v28 * 1000.0)];
  [v3 setObject:v29 forKeyedSubscript:@"duration_until_authentication_ended"];

  linkUpAt = [(CWFJoinStatus *)self linkUpAt];
  [v3 setObject:linkUpAt forKeyedSubscript:@"link_up_at"];

  v31 = MEMORY[0x1E696AD98];
  [(CWFJoinStatus *)self durationUntilLinkUp];
  v33 = [v31 numberWithUnsignedInteger:(v32 * 1000.0)];
  [v3 setObject:v33 forKeyedSubscript:@"duration_until_link_up"];

  iPv4AssignedAt = [(CWFJoinStatus *)self IPv4AssignedAt];
  [v3 setObject:iPv4AssignedAt forKeyedSubscript:@"ipv4_assigned_at"];

  v35 = MEMORY[0x1E696AD98];
  [(CWFJoinStatus *)self durationUntilIPv4Assigned];
  v37 = [v35 numberWithUnsignedInteger:(v36 * 1000.0)];
  [v3 setObject:v37 forKeyedSubscript:@"duration_until_ipv4_assigned"];

  iPv4PrimaryAt = [(CWFJoinStatus *)self IPv4PrimaryAt];
  [v3 setObject:iPv4PrimaryAt forKeyedSubscript:@"ipv4_primary_at"];

  v39 = MEMORY[0x1E696AD98];
  [(CWFJoinStatus *)self durationUntilIPv4Primary];
  v41 = [v39 numberWithUnsignedInteger:(v40 * 1000.0)];
  [v3 setObject:v41 forKeyedSubscript:@"duration_until_ipv4_primary"];

  iPv6AssignedAt = [(CWFJoinStatus *)self IPv6AssignedAt];
  [v3 setObject:iPv6AssignedAt forKeyedSubscript:@"ipv4_assigned_at"];

  v43 = MEMORY[0x1E696AD98];
  [(CWFJoinStatus *)self durationUntilIPv6Assigned];
  v45 = [v43 numberWithUnsignedInteger:(v44 * 1000.0)];
  [v3 setObject:v45 forKeyedSubscript:@"duration_until_ipv6_assigned"];

  iPv6PrimaryAt = [(CWFJoinStatus *)self IPv6PrimaryAt];
  [v3 setObject:iPv6PrimaryAt forKeyedSubscript:@"ipv6_primary_at"];

  v47 = MEMORY[0x1E696AD98];
  [(CWFJoinStatus *)self durationUntilIPv6Primary];
  v49 = [v47 numberWithUnsignedInteger:(v48 * 1000.0)];
  [v3 setObject:v49 forKeyedSubscript:@"duration_until_ipv6_primary"];

  v50 = MEMORY[0x1E696AEC0];
  eAP8021XSupplicantState = [(CWFJoinStatus *)self EAP8021XSupplicantState];
  if (eAP8021XSupplicantState > 8)
  {
    v52 = "<unknown>";
  }

  else
  {
    v52 = off_1E86EA510[eAP8021XSupplicantState];
  }

  v53 = [v50 stringWithCString:v52 encoding:4];
  [v3 setObject:v53 forKeyedSubscript:@"supplicant_state"];

  descriptionForEAPOLControlMode = [(CWFJoinStatus *)self descriptionForEAPOLControlMode];
  [v3 setObject:descriptionForEAPOLControlMode forKeyedSubscript:@"eapol_control_mode"];

  descriptionForEAP8021XControlState = [(CWFJoinStatus *)self descriptionForEAP8021XControlState];
  [v3 setObject:descriptionForEAP8021XControlState forKeyedSubscript:@"eapol_control_state"];

  descriptionForEAPOLClientStatus = [(CWFJoinStatus *)self descriptionForEAPOLClientStatus];
  [v3 setObject:descriptionForEAPOLClientStatus forKeyedSubscript:@"eapol_client_status"];

  v57 = sub_1E0BCEC64(v3, 0, 1u);
  if (v57)
  {
    v58 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v57];
  }

  else
  {
    v58 = 0;
  }

  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

- (id)descriptionForEAPOLClientStatus
{
  eAP8021XClientStatus = [(CWFJoinStatus *)self EAP8021XClientStatus];
  v4 = eAP8021XClientStatus;
  if (eAP8021XClientStatus > 999)
  {
    switch(eAP8021XClientStatus)
    {
      case 1000:
        v5 = @"Errno Error";
        break;
      case 1001:
        v5 = @"Security Error";
        break;
      case 1002:
        v5 = @"Plugin Specific Error";
        break;
      default:
LABEL_28:
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", -[CWFJoinStatus EAP8021XClientStatus](self, "EAP8021XClientStatus")];
        break;
    }
  }

  else
  {
    v5 = @"OK";
    switch(v4)
    {
      case 0:
        break;
      case 1:
        v5 = @"Failed";
        break;
      case 2:
        v5 = @"Allocation Failed";
        break;
      case 3:
        v5 = @"User Input Required";
        break;
      case 4:
        v5 = @"Configuration Invalid";
        break;
      case 5:
        v5 = @"Protocol Not Supported";
        break;
      case 6:
        v5 = @"Certificate Not Trusted";
        break;
      case 7:
        v5 = @"Inner Protocol Not Supported";
        break;
      case 8:
        v5 = @"Internal Error";
        break;
      case 9:
        v5 = @"User Cancelled Authentication";
        break;
      case 10:
        v5 = @"Unknown Root Certificate";
        break;
      case 11:
        v5 = @"No Root Certificate";
        break;
      case 12:
        v5 = @"Certificate Expired";
        break;
      case 13:
        v5 = @"Certificate Not Yet Valid";
        break;
      case 14:
        v5 = @"Certificate Requires Confirmation";
        break;
      case 15:
        v5 = @"User Input Not Possible";
        break;
      case 16:
        v5 = @"Resource Unavailable";
        break;
      case 17:
        v5 = @"Protocol Error";
        break;
      case 18:
        v5 = @"Authentication Stalled";
        break;
      case 19:
        v5 = @"Identity Decryption Error";
        break;
      default:
        goto LABEL_28;
    }
  }

  return v5;
}

- (id)descriptionForEAPOLControlMode
{
  eAP8021XControlMode = [(CWFJoinStatus *)self EAP8021XControlMode];
  if (eAP8021XControlMode >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", -[CWFJoinStatus EAP8021XControlMode](self, "EAP8021XControlMode")];
  }

  else
  {
    v4 = off_1E86EA558[eAP8021XControlMode];
  }

  return v4;
}

- (id)descriptionForEAP8021XControlState
{
  eAP8021XControlState = [(CWFJoinStatus *)self EAP8021XControlState];
  if (eAP8021XControlState >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", -[CWFJoinStatus EAP8021XControlState](self, "EAP8021XControlState")];
  }

  else
  {
    v4 = off_1E86EA578[eAP8021XControlState];
  }

  return v4;
}

@end
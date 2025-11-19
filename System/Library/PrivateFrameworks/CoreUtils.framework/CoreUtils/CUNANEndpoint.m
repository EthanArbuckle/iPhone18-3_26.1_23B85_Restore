@interface CUNANEndpoint
- (CUNANEndpoint)initWithEndpointID:(const char *)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (unsigned)updateWithDiscoveryResult:(id)a3;
@end

@implementation CUNANEndpoint

- (unsigned)updateWithDiscoveryResult:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_discoveryResult, a3);
  v6 = [v5 serviceSpecificInfo];
  v7 = [v6 blob];
  customData = self->_customData;
  v9 = v7;
  v10 = customData;
  v11 = v10;
  if (v9 == v10)
  {

    v13 = 0;
    v14 = v9;
LABEL_8:

    goto LABEL_9;
  }

  if ((v9 != 0) == (v10 == 0))
  {

    goto LABEL_7;
  }

  v12 = [(NSData *)v9 isEqual:v10];

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v15 = v9;
    v14 = self->_customData;
    self->_customData = v15;
    v13 = 1;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_9:
  if (!self->_identifier)
  {
    v16 = [v5 publisherAddress];
    v17 = [v16 data];
    [v5 publishID];
    v18 = _WiFiAwareCreateEndpointIdentifier(v17);
    identifier = self->_identifier;
    self->_identifier = v18;

    if (self->_identifier)
    {
      v13 = 1;
    }
  }

  v20 = [v6 instanceName];
  v21 = v20;
  if (v20)
  {
    name = self->_name;
    v23 = v20;
    v24 = name;
    v25 = v24;
    if (v23 == v24)
    {

      goto LABEL_20;
    }

    if (v24)
    {
      v26 = [(NSString *)v23 isEqual:v24];

      if (v26)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_name, v21);
    v13 |= 2u;
  }

LABEL_20:
  v27 = [v5 rssi];
  v47 = v6;
  if (v27 != self->_rssi)
  {
    self->_rssi = v27;
    v13 |= 0x10u;
  }

  v28 = [v5 serviceName];
  serviceType = self->_serviceType;
  v30 = v28;
  v31 = serviceType;
  v32 = v31;
  if (v30 == v31)
  {

    goto LABEL_29;
  }

  if ((v30 != 0) == (v31 == 0))
  {

    goto LABEL_28;
  }

  v33 = [(NSString *)v30 isEqual:v31];

  if ((v33 & 1) == 0)
  {
LABEL_28:
    objc_storeStrong(&self->_serviceType, v28);
    v13 |= 1u;
  }

LABEL_29:
  v34 = v47;
  v35 = [v47 txtRecordData];
  v37 = v35;
  if (v35)
  {
    v38 = CUTXTDictionaryCreateWithTXTData(v35, v36, 0);
    v39 = v38;
    if (!v38)
    {
LABEL_39:

      goto LABEL_40;
    }

    textInfo = self->_textInfo;
    p_textInfo = &self->_textInfo;
    v42 = v38;
    v43 = textInfo;
    v44 = v43;
    if (v42 == v43)
    {
    }

    else
    {
      if (v43)
      {
        v46 = [(NSDictionary *)v42 isEqual:v43];

        if (v46)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }

      objc_storeStrong(p_textInfo, v39);
      v13 |= 8u;
    }

LABEL_38:
    v34 = v47;
    goto LABEL_39;
  }

LABEL_40:

  return v13;
}

- (id)descriptionWithLevel:(int)a3
{
  v84 = 0;
  NSAppendPrintF_safe(&v84, "CUNANEndpoint ", *&a3, v3, v4, v5, v6, v7, v70);
  v10 = v84;
  v17 = v10;
  identifier = self->_identifier;
  if (identifier)
  {
    v83 = v10;
    v19 = &v83;
    NSAppendPrintF_safe(&v83, "%@", v11, v12, v13, v14, v15, v16, identifier);
  }

  else
  {
    macAddress = self->_macAddress;
    if (macAddress)
    {
      v82 = v10;
      v19 = &v82;
      NSAppendPrintF_safe(&v82, "%@-%u", v11, v12, v13, v14, v15, v16, macAddress);
    }

    else
    {
      v81 = v10;
      v19 = &v81;
      NSAppendPrintF_safe(&v81, "?", v11, v12, v13, v14, v15, v16, v71);
    }
  }

  v21 = *v19;

  serviceType = self->_serviceType;
  if (serviceType)
  {
    v80 = v21;
    NSAppendPrintF_safe(&v80, ", Sv '%@'", v22, v23, v24, v25, v26, v27, serviceType);
    v29 = v80;

    v21 = v29;
  }

  name = self->_name;
  if (name)
  {
    v79 = v21;
    NSAppendPrintF_safe(&v79, ", Nm '%@'", v22, v23, v24, v25, v26, v27, name);
    v31 = v79;

    v21 = v31;
  }

  port = self->_port;
  if (port)
  {
    v78 = v21;
    NSAppendPrintF_safe(&v78, ", Pt %d", v22, v23, v24, v25, v26, v27, port);
    v33 = v78;

    v21 = v33;
  }

  customData = self->_customData;
  if (customData)
  {
    v77 = v21;
    NSAppendPrintF_safe(&v77, ", CD %@", v22, v23, v24, v25, v26, v27, customData);
    v35 = v77;

    v21 = v35;
  }

  discoveryResult = self->_discoveryResult;
  if (discoveryResult)
  {
    v76 = v21;
    v37 = [(WiFiAwareDiscoveryResult *)discoveryResult datapathSupported];
    [(WiFiAwareDiscoveryResult *)self->_discoveryResult datapathSecurityRequired];
    [(WiFiAwareDiscoveryResult *)self->_discoveryResult furtherServiceDiscoveryRequired];
    v44 = 100;
    if (v37)
    {
      v44 = 68;
    }

    NSAppendPrintF_safe(&v76, ", Fl <%c%c%c>", v38, v39, v40, v41, v42, v43, v44);
    v45 = v76;

    v21 = v45;
  }

  v75 = v21;
  NSAppendPrintF_safe(&v75, ", rssi %d", v22, v23, v24, v25, v26, v27, self->_rssi);
  v46 = v75;

  v74 = v46;
  v54 = NSPrintF("%##@", v47, v48, v49, v50, v51, v52, v53, self->_textInfo);
  NSAppendPrintF_safe(&v74, ", TI %@", v55, v56, v57, v58, v59, v60, v54);
  v61 = v74;

  if (a3 <= 20)
  {
    v73 = v61;
    NSAppendPrintF_safe(&v73, "\n", v62, v63, v64, v65, v66, v67, v72);
    v68 = v73;

    v61 = v68;
  }

  return v61;
}

- (CUNANEndpoint)initWithEndpointID:(const char *)a3 error:(id *)a4
{
  v6 = [(CUNANEndpoint *)self init];
  if (!v6)
  {
    goto LABEL_6;
  }

  v19 = 0;
  v18 = 0;
  v17 = 0;
  if (sscanf(a3, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx-%hhu", &v18, &v18 + 1, &v18 + 2, &v18 + 3, &v19, &v19 + 1, &v17) != 7)
  {
    if (a4)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "Bad peer ID: '%s'", v7, v8, v9, v10, v11, a3);
      *a4 = v15 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v6->_instanceID = v17;
  v12 = objc_alloc(getWiFiMACAddressClass[0]());
  v13 = [v12 initWithAddress:v18 | (v19 << 32)];
  macAddress = v6->_macAddress;
  v6->_macAddress = v13;

  v15 = v6;
LABEL_7:

  return v15;
}

@end
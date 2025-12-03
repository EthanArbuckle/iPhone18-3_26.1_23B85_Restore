@interface CUBluetoothDevice
- (BOOL)isEqual:(id)equal;
- (CUBluetoothDevice)init;
- (id)description;
- (unint64_t)hash;
@end

@implementation CUBluetoothDevice

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    addressString = [(CUBluetoothDevice *)self addressString];
    addressString2 = [equalCopy addressString];
    v7 = addressString;
    v8 = addressString2;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else if ((v7 != 0) == (v8 == 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = [v7 isEqual:v8];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  addressString = [(CUBluetoothDevice *)self addressString];
  v3 = [addressString hash];

  return v3;
}

- (id)description
{
  v106 = 0;
  addressString = [(CUBluetoothDevice *)self addressString];
  NSAppendPrintF(&v106, "CUBluetoothDevice %@", v4, v5, v6, v7, v8, v9, addressString);
  v10 = v106;

  identifier = [(CUBluetoothDevice *)self identifier];
  v18 = identifier;
  if (identifier)
  {
    v105 = v10;
    NSAppendPrintF(&v105, ", ID '%@'", v12, v13, v14, v15, v16, v17, identifier);
    v19 = v105;

    v10 = v19;
  }

  name = [(CUBluetoothDevice *)self name];
  v27 = name;
  if (name)
  {
    v104 = v10;
    NSAppendPrintF(&v104, ", '%@'", v21, v22, v23, v24, v25, v26, name);
    v28 = v104;

    v10 = v28;
  }

  manufacturer = [(CUBluetoothDevice *)self manufacturer];
  v36 = manufacturer;
  if (manufacturer)
  {
    v103 = v10;
    NSAppendPrintF(&v103, ", Mfg '%@'", v30, v31, v32, v33, v34, v35, manufacturer);
    v37 = v103;

    v10 = v37;
  }

  modelNumber = [(CUBluetoothDevice *)self modelNumber];
  v45 = modelNumber;
  if (modelNumber)
  {
    v102 = v10;
    NSAppendPrintF(&v102, ", Md %@", v39, v40, v41, v42, v43, v44, modelNumber);
    v46 = v102;

    v10 = v46;
  }

  productIdentifier = self->_productIdentifier;
  if (productIdentifier)
  {
    v101 = v10;
    NSAppendPrintF(&v101, ", PID 0x%X", v47, v48, v49, v50, v51, v52, productIdentifier);
    v54 = v101;

    v10 = v54;
  }

  versionID = self->_versionID;
  if (versionID)
  {
    v100 = v10;
    NSAppendPrintF(&v100, ", VrI 0x%X", v47, v48, v49, v50, v51, v52, versionID);
    v56 = v100;

    v10 = v56;
  }

  deviceType = self->_deviceType;
  if (deviceType)
  {
    v99 = v10;
    NSAppendPrintF(&v99, ", DT %d", v47, v48, v49, v50, v51, v52, deviceType);
    v58 = v99;

    v10 = v58;
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion)
  {
    v98 = v10;
    v60 = firmwareVersion;
    NSAppendPrintF(&v98, ", FV '%@'", v61, v62, v63, v64, v65, v66, v60);
    v67 = v98;

    v10 = v67;
  }

  connectedServices = self->_connectedServices;
  if (connectedServices)
  {
    v97 = v10;
    NSAppendPrintF(&v97, ", CnS 0x%X", v47, v48, v49, v50, v51, v52, connectedServices);
    v69 = v97;

    v10 = v69;
  }

  primaryPlacement = self->_primaryPlacement;
  if (primaryPlacement)
  {
    v96 = v10;
    if (primaryPlacement > 7)
    {
      v71 = "?";
    }

    else
    {
      v71 = off_1E73A2F20[primaryPlacement - 1];
    }

    NSAppendPrintF(&v96, ", PriP %s", v47, v48, v49, v50, v51, v52, v71);
    v72 = v96;

    v10 = v72;
  }

  secondaryPlacement = self->_secondaryPlacement;
  if (secondaryPlacement)
  {
    v95 = v10;
    if (secondaryPlacement > 7)
    {
      v74 = "?";
    }

    else
    {
      v74 = off_1E73A2F20[secondaryPlacement - 1];
    }

    NSAppendPrintF(&v95, ", 2ndP %s", v47, v48, v49, v50, v51, v52, v74);
    v75 = v95;

    v10 = v75;
  }

  streamState = self->_streamState;
  if (streamState)
  {
    v94 = v10;
    if (streamState > 3)
    {
      v77 = "?";
    }

    else
    {
      v77 = off_1E73A2F58[streamState - 1];
    }

    NSAppendPrintF(&v94, ", Strm %s", v47, v48, v49, v50, v51, v52, v77);
    v78 = v94;

    v10 = v78;
  }

  if (self->_magicPaired)
  {
    v93 = v10;
    NSAppendPrintF(&v93, ", MagicPaired", v47, v48, v49, v50, v51, v52, v88);
    v79 = v93;

    v10 = v79;
  }

  if (self->_supportsAACPService)
  {
    v92 = v10;
    NSAppendPrintF(&v92, ", AACP", v47, v48, v49, v50, v51, v52, v88);
    v80 = v92;

    v10 = v80;
  }

  colorCode = self->_colorCode;
  if (colorCode != -1)
  {
    v91 = v10;
    NSAppendPrintF(&v91, ", Color %d (%s)", v47, v48, v49, v50, v51, v52, colorCode);
    v82 = v91;

    v10 = v82;
  }

  deviceFlags = self->_deviceFlags;
  if (deviceFlags)
  {
    v90 = v10;
    NSAppendPrintF(&v90, ", DF %#{flags}", v47, v48, v49, v50, v51, v52, deviceFlags);
    v84 = v90;

    v10 = v84;
  }

  disconnectReason = self->_disconnectReason;
  if (disconnectReason)
  {
    v89 = v10;
    NSAppendPrintF(&v89, ", DR %#m", v47, v48, v49, v50, v51, v52, disconnectReason);
    v86 = v89;

    v10 = v86;
  }

  return v10;
}

- (CUBluetoothDevice)init
{
  v6.receiver = self;
  v6.super_class = CUBluetoothDevice;
  v2 = [(CUBluetoothDevice *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_colorCode = -1;
    v4 = v2;
  }

  return v3;
}

@end
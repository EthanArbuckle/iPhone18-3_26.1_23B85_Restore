@interface CUWiFiDevice
- (id)description;
- (unsigned)_updateWithDeviceIE:(const char *)e end:(const char *)end;
@end

@implementation CUWiFiDevice

- (unsigned)_updateWithDeviceIE:(const char *)e end:(const char *)end
{
  eCopy = e;
  eCopy2 = e;
  while (1)
  {
    v8 = 0;
    if (end <= eCopy2 || (end - eCopy2) < 2)
    {
      break;
    }

    v9 = *(eCopy2 + 1);
    if (&eCopy2[v9 + 2] > end)
    {
      goto LABEL_11;
    }

    v10 = *eCopy2;
    eCopy2 += v9 + 2;
    if (v10 == 6)
    {
      if (v9 != 6)
      {
LABEL_11:
        v8 = 0;
        break;
      }

      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      deviceIEBluetoothMAC = self->_deviceIEBluetoothMAC;
      v13 = v11;
      v14 = deviceIEBluetoothMAC;
      v15 = v14;
      if (v13 == v14)
      {

        v8 = 0;
        v17 = v13;
      }

      else
      {
        if ((v13 != 0) != (v14 == 0))
        {
          v16 = [(NSData *)v13 isEqual:v14];

          if (v16)
          {
            v8 = 0;
LABEL_16:

            break;
          }
        }

        else
        {
        }

        v18 = v13;
        v17 = self->_deviceIEBluetoothMAC;
        self->_deviceIEBluetoothMAC = v18;
        v8 = 1;
      }

      goto LABEL_16;
    }
  }

  UInt64 = TLV8GetUInt64(eCopy, end, 8, 0, 0);
  if (self->_deviceIECategory != UInt64)
  {
    self->_deviceIECategory = UInt64;
    v8 = 1;
  }

  v20 = eCopy;
  while (end > v20)
  {
    if (&end[-v20] < 2)
    {
      break;
    }

    v21 = *(v20 + 1);
    if (v20 + 2 + v21 > end)
    {
      break;
    }

    v22 = *v20;
    v20 += 2 + v21;
    if (v22 == 7)
    {
      if (v21 != 6)
      {
        break;
      }

      v23 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      deviceIEDeviceID = self->_deviceIEDeviceID;
      v25 = v23;
      v26 = deviceIEDeviceID;
      v27 = v26;
      if (v25 == v26)
      {

        v29 = v25;
      }

      else
      {
        if ((v25 != 0) != (v26 == 0))
        {
          v28 = [(NSData *)v25 isEqual:v26];

          if (v28)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        v30 = v25;
        v29 = self->_deviceIEDeviceID;
        self->_deviceIEDeviceID = v30;
        v8 = 1;
      }

LABEL_33:
      break;
    }
  }

  v31 = eCopy;
  do
  {
    v32 = 0;
    if (end <= v31 || &end[-v31] < 2)
    {
      goto LABEL_56;
    }

    v33 = (v31 + 2);
    v34 = *(v31 + 1);
    if (v31 + 2 + v34 > end)
    {
      goto LABEL_55;
    }

    v35 = *v31;
    v31 += 2 + v34;
  }

  while (v35);
  if (v34 <= 1)
  {
    if (v34)
    {
      v39 = (*v33 < 0) << 31;
      goto LABEL_48;
    }

LABEL_55:
    v32 = 0;
  }

  else
  {
    v36 = v33[1];
    v37 = (v36 & 3) << 16;
    if (*v33 < 0)
    {
      v37 = ((v36 & 3) << 16) | 0x80000000;
    }

    v38 = v37 | 0x800000;
    if (v36 >= 0)
    {
      v38 = v37;
    }

    if (v34 == 2)
    {
      v39 = v38 | ((v36 & 0x60) << 16);
LABEL_48:
      v32 = v39 | ((*v33 & 0x60) << 24);
      goto LABEL_56;
    }

    v40 = v33[2];
    v41 = ((v36 & 0x20) << 16) | ((((v40 & 0x70) >> 4) & 7) << 12) | v38;
    v42 = (v36 & 0x40) << 16;
    if (v34 >= 4)
    {
      v42 |= v33[3] & 0xC0;
    }

    v43 = v42 | v41 | ((v40 & 1) << 8) | ((*v33 & 0x20) << 24);
    v44 = v33[2];
    v45 = v43 | ((v44 & 6) << 8);
    if (v34 != 3)
    {
      v45 |= v33[3] & 0x20;
    }

    v32 = v45 | ((v44 & 8) << 8) | ((*v33 & 0x40) << 24);
    if (v34 >= 4)
    {
      v32 |= v33[3] & 0x10;
    }
  }

LABEL_56:
  if (v32 != self->_deviceIEFlags)
  {
    self->_deviceIEFlags = v32;
    v8 = 1;
  }

  v46 = eCopy;
  while (end > v46)
  {
    if (&end[-v46] < 2)
    {
      break;
    }

    v47 = v46 + 2;
    v48 = *(v46 + 1);
    if (v46 + 2 + v48 > end)
    {
      break;
    }

    v49 = *v46;
    v46 += 2 + v48;
    if (v49 == 2)
    {
      if (!v48)
      {
        break;
      }

      v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v47 length:v48 encoding:4];
      v51 = v50;
      if (!v50)
      {
        goto LABEL_72;
      }

      deviceIEManufacturer = self->_deviceIEManufacturer;
      v53 = v50;
      v54 = deviceIEManufacturer;
      v55 = v54;
      if (v53 == v54)
      {
      }

      else
      {
        if (v54)
        {
          v56 = [(NSString *)v53 isEqual:v54];

          if (v56)
          {
            goto LABEL_72;
          }
        }

        else
        {
        }

        objc_storeStrong(&self->_deviceIEManufacturer, v51);
        v8 = 1;
      }

LABEL_72:

      break;
    }
  }

  v57 = eCopy;
  while (end > v57)
  {
    if (&end[-v57] < 2)
    {
      break;
    }

    v58 = v57 + 2;
    v59 = *(v57 + 1);
    if (v57 + 2 + v59 > end)
    {
      break;
    }

    v60 = *v57;
    v57 += 2 + v59;
    if (v60 == 3)
    {
      if (!v59)
      {
        break;
      }

      v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v58 length:v59 encoding:4];
      v62 = v61;
      if (!v61)
      {
        goto LABEL_87;
      }

      deviceIEModel = self->_deviceIEModel;
      v64 = v61;
      v65 = deviceIEModel;
      v66 = v65;
      if (v64 == v65)
      {
      }

      else
      {
        if (v65)
        {
          v67 = [(NSString *)v64 isEqual:v65];

          if (v67)
          {
            goto LABEL_87;
          }
        }

        else
        {
        }

        objc_storeStrong(&self->_deviceIEModel, v62);
        v8 = 1;
      }

LABEL_87:

      break;
    }
  }

  v68 = eCopy;
  while (end > v68)
  {
    if (&end[-v68] < 2)
    {
      break;
    }

    v69 = v68 + 2;
    v70 = *(v68 + 1);
    if (v68 + 2 + v70 > end)
    {
      break;
    }

    v71 = *v68;
    v68 += 2 + v70;
    if (v71 == 1)
    {
      if (!v70)
      {
        break;
      }

      v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v69 length:v70 encoding:4];
      v73 = v72;
      if (!v72)
      {
        goto LABEL_102;
      }

      deviceIEName = self->_deviceIEName;
      v75 = v72;
      v76 = deviceIEName;
      v77 = v76;
      if (v75 == v76)
      {
      }

      else
      {
        if (v76)
        {
          v78 = [(NSString *)v75 isEqual:v76];

          if (v78)
          {
            goto LABEL_102;
          }
        }

        else
        {
        }

        objc_storeStrong(&self->_deviceIEName, v73);
        v8 = 1;
      }

LABEL_102:

      break;
    }
  }

  v79 = eCopy;
  while (end > v79)
  {
    if (&end[-v79] < 2)
    {
      break;
    }

    v80 = *(v79 + 1);
    if (v79 + 2 + v80 > end)
    {
      break;
    }

    v81 = *v79;
    v79 += 2 + v80;
    if (v81 == 4)
    {
      if (v80 != 3)
      {
        break;
      }

      v82 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      deviceIDOUI = self->_deviceIDOUI;
      v84 = v82;
      v85 = deviceIDOUI;
      v86 = v85;
      if (v84 == v85)
      {

        v88 = v84;
      }

      else
      {
        if ((v84 != 0) != (v85 == 0))
        {
          v87 = [(NSData *)v84 isEqual:v85];

          if (v87)
          {
            goto LABEL_117;
          }
        }

        else
        {
        }

        v89 = v84;
        v88 = self->_deviceIDOUI;
        self->_deviceIDOUI = v89;
        v8 = 1;
      }

LABEL_117:
      break;
    }
  }

  while (end > eCopy)
  {
    if ((end - eCopy) < 2)
    {
      break;
    }

    v90 = eCopy[1];
    if (&eCopy[v90 + 2] > end)
    {
      break;
    }

    v91 = *eCopy;
    eCopy += v90 + 2;
    if (v91 == 9)
    {
      if (v90 != 4)
      {
        return v8;
      }

      v92 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      deviceIDSetupHash = self->_deviceIDSetupHash;
      v94 = v92;
      v95 = deviceIDSetupHash;
      v96 = v95;
      if (v94 == v95)
      {

        v98 = v94;
      }

      else
      {
        if ((v94 != 0) != (v95 == 0))
        {
          v97 = [(NSData *)v94 isEqual:v95];

          if (v97)
          {
            goto LABEL_131;
          }
        }

        else
        {
        }

        v99 = v94;
        v98 = self->_deviceIDSetupHash;
        self->_deviceIDSetupHash = v99;
        v8 = 1;
      }

LABEL_131:
      return v8;
    }
  }

  return v8;
}

- (id)description
{
  v56 = 0;
  NSAppendPrintF(&v56, "CUWiFiDevice %{ptr}", v2, v3, v4, v5, v6, v7, self);
  v9 = v56;
  if ([(NSData *)self->_bssid length]== 6)
  {
    v55 = v9;
    bytes = [(NSData *)self->_bssid bytes];
    NSAppendPrintF(&v55, ", BSSID %.6a", v17, v18, v19, v20, v21, v22, bytes);
    v23 = v55;

    v9 = v23;
  }

  ssid = self->_ssid;
  if (ssid)
  {
    v54 = v9;
    NSAppendPrintF(&v54, ", SSID '%@'", v10, v11, v12, v13, v14, v15, ssid);
    v25 = v54;

    v9 = v25;
  }

  v53 = v9;
  v26 = [(NSData *)self->_ieData length];
  NSAppendPrintF(&v53, ", IE %ld bytes", v27, v28, v29, v30, v31, v32, v26);
  v33 = v53;

  v52 = v33;
  NSAppendPrintF(&v52, ", RSSI %d", v34, v35, v36, v37, v38, v39, self->_rssi);
  v40 = v52;

  deviceIEFlags = self->_deviceIEFlags;
  v51 = v40;
  NSAppendPrintF(&v51, ", %#{flags}", v42, v43, v44, v45, v46, v47, deviceIEFlags);
  v48 = v51;
  v49 = v51;

  return v48;
}

@end
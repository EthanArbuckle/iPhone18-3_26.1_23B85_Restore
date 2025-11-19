@interface CUBLEDevice
- (id)descriptionWithLevel:(int)a3;
- (unsigned)updateWithAdvertisementData:(id)a3 rssi:(int)a4 oldDevice:(id)a5;
- (void)_parseAppleManufacturerPtr:(const char *)a3 end:(const char *)a4 data:(id)a5;
- (void)_parseAppleNearbyActionPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseAppleNearbyInfoPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseAppleObjectDiscoveryPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseAppleProximityPairingObjectSetupPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseAppleProximityPairingPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseAppleProximityPairingStatusPtr:(const char *)a3 end:(const char *)a4;
- (void)_parseLGManufacturerPtr:(const char *)a3 end:(const char *)a4 fields:(id)a5;
- (void)_parseManufacturerData:(id)a3 advertisementFields:(id)a4;
@end

@implementation CUBLEDevice

- (void)_parseLGManufacturerPtr:(const char *)a3 end:(const char *)a4 fields:(id)a5
{
  self->_scanFlags |= 0x40u;
  self->_lgFlags = 0;
  if (a4 - a3 >= 4 && (a3[3] & 1) != 0)
  {
    self->_lgFlags = 3;
  }

  v6 = a5;
  TypeID = CFDataGetTypeID();
  v11 = CFDictionaryGetTypedValue(v6, @"kCBAdvDataLeBluetoothDeviceAddress", TypeID, 0);

  if ([v11 length] >= 7)
  {
    v8 = [v11 bytes];
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 + 1 length:6];
    lgBTAddress = self->_lgBTAddress;
    self->_lgBTAddress = v9;
  }
}

- (void)_parseAppleProximityPairingObjectSetupPtr:(const char *)a3 end:(const char *)a4
{
  self->_scanFlags |= 0x80u;
  if (a4 - a3 <= 0)
  {
    self->_objectSetupFlags = 0;
LABEL_8:
    objectSetupFontCode = self->_objectSetupFontCode;
    self->_objectSetupFontCode = 0;

    v11 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v7 = *a3;
  self->_objectSetupFlags = v7;
  if (&a4[~a3] < 1)
  {
    goto LABEL_8;
  }

  v8 = *(a3 + 1);
  self->_objectSetupBatteryState = v8 & 7;
  self->_objectSetupBatteryPerformance = (v8 >> 3) & 3;
  if (a4 - a3 - 2 <= 0)
  {
    goto LABEL_8;
  }

  v9 = a3 + 3;
  self->_objectSetupColorCode = a3[2];
  v10 = a4 - (a3 + 3);
  if ((v7 & 0x10) != 0 && v10 >= 7)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 + 3 length:7 encoding:4];
    v9 = a3 + 10;
    objc_storeStrong(&self->_objectSetupFontCode, v18);
    v11 = v18;
    v10 = a4 - (a3 + 10);
  }

  else
  {
    v15 = self->_objectSetupFontCode;
    self->_objectSetupFontCode = 0;

    v11 = 0;
    v13 = 0;
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_9;
    }
  }

  v20 = v11;
  if (v10 < 1)
  {
    v13 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 12;
    if (v10 < 0xC)
    {
      v17 = v10;
    }

    while (v9[v16])
    {
      if (v17 == ++v16)
      {
        v16 = v17;
        break;
      }
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:v16 encoding:4];
  }

  v11 = v20;
LABEL_9:
  v19 = v11;
  objectSetupMessage = self->_objectSetupMessage;
  self->_objectSetupMessage = v13;
}

- (void)_parseAppleProximityPairingStatusPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 <= 6)
  {
    self->_proximityPairingAudioSourceCount = 0;
  }

  else
  {
    self->_proximityPairingAudioSourceCount = (a3[6] >> 2) & 3;
    if ((a4 - a3) >= 0xD)
    {
      v4 = *(a3 + 5);
      self->_proximityPairingLastConnectedHost.bytes[2] = a3[12];
      *self->_proximityPairingLastConnectedHost.bytes = v4;
      return;
    }
  }

  self->_proximityPairingLastConnectedHost.bytes[2] = 0;
  *self->_proximityPairingLastConnectedHost.bytes = 0;
}

- (void)_parseAppleProximityPairingPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    self->_proximityPairingProductID = 0;
    self->_proximityPairingSubType = 255;
    self->_scanFlags |= 0x10u;
  }

  else
  {
    v7 = *a3;
    v5 = a3 + 1;
    v6 = v7;
    if (a4 - v5 <= 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a3 + 1);
      v5 = a3 + 3;
    }

    self->_proximityPairingProductID = v8;
    self->_proximityPairingSubType = v6;
    self->_scanFlags |= 0x10u;
    if (v6 == 5)
    {
      [(CUBLEDevice *)self _parseAppleProximityPairingObjectSetupPtr:v5 end:?];
    }

    else if (v6 == 1)
    {
      [(CUBLEDevice *)self _parseAppleProximityPairingStatusPtr:v5 end:?];
    }
  }
}

- (void)_parseAppleObjectDiscoveryPtr:(const char *)a3 end:(const char *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (a4 - a3 >= 1)
  {
    v8 = a3 + 1;
    v7 = *a3;
    if ((v7 & 0x10) != 0)
    {
      v9 = 21760;
    }

    else
    {
      v9 = -26215;
    }

    v10 = self->_addressData;
    if ([(NSData *)v10 length]!= 6)
    {
      goto LABEL_17;
    }

    if (a4 - v8 < 22)
    {
      v15 = [(NSData *)v10 bytes];
      v16 = *(v15 + 4);
      v19 = *v15;
      v20 = v16;
      if (a4 - v8 >= 1)
      {
        LOBYTE(v19) = v19 & 0x3F | (*v8 << 6);
      }

      v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v19 length:6];
      self->_objectDiscoveryBatteryState = v7 >> 5;
      self->_objectDiscoveryMode = 1;
      self->_objectDiscoveryProductID = v9;
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = 128;
    }

    else
    {
      v11 = [(NSData *)v10 bytes];
      v12 = *(v11 + 4);
      v19 = *v11;
      v20 = v12;
      *v21 = *v8;
      *&v21[14] = *(v8 + 14);
      if (a4 - (a3 + 23) >= 1)
      {
        LOBYTE(v19) = v19 & 0x3F | (a3[23] << 6);
      }

      v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v19 length:28];
      self->_objectDiscoveryBatteryState = v7 >> 5;
      self->_objectDiscoveryMode = 2;
      self->_objectDiscoveryProductID = v9;
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = 136;
    }

    v17 = *(&self->super.isa + v14);
    *(&self->super.isa + v14) = v13;
    v18 = v13;

LABEL_16:
    self->_scanFlags |= 0x20u;
LABEL_17:
  }
}

- (void)_parseAppleNearbyInfoPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = *a3;
    self->_nearbyActivityLevel = v5 & 0xF;
    v6 = (4 * v5) & 0xC0;
    if (&a4[~a3] >= 1)
    {
      v7 = *(a3 + 1);
      v8 = vdupq_n_s32(v7);
      v9.i64[0] = vshlq_u32(v8, xmmword_191FF94C0).u64[0];
      v9.i64[1] = vshlq_u32(v8, xmmword_191FF94D0).i64[1];
      v10 = vandq_s8(v9, xmmword_191FF94E0);
      *v10.i8 = vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
      v6 |= v10.i32[0] | v10.i32[1] | (v7 >> 7) | (v7 >> 1) & 8;
      if (((v7 >> 1) & 8) != 0 && a4 - (a3 + 2) >= 3)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 2 length:3];
        nearbyAuthTag = self->_nearbyAuthTag;
        self->_nearbyAuthTag = v11;
      }
    }
  }

  self->_nearbyFlags |= v6;
  self->_scanFlags |= 4u;
}

- (void)_parseAppleNearbyActionPtr:(const char *)a3 end:(const char *)a4
{
  if (a4 - a3 >= 1)
  {
    v5 = *a3;
    v6 = (v5 >> 4) & 8;
    self->_nearbyFlags |= (4 * v5) & 0x100 | v6 | (16 * v5) & 0x200;
    if (&a4[~a3] >= 1)
    {
      self->_nearbyActionType = *(a3 + 1);
      if (v6)
      {
        if (a4 - (a3 + 2) >= 3)
        {
          v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 + 2 length:3];
          nearbyAuthTag = self->_nearbyAuthTag;
          self->_nearbyAuthTag = v7;
        }
      }
    }
  }

  self->_scanFlags |= 2u;
}

- (void)_parseAppleManufacturerPtr:(const char *)a3 end:(const char *)a4 data:(id)a5
{
  v11 = a5;
  if (a4 - a3 < 2)
  {
LABEL_13:
    objc_storeStrong(&self->_appleManufacturerData, a5);
  }

  else
  {
    while (1)
    {
      v9 = a3[1] & 0x1F;
      if (a4 - (a3 + 2) < v9)
      {
        break;
      }

      v10 = *a3;
      a3 += v9 + 2;
      if (v10 > 15)
      {
        if (v10 == 16)
        {
          [CUBLEDevice _parseAppleNearbyInfoPtr:"_parseAppleNearbyInfoPtr:end:" end:?];
        }

        else if (v10 == 18)
        {
          [CUBLEDevice _parseAppleObjectDiscoveryPtr:"_parseAppleObjectDiscoveryPtr:end:" end:?];
        }
      }

      else if (v10 == 7)
      {
        [CUBLEDevice _parseAppleProximityPairingPtr:"_parseAppleProximityPairingPtr:end:" end:?];
      }

      else if (v10 == 15)
      {
        [CUBLEDevice _parseAppleNearbyActionPtr:"_parseAppleNearbyActionPtr:end:" end:?];
      }

      if (a4 - a3 <= 1)
      {
        goto LABEL_13;
      }
    }
  }
}

- (void)_parseManufacturerData:(id)a3 advertisementFields:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  v8 = [v12 bytes];
  v9 = [v12 length];
  if (v9 >= 2)
  {
    v10 = v8 + 1;
    v11 = *v8;
    if (v11 == 196)
    {
      [(CUBLEDevice *)self _parseLGManufacturerPtr:v10 end:v8 + v9 fields:v6];
    }

    else if (v11 == 76)
    {
      [(CUBLEDevice *)self _parseAppleManufacturerPtr:v10 end:v8 + v9 data:v12];
    }
  }
}

- (unsigned)updateWithAdvertisementData:(id)a3 rssi:(int)a4 oldDevice:(id)a5
{
  v8 = a3;
  v9 = a5;
  CBAdvertisementDataDeviceAddress = getCBAdvertisementDataDeviceAddress();
  v11 = CFDictionaryGetCFDataOfLength(v8, CBAdvertisementDataDeviceAddress, 6, 0);
  if (v11)
  {
    v12 = [v9 addressData];
    v13 = v11;
    v14 = v12;
    v15 = v14;
    if (v13 == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
      if (v14)
      {
        if ([v13 isEqual:v14])
        {
          v16 = 0;
        }

        else
        {
          v16 = 2;
        }
      }
    }

    objc_storeStrong(&self->_addressData, v11);
  }

  else
  {
    v16 = 0;
  }

  CBAdvertisementDataManufacturerDataKey = getCBAdvertisementDataManufacturerDataKey();
  TypeID = CFDataGetTypeID();
  v19 = CFDictionaryGetTypedValue(v8, CBAdvertisementDataManufacturerDataKey, TypeID, 0);
  if (v19)
  {
    v20 = [v9 manufacturerData];
    v21 = v19;
    v22 = v20;
    v23 = v22;
    if (v21 == v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = 1;
      if (v22)
      {
        v24 = ([v21 isEqual:v22] & 1) == 0;
      }
    }

    v16 |= v24;
    objc_storeStrong(&self->_manufacturerData, v19);
    [(CUBLEDevice *)self _parseManufacturerData:v21 advertisementFields:v8];
  }

  if ((a4 - 20) >= 0x6B)
  {
    v25 = a4;
  }

  else
  {
    v25 = a4 - 126;
  }

  if ((v25 - 1) < 0xFFFFFFA5)
  {
    v25 = 0;
  }

  if (v25 != self->_rawRSSI)
  {
    v16 |= 8u;
    self->_rawRSSI = v25;
  }

  return v16;
}

- (id)descriptionWithLevel:(int)a3
{
  v142 = 0;
  NSAppendPrintF(&v142, "CUBLEDevice %@", *&a3, v3, v4, v5, v6, v7, self->_identifier);
  v10 = v142;
  v11 = self->_addressData;
  v12 = v11;
  if (v11)
  {
    v141 = v10;
    if ([(NSData *)v11 length]== 6)
    {
      v19 = [(NSData *)v12 bytes];
    }

    else
    {
      v19 = 0;
    }

    NSAppendPrintF(&v141, ", Addr %.6a", v13, v14, v15, v16, v17, v18, v19);
    v20 = v141;

    v10 = v20;
  }

  v140 = v10;
  NSAppendPrintF(&v140, ", RSSI %3d", v21, v22, v23, v24, v25, v26, self->_rawRSSI);
  v27 = v140;

  if (a3 < 50)
  {
    v34 = self->_appleManufacturerData;
    v35 = v34;
    if (v34)
    {
      v139 = v27;
      v36 = [(NSData *)v34 bytes];
      [(NSData *)v35 length];
      NSAppendPrintF(&v139, ", AMD <%H>", v37, v38, v39, v40, v41, v42, v36);
      v43 = v139;
    }

    else
    {
      manufacturerData = self->_manufacturerData;
      if (!manufacturerData)
      {
LABEL_12:

        goto LABEL_13;
      }

      v138 = v27;
      v45 = manufacturerData;
      v46 = [(NSData *)v45 bytes];
      [(NSData *)v45 length];
      NSAppendPrintF(&v138, ", MfD <%H>", v47, v48, v49, v50, v51, v52, v46);
      v43 = v138;

      v27 = v45;
    }

    v27 = v43;
    goto LABEL_12;
  }

LABEL_13:
  deviceFlags = self->_deviceFlags;
  if (deviceFlags)
  {
    v137 = v27;
    NSAppendPrintF(&v137, ", DF %#{flags}", v28, v29, v30, v31, v32, v33, deviceFlags);
    v54 = v137;

    v27 = v54;
  }

  lgDeviceID = self->_lgDeviceID;
  if (lgDeviceID)
  {
    v136 = v27;
    v56 = lgDeviceID;
    v57 = [(NSData *)v56 bytes];
    [(NSData *)v56 length];
    NSAppendPrintF(&v136, ", LGID <%H>", v58, v59, v60, v61, v62, v63, v57);
    v64 = v136;

    v27 = v64;
  }

  lgFlags = self->_lgFlags;
  if (lgFlags)
  {
    v135 = v27;
    NSAppendPrintF(&v135, ", LGF %#{flags}", v28, v29, v30, v31, v32, v33, lgFlags);
    v66 = v135;

    v27 = v66;
  }

  nearbyActivityLevel = self->_nearbyActivityLevel;
  if (self->_nearbyActivityLevel)
  {
    v134 = v27;
    if (nearbyActivityLevel > 0xE)
    {
      v68 = "?";
    }

    else
    {
      v68 = off_1E73A2CB8[(nearbyActivityLevel - 1)];
    }

    NSAppendPrintF(&v134, ", AL %s", v28, v29, v30, v31, v32, v33, v68);
    v69 = v134;

    v27 = v69;
  }

  nearbyFlags = self->_nearbyFlags;
  if (nearbyFlags)
  {
    v133 = v27;
    NSAppendPrintF(&v133, ", Fl %#{flags}", v28, v29, v30, v31, v32, v33, nearbyFlags);
    v71 = v133;

    v27 = v71;
  }

  nearbyAuthTag = self->_nearbyAuthTag;
  if (nearbyAuthTag)
  {
    v132 = v27;
    v73 = nearbyAuthTag;
    NSAppendPrintF(&v132, ", AT <%@>", v74, v75, v76, v77, v78, v79, v73);
    v80 = v132;

    v27 = v80;
  }

  objectDiscoveryMode = self->_objectDiscoveryMode;
  if (objectDiscoveryMode)
  {
    v82 = "?";
    v83 = "NearOwner";
    if (objectDiscoveryMode != 1)
    {
      v83 = "?";
    }

    if (objectDiscoveryMode == 2)
    {
      v84 = "Wild";
    }

    else
    {
      v84 = v83;
    }

    v131 = v27;
    NSAppendPrintF(&v131, ", ObjDisc %s", v28, v29, v30, v31, v32, v33, v84);
    v85 = v131;

    v130 = v85;
    NSAppendPrintF(&v130, ", PID %d", v86, v87, v88, v89, v90, v91, self->_objectDiscoveryProductID);
    v92 = v130;

    v129 = v92;
    objectDiscoveryBatteryState = self->_objectDiscoveryBatteryState;
    if (objectDiscoveryBatteryState <= 5)
    {
      v82 = off_1E73A2D28[objectDiscoveryBatteryState];
    }

    NSAppendPrintF(&v129, ", Battery %s", v93, v94, v95, v96, v97, v98, v82);
    v27 = v129;

    objectDiscoveryPublicKeyData = self->_objectDiscoveryPublicKeyData;
    if (objectDiscoveryPublicKeyData)
    {
      v128 = v27;
      v101 = objectDiscoveryPublicKeyData;
      NSAppendPrintF(&v128, ", PK <%@>", v102, v103, v104, v105, v106, v107, v101);
      v108 = v128;

      v27 = v108;
    }
  }

  proximityPairingProductID = self->_proximityPairingProductID;
  if (self->_proximityPairingProductID)
  {
    v127 = v27;
    NSAppendPrintF(&v127, ", PP PID 0x%04x, ST %d (%s)", v28, v29, v30, v31, v32, v33, proximityPairingProductID);
    v110 = v127;

    v27 = v110;
  }

  if (self->_proximityPairingSubType == 1)
  {
    v126 = v27;
    NSAppendPrintF(&v126, ", ASC %d", v28, v29, v30, v31, v32, v33, self->_proximityPairingAudioSourceCount);
    v111 = v126;

    v125 = v111;
    NSAppendPrintF(&v125, ", LCH %02X:%02X:%02X", v112, v113, v114, v115, v116, v117, self->_proximityPairingLastConnectedHost.bytes[0]);
    v27 = v125;
  }

  changeFlags = self->_changeFlags;
  if (changeFlags)
  {
    v124 = v27;
    NSAppendPrintF(&v124, ", %#{flags}", v28, v29, v30, v31, v32, v33, changeFlags);
    v119 = v124;

    v27 = v119;
  }

  if (a3 < 21)
  {
    v123 = v27;
    NSAppendPrintF(&v123, "\n", v28, v29, v30, v31, v32, v33, v122);
    v120 = v123;

    v27 = v120;
  }

  return v27;
}

@end
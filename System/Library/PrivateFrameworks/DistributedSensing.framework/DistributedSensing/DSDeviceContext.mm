@interface DSDeviceContext
- (DSDeviceContext)initWithCBDevice:(id)device error:(id *)error;
- (DSDeviceContext)initWithXPCObject:(id)object error:(id *)error;
- (void)encodeSelf:(id)self;
- (void)updateWithCBDevice:(id)device;
@end

@implementation DSDeviceContext

- (DSDeviceContext)initWithXPCObject:(id)object error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v38.receiver = self;
  v38.super_class = DSDeviceContext;
  v7 = [(DSDeviceContext *)&v38 init];
  if (!v7)
  {
    v36 = DSLogObjectForCategory_DSDeviceContext();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v37 = "Allocation failed";
    goto LABEL_54;
  }

  if (MEMORY[0x24C1EF810](objectCopy) != MEMORY[0x277D86468])
  {
    v36 = DSLogObjectForCategory_DSDeviceContext();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v37 = "init with invalid dictionary";
    goto LABEL_54;
  }

  v8 = xpc_dictionary_get_BOOL(objectCopy, "kDSDevCtxIsMe");
  if (onceTokenDSDeviceContext != -1)
  {
    [DSDeviceContext initWithXPCObject:error:];
  }

  v9 = logObjDSDeviceContext;
  if (os_log_type_enabled(logObjDSDeviceContext, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "NO";
    if (v8)
    {
      v10 = "YES";
    }

    *buf = 136315138;
    v40 = v10;
    _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_DEFAULT, "Is self device: %s", buf, 0xCu);
  }

  v7->_isMe = v8;
  string = xpc_dictionary_get_string(objectCopy, "kDSDevCtxDevID");
  if (string)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
    identifier = v7->_identifier;
    v7->_identifier = v12;

    if (onceTokenDSDeviceContext != -1)
    {
      [DSDeviceContext initWithXPCObject:error:];
    }

    v14 = logObjDSDeviceContext;
    if (os_log_type_enabled(logObjDSDeviceContext, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v7->_identifier;
      v16 = v14;
      uTF8String = [(NSString *)v15 UTF8String];
      *buf = 136315138;
      v40 = uTF8String;
      _os_log_impl(&dword_249027000, v16, OS_LOG_TYPE_DEFAULT, "Identifier : %s", buf, 0xCu);
    }
  }

  uint64 = xpc_dictionary_get_uint64(objectCopy, "kDSCoordStatus");
  if (uint64 >= 0x100)
  {
    v36 = DSLogObjectForCategory_DSDeviceContext();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v37 = "Error decoding coordination status";
    goto LABEL_54;
  }

  v19 = uint64;
  if (onceTokenDSDeviceContext != -1)
  {
    [DSDeviceContext initWithXPCObject:error:];
  }

  v20 = logObjDSDeviceContext;
  if (os_log_type_enabled(logObjDSDeviceContext, OS_LOG_TYPE_DEFAULT))
  {
    if (v19 > 5)
    {
      v21 = "?";
    }

    else
    {
      v21 = off_278F85B50[v19];
    }

    *buf = 136315138;
    v40 = v21;
    _os_log_impl(&dword_249027000, v20, OS_LOG_TYPE_DEFAULT, "Coordination status %s", buf, 0xCu);
  }

  v7->_coordinationStatus = v19;
  v22 = xpc_dictionary_get_uint64(objectCopy, "kDSVehicleState");
  if (v22 >= 0x100)
  {
    v36 = DSLogObjectForCategory_DSDeviceContext();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v37 = "Error decoding vehicle state";
    goto LABEL_54;
  }

  v23 = v22;
  if (onceTokenDSDeviceContext != -1)
  {
    [DSDeviceContext initWithXPCObject:error:];
  }

  v24 = logObjDSDeviceContext;
  if (os_log_type_enabled(logObjDSDeviceContext, OS_LOG_TYPE_DEFAULT))
  {
    if (v23 > 2)
    {
      v25 = "?";
    }

    else
    {
      v25 = off_278F85B38[v23];
    }

    *buf = 136315138;
    v40 = v25;
    _os_log_impl(&dword_249027000, v24, OS_LOG_TYPE_DEFAULT, "Vehicle state %s", buf, 0xCu);
  }

  v7->_vehicleState = v23;
  v26 = xpc_dictionary_get_uint64(objectCopy, "kDSVehicleConfidence");
  if (v26 >= 0x100)
  {
    v36 = DSLogObjectForCategory_DSDeviceContext();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v37 = "Error decoding coordination status";
    goto LABEL_54;
  }

  v27 = v26;
  if (onceTokenDSDeviceContext != -1)
  {
    [DSDeviceContext initWithXPCObject:error:];
  }

  v28 = logObjDSDeviceContext;
  if (os_log_type_enabled(logObjDSDeviceContext, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v40 = v27;
    _os_log_impl(&dword_249027000, v28, OS_LOG_TYPE_DEFAULT, "Vehicle confidence: %llu", buf, 0xCu);
  }

  v7->_vehicleConfidence = v27;
  v29 = xpc_dictionary_get_uint64(objectCopy, "kDSTiebreaker");
  if (v29 >= 0x100)
  {
    v36 = DSLogObjectForCategory_DSDeviceContext();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 0;
    v37 = "Error decoding coordination status";
LABEL_54:
    _os_log_impl(&dword_249027000, v36, OS_LOG_TYPE_ERROR, v37, buf, 2u);
LABEL_55:

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:0];
    if (error)
    {
      v33 = v33;
      v32 = 0;
      *error = v33;
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_41;
  }

  v30 = v29;
  if (onceTokenDSDeviceContext != -1)
  {
    [DSDeviceContext initWithXPCObject:error:];
  }

  v31 = logObjDSDeviceContext;
  if (os_log_type_enabled(logObjDSDeviceContext, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v40 = v30;
    _os_log_impl(&dword_249027000, v31, OS_LOG_TYPE_DEFAULT, "Tie breaker: %llu", buf, 0xCu);
  }

  v7->_tiebreaker = v30;
  v32 = v7;
  v33 = 0;
LABEL_41:

  v34 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)encodeSelf:(id)self
{
  xdict = self;
  if (self->_isMe)
  {
    xpc_dictionary_set_BOOL(xdict, "kDSDevCtxIsMe", 1);
  }

  identifier = self->_identifier;
  if (identifier)
  {
    xpc_dictionary_set_string(xdict, "kDSDevCtxDevID", [(NSString *)identifier UTF8String]);
  }

  if (self->_vehicleState)
  {
    xpc_dictionary_set_uint64(xdict, "kDSVehicleState", self->_vehicleState);
  }

  v5 = xdict;
  if (self->_vehicleConfidence)
  {
    xpc_dictionary_set_uint64(xdict, "kDSVehicleConfidence", self->_vehicleConfidence);
    v5 = xdict;
  }

  if (self->_coordinationStatus)
  {
    xpc_dictionary_set_uint64(xdict, "kDSCoordStatus", self->_coordinationStatus);
    v5 = xdict;
  }

  if (self->_tiebreaker)
  {
    xpc_dictionary_set_uint64(xdict, "kDSTiebreaker", self->_tiebreaker);
    v5 = xdict;
  }
}

- (DSDeviceContext)initWithCBDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = DSDeviceContext;
  v8 = [(DSDeviceContext *)&v21 init];
  v9 = v8;
  if (!v8)
  {
    [DSDeviceContext initWithCBDevice:error error:&v22];
    v19 = v22;
    goto LABEL_28;
  }

  v8->_isMe = 0;
  identifier = [deviceCopy identifier];
  identifier = v9->_identifier;
  v9->_identifier = identifier;

  dsInfoVehicleState = [deviceCopy dsInfoVehicleState];
  if (dsInfoVehicleState == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = dsInfoVehicleState == 1;
  }

  v9->_vehicleState = v13;
  dsInfoVehicleConfidence = [deviceCopy dsInfoVehicleConfidence];
  v15 = 0;
  if (dsInfoVehicleConfidence > 10)
  {
    if (dsInfoVehicleConfidence != 11 && dsInfoVehicleConfidence != 15)
    {
      goto LABEL_12;
    }
  }

  else if (dsInfoVehicleConfidence != 4 && dsInfoVehicleConfidence != 7)
  {
    goto LABEL_12;
  }

  v15 = dsInfoVehicleConfidence;
LABEL_12:
  v9->_vehicleConfidence = v15;
  dsActionFlags = [deviceCopy dsActionFlags];
  v17 = 0;
  if (dsActionFlags <= 3)
  {
    if (dsActionFlags == 1)
    {
      v17 = 1;
    }

    else if (dsActionFlags == 2)
    {
      v17 = 3;
    }
  }

  else
  {
    switch(dsActionFlags)
    {
      case 4:
        v17 = 2;
        break;
      case 8:
        v17 = 4;
        break;
      case 16:
        v17 = 5;
        break;
    }
  }

  v9->_coordinationStatus = v17;
  v9->_tiebreaker = [deviceCopy dsActionTieBreaker];
  if (([deviceCopy discoveryFlags] & 0x800000000000000) != 0)
  {
    v9->_discoveryFlag |= 2uLL;
    v9->_dsInfoIsAlreadyFound = 1;
  }

  if (([deviceCopy discoveryFlags] & 0x1000000000000000) != 0)
  {
    v9->_discoveryFlag |= 4uLL;
    v9->_dsActionIsAlreadyFound = 1;
  }

  objc_storeStrong(&v9->_bleDevice, device);
  v18 = v9;
  v19 = 0;
LABEL_28:

  return v9;
}

- (void)updateWithCBDevice:(id)device
{
  v49 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v6 = deviceCopy;
  self->_changedFlag = 0;
  p_changedFlag = &self->_changedFlag;
  if (!deviceCopy || self->_bleDevice == deviceCopy)
  {
    goto LABEL_88;
  }

  if (([(CBDevice *)deviceCopy discoveryFlags]& 0x800000000000000) != 0)
  {
    dsInfoVehicleState = [(CBDevice *)v6 dsInfoVehicleState];
    if (dsInfoVehicleState == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = dsInfoVehicleState == 1;
    }

    if (self->_vehicleState == v10)
    {
      v8 = 0;
    }

    else
    {
      if (onceTokenDSDeviceContext != -1)
      {
        DSLogObjectForCategory_DSDeviceContext_cold_1();
      }

      v11 = logObjDSDeviceContext;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(CBDevice *)v6 identifier];
        uTF8String = [identifier UTF8String];
        vehicleState = self->_vehicleState;
        if (vehicleState > 2)
        {
          v15 = "?";
        }

        else
        {
          v15 = off_278F85B38[vehicleState];
        }

        v16 = off_278F85B38[v10];
        v44 = 136315650;
        v45 = uTF8String;
        v46 = 2080;
        *v47 = v15;
        *&v47[8] = 2080;
        v48 = v16;
        _os_log_impl(&dword_249027000, v11, OS_LOG_TYPE_DEFAULT, "Device ID %s : Vehicle State updated from %s to %s", &v44, 0x20u);
      }

      self->_vehicleState = v10;
      v8 = 2;
    }

    dsInfoVehicleConfidence = [(CBDevice *)v6 dsInfoVehicleConfidence];
    v18 = 0;
    if (dsInfoVehicleConfidence > 10)
    {
      if (dsInfoVehicleConfidence != 11 && dsInfoVehicleConfidence != 15)
      {
LABEL_25:
        if (self->_vehicleConfidence == v18)
        {
LABEL_52:
          if (self->_dsInfoIsAlreadyFound)
          {
            self->_discoveryFlag &= ~2uLL;
            p_discoveryFlag = &self->_changedFlag;
            v27 = v8;
          }

          else
          {
            self->_dsInfoIsAlreadyFound = 1;
            p_discoveryFlag = &self->_discoveryFlag;
            v27 = 2;
          }

          *p_discoveryFlag |= v27;
          goto LABEL_56;
        }

        if (onceTokenDSDeviceContext != -1)
        {
          [DSDeviceContext initWithXPCObject:error:];
        }

        v19 = logObjDSDeviceContext;
        if (!os_log_type_enabled(logObjDSDeviceContext, OS_LOG_TYPE_DEFAULT))
        {
LABEL_51:
          self->_vehicleConfidence = v18;
          v8 = 2;
          goto LABEL_52;
        }

        v20 = v19;
        identifier2 = [(CBDevice *)v6 identifier];
        uTF8String2 = [identifier2 UTF8String];
        vehicleConfidence = self->_vehicleConfidence;
        if (vehicleConfidence <= 6)
        {
          if (!self->_vehicleConfidence)
          {
            v24 = "lowest";
            goto LABEL_41;
          }

          if (vehicleConfidence == 4)
          {
            v24 = "low-medium";
            goto LABEL_41;
          }
        }

        else
        {
          switch(vehicleConfidence)
          {
            case 7u:
              v24 = "medium";
              goto LABEL_41;
            case 0xBu:
              v24 = "medium-high";
              goto LABEL_41;
            case 0xFu:
              v24 = "highest";
LABEL_41:
              if (v18 <= 6)
              {
                if (v18)
                {
                  v25 = "low-medium";
                }

                else
                {
                  v25 = "lowest";
                }
              }

              else if (v18 == 7)
              {
                v25 = "medium";
              }

              else if (v18 == 11)
              {
                v25 = "medium-high";
              }

              else
              {
                v25 = "highest";
              }

              v44 = 136315650;
              v45 = uTF8String2;
              v46 = 2080;
              *v47 = v24;
              *&v47[8] = 2080;
              v48 = v25;
              _os_log_impl(&dword_249027000, v20, OS_LOG_TYPE_DEFAULT, "Device ID %s : Vehicle Confidence updated from %s to %s", &v44, 0x20u);

              goto LABEL_51;
          }
        }

        v24 = "?";
        goto LABEL_41;
      }
    }

    else if (dsInfoVehicleConfidence != 4 && dsInfoVehicleConfidence != 7)
    {
      goto LABEL_25;
    }

    v18 = dsInfoVehicleConfidence;
    goto LABEL_25;
  }

  v8 = 0;
LABEL_56:
  if (([(CBDevice *)v6 discoveryFlags]& 0x1000000000000000) != 0)
  {
    dsActionFlags = [(CBDevice *)v6 dsActionFlags];
    v29 = 0;
    if (dsActionFlags <= 3)
    {
      if (dsActionFlags == 1)
      {
        v29 = 1;
      }

      else if (dsActionFlags == 2)
      {
        v29 = 3;
      }
    }

    else
    {
      switch(dsActionFlags)
      {
        case 4:
          v29 = 2;
          break;
        case 8:
          v29 = 4;
          break;
        case 16:
          v29 = 5;
          break;
      }
    }

    if (v29 != self->_coordinationStatus)
    {
      if (onceTokenDSDeviceContext != -1)
      {
        [DSDeviceContext initWithXPCObject:error:];
      }

      v30 = logObjDSDeviceContext;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [(CBDevice *)v6 identifier];
        uTF8String3 = [identifier3 UTF8String];
        coordinationStatus = self->_coordinationStatus;
        if (coordinationStatus > 5)
        {
          v34 = "?";
        }

        else
        {
          v34 = off_278F85B50[coordinationStatus];
        }

        v35 = off_278F85B50[v29];
        v44 = 136315650;
        v45 = uTF8String3;
        v46 = 2080;
        *v47 = v34;
        *&v47[8] = 2080;
        v48 = v35;
        _os_log_impl(&dword_249027000, v30, OS_LOG_TYPE_DEFAULT, "Device ID %s : Kappa Coordination Status updated from %s to %s", &v44, 0x20u);
      }

      self->_coordinationStatus = v29;
      v8 = 4;
    }

    dsActionTieBreaker = [(CBDevice *)v6 dsActionTieBreaker];
    if (dsActionTieBreaker != self->_tiebreaker)
    {
      v37 = dsActionTieBreaker;
      if (onceTokenDSDeviceContext != -1)
      {
        [DSDeviceContext initWithXPCObject:error:];
      }

      v38 = logObjDSDeviceContext;
      if (os_log_type_enabled(logObjDSDeviceContext, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        identifier4 = [(CBDevice *)v6 identifier];
        uTF8String4 = [identifier4 UTF8String];
        tiebreaker = self->_tiebreaker;
        v44 = 136315650;
        v45 = uTF8String4;
        v46 = 1024;
        *v47 = tiebreaker;
        *&v47[4] = 1024;
        *&v47[6] = v37;
        _os_log_impl(&dword_249027000, v39, OS_LOG_TYPE_DEFAULT, "Device ID %s : Kappa tie breaker updated from %d to %d", &v44, 0x18u);
      }

      self->_tiebreaker = v37;
      v8 = 4;
    }

    if (self->_dsActionIsAlreadyFound)
    {
      self->_discoveryFlag &= ~4uLL;
    }

    else
    {
      self->_dsActionIsAlreadyFound = 1;
      p_changedFlag = &self->_discoveryFlag;
      v8 = 4;
    }

    *p_changedFlag |= v8;
  }

  objc_storeStrong(&self->_bleDevice, device);
LABEL_88:

  v43 = *MEMORY[0x277D85DE8];
}

- (id)initWithCBDevice:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  v4 = DSLogObjectForCategory_DSDeviceContext();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_ERROR, "Allocation failed", v6, 2u);
  }

  result = [MEMORY[0x277CCA9B8] errorWithDomain:@"DSErrorDomain" code:1 userInfo:0];
  if (a1)
  {
    result = result;
    *a1 = result;
  }

  *a2 = result;
  return result;
}

@end
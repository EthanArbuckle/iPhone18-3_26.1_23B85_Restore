@interface BTBannerUISession
- (BTBannerUISession)init;
- (void)_activate;
- (void)_xpcCompleted:(id)completed;
- (void)_xpcConnectionMessage:(id)message;
- (void)_xpcEvent:(id)event;
- (void)_xpcSendMessage;
- (void)_xpcSendReplyError:(id)error request:(id)request;
- (void)_xpcStart;
- (void)activate;
- (void)encodeWithXPCObject:(id)object;
- (void)invalidate;
@end

@implementation BTBannerUISession

- (BTBannerUISession)init
{
  v6.receiver = self;
  v6.super_class = BTBannerUISession;
  v2 = [(BTBannerUISession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BTBannerUISession_activate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __29__BTBannerUISession_activate__block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_BTBannerUISession <= 50)
  {
    if (gLogCategory_BTBannerUISession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __29__BTBannerUISession_activate__block_invoke_cold_1();
    }
  }

  v2 = *(v1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
    v3 = *(v1 + 32);

    return [v3 _activate];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__BTBannerUISession_invalidate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __31__BTBannerUISession_invalidate__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x245CFACE0](*(*(a1 + 32) + 48));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, 3, 0);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;

  *(*(a1 + 32) + 8) = 0;
  v6 = *(*(a1 + 32) + 24);
  if (v6)
  {
    v9 = v6;
    xpc_connection_cancel(v9);
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;
  }
}

- (void)_activate
{
  [(BTBannerUISession *)self _xpcStart];
  if (self->_xpcConnection)
  {

    [(BTBannerUISession *)self _xpcSendMessage];
  }
}

- (void)_xpcStart
{
  mach_service = xpc_connection_create_mach_service("com.apple.BluetoothUIService", self->_dispatchQueue, 0);
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = mach_service;

  v5 = self->_xpcConnection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__BTBannerUISession__xpcStart__block_invoke;
  handler[3] = &unk_278D11B20;
  handler[4] = self;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_activate(self->_xpcConnection);
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  uTF8String = [(NSString *)self->_label UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(objectCopy, "BUISKeyLabel", uTF8String);
  }

  timeoutSeconds = self->_timeoutSeconds;
  if (timeoutSeconds != 0.0)
  {
    xpc_dictionary_set_double(objectCopy, "BUISKeyBannerTimeout", timeoutSeconds);
  }

  centerContentText = self->_centerContentText;
  v8 = objectCopy;
  uTF8String2 = [(NSString *)centerContentText UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v8, "BUISKeyCCText", uTF8String2);
  }

  centerContentItemsIcon = self->_centerContentItemsIcon;
  v11 = v8;
  uTF8String3 = [(NSString *)centerContentItemsIcon UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(v11, "BUISKeyCCItemsIcon", uTF8String3);
  }

  centerContentItemsText = self->_centerContentItemsText;
  v14 = v11;
  uTF8String4 = [(NSString *)centerContentItemsText UTF8String];
  if (uTF8String4)
  {
    xpc_dictionary_set_string(v14, "BUISKeyCCItemsText", uTF8String4);
  }

  identifier = self->_identifier;
  v17 = v14;
  uTF8String5 = [(NSString *)identifier UTF8String];
  if (uTF8String5)
  {
    xpc_dictionary_set_string(v17, "BUISKeyIdentifier", uTF8String5);
  }

  leadingAccessoryImagePath = self->_leadingAccessoryImagePath;
  v20 = v17;
  uTF8String6 = [(NSString *)leadingAccessoryImagePath UTF8String];
  if (uTF8String6)
  {
    xpc_dictionary_set_string(v20, "BUISKeyLAImagePath", uTF8String6);
  }

  leadingAccessoryImageName = self->_leadingAccessoryImageName;
  v23 = v20;
  uTF8String7 = [(NSString *)leadingAccessoryImageName UTF8String];
  if (uTF8String7)
  {
    xpc_dictionary_set_string(v23, "BUISKeyLAImageName", uTF8String7);
  }

  leadingAccessoryImagePID = self->_leadingAccessoryImagePID;
  if (leadingAccessoryImagePID)
  {
    xpc_dictionary_set_uint64(v23, "BUISKeyLAProductID", leadingAccessoryImagePID);
  }

  trailingAccessoryImagePath = self->_trailingAccessoryImagePath;
  v27 = v23;
  uTF8String8 = [(NSString *)trailingAccessoryImagePath UTF8String];
  if (uTF8String8)
  {
    xpc_dictionary_set_string(v27, "BUISKeyTAImagePath", uTF8String8);
  }

  trailingAccessoryImageName = self->_trailingAccessoryImageName;
  v30 = v27;
  uTF8String9 = [(NSString *)trailingAccessoryImageName UTF8String];
  if (uTF8String9)
  {
    xpc_dictionary_set_string(v30, "BUISKeyTAImageName", uTF8String9);
  }

  trailingAccessoryText = self->_trailingAccessoryText;
  v33 = v30;
  uTF8String10 = [(NSString *)trailingAccessoryText UTF8String];
  if (uTF8String10)
  {
    xpc_dictionary_set_string(v33, "BUISKeyTAText", uTF8String10);
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    xpc_dictionary_set_int64(v33, "BUISKeyBackgroundColor", backgroundColor);
  }

  lowBatteryLevel = self->_lowBatteryLevel;
  if (lowBatteryLevel != 0.0)
  {
    xpc_dictionary_set_double(v33, "BUISKeyLowBatteryLevel", lowBatteryLevel);
  }

  batteryLevelInfo = self->_batteryLevelInfo;
  if (batteryLevelInfo != 0.0)
  {
    xpc_dictionary_set_double(v33, "BUISKeyBatteryLevel", batteryLevelInfo);
  }

  bannerType = self->_bannerType;
  if (bannerType)
  {
    xpc_dictionary_set_uint64(v33, "BUISKeyBannerType", bannerType);
  }

  bannerAppID = self->_bannerAppID;
  xdict = v33;
  uTF8String11 = [(NSString *)bannerAppID UTF8String];
  if (uTF8String11)
  {
    xpc_dictionary_set_string(xdict, "BUISKeyBannerAppID", uTF8String11);
  }
}

- (void)_xpcEvent:(id)event
{
  eventCopy = event;
  if (MEMORY[0x245CFAF00]() == MEMORY[0x277D86468])
  {
    [(BTBannerUISession *)self _xpcConnectionMessage:eventCopy];
  }

  else if (eventCopy == MEMORY[0x277D863F8])
  {
    if (gLogCategory_BTBannerUISession <= 30 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
    {
      [BTBannerUISession _xpcEvent:];
    }

    v7 = MEMORY[0x245CFACE0](self->_actionHandler);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7, 4, 0);
    }

    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = 0;
  }

  else if (eventCopy == MEMORY[0x277D863F0])
  {
    if (gLogCategory_BTBannerUISession <= 30 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
    {
      [BTBannerUISession _xpcEvent:];
    }

    v10 = MEMORY[0x245CFACE0](self->_actionHandler);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, 3, 0);
    }

    v12 = self->_xpcConnection;
    if (v12)
    {
      v13 = v12;
      xpc_connection_cancel(v13);
      v14 = self->_xpcConnection;
      self->_xpcConnection = 0;
    }
  }

  else
  {
    v4 = CUXPCDecodeNSErrorIfNeeded();
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v15 = *MEMORY[0x277CCA590];
      v6 = NSErrorF();
    }

    v16 = v6;

    if (gLogCategory_BTBannerUISession <= 90 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)_xpcSendMessage
{
  if (gLogCategory_BTBannerUISession <= 90 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_0();
  }
}

- (void)_xpcCompleted:(id)completed
{
  completedCopy = completed;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    [BTBannerUISession _xpcCompleted:];
  }

  else
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      if (gLogCategory_BTBannerUISession <= 30 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
      {
        [BTBannerUISession _xpcCompleted:];
      }

      v6 = MEMORY[0x245CFACE0](self->_actionHandler);
      v7 = v6;
      if (v6)
      {
        (*(v6 + 16))(v6, 4, 0);
      }
    }

    else
    {
      [BTBannerUISession _xpcCompleted:];
    }
  }
}

- (void)_xpcConnectionMessage:(id)message
{
  messageCopy = message;
  int64 = xpc_dictionary_get_int64(messageCopy, "BUISKeyType");
  v5 = int64;
  if (int64 > 1)
  {
    if (int64 == 2)
    {
      if (gLogCategory_BTBannerUISession <= 50 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
      {
        [BTBannerUISession _xpcConnectionMessage:];
      }

      v13 = MEMORY[0x245CFACE0](self->_actionHandler);
      v7 = v13;
      if (!v13)
      {
        goto LABEL_32;
      }

      v8 = *(v13 + 16);
    }

    else
    {
      if (int64 != 3)
      {
        goto LABEL_21;
      }

      if (gLogCategory_BTBannerUISession <= 50 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
      {
        [BTBannerUISession _xpcConnectionMessage:];
      }

      v9 = MEMORY[0x245CFACE0](self->_actionHandler);
      v7 = v9;
      if (!v9)
      {
        goto LABEL_32;
      }

      v8 = *(v9 + 16);
    }

LABEL_31:
    v8();
    goto LABEL_32;
  }

  if (int64)
  {
    if (int64 == 1)
    {
      if (gLogCategory_BTBannerUISession <= 50 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
      {
        [BTBannerUISession _xpcConnectionMessage:];
      }

      v6 = MEMORY[0x245CFACE0](self->_actionHandler);
      v7 = v6;
      if (!v6)
      {
        goto LABEL_32;
      }

      v8 = *(v6 + 16);
      goto LABEL_31;
    }
  }

  else
  {
    if (gLogCategory_BTBannerUISession <= 90 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
    {
      [BTBannerUISession _xpcConnectionMessage:];
    }

    if (!xpc_dictionary_expects_reply())
    {
      goto LABEL_33;
    }

    v10 = *MEMORY[0x277CCA590];
    v11 = NSErrorF();
    [(BTBannerUISession *)self _xpcSendReplyError:v11 request:messageCopy, 0];
  }

LABEL_21:
  if (gLogCategory_BTBannerUISession <= 90 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
  {
    [BTBannerUISession _xpcConnectionMessage:];
  }

  if (xpc_dictionary_expects_reply())
  {
    v12 = *MEMORY[0x277CCA590];
    v14 = v5;
    v7 = NSErrorF();
    [(BTBannerUISession *)self _xpcSendReplyError:v7 request:messageCopy, v14];
LABEL_32:
  }

LABEL_33:

  MEMORY[0x2821F96F8]();
}

- (void)_xpcSendReplyError:(id)error request:(id)request
{
  errorCopy = error;
  requestCopy = request;
  v7 = self->_xpcConnection;
  if (v7)
  {
    reply = xpc_dictionary_create_reply(requestCopy);
    if (reply)
    {
      CUXPCEncodeNSError();
      xpc_connection_send_message(v7, reply);
    }

    else
    {
      [BTBannerUISession _xpcSendReplyError:request:];
    }
  }

  else
  {
    [BTBannerUISession _xpcSendReplyError:request:];
  }
}

- (void)_xpcSendReplyError:request:.cold.1()
{
  if (gLogCategory_BTBannerUISession <= 90 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_0();
  }
}

- (void)_xpcSendReplyError:request:.cold.2()
{
  if (gLogCategory_BTBannerUISession <= 90 && (gLogCategory_BTBannerUISession != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_0();
  }
}

@end
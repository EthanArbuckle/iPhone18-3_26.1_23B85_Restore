@interface ACCVoiceOverServerRemote
- (ACCVoiceOverServerRemote)initWithXPCConnection:(id)a3;
- (void)dealloc;
- (void)initConnection:(id)a3;
- (void)update:(id)a3 cursorInfo:(id)a4;
- (void)update:(id)a3 info:(id)a4;
@end

@implementation ACCVoiceOverServerRemote

- (ACCVoiceOverServerRemote)initWithXPCConnection:(id)a3
{
  v5 = a3;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = [v5 hash];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "initWithXPCConnection: XPCConnection=%lu", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = ACCVoiceOverServerRemote;
  v9 = [(ACCVoiceOverServerRemote *)&v12 init];
  v10 = v9;
  if (v9)
  {
    if (v5)
    {
      objc_storeStrong(&v9->_XPCConnection, a3);
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  XPCConnection = self->_XPCConnection;
  self->_XPCConnection = 0;

  v4.receiver = self;
  v4.super_class = ACCVoiceOverServerRemote;
  [(ACCVoiceOverServerRemote *)&v4 dealloc];
}

- (void)initConnection:(id)a3
{
  v4 = a3;
  v5 = +[ACCVoiceOverServer sharedServer];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ACCVoiceOverServerRemote *)self XPCConnection];
    v7 = [v5 performSelector:"shouldAcceptXPCConnection:" withObject:v6] != 0;
  }

  else
  {
    v7 = 0;
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 5;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client has called initConnection method!", v14, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v11 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "shouldStayConnected: %d", v14, 8u);
  }

  if (v7)
  {
    v13 = +[ACCVoiceOverServer sharedServer];
    [v13 sendUpdatedSubscriberList];
  }

  v4[2](v4, v7);
}

- (void)update:(id)a3 info:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "VoiceOver server remote update:info: voiceOverUID %@, updateDict=%@", &v19, 0x16u);
  }

  v10 = [v6 objectForKey:@"ACCVoiceOverInformationUpdateSpeakingVolumeKey"];
  v11 = [v6 objectForKey:@"ACCVoiceOverInformationUpdateSpeakingRateKey"];
  v12 = [v6 objectForKey:@"ACCVoiceOverInformationUpdateEnabledKey"];
  v13 = 0.0;
  if (v10)
  {
    [v10 floatValue];
    v15 = v14;
    v16 = 1;
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v16 = 0;
  v15 = 0.0;
  if (v11)
  {
LABEL_13:
    [v11 floatValue];
    v13 = v17;
    v16 |= 2u;
  }

LABEL_14:
  if (v12)
  {
    v18 = [v12 BOOLValue];
    v16 |= 4u;
  }

  else
  {
    v18 = 0;
  }

  platform_voiceOver_informationUpdateHandler(v16, v18, v15, v13);
}

- (void)update:(id)a3 cursorInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = v5;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "VoiceOver server remote update:cursorInfo: voiceOverUID %@, updateDict=%@", buf, 0x16u);
  }

  v10 = [v6 objectForKey:@"ACCVoiceOverCursorInformationUpdateLabelKey"];
  v11 = [v6 objectForKey:@"ACCVoiceOverCursorInformationUpdateValueKey"];
  v12 = [v6 objectForKey:@"ACCVoiceOverCursorInformationUpdateHintKey"];
  v13 = [v6 objectForKey:@"ACCVoiceOverCursorInformationUpdateTraitsKey"];
  v14 = v13;
  v15 = v10 != 0;
  if (v10)
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  if (v11)
  {
    v15 = v16;
  }

  if (v12)
  {
    v17 = v15 | 4;
  }

  else
  {
    v17 = v15;
  }

  if (v13)
  {
    v23 = v10;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v25;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v20 |= 1 << [*(*(&v24 + 1) + 8 * i) unsignedShortValue];
        }

        v19 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    v17 |= 8u;
    v10 = v23;
  }

  else
  {
    v20 = 0;
  }

  platform_voiceOver_cursorInformationUpdateHandler(v17, v10, v11, v12, v20);
}

@end
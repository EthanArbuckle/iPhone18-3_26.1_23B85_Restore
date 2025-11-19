@interface ISDeviceInfo
+ (id)sharedInstance;
- (CGSize)homeScreenIconSize;
- (CGSize)largeHomeScreenIconSize;
- (CGSize)messagesLauncherIconSize;
- (ISDeviceInfo)init;
- (unint64_t)ideom;
@end

@implementation ISDeviceInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[ISDeviceInfo sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_6;

  return v3;
}

- (unint64_t)ideom
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(ISDeviceInfo *)self deviceClass]- 1;
  if (v3 < 0xB && ((0x42Fu >> v3) & 1) != 0)
  {
    result = qword_1A782D0F8[v3];
  }

  else
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = [(ISDeviceInfo *)self deviceClass];
      _os_log_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_DEFAULT, "Unknown device class: %d", v7, 8u);
    }

    result = 2;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __30__ISDeviceInfo_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_6 = objc_alloc_init(ISDeviceInfo);

  return MEMORY[0x1EEE66BB8]();
}

- (ISDeviceInfo)init
{
  v10.receiver = self;
  v10.super_class = ISDeviceInfo;
  v2 = [(ISDeviceInfo *)&v10 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    v2->_deviceClass = [v3 intValue];
    MGGetFloat32Answer();
    v2->_screenScale = v4;
    v2->_screenClass = MGGetSInt32Answer();
    v5 = MGCopyAnswer();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:@"ArtworkDeviceSubType"];
      v2->_deviceSubtype = [v6 integerValue];
    }

    else
    {
      v2->_deviceSubtype = 0;
    }

    v7 = [v5 objectForKey:@"ArtworkDeviceIdiom"];

    v8 = [v7 length];
    if (v8)
    {
      v8 = [v7 integerValue];
    }

    v2->_rawDeviceIdiom = v8;
  }

  return v2;
}

- (CGSize)homeScreenIconSize
{
  v3 = [(ISDeviceInfo *)self deviceClass];
  v4 = [(ISDeviceInfo *)self screenClass];
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      if (v4 <= 0x1F && ((1 << v4) & 0x820C0000) != 0)
      {
        v5 = 0x4050000000000000;
        goto LABEL_26;
      }
    }

    else if (v3 == 3)
    {
      v6 = 60.0;
      if (v4 == 20)
      {
        v6 = 68.0;
      }

      if (v4 == 11)
      {
        v7 = 68.0;
      }

      else
      {
        v7 = v6;
      }

      if (v4 == 11)
      {
        v8 = 68.0;
      }

      else
      {
        v8 = v6;
      }

      goto LABEL_28;
    }

LABEL_25:
    v5 = 0x404E000000000000;
    goto LABEL_26;
  }

  if (v3 == 4)
  {
    v8 = 400.0;
    v7 = 240.0;
    goto LABEL_28;
  }

  if (v3 == 11)
  {
    v5 = 0x4060000000000000;
    goto LABEL_26;
  }

  if (v3 != 6)
  {
    goto LABEL_25;
  }

  if (v4 > 25)
  {
    switch(v4)
    {
      case 26:
        v7 = 51.0;
        goto LABEL_27;
      case 27:
        v5 = 0x4047000000000000;
        goto LABEL_26;
      case 29:
        v5 = 0x404B000000000000;
        goto LABEL_26;
    }
  }

  else
  {
    if ((v4 - 12) < 2)
    {
      v5 = 0x4044000000000000;
      goto LABEL_26;
    }

    if (v4 == 16)
    {
      v5 = 0x4046000000000000;
      goto LABEL_26;
    }

    if (v4 == 17)
    {
      v5 = 0x4049000000000000;
LABEL_26:
      v7 = *&v5;
LABEL_27:
      v8 = v7;
      goto LABEL_28;
    }
  }

  v11 = MEMORY[0x1E695F060];
  v12 = _ISDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A77B8000, v12, OS_LOG_TYPE_DEFAULT, "No known home screen icon size", v13, 2u);
  }

  v8 = *v11;
  v7 = v11[1];

LABEL_28:
  v9 = v8;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)largeHomeScreenIconSize
{
  v3 = [(ISDeviceInfo *)self deviceClass];
  v4 = [(ISDeviceInfo *)self screenClass];
  if (v3 == 3)
  {
    v5 = 83.5;
    v6 = 76.0;
    if (v4 == 20)
    {
      v6 = 83.5;
    }

    if (v4 != 11)
    {
      v5 = v6;
    }

    v7 = v5;
  }

  else
  {

    [(ISDeviceInfo *)self homeScreenIconSize];
  }

  result.height = v7;
  result.width = v5;
  return result;
}

- (CGSize)messagesLauncherIconSize
{
  v3 = [(ISDeviceInfo *)self deviceClass];
  v4 = [(ISDeviceInfo *)self screenClass];
  if (v3 == 3)
  {
    v5 = 55.0;
    v6 = 74.0;
    if (v4 != 11 && v4 != 20)
    {
      v5 = 50.0;
      v6 = 67.0;
    }
  }

  else
  {
    v5 = 45.0;
    v6 = 60.0;
  }

  result.height = v5;
  result.width = v6;
  return result;
}

@end
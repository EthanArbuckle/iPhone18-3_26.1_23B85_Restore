@interface AppleIRCommand
- (BOOL)getVendorSpecificHIDUsagePage:(unsigned int *)page usageID:(unsigned int *)d ignoreRepeats:(BOOL *)repeats;
- (id)description;
- (unint64_t)command;
@end

@implementation AppleIRCommand

- (id)description
{
  v7.receiver = self;
  v7.super_class = AppleIRCommand;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[IRCommand description](&v7, sel_description)}];
  [v3 appendFormat:@" UID: %x;", -[AppleIRCommand deviceUID](self, "deviceUID")];
  [v3 appendFormat:@" Page: %x;", -[AppleIRCommand commandPage](self, "commandPage")];
  [v3 appendFormat:@" Command: %x;", -[AppleIRCommand commandID](self, "commandID")];
  [(IRCommand *)self payload];
  v4 = Parity32();
  v5 = "Bad";
  if (v4 == 1)
  {
    v5 = "Good";
  }

  [v3 appendFormat:@" Parity: %s;", v5];
  return v3;
}

- (unint64_t)command
{
  token = [(AppleIRCommand *)self token];
  v3 = 0;
  if (token <= 3584)
  {
    switch(token)
    {
      case 1281:
        goto LABEL_33;
      case 1282:
        goto LABEL_15;
      case 1283:
        goto LABEL_19;
      case 1284:
        goto LABEL_30;
      case 1285:
        goto LABEL_27;
      case 1288:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 43;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 43;
          goto LABEL_101;
        }

        v3 = 43;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1289:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 44;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 44;
          goto LABEL_101;
        }

        v3 = 44;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1291:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 67;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 67;
          goto LABEL_101;
        }

        v3 = 67;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1293:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 49;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 49;
          goto LABEL_101;
        }

        v3 = 49;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1294:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 48;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 48;
          goto LABEL_101;
        }

        v3 = 48;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1297:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 83;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 83;
          goto LABEL_101;
        }

        v3 = 83;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1298:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 82;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 82;
          goto LABEL_101;
        }

        v3 = 82;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1299:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 52;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 52;
          goto LABEL_101;
        }

        v3 = 52;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1300:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 45;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 45;
          goto LABEL_101;
        }

        v3 = 45;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1301:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 74;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 74;
          goto LABEL_101;
        }

        v3 = 74;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1302:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 75;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 75;
          goto LABEL_101;
        }

        v3 = 75;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1303:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 51;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 51;
          goto LABEL_101;
        }

        v3 = 51;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1304:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 72;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 72;
          goto LABEL_101;
        }

        v3 = 72;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1305:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 47;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 47;
          goto LABEL_101;
        }

        v3 = 47;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1312:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 84;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 84;
          goto LABEL_101;
        }

        v3 = 84;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1313:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 85;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 85;
          goto LABEL_101;
        }

        v3 = 85;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1314:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 64;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 64;
          goto LABEL_101;
        }

        v3 = 64;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1315:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 34;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 34;
          goto LABEL_101;
        }

        v3 = 34;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1316:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 35;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 35;
          goto LABEL_101;
        }

        v3 = 35;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      case 1317:
        if (gLogCategory_CoreRCDevice > 40)
        {
          return 90;
        }

        if (gLogCategory_CoreRCDevice != -1)
        {
          v3 = 90;
          goto LABEL_101;
        }

        v3 = 90;
        if (_LogCategory_Initialize())
        {
          goto LABEL_101;
        }

        return v3;
      default:
        return v3;
    }
  }

  if (token > 3588)
  {
    if (token > 3629)
    {
      if (token != 3630)
      {
        if (token == 3631)
        {
          if (gLogCategory_CoreRCDevice > 40)
          {
            return 46;
          }

          if (gLogCategory_CoreRCDevice == -1)
          {
            v3 = 46;
            if (!_LogCategory_Initialize())
            {
              return v3;
            }
          }

          else
          {
            v3 = 46;
          }

          goto LABEL_101;
        }

        return v3;
      }

LABEL_27:
      if (gLogCategory_CoreRCDevice > 40)
      {
        return 1;
      }

      if (gLogCategory_CoreRCDevice == -1)
      {
        v3 = 1;
        if (!_LogCategory_Initialize())
        {
          return v3;
        }
      }

      else
      {
        v3 = 1;
      }
    }

    else if (token == 3589)
    {
LABEL_33:
      if (gLogCategory_CoreRCDevice > 40)
      {
        return 2;
      }

      if (gLogCategory_CoreRCDevice == -1)
      {
        v3 = 2;
        if (!_LogCategory_Initialize())
        {
          return v3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      if (token != 3590)
      {
        return v3;
      }

LABEL_15:
      if (gLogCategory_CoreRCDevice > 40)
      {
        return 3;
      }

      if (gLogCategory_CoreRCDevice == -1)
      {
        v3 = 3;
        if (!_LogCategory_Initialize())
        {
          return v3;
        }
      }

      else
      {
        v3 = 3;
      }
    }

LABEL_101:
    LogPrintF();
    return v3;
  }

  if (token <= 3586)
  {
    if (token == 3585)
    {
      if (gLogCategory_CoreRCDevice > 40)
      {
        return 15;
      }

      if (gLogCategory_CoreRCDevice == -1)
      {
        v3 = 15;
        if (!_LogCategory_Initialize())
        {
          return v3;
        }
      }

      else
      {
        v3 = 15;
      }
    }

    else
    {
      if (gLogCategory_CoreRCDevice > 40)
      {
        return 81;
      }

      if (gLogCategory_CoreRCDevice == -1)
      {
        v3 = 81;
        if (!_LogCategory_Initialize())
        {
          return v3;
        }
      }

      else
      {
        v3 = 81;
      }
    }

    goto LABEL_101;
  }

  if (token == 3587)
  {
LABEL_30:
    if (gLogCategory_CoreRCDevice > 40)
    {
      return 5;
    }

    if (gLogCategory_CoreRCDevice == -1)
    {
      v3 = 5;
      if (!_LogCategory_Initialize())
      {
        return v3;
      }
    }

    else
    {
      v3 = 5;
    }

    goto LABEL_101;
  }

LABEL_19:
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice == -1)
    {
      v3 = 4;
      if (!_LogCategory_Initialize())
      {
        return v3;
      }
    }

    else
    {
      v3 = 4;
    }

    goto LABEL_101;
  }

  return 4;
}

- (BOOL)getVendorSpecificHIDUsagePage:(unsigned int *)page usageID:(unsigned int *)d ignoreRepeats:(BOOL *)repeats
{
  token = [(AppleIRCommand *)self token];
  LOBYTE(v9) = 0;
  if (token <= 3594)
  {
    if (token <= 262)
    {
      if (token != 3 && token != 7)
      {
        return v9;
      }

      if (gLogCategory_CoreRCDevice <= 50)
      {
        if (gLogCategory_CoreRCDevice == -1)
        {
          v10 = 1;
          v11 = 3;
          v12 = 65294;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_64;
          }
        }

        else
        {
          v10 = 1;
          v11 = 3;
          v12 = 65294;
        }

        goto LABEL_47;
      }

      v10 = 1;
      v11 = 3;
    }

    else
    {
      if (token != 263)
      {
        if (token == 3591)
        {
          goto LABEL_23;
        }

        if (token != 3592)
        {
          return v9;
        }

        goto LABEL_26;
      }

      if (gLogCategory_CoreRCDevice <= 50)
      {
        if (gLogCategory_CoreRCDevice == -1)
        {
          v10 = 0;
          v11 = 4;
          v12 = 65294;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_64;
          }
        }

        else
        {
          v10 = 0;
          v11 = 4;
          v12 = 65294;
        }

        goto LABEL_47;
      }

      v10 = 0;
      v11 = 4;
    }

    v12 = 65294;
    goto LABEL_64;
  }

  if (token > 3634)
  {
    if (token != 3635)
    {
      if (token == 3636)
      {
        if (gLogCategory_CoreRCDevice <= 50)
        {
          if (gLogCategory_CoreRCDevice == -1)
          {
            v9 = _LogCategory_Initialize();
            if (!v9)
            {
              return v9;
            }
          }

          [AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:];
        }

LABEL_38:
        LOBYTE(v9) = 0;
        return v9;
      }

      if (token != 3637)
      {
        return v9;
      }

      if (gLogCategory_CoreRCDevice <= 50)
      {
        if (gLogCategory_CoreRCDevice == -1)
        {
          v10 = 1;
          v11 = 3;
          v12 = 65295;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_64;
          }
        }

        else
        {
          v10 = 1;
          v11 = 3;
          v12 = 65295;
        }

        goto LABEL_47;
      }

      v10 = 1;
      v11 = 3;
LABEL_52:
      v12 = 65295;
      goto LABEL_64;
    }

LABEL_26:
    if (gLogCategory_CoreRCDevice <= 50)
    {
      if (gLogCategory_CoreRCDevice == -1)
      {
        v10 = 1;
        v11 = 2;
        v12 = 65295;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_64;
        }
      }

      else
      {
        v10 = 1;
        v11 = 2;
        v12 = 65295;
      }

      goto LABEL_47;
    }

    v10 = 1;
    v11 = 2;
    goto LABEL_52;
  }

  if (token == 3595)
  {
    if (gLogCategory_CoreRCDevice <= 50)
    {
      if (gLogCategory_CoreRCDevice == -1)
      {
        v10 = 1;
        v11 = 4;
        v12 = 65295;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_64;
        }
      }

      else
      {
        v10 = 1;
        v11 = 4;
        v12 = 65295;
      }

      goto LABEL_47;
    }

    v10 = 1;
    v11 = 4;
    goto LABEL_52;
  }

  if (token == 3596)
  {
    if (gLogCategory_CoreRCDevice <= 40)
    {
      if (gLogCategory_CoreRCDevice == -1)
      {
        v9 = _LogCategory_Initialize();
        if (!v9)
        {
          return v9;
        }
      }

      [AppleIRCommand getVendorSpecificHIDUsagePage:usageID:ignoreRepeats:];
    }

    goto LABEL_38;
  }

  if (token != 3634)
  {
    return v9;
  }

LABEL_23:
  if (gLogCategory_CoreRCDevice > 50)
  {
    v11 = 1;
    v12 = 65295;
    goto LABEL_56;
  }

  if (gLogCategory_CoreRCDevice == -1)
  {
    v11 = 1;
    v12 = 65295;
    if (_LogCategory_Initialize())
    {
      v10 = 1;
      goto LABEL_47;
    }

LABEL_56:
    v10 = 1;
    goto LABEL_64;
  }

  v11 = 1;
  v12 = 65295;
  v10 = 1;
LABEL_47:
  LogPrintF();
LABEL_64:
  if (page)
  {
    *page = v12;
  }

  if (d)
  {
    *d = v11;
  }

  if (repeats)
  {
    *repeats = v10;
  }

  LOBYTE(v9) = 1;
  return v9;
}

@end
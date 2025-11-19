@interface UIDevice(DOCDeviceSymbol)
- (__CFString)doc_symbolName;
- (void)doc_symbolName;
@end

@implementation UIDevice(DOCDeviceSymbol)

- (__CFString)doc_symbolName
{
  v0 = [MEMORY[0x1E6982C38] _typeOfCurrentDevice];
  v1 = [v0 identifier];
  v18 = 0;
  v2 = [MEMORY[0x1E69A8A40] symbolForTypeIdentifier:v1 error:&v18];
  v3 = v18;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = MEMORY[0x1E699A450];
    v7 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(UIDevice(DOCDeviceSymbol) *)v1 doc_symbolName];
    }
  }

  v8 = [v2 name];

  if (!v8)
  {
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 model];

    HasHomeButton = DOCDeviceHasHomeButton();
    if (([v10 isEqualToString:@"iPhone"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"iPod touch"))
    {
      v12 = @"iphone.homebutton";
      if (!HasHomeButton)
      {
        v12 = @"iphone";
      }
    }

    else
    {
      if (![v10 isEqualToString:@"iPad"])
      {
        if ([v10 isEqualToString:@"Apple Vision"])
        {
          v13 = @"visionpro";
        }

        else
        {
          v16 = MEMORY[0x1E699A450];
          v17 = *MEMORY[0x1E699A450];
          if (!*MEMORY[0x1E699A450])
          {
            DOCInitLogging();
            v17 = *v16;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(UIDevice(DOCDeviceSymbol) *)v10 doc_symbolName];
          }

          v13 = 0;
        }

        goto LABEL_15;
      }

      v12 = @"ipad";
      if (HasHomeButton)
      {
        v12 = @"ipad.homebutton";
      }
    }

    v13 = v12;
LABEL_15:
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = @"iphone";
    }

    v8 = v14;
  }

  return v8;
}

- (void)doc_symbolName
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_ERROR, "Unexpected device model: %@. Unable to return symbol name", &v2, 0xCu);
}

@end
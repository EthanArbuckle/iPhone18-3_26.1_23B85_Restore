@interface MBGetCachedGestaltValues
@end

@implementation MBGetCachedGestaltValues

uint64_t ___MBGetCachedGestaltValues_block_invoke()
{
  v35 = *MEMORY[0x1E69E9840];
  v0 = MBGetDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEB5D000, v0, OS_LOG_TYPE_DEBUG, "Loading cached MobileGestalt values", buf, 2u);
    _MBLog(@"Db", "Loading cached MobileGestalt values", v1, v2, v3, v4, v5, v6, v15);
  }

  _MBCachedGestaltValues = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *buf = @"DeviceClass";
  v22 = @"UniqueDeviceID";
  v23 = @"SerialNumber";
  v24 = @"ProductType";
  v25 = @"BuildVersion";
  v26 = @"ProductVersion";
  v27 = @"DeviceColor";
  v28 = @"DeviceEnclosureColor";
  v29 = @"9N7qIucqhr0Cy2/Tk27/hw";
  v30 = @"NJsxTSI2WuD+13rxShXX9w";
  v31 = @"CJcvxERO5v/3IWjDFKZKRw";
  v32 = @"HWModelStr";
  v33 = @"marketing-name";
  v34 = @"ReleaseType";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:14];
  result = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = MBGetGestaltValueForKey();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v13 stringValue];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        if (v13)
        {
          [_MBCachedGestaltValues setObject:v13 forKeyedSubscript:v12];
          goto LABEL_14;
        }

LABEL_13:
        *buf = @"DeviceColor";
        v22 = @"DeviceEnclosureColor";
        v23 = @"marketing-name";
        v24 = @"ReleaseType";
        if (([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:buf count:{4), "containsObject:", v12}] & 1) == 0)
        {
          objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Error getting %@ from MobileGestalt", v12]);
        }

LABEL_14:
        ++v11;
      }

      while (v9 != v11);
      result = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v9 = result;
    }

    while (result);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

@end
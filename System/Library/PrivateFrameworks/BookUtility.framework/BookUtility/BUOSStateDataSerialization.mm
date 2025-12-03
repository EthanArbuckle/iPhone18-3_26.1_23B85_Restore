@interface BUOSStateDataSerialization
+ (os_state_data_s)dataWithTitle:(id)title propertyList:(id)list error:(id *)error;
@end

@implementation BUOSStateDataSerialization

+ (os_state_data_s)dataWithTitle:(id)title propertyList:(id)list error:(id *)error
{
  titleCopy = title;
  v9 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v8, list, 200, 0, error);
  v12 = v9;
  if (v9)
  {
    v13 = objc_msgSend_length(v9, v10, v11);
    v14 = malloc_type_calloc(1uLL, v13 + 200, 0x1000040BEF03554uLL);
    if (v14)
    {
      v15 = titleCopy;
      objc_msgSend_UTF8String(v15, v16, v17);
      __strlcpy_chk();
      v14->var0 = 1;
      v14->var1.var1 = v13;
      v18 = v12;
      v21 = objc_msgSend_bytes(v18, v19, v20);
      memcpy(v14->var4, v21, v13);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end
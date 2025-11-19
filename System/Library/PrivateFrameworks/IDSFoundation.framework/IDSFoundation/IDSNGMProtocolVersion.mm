@interface IDSNGMProtocolVersion
+ (BOOL)isVersionSupported:(unsigned int)a3;
+ (unsigned)supportedVersion;
@end

@implementation IDSNGMProtocolVersion

+ (BOOL)isVersionSupported:(unsigned int)a3
{
  v3 = *&a3;
  v4 = NSClassFromString(&cfstr_Ngmprotocolver.isa);
  if (v4)
  {

    return [(objc_class *)v4 isVersionSupported:v3];
  }

  else
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19E40();
    }

    return 0;
  }
}

+ (unsigned)supportedVersion
{
  v2 = NSClassFromString(&cfstr_Ngmprotocolver.isa);
  if (v2)
  {

    return MEMORY[0x1EEE66B58](v2, sel_supportedVersion);
  }

  else
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19E40();
    }

    return 0;
  }
}

@end
@interface IDSNGMProtocolVersion
+ (BOOL)isVersionSupported:(unsigned int)supported;
+ (unsigned)supportedVersion;
@end

@implementation IDSNGMProtocolVersion

+ (BOOL)isVersionSupported:(unsigned int)supported
{
  v3 = *&supported;
  v4 = NSClassFromString(&cfstr_Ngmprotocolver.isa);
  if (v4)
  {

    return [(objc_class *)v4 isVersionSupported:v3];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
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
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E19E40();
    }

    return 0;
  }
}

@end
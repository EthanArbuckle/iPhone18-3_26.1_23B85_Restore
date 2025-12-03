@interface Internal_ADS_Management_Kernel
+ (BOOL)IsDeviceWithAOIDConnected:(unsigned int)connected;
+ (unsigned)ConnectDevice:(id)device error:(id *)error;
+ (void)DisconnectAllDevices;
+ (void)DisconnectDeviceByAudioObjectID:(unsigned int)d error:(id *)error;
+ (void)DisconnectDeviceByUID:(id)d error:(id *)error;
+ (void)SetPropertyDataPrivileged:(unsigned int)privileged address:(AudioObjectPropertyAddress *)address dataSize:(unsigned int)size data:(const void *)data error:(id *)error;
+ (void)SetPropertyDataPrivileged_TypeRef:(unsigned int)ref address:(AudioObjectPropertyAddress *)address data:(void *)data error:(id *)error;
@end

@implementation Internal_ADS_Management_Kernel

+ (void)SetPropertyDataPrivileged_TypeRef:(unsigned int)ref address:(AudioObjectPropertyAddress *)address data:(void *)data error:(id *)error
{
  cf = data;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"InCider" code:v10 userInfo:0];
  }
}

+ (void)SetPropertyDataPrivileged:(unsigned int)privileged address:(AudioObjectPropertyAddress *)address dataSize:(unsigned int)size data:(const void *)data error:(id *)error
{
  if (v12)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"InCider" code:v12 userInfo:0];
  }
}

+ (void)DisconnectDeviceByUID:(id)d error:(id *)error
{
  dCopy = d;
  uTF8String = [(_anonymous_namespace_ *)dCopy UTF8String];
  v7 = strlen(uTF8String);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v12 = v7;
  if (v7)
  {
    memmove(&__dst, uTF8String, v7);
  }

  *(&__dst + v8) = 0;
  v10 = v9;
  if ((v12 & 0x80000000) == 0)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  operator delete(__dst);
  if (v10)
  {
LABEL_11:
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"InCider" code:v10 userInfo:0];
  }

LABEL_12:
}

+ (void)DisconnectDeviceByAudioObjectID:(unsigned int)d error:(id *)error
{
  if (v6)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"InCider" code:v6 userInfo:0];
  }
}

+ (unsigned)ConnectDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v6 = deviceCopy;
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
    cf = v7;
    v8 = CFGetTypeID(v7);
    if (v8 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    cf = 0;
  }

  v12 = v11;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"InCider" code:v10 userInfo:0];
    *error = LODWORD(v13) = 0;
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v13 = HIDWORD(v10);
  }

  return v13;
}

+ (void)DisconnectAllDevices
{
}

+ (BOOL)IsDeviceWithAOIDConnected:(unsigned int)connected
{
}

@end
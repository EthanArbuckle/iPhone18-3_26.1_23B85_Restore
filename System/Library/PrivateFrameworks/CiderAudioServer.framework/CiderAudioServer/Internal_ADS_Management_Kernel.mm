@interface Internal_ADS_Management_Kernel
+ (BOOL)IsDeviceWithAOIDConnected:(unsigned int)a3;
+ (unsigned)ConnectDevice:(id)a3 error:(id *)a4;
+ (void)DisconnectAllDevices;
+ (void)DisconnectDeviceByAudioObjectID:(unsigned int)a3 error:(id *)a4;
+ (void)DisconnectDeviceByUID:(id)a3 error:(id *)a4;
+ (void)SetPropertyDataPrivileged:(unsigned int)a3 address:(AudioObjectPropertyAddress *)a4 dataSize:(unsigned int)a5 data:(const void *)a6 error:(id *)a7;
+ (void)SetPropertyDataPrivileged_TypeRef:(unsigned int)a3 address:(AudioObjectPropertyAddress *)a4 data:(void *)a5 error:(id *)a6;
@end

@implementation Internal_ADS_Management_Kernel

+ (void)SetPropertyDataPrivileged_TypeRef:(unsigned int)a3 address:(AudioObjectPropertyAddress *)a4 data:(void *)a5 error:(id *)a6
{
  cf = a5;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InCider" code:v10 userInfo:0];
  }
}

+ (void)SetPropertyDataPrivileged:(unsigned int)a3 address:(AudioObjectPropertyAddress *)a4 dataSize:(unsigned int)a5 data:(const void *)a6 error:(id *)a7
{
  if (v12)
  {
    *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InCider" code:v12 userInfo:0];
  }
}

+ (void)DisconnectDeviceByUID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(_anonymous_namespace_ *)v5 UTF8String];
  v7 = strlen(v6);
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
    memmove(&__dst, v6, v7);
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
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InCider" code:v10 userInfo:0];
  }

LABEL_12:
}

+ (void)DisconnectDeviceByAudioObjectID:(unsigned int)a3 error:(id *)a4
{
  if (v6)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"InCider" code:v6 userInfo:0];
  }
}

+ (unsigned)ConnectDevice:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
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
    *a4 = LODWORD(v13) = 0;
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

+ (BOOL)IsDeviceWithAOIDConnected:(unsigned int)a3
{
}

@end
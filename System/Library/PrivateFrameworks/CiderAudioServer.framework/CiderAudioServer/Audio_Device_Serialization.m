@interface Audio_Device_Serialization
+ (id)Serialize_All_Devices:(id *)a3;
@end

@implementation Audio_Device_Serialization

+ (id)Serialize_All_Devices:(id *)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  util::WriteDevicesExceptionSafe(&v10);
  if (v10)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DeviceSerialization" code:? userInfo:?];
  }

  v5 = v11;
  for (i = v12; v5 != i; v5 += 3)
  {
    v7 = v5;
    if (*(v5 + 23) < 0)
    {
      v7 = *v5;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    [v4 addObject:v8];
  }

  v13 = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v13);

  return v4;
}

@end
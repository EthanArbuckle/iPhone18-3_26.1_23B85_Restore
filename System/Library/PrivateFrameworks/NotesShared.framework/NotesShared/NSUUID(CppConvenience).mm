@interface NSUUID(CppConvenience)
+ (id)CR_UUIDFromStdString:()CppConvenience;
- (void)CR_toStdString;
@end

@implementation NSUUID(CppConvenience)

+ (id)CR_UUIDFromStdString:()CppConvenience
{
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v7 = [v4 initWithUUIDString:v6];

  return v7;
}

- (void)CR_toStdString
{
  uUIDString = [self UUIDString];
  uTF8String = [uUIDString UTF8String];
  v4 = strlen(uTF8String);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, uTF8String, v4);
  }

  a2[v5] = 0;
}

@end
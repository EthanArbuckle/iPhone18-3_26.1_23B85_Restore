@interface NSString(ULExtensions)
- (double)stdString;
- (void)boostUUID;
@end

@implementation NSString(ULExtensions)

- (void)boostUUID
{
  std::string::basic_string[abi:ne200100]<0>(__p, [a1 UTF8String]);
  CLMicroLocationProtobufHelper::uuidFromStdString(__p, a2);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

- (double)stdString
{
  std::string::basic_string[abi:ne200100]<0>(&v4, [a1 UTF8String]);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 1;
  return result;
}

@end
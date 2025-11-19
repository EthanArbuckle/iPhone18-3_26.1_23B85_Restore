@interface NSString(SNN)
- (size_t)cxxString;
- (uint64_t)initWithCXXString:()SNN;
- (uint64_t)initWithCXXStringNoCopy:()SNN;
- (void)initWithOwnedCXXStringNoCopy:()SNN;
@end

@implementation NSString(SNN)

- (uint64_t)initWithCXXString:()SNN
{
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  return [a1 initWithCString:a3 encoding:4];
}

- (uint64_t)initWithCXXStringNoCopy:()SNN
{
  v3 = a3[1];
  if (*(a3 + 23) >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    a3 = *a3;
    v4 = v3;
  }

  return [a1 initWithBytesNoCopy:a3 length:v4 encoding:4 freeWhenDone:0];
}

- (void)initWithOwnedCXXStringNoCopy:()SNN
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x3812000000;
  v0[3] = __Block_byref_object_copy_;
  v0[4] = __Block_byref_object_dispose_;
  v0[5] = &unk_25BD203B9;
  operator new();
}

- (size_t)cxxString
{
  v3 = [a1 UTF8String];
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v3, result);
  }

  a2[v5] = 0;
  return result;
}

@end
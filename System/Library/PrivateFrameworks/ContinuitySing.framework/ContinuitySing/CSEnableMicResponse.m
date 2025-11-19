@interface CSEnableMicResponse
+ (id)requiredParameters;
- (CSEnableMicResponse)initWithMessage:(id)a3;
- (CSEnableMicResponse)initWithResult:(int64_t)a3;
- (id)dictionaryRepresentation;
@end

@implementation CSEnableMicResponse

- (CSEnableMicResponse)initWithResult:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CSEnableMicResponse;
  result = [(CSEnableMicResponse *)&v5 init];
  if (result)
  {
    result->_result = a3;
  }

  return result;
}

- (CSEnableMicResponse)initWithMessage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSEnableMicResponse;
  v5 = [(CSMessage *)&v9 initWithMessage:v4];
  if (v5)
  {
    v6 = NSDictionaryGetNSNumber();
    v7 = v6;
    if (v6)
    {
      v5->_result = [v6 intValue];
    }
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CSEnableMicResponse;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"CSEnableMicResultKey"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = CSEnableMicResponse;
  v3 = [(CSMessage *)&v7 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CSEnableMicResponse result](self, "result")}];
  [v4 setObject:v5 forKey:@"CSEnableMicResultKey"];

  return v4;
}

@end
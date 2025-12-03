@interface _DPTransparencyLogError
+ (id)errorWithCode:(int64_t)code description:(id)description;
- (_DPTransparencyLogError)initWithCode:(int64_t)code description:(id)description;
@end

@implementation _DPTransparencyLogError

- (_DPTransparencyLogError)initWithCode:(int64_t)code description:(id)description
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = _DPTransparencyLogError;
  v9 = [(_DPTransparencyLogError *)&v12 initWithDomain:@"com.apple.DifferentialPrivacy.DPTransparencyLogCreatorError" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  v6 = [objc_alloc(objc_opt_class()) initWithCode:code description:descriptionCopy];

  return v6;
}

@end
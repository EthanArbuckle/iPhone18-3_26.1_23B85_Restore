@interface _DPTransparencyLogError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
- (_DPTransparencyLogError)initWithCode:(int64_t)a3 description:(id)a4;
@end

@implementation _DPTransparencyLogError

- (_DPTransparencyLogError)initWithCode:(int64_t)a3 description:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = _DPTransparencyLogError;
  v9 = [(_DPTransparencyLogError *)&v12 initWithDomain:@"com.apple.DifferentialPrivacy.DPTransparencyLogCreatorError" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithCode:a3 description:v5];

  return v6;
}

@end
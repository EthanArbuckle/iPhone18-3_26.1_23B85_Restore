@interface NSNumberingSystem
+ (id)numberingSystemWithNumberingSystemName:(const char *)a3;
- (BOOL)isEqual:(id)a3;
- (NSNumberingSystem)initWithIdentifier:(id)a3 isAlgorithmic:(BOOL)a4 radix:(int64_t)a5 descriptor:(id)a6;
- (NSNumberingSystem)initWithLocaleIdentifier:(id)a3;
- (NSNumberingSystem)initWithNumberingSystemIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation NSNumberingSystem

+ (id)numberingSystemWithNumberingSystemName:(const char *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = unumsys_openByName();
  v6 = [MEMORY[0x277CCACA8] stringWithCharacters:v11 length:unumsys_getDescription()];
  v7 = MEMORY[0x2530545E0](v4);
  v8 = MEMORY[0x2530545D0](v4);
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v10 = [[NSNumberingSystem alloc] initWithIdentifier:v9 isAlgorithmic:v7 != 0 radix:v8 descriptor:v6];
  unumsys_close();

  return v10;
}

- (NSNumberingSystem)initWithIdentifier:(id)a3 isAlgorithmic:(BOOL)a4 radix:(int64_t)a5 descriptor:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = NSNumberingSystem;
  v12 = [(NSNumberingSystem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(NSNumberingSystem *)v12 setIdentifier:v10];
    [(NSNumberingSystem *)v13 setIsAlgorithmic:v8];
    [(NSNumberingSystem *)v13 setRadix:a5];
    [(NSNumberingSystem *)v13 setDescriptor:v11];
    v14 = v13;
  }

  return v13;
}

- (NSNumberingSystem)initWithLocaleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 rangeOfString:@"numbers=([a-z]+)" options:1024];
  if (v6)
  {
    v7 = [v4 substringWithRange:{v5, v6}];
    v8 = [MEMORY[0x277CBEAF8] ICUNumberingSystems];
    v9 = [v8 objectForKeyedSubscript:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSNumberingSystem)initWithNumberingSystemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAF8] ICUNumberingSystems];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(NSNumberingSystem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSNumberingSystem *)self identifier];
      v6 = [(NSNumberingSystem *)v4 identifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end
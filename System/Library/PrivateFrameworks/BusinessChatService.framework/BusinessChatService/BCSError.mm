@interface BCSError
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorDescription:(id)a5;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorDescription:(id)a5 localizedDescription:(id)a6;
+ (id)errorWithError:(id)a3;
- (BCSError)initWithError:(id)a3;
- (id)errorDescription;
- (id)localizedDescription;
@end

@implementation BCSError

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorDescription:(id)a5
{
  if (a3)
  {
    v7 = a5;
    v8 = a3;
    if ([(__CFString *)v7 length])
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_28544C2A0;
    }

    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v9, @"BCSErrorDescriptionKey", 0}];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v8 code:a4 userInfo:v10];

    v12 = [BCSError errorWithError:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 errorDescription:(id)a5 localizedDescription:(id)a6
{
  if (a3)
  {
    v9 = a6;
    v10 = a5;
    v11 = a3;
    v12 = [(__CFString *)v10 length];
    v13 = &stru_28544C2A0;
    if (v12)
    {
      v13 = v10;
    }

    v14 = v13;
    if ([(__CFString *)v9 length])
    {
      v15 = v9;
    }

    else
    {
      v15 = v14;
    }

    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v14, @"BCSErrorDescriptionKey", v15, *MEMORY[0x277CCA450], 0}];
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:a4 userInfo:v16];

    v18 = [BCSError errorWithError:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)errorWithError:(id)a3
{
  v3 = a3;
  v4 = [[BCSError alloc] initWithError:v3];

  return v4;
}

- (BCSError)initWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];

  if (v5)
  {
    v6 = [v4 domain];
    v7 = [v4 code];
    v8 = [v4 userInfo];
    v11.receiver = self;
    v11.super_class = BCSError;
    v9 = [(BCSError *)&v11 initWithDomain:v6 code:v7 userInfo:v8];
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (id)errorDescription
{
  v2 = [(BCSError *)self userInfo];
  v3 = [v2 objectForKey:@"BCSErrorDescriptionKey"];

  return v3;
}

- (id)localizedDescription
{
  v3 = [(BCSError *)self userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x277CCA450]];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(BCSError *)self errorDescription];
  }

  v6 = v5;

  return v6;
}

@end
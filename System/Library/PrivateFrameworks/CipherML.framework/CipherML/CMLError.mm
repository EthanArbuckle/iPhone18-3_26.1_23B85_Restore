@interface CMLError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
- (CMLError)initWithCode:(int64_t)a3 description:(id)a4;
- (CMLError)initWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
@end

@implementation CMLError

- (CMLError)initWithCode:(int64_t)a3 description:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12.receiver = self;
  v12.super_class = CMLError;
  v9 = [(CMLError *)&v12 initWithDomain:@"com.apple.CipherML" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (CMLError)initWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v10 = a4;
  v11 = [v10 localizedDescription];
  v12 = [v8 stringWithFormat:@"%@: %@", v9, v11];

  v13 = *MEMORY[0x277CCA7E8];
  v19[0] = *MEMORY[0x277CCA450];
  v19[1] = v13;
  v20[0] = v12;
  v20[1] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v18.receiver = self;
  v18.super_class = CMLError;
  v15 = [(CMLError *)&v18 initWithDomain:@"com.apple.CipherML" code:a3 userInfo:v14];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithCode:a3 description:v5];

  return v6;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc(objc_opt_class());
  if (v7)
  {
    v10 = [v9 initWithCode:a3 underlyingError:v7 description:v8];
  }

  else
  {
    v10 = [v9 initWithCode:a3 description:v8];
  }

  v11 = v10;

  return v11;
}

@end
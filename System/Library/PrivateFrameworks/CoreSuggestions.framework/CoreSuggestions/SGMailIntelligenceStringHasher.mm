@interface SGMailIntelligenceStringHasher
+ (id)rotatingSaltForDate:(id)a3;
+ (int64_t)hashedString:(id)a3 salts:(id)a4;
+ (int64_t)truncatedSHA256:(id)a3 salts:(id)a4;
- (NSData)rotatingSalt;
- (SGMailIntelligenceStringHasher)init;
- (SGMailIntelligenceStringHasher)initWithSaltValue:(id)a3;
- (id)unrotatedHashedStrings:(id)a3 withHashSize:(unint64_t)a4;
- (int64_t)hashedString:(id)a3;
- (int64_t)truncatedSHA256:(id)a3;
- (int64_t)unrotatedHashedString:(id)a3 withHashSize:(unint64_t)a4;
@end

@implementation SGMailIntelligenceStringHasher

- (id)unrotatedHashedStrings:(id)a3 withHashSize:(unint64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__SGMailIntelligenceStringHasher_unrotatedHashedStrings_withHashSize___block_invoke;
  v6[3] = &unk_1E7EFC950;
  v6[4] = self;
  v6[5] = a4;
  v4 = [a3 _pas_mappedArrayWithTransform:v6];

  return v4;
}

uint64_t __70__SGMailIntelligenceStringHasher_unrotatedHashedStrings_withHashSize___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) unrotatedHashedString:a2 withHashSize:*(a1 + 40)];

  return [v2 numberWithLongLong:v3];
}

- (int64_t)unrotatedHashedString:(id)a3 withHashSize:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_salt)
  {
    salt = self->_salt;
    v5 = MEMORY[0x1E695DEC8];
    v6 = a3;
    v7 = [v5 arrayWithObjects:&salt count:1];
    v8 = [SGMailIntelligenceStringHasher hashedString:v6 salts:v7, salt, v13];

    v9 = v8 % a4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (int64_t)hashedString:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (self->_salt)
  {
    v10[0] = self->_salt;
    v4 = a3;
    v5 = [(SGMailIntelligenceStringHasher *)self rotatingSalt];
    v10[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [SGMailIntelligenceStringHasher hashedString:v4 salts:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (int64_t)truncatedSHA256:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (self->_salt)
  {
    v10[0] = self->_salt;
    v4 = a3;
    v5 = [(SGMailIntelligenceStringHasher *)self rotatingSalt];
    v10[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [SGMailIntelligenceStringHasher truncatedSHA256:v4 salts:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSData)rotatingSalt
{
  rotatingSalt = self->_rotatingSalt;
  if (!rotatingSalt)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [SGMailIntelligenceStringHasher rotatingSaltForDate:v4];
    v6 = self->_rotatingSalt;
    self->_rotatingSalt = v5;

    rotatingSalt = self->_rotatingSalt;
  }

  return rotatingSalt;
}

- (SGMailIntelligenceStringHasher)init
{
  v3 = [SGPersistentSaltProvider saltProviderFromKeyChainWithServiceIdentifier:@"com.apple.suggestions.mail-interaction-log.salt" accessGroup:@"com.apple.suggestions.mail-intelligence"];
  v4 = [v3 salt];
  v5 = [(SGMailIntelligenceStringHasher *)self initWithSaltValue:v4];

  return v5;
}

- (SGMailIntelligenceStringHasher)initWithSaltValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGMailIntelligenceStringHasher;
  v6 = [(SGMailIntelligenceStringHasher *)&v9 init];
  v7 = v6;
  if (v5 && v6)
  {
    objc_storeStrong(&v6->_salt, a3);
  }

  return v7;
}

+ (int64_t)hashedString:(id)a3 salts:(id)a4
{
  v5 = a4;
  v6 = [a3 dataUsingEncoding:4];
  v7 = [SGMailIntelligenceStringHasher truncatedSHA256:v6 salts:v5];

  return v7;
}

+ (int64_t)truncatedSHA256:(id)a3 salts:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  memset(md, 0, sizeof(md));
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 length])
        {
          CC_SHA256_Update(&c, [v12 bytes], objc_msgSend(v12, "length"));
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  CC_SHA256_Update(&c, [v5 bytes], objc_msgSend(v5, "length"));
  CC_SHA256_Final(md, &c);
  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];
  v17 = 0;
  [v13 getBytes:&v17 length:8];
  v14 = v17;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)rotatingSaltForDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 component:8 fromDate:v4];

  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 component:4 fromDate:v4];

  v9 = (v6 - 1) & 1;
  if (v6 < 1)
  {
    v9 = -v9;
  }

  v10 = v6 - v9;
  v11 = 6 * v8 + (v6 - v9) / 2 - 12120;
  if (12120 - (6 * v8 + v10 / 2) >= 0)
  {
    v11 = -((12120 - (6 * v8 + v10 / 2)) & 0x7F);
  }

  else
  {
    LOBYTE(v11) = v11 & 0x7F;
  }

  v14 = v11;
  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v14 length:1];

  return v12;
}

@end
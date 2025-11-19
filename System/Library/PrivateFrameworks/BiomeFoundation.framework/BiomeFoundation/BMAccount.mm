@interface BMAccount
+ (BOOL)verifyFormattedLikeIdentifier:(id)a3;
+ (id)_hashOfString:(id)a3;
- (BMAccount)initWithAltDSID:(id)a3;
- (BMAccount)initWithCoder:(id)a3;
- (BMAccount)initWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMAccount

- (BMAccount)initWithAltDSID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(BMAccount *)a2 initWithAltDSID:?];
  }

  v12.receiver = self;
  v12.super_class = BMAccount;
  v6 = [(BMAccount *)&v12 init];
  if (v6)
  {
    v7 = [BMAccount _hashOfString:v5];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = [v5 copy];
    altDSID = v6->_altDSID;
    v6->_altDSID = v9;
  }

  return v6;
}

- (BMAccount)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(BMAccount *)a2 initWithIdentifier:?];
  }

  if ([BMAccount verifyFormattedLikeIdentifier:v5])
  {
    v13.receiver = self;
    v13.super_class = BMAccount;
    v6 = [(BMAccount *)&v13 init];
    if (v6)
    {
      v7 = [v5 copy];
      identifier = v6->_identifier;
      v6->_identifier = v7;

      altDSID = v6->_altDSID;
      v6->_altDSID = 0;
    }

    self = v6;
    v10 = self;
  }

  else
  {
    v11 = __biome_log_for_category(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(BMAccount *)v5 initWithIdentifier:v11];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)_hashOfString:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a3 cStringUsingEncoding:4];
  v4 = strlen(v3);
  CC_SHA1(v3, v4, md);
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)verifyFormattedLikeIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length] != 40)
  {
    v22 = 0;
    goto LABEL_34;
  }

  v4 = v3;
  v5 = objc_opt_self();

  if (!v5)
  {
    goto LABEL_32;
  }

  memset(v24, 0, sizeof(v24));
  Length = CFStringGetLength(v4);
  theString = v4;
  v28 = 0;
  v29 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v4);
  CStringPtr = 0;
  v26 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
  }

  v30 = 0;
  v31 = 0;
  v27 = CStringPtr;
  if (Length < 1)
  {
LABEL_32:
    v22 = 1;
    goto LABEL_33;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 64;
  while (1)
  {
    v13 = v11 >= 4 ? 4 : v11;
    v14 = v29;
    if (v29 <= v11)
    {
      v16 = 0;
    }

    else
    {
      if (v26)
      {
        v15 = &v26[v28];
      }

      else
      {
        if (v27)
        {
          v16 = v27[v28 + v11];
          goto LABEL_15;
        }

        if (v31 <= v11 || v10 > v11)
        {
          v18 = v13 + v9;
          v19 = v12 - v13;
          v20 = v11 - v13;
          v21 = v20 + 64;
          if (v20 + 64 >= v29)
          {
            v21 = v29;
          }

          v30 = v20;
          v31 = v21;
          if (v29 >= v19)
          {
            v14 = v19;
          }

          v32.location = v20 + v28;
          v32.length = v14 + v18;
          CFStringGetCharacters(theString, v32, v24);
          v10 = v30;
        }

        v15 = v24 - v10;
      }

      v16 = v15[v11];
    }

LABEL_15:
    if ((v16 - 48) >= 0xAu && (v16 - 97) >= 6u)
    {
      break;
    }

    ++v11;
    --v9;
    ++v12;
    if (Length == v11)
    {
      goto LABEL_32;
    }
  }

  v22 = 0;
LABEL_33:

LABEL_34:
  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"id"];
  [v5 encodeObject:self->_altDSID forKey:@"altDSID"];
}

- (BMAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
  if (v5)
  {
    v6 = [(BMAccount *)self initWithAltDSID:v5];
  }

  else
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    v6 = [(BMAccount *)self initWithIdentifier:v7];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_identifier isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithAltDSID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMAccount.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"altDSID"}];
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMAccount.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "BMAccount passed invalid identifier %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
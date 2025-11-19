@interface NSUUID(IconFoundationAdditions)
+ (id)_IF_UUIDByXORingUUIDs:()IconFoundationAdditions;
+ (id)_IF_UUIDWithBytes:()IconFoundationAdditions size:;
+ (id)_IF_UUIDWithDigestBytes:()IconFoundationAdditions size:;
+ (id)_IF_UUIDWithDouble:()IconFoundationAdditions;
+ (id)_IF_UUIDWithInt64:()IconFoundationAdditions;
+ (id)_IF_UUIDWithOSType:()IconFoundationAdditions;
+ (id)_IF_UUIDWithString:()IconFoundationAdditions;
+ (id)_IF_nullUUID;
+ (uint64_t)_IF_UUIDWithData:()IconFoundationAdditions;
- (uint64_t)_IF_getUUIDBytes:()IconFoundationAdditions hash64:;
@end

@implementation NSUUID(IconFoundationAdditions)

+ (id)_IF_nullUUID
{
  if (_IF_nullUUID_onceToken != -1)
  {
    +[NSUUID(IconFoundationAdditions) _IF_nullUUID];
  }

  v1 = _IF_nullUUID_nullUUID;

  return v1;
}

+ (uint64_t)_IF_UUIDWithData:()IconFoundationAdditions
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [v4 bytes];
  v6 = [v4 length];

  return [v3 _IF_UUIDWithBytes:v5 size:v6];
}

+ (id)_IF_UUIDWithString:()IconFoundationAdditions
{
  v3 = a3;
  v4 = v3;
  if (!v3 || (v5 = [v3 UTF8String]) == 0 || (v6 = v5, (v7 = strlen(v5)) == 0) || (objc_msgSend(MEMORY[0x1E696AFB0], "_IF_UUIDWithBytes:size:", v6, v7), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [MEMORY[0x1E696AFB0] _IF_nullUUID];
  }

  return v8;
}

+ (id)_IF_UUIDWithInt64:()IconFoundationAdditions
{
  v5 = a3;
  v3 = [MEMORY[0x1E696AFB0] _IF_UUIDWithBytes:&v5 size:8];

  return v3;
}

+ (id)_IF_UUIDWithDouble:()IconFoundationAdditions
{
  v3 = a1;
  v1 = [MEMORY[0x1E696AFB0] _IF_UUIDWithBytes:&v3 size:8];

  return v1;
}

+ (id)_IF_UUIDWithOSType:()IconFoundationAdditions
{
  v5 = a3;
  v3 = [MEMORY[0x1E696AFB0] _IF_UUIDWithBytes:&v5 size:4];

  return v3;
}

+ (id)_IF_UUIDWithBytes:()IconFoundationAdditions size:
{
  v8 = *MEMORY[0x1E69E9840];
  if (data && len)
  {
    CC_SHA256(data, len, md);
    v4 = [MEMORY[0x1E696AFB0] _IF_UUIDWithDigestBytes:md size:32];
  }

  else
  {
    *md = 0;
    v7 = 0;
    uuid_clear(md);
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:md];
  }

  return v4;
}

+ (id)_IF_UUIDWithDigestBytes:()IconFoundationAdditions size:
{
  v9 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  if (a3 && a4)
  {
    v4 = 0;
    do
    {
      v5 = *a3++;
      uu[v4] ^= v5;
      v4 = (v4 + 1) & 0xF;
      --a4;
    }

    while (a4);
    uu[6] = uu[6] & 0xF | 0x30;
    uu[8] = uu[8] & 0x3F | 0x80;
  }

  else
  {
    uuid_clear(uu);
  }

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];

  return v6;
}

- (uint64_t)_IF_getUUIDBytes:()IconFoundationAdditions hash64:
{
  if (!a3)
  {
    [NSUUID(IconFoundationAdditions) _IF_getUUIDBytes:hash64:];
  }

  result = [a1 getUUIDBytes:?];
  if (a4)
  {
    *a4 = a3[1] ^ *a3;
  }

  return result;
}

+ (id)_IF_UUIDByXORingUUIDs:()IconFoundationAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v16 = 0uLL;
        [v9 getUUIDBytes:{&v16, v12}];
        *uu = veorq_s8(*uu, v16);
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];

  return v10;
}

@end
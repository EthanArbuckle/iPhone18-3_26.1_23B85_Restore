@interface LACDTOMutableSensorTrustState
+ (id)nullInstance;
- (BOOL)_containsDisapprovedSensorIDFlag:(id)a3;
- (BOOL)isDisapproved;
- (BOOL)isEqual:(id)a3;
- (LACDTOMutableSensorTrustState)initWithTrustState:(id)a3;
- (NSString)description;
- (id)_disapprovedSensorIDFlag;
- (void)disapprove;
@end

@implementation LACDTOMutableSensorTrustState

- (LACDTOMutableSensorTrustState)initWithTrustState:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LACDTOMutableSensorTrustState;
  v5 = [(LACDTOMutableSensorTrustState *)&v9 init];
  if (v5)
  {
    v6 = [v4 installedSensorID];
    [(LACDTOMutableSensorTrustState *)v5 setInstalledSensorID:v6];

    v7 = [v4 trustedSensorID];
    [(LACDTOMutableSensorTrustState *)v5 setTrustedSensorID:v7];
  }

  return v5;
}

+ (id)nullInstance
{
  v2 = objc_alloc_init(LACDTOMutableSensorTrustState);
  [(LACDTOMutableSensorTrustState *)v2 setInstalledSensorID:0];
  [(LACDTOMutableSensorTrustState *)v2 setTrustedSensorID:0];

  return v2;
}

- (BOOL)isDisapproved
{
  v3 = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
  v6 = [(LACDTOMutableSensorTrustState *)self _containsDisapprovedSensorIDFlag:v5];

  return v6;
}

- (void)disapprove
{
  v3 = [(LACDTOMutableSensorTrustState *)self _disapprovedSensorIDFlag];
  [(LACDTOMutableSensorTrustState *)self setTrustedSensorID:v3];
}

- (BOOL)_containsDisapprovedSensorIDFlag:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(v3, "length")}];
    [v4 resetBytesInRange:{0, objc_msgSend(v4, "length")}];
    v5 = [v3 isEqual:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_disapprovedSensorIDFlag
{
  v4 = 0;
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&v4 length:1];

  return v2;
}

- (NSString)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(LACDTOMutableSensorTrustState *)self installedSensorID];
  v6 = [v4 stringWithFormat:@"installedSensorID: %@", v5];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
  v9 = [v7 stringWithFormat:@"trustedSensorID: %@", v8];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACDTOMutableSensorTrustState isDisapproved](self, "isDisapproved")}];
  v12 = [v10 stringWithFormat:@"isDisapproved: %@", v11];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F269F028])
  {
    v5 = v4;
    v6 = [(LACDTOMutableSensorTrustState *)self installedSensorID];
    v7 = [v5 installedSensorID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(LACDTOMutableSensorTrustState *)self installedSensorID];
      v10 = [v5 installedSensorID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
    v14 = [v5 trustedSensorID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
      v17 = [v5 trustedSensorID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        LOBYTE(v12) = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    v19 = [(LACDTOMutableSensorTrustState *)self isDisapproved];
    v12 = v19 ^ [v5 isDisapproved] ^ 1;
    goto LABEL_12;
  }

  LOBYTE(v12) = 0;
LABEL_13:

  return v12;
}

@end
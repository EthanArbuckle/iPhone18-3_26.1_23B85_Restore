@interface LACDTOMutableSensorTrustState
+ (id)nullInstance;
- (BOOL)_containsDisapprovedSensorIDFlag:(id)flag;
- (BOOL)isDisapproved;
- (BOOL)isEqual:(id)equal;
- (LACDTOMutableSensorTrustState)initWithTrustState:(id)state;
- (NSString)description;
- (id)_disapprovedSensorIDFlag;
- (void)disapprove;
@end

@implementation LACDTOMutableSensorTrustState

- (LACDTOMutableSensorTrustState)initWithTrustState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = LACDTOMutableSensorTrustState;
  v5 = [(LACDTOMutableSensorTrustState *)&v9 init];
  if (v5)
  {
    installedSensorID = [stateCopy installedSensorID];
    [(LACDTOMutableSensorTrustState *)v5 setInstalledSensorID:installedSensorID];

    trustedSensorID = [stateCopy trustedSensorID];
    [(LACDTOMutableSensorTrustState *)v5 setTrustedSensorID:trustedSensorID];
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
  trustedSensorID = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
  v4 = [trustedSensorID length];

  if (!v4)
  {
    return 0;
  }

  trustedSensorID2 = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
  v6 = [(LACDTOMutableSensorTrustState *)self _containsDisapprovedSensorIDFlag:trustedSensorID2];

  return v6;
}

- (void)disapprove
{
  _disapprovedSensorIDFlag = [(LACDTOMutableSensorTrustState *)self _disapprovedSensorIDFlag];
  [(LACDTOMutableSensorTrustState *)self setTrustedSensorID:_disapprovedSensorIDFlag];
}

- (BOOL)_containsDisapprovedSensorIDFlag:(id)flag
{
  flagCopy = flag;
  if ([flagCopy length])
  {
    v4 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(flagCopy, "length")}];
    [v4 resetBytesInRange:{0, objc_msgSend(v4, "length")}];
    v5 = [flagCopy isEqual:v4];
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
  installedSensorID = [(LACDTOMutableSensorTrustState *)self installedSensorID];
  v6 = [v4 stringWithFormat:@"installedSensorID: %@", installedSensorID];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  trustedSensorID = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
  v9 = [v7 stringWithFormat:@"trustedSensorID: %@", trustedSensorID];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F269F028])
  {
    v5 = equalCopy;
    installedSensorID = [(LACDTOMutableSensorTrustState *)self installedSensorID];
    installedSensorID2 = [v5 installedSensorID];
    v8 = installedSensorID2;
    if (installedSensorID == installedSensorID2)
    {
    }

    else
    {
      installedSensorID3 = [(LACDTOMutableSensorTrustState *)self installedSensorID];
      installedSensorID4 = [v5 installedSensorID];
      v11 = [installedSensorID3 isEqual:installedSensorID4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    trustedSensorID = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
    trustedSensorID2 = [v5 trustedSensorID];
    v15 = trustedSensorID2;
    if (trustedSensorID == trustedSensorID2)
    {
    }

    else
    {
      trustedSensorID3 = [(LACDTOMutableSensorTrustState *)self trustedSensorID];
      trustedSensorID4 = [v5 trustedSensorID];
      v18 = [trustedSensorID3 isEqual:trustedSensorID4];

      if (!v18)
      {
LABEL_9:
        LOBYTE(v12) = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    isDisapproved = [(LACDTOMutableSensorTrustState *)self isDisapproved];
    v12 = isDisapproved ^ [v5 isDisapproved] ^ 1;
    goto LABEL_12;
  }

  LOBYTE(v12) = 0;
LABEL_13:

  return v12;
}

@end
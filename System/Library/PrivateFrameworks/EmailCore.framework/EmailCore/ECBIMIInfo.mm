@interface ECBIMIInfo
+ (id)bimiInfoForHeaders:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ECBIMIInfo)initWithIndicator:(id)a3 location:(id)a4 evidenceLocation:(id)a5 indicatorHash:(id)a6 hashAlgorithm:(id)a7;
- (uint64_t)_calculateHash;
@end

@implementation ECBIMIInfo

+ (id)bimiInfoForHeaders:(id)a3
{
  v3 = [_ECBIMIHeaderParser bimiInfoForHeaders:a3];

  return v3;
}

- (ECBIMIInfo)initWithIndicator:(id)a3 location:(id)a4 evidenceLocation:(id)a5 indicatorHash:(id)a6 hashAlgorithm:(id)a7
{
  v20 = a3;
  v19 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = ECBIMIInfo;
  v16 = [(ECBIMIInfo *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_indicator, a3);
    objc_storeStrong(&v17->_location, a4);
    objc_storeStrong(&v17->_evidenceLocation, a5);
    objc_storeStrong(&v17->_indicatorHash, a6);
    objc_storeStrong(&v17->_hashAlgorithm, a7);
    [(ECBIMIInfo *)v17 _calculateHash];
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (([(ECBIMIInfo *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(ECBIMIInfo *)self indicator];
    v7 = [(ECBIMIInfo *)v5 indicator];
    if (EFObjectsAreEqual())
    {
      v8 = [(ECBIMIInfo *)self location];
      v9 = [(ECBIMIInfo *)v5 location];
      if (EFObjectsAreEqual())
      {
        v17 = [(ECBIMIInfo *)self evidenceLocation];
        v10 = [(ECBIMIInfo *)v5 evidenceLocation];
        if (EFObjectsAreEqual())
        {
          v16 = [(ECBIMIInfo *)self indicatorHash];
          v15 = [(ECBIMIInfo *)v5 indicatorHash];
          if (EFObjectsAreEqual())
          {
            v14 = [(ECBIMIInfo *)self hashAlgorithm];
            v11 = [(ECBIMIInfo *)v5 hashAlgorithm];
            v12 = EFObjectsAreEqual();
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)_calculateHash
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 16) hash];
    v3 = [*(v1 + 24) hash];
    v4 = [*(v1 + 32) hash];
    v5 = [*(v1 + 40) hash];
    result = [*(v1 + 48) hash];
    *(v1 + 8) = 33 * (33 * (33 * (33 * v2 + v3) + v4) + v5) + result + 0x3107FF0025;
  }

  return result;
}

@end
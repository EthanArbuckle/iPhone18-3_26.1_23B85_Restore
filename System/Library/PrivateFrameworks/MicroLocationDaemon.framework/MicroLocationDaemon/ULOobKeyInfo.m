@interface ULOobKeyInfo
+ (id)ULOobKeyInfoToCBOOBKeyInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ULOobKeyInfo)initWithAddressData:(id)a3 andIrkData:(id)a4;
@end

@implementation ULOobKeyInfo

- (ULOobKeyInfo)initWithAddressData:(id)a3 andIrkData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ULOobKeyInfo;
  v8 = [(ULOobKeyInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ULOobKeyInfo *)v8 setBtAddressData:v6];
    [(ULOobKeyInfo *)v9 setIrkData:v7];
  }

  return v9;
}

+ (id)ULOobKeyInfoToCBOOBKeyInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBE058]);
  v5 = [v3 btAddressData];
  [v4 setBtAddressData:v5];

  v6 = [v3 irkData];
  [v4 setIrkData:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ULOobKeyInfo *)self btAddressData];
    v7 = [v5 btAddressData];
    if ([v6 isEqual:v7])
    {
    }

    else
    {
      v9 = [(ULOobKeyInfo *)self btAddressData];
      v10 = [v5 btAddressData];

      if (v9 != v10)
      {
        v8 = 0;
LABEL_10:

        goto LABEL_11;
      }
    }

    v11 = [(ULOobKeyInfo *)self irkData];
    v12 = [v5 irkData];
    if ([v11 isEqual:v12])
    {

      v8 = 1;
    }

    else
    {
      v13 = [(ULOobKeyInfo *)self irkData];
      v14 = [v5 irkData];
      v8 = v13 == v14;
    }

    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end
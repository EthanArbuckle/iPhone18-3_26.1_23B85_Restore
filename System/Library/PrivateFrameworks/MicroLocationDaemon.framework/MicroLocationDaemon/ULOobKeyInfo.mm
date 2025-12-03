@interface ULOobKeyInfo
+ (id)ULOobKeyInfoToCBOOBKeyInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (ULOobKeyInfo)initWithAddressData:(id)data andIrkData:(id)irkData;
@end

@implementation ULOobKeyInfo

- (ULOobKeyInfo)initWithAddressData:(id)data andIrkData:(id)irkData
{
  dataCopy = data;
  irkDataCopy = irkData;
  v11.receiver = self;
  v11.super_class = ULOobKeyInfo;
  v8 = [(ULOobKeyInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ULOobKeyInfo *)v8 setBtAddressData:dataCopy];
    [(ULOobKeyInfo *)v9 setIrkData:irkDataCopy];
  }

  return v9;
}

+ (id)ULOobKeyInfoToCBOOBKeyInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(MEMORY[0x277CBE058]);
  btAddressData = [infoCopy btAddressData];
  [v4 setBtAddressData:btAddressData];

  irkData = [infoCopy irkData];
  [v4 setIrkData:irkData];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    btAddressData = [(ULOobKeyInfo *)self btAddressData];
    btAddressData2 = [v5 btAddressData];
    if ([btAddressData isEqual:btAddressData2])
    {
    }

    else
    {
      btAddressData3 = [(ULOobKeyInfo *)self btAddressData];
      btAddressData4 = [v5 btAddressData];

      if (btAddressData3 != btAddressData4)
      {
        v8 = 0;
LABEL_10:

        goto LABEL_11;
      }
    }

    irkData = [(ULOobKeyInfo *)self irkData];
    irkData2 = [v5 irkData];
    if ([irkData isEqual:irkData2])
    {

      v8 = 1;
    }

    else
    {
      irkData3 = [(ULOobKeyInfo *)self irkData];
      irkData4 = [v5 irkData];
      v8 = irkData3 == irkData4;
    }

    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end
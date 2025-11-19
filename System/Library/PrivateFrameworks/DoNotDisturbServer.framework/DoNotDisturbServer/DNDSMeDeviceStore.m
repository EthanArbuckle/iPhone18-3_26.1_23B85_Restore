@interface DNDSMeDeviceStore
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithStatus:(id)a3 name:(id)a4;
- (id)_initWithStore:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSMeDeviceStore

- (id)_initWithStore:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DNDSMeDeviceStore;
  v5 = [(DNDSMeDeviceStore *)&v14 init];
  if (v5)
  {
    v6 = [v4 meDeviceStatus];
    v7 = [v6 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &unk_285C53490;
    }

    objc_storeStrong(&v5->_meDeviceStatus, v9);

    v10 = [v4 meDeviceName];
    v11 = [v10 copy];
    meDeviceName = v5->_meDeviceName;
    v5->_meDeviceName = v11;
  }

  return v5;
}

- (id)_initWithStatus:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DNDSMeDeviceStore;
  v9 = [(DNDSMeDeviceStore *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_meDeviceStatus, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (unint64_t)hash
{
  v3 = [(DNDSMeDeviceStore *)self meDeviceStatus];
  v4 = [v3 hash];
  v5 = [(DNDSMeDeviceStore *)self meDeviceName];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDSMeDeviceStore *)self meDeviceStatus];
      v8 = [(DNDSMeDeviceStore *)v6 meDeviceStatus];
      if (v7 != v8)
      {
        v9 = [(DNDSMeDeviceStore *)self meDeviceStatus];
        if (!v9)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = v9;
        v10 = [(DNDSMeDeviceStore *)v6 meDeviceStatus];
        if (!v10)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v11 = [(DNDSMeDeviceStore *)self meDeviceStatus];
        v12 = [(DNDSMeDeviceStore *)v6 meDeviceStatus];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = v12;
        v25 = v11;
        v26 = v10;
      }

      v14 = [(DNDSMeDeviceStore *)self meDeviceName];
      v15 = [(DNDSMeDeviceStore *)v6 meDeviceName];
      v16 = v15;
      if (v14 == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(DNDSMeDeviceStore *)self meDeviceName];
        if (v17)
        {
          v18 = v17;
          v19 = [(DNDSMeDeviceStore *)v6 meDeviceName];
          if (v19)
          {
            v22 = [(DNDSMeDeviceStore *)self meDeviceName];
            [(DNDSMeDeviceStore *)v6 meDeviceName];
            v20 = v23 = v3;
            v13 = [v22 isEqual:v20];

            v3 = v23;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {

          v13 = 0;
        }
      }

      v11 = v25;
      v10 = v26;
      v12 = v24;
      if (v7 == v8)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v13 = 0;
  }

LABEL_25:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDSMeDeviceStore *)self meDeviceStatus];
  [v5 unsignedIntegerValue];
  v6 = DNDMeDeviceStatusToString();
  v7 = [(DNDSMeDeviceStore *)self meDeviceName];
  v8 = [v3 stringWithFormat:@"<%@: %p meDeviceStatus: %@; meDeviceName: %@>", v4, self, v6, v7];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableMeDeviceStore alloc];

  return [(DNDSMeDeviceStore *)v4 _initWithStore:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 bs_safeObjectForKey:@"meDeviceStatus" ofType:objc_opt_class()];
  v7 = [v5 bs_safeStringForKey:@"meDeviceName"];

  v8 = [[a1 alloc] _initWithStatus:v6 name:v7];
  return v8;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:self->_meDeviceStatus forKey:@"meDeviceStatus"];
  meDeviceName = self->_meDeviceName;
  if (meDeviceName)
  {
    [v4 setObject:meDeviceName forKey:@"meDeviceName"];
  }

  return v4;
}

@end
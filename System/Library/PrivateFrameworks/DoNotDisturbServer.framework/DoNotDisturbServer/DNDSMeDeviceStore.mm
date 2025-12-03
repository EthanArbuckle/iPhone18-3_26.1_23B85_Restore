@interface DNDSMeDeviceStore
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithStatus:(id)status name:(id)name;
- (id)_initWithStore:(id)store;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSMeDeviceStore

- (id)_initWithStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = DNDSMeDeviceStore;
  v5 = [(DNDSMeDeviceStore *)&v14 init];
  if (v5)
  {
    meDeviceStatus = [storeCopy meDeviceStatus];
    v7 = [meDeviceStatus copy];
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

    meDeviceName = [storeCopy meDeviceName];
    v11 = [meDeviceName copy];
    meDeviceName = v5->_meDeviceName;
    v5->_meDeviceName = v11;
  }

  return v5;
}

- (id)_initWithStatus:(id)status name:(id)name
{
  statusCopy = status;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = DNDSMeDeviceStore;
  v9 = [(DNDSMeDeviceStore *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_meDeviceStatus, status);
    objc_storeStrong(p_isa + 2, name);
  }

  return p_isa;
}

- (unint64_t)hash
{
  meDeviceStatus = [(DNDSMeDeviceStore *)self meDeviceStatus];
  v4 = [meDeviceStatus hash];
  meDeviceName = [(DNDSMeDeviceStore *)self meDeviceName];
  v6 = [meDeviceName hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      meDeviceStatus = [(DNDSMeDeviceStore *)self meDeviceStatus];
      meDeviceStatus2 = [(DNDSMeDeviceStore *)v6 meDeviceStatus];
      if (meDeviceStatus != meDeviceStatus2)
      {
        meDeviceStatus3 = [(DNDSMeDeviceStore *)self meDeviceStatus];
        if (!meDeviceStatus3)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = meDeviceStatus3;
        meDeviceStatus4 = [(DNDSMeDeviceStore *)v6 meDeviceStatus];
        if (!meDeviceStatus4)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        meDeviceStatus5 = [(DNDSMeDeviceStore *)self meDeviceStatus];
        meDeviceStatus6 = [(DNDSMeDeviceStore *)v6 meDeviceStatus];
        if (![meDeviceStatus5 isEqual:meDeviceStatus6])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = meDeviceStatus6;
        v25 = meDeviceStatus5;
        v26 = meDeviceStatus4;
      }

      meDeviceName = [(DNDSMeDeviceStore *)self meDeviceName];
      meDeviceName2 = [(DNDSMeDeviceStore *)v6 meDeviceName];
      v16 = meDeviceName2;
      if (meDeviceName == meDeviceName2)
      {

        v13 = 1;
      }

      else
      {
        meDeviceName3 = [(DNDSMeDeviceStore *)self meDeviceName];
        if (meDeviceName3)
        {
          v18 = meDeviceName3;
          meDeviceName4 = [(DNDSMeDeviceStore *)v6 meDeviceName];
          if (meDeviceName4)
          {
            meDeviceName5 = [(DNDSMeDeviceStore *)self meDeviceName];
            [(DNDSMeDeviceStore *)v6 meDeviceName];
            v20 = v23 = v3;
            v13 = [meDeviceName5 isEqual:v20];

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

      meDeviceStatus5 = v25;
      meDeviceStatus4 = v26;
      meDeviceStatus6 = v24;
      if (meDeviceStatus == meDeviceStatus2)
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
  meDeviceStatus = [(DNDSMeDeviceStore *)self meDeviceStatus];
  [meDeviceStatus unsignedIntegerValue];
  v6 = DNDMeDeviceStatusToString();
  meDeviceName = [(DNDSMeDeviceStore *)self meDeviceName];
  v8 = [v3 stringWithFormat:@"<%@: %p meDeviceStatus: %@; meDeviceName: %@>", v4, self, v6, meDeviceName];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableMeDeviceStore alloc];

  return [(DNDSMeDeviceStore *)v4 _initWithStore:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v6 = [representationCopy bs_safeObjectForKey:@"meDeviceStatus" ofType:objc_opt_class()];
  v7 = [representationCopy bs_safeStringForKey:@"meDeviceName"];

  v8 = [[self alloc] _initWithStatus:v6 name:v7];
  return v8;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_meDeviceStatus forKey:@"meDeviceStatus"];
  meDeviceName = self->_meDeviceName;
  if (meDeviceName)
  {
    [dictionary setObject:meDeviceName forKey:@"meDeviceName"];
  }

  return dictionary;
}

@end
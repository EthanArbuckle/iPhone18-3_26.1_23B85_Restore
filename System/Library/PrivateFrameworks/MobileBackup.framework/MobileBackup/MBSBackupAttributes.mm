@interface MBSBackupAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MBSBackupAttributes

- (void)dealloc
{
  [(MBSBackupAttributes *)self setDeviceClass:0];
  [(MBSBackupAttributes *)self setProductType:0];
  [(MBSBackupAttributes *)self setSerialNumber:0];
  [(MBSBackupAttributes *)self setDeviceColor:0];
  [(MBSBackupAttributes *)self setHardwareModel:0];
  [(MBSBackupAttributes *)self setMarketingName:0];
  [(MBSBackupAttributes *)self setDeviceEnclosureColor:0];
  v3.receiver = self;
  v3.super_class = MBSBackupAttributes;
  [(MBSBackupAttributes *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MBSBackupAttributes;
  return [NSString stringWithFormat:@"%@ %@", [(MBSBackupAttributes *)&v3 description], [(MBSBackupAttributes *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  deviceClass = self->_deviceClass;
  if (deviceClass)
  {
    [v3 setObject:deviceClass forKey:@"deviceClass"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"productType"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKey:@"serialNumber"];
  }

  deviceColor = self->_deviceColor;
  if (deviceColor)
  {
    [v4 setObject:deviceColor forKey:@"deviceColor"];
  }

  hardwareModel = self->_hardwareModel;
  if (hardwareModel)
  {
    [v4 setObject:hardwareModel forKey:@"hardwareModel"];
  }

  marketingName = self->_marketingName;
  if (marketingName)
  {
    [v4 setObject:marketingName forKey:@"marketingName"];
  }

  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (deviceEnclosureColor)
  {
    [v4 setObject:deviceEnclosureColor forKey:@"deviceEnclosureColor"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_deviceClass)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceColor)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hardwareModel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_marketingName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceEnclosureColor)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  if (self->_deviceClass)
  {
    [to setDeviceClass:?];
  }

  if (self->_productType)
  {
    [to setProductType:?];
  }

  if (self->_serialNumber)
  {
    [to setSerialNumber:?];
  }

  if (self->_deviceColor)
  {
    [to setDeviceColor:?];
  }

  if (self->_hardwareModel)
  {
    [to setHardwareModel:?];
  }

  if (self->_marketingName)
  {
    [to setMarketingName:?];
  }

  if (self->_deviceEnclosureColor)
  {

    [to setDeviceEnclosureColor:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[1] = [(NSString *)self->_deviceClass copyWithZone:zone];
  v5[6] = [(NSString *)self->_productType copyWithZone:zone];

  v5[7] = [(NSString *)self->_serialNumber copyWithZone:zone];
  v5[2] = [(NSString *)self->_deviceColor copyWithZone:zone];

  v5[4] = [(NSString *)self->_hardwareModel copyWithZone:zone];
  v5[5] = [(NSString *)self->_marketingName copyWithZone:zone];

  v5[3] = [(NSString *)self->_deviceEnclosureColor copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    deviceClass = self->_deviceClass;
    if (!(deviceClass | *(equal + 1)) || (v5 = [(NSString *)deviceClass isEqual:?]) != 0)
    {
      productType = self->_productType;
      if (!(productType | *(equal + 6)) || (v5 = [(NSString *)productType isEqual:?]) != 0)
      {
        serialNumber = self->_serialNumber;
        if (!(serialNumber | *(equal + 7)) || (v5 = [(NSString *)serialNumber isEqual:?]) != 0)
        {
          deviceColor = self->_deviceColor;
          if (!(deviceColor | *(equal + 2)) || (v5 = [(NSString *)deviceColor isEqual:?]) != 0)
          {
            hardwareModel = self->_hardwareModel;
            if (!(hardwareModel | *(equal + 4)) || (v5 = [(NSString *)hardwareModel isEqual:?]) != 0)
            {
              marketingName = self->_marketingName;
              if (!(marketingName | *(equal + 5)) || (v5 = [(NSString *)marketingName isEqual:?]) != 0)
              {
                deviceEnclosureColor = self->_deviceEnclosureColor;
                if (deviceEnclosureColor | *(equal + 3))
                {

                  LOBYTE(v5) = [(NSString *)deviceEnclosureColor isEqual:?];
                }

                else
                {
                  LOBYTE(v5) = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceClass hash];
  v4 = [(NSString *)self->_productType hash]^ v3;
  v5 = [(NSString *)self->_serialNumber hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_deviceColor hash];
  v7 = [(NSString *)self->_hardwareModel hash];
  v8 = v7 ^ [(NSString *)self->_marketingName hash];
  return v6 ^ v8 ^ [(NSString *)self->_deviceEnclosureColor hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(MBSBackupAttributes *)self setDeviceClass:?];
  }

  if (*(from + 6))
  {
    [(MBSBackupAttributes *)self setProductType:?];
  }

  if (*(from + 7))
  {
    [(MBSBackupAttributes *)self setSerialNumber:?];
  }

  if (*(from + 2))
  {
    [(MBSBackupAttributes *)self setDeviceColor:?];
  }

  if (*(from + 4))
  {
    [(MBSBackupAttributes *)self setHardwareModel:?];
  }

  if (*(from + 5))
  {
    [(MBSBackupAttributes *)self setMarketingName:?];
  }

  if (*(from + 3))
  {

    [(MBSBackupAttributes *)self setDeviceEnclosureColor:?];
  }
}

@end
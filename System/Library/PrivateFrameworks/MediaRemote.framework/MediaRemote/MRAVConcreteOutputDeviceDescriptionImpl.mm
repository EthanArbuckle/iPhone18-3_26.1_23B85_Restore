@interface MRAVConcreteOutputDeviceDescriptionImpl
- (MRAVConcreteOutputDeviceDescriptionImpl)initWithAVDescription:(id)description;
- (unsigned)deviceSubtype;
- (unsigned)deviceType;
@end

@implementation MRAVConcreteOutputDeviceDescriptionImpl

- (unsigned)deviceSubtype
{
  deviceSubType = [(AVOutputDeviceDescription *)self->_avDescription deviceSubType];

  return MRAVOutputDeviceSubtypeFromAVSubtype(deviceSubType);
}

- (unsigned)deviceType
{
  deviceType = [(AVOutputDeviceDescription *)self->_avDescription deviceType];

  return MRAVOutputDeviceTypeFromAVType(deviceType);
}

- (MRAVConcreteOutputDeviceDescriptionImpl)initWithAVDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = MRAVConcreteOutputDeviceDescriptionImpl;
  v6 = [(MRAVConcreteOutputDeviceDescriptionImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avDescription, description);
  }

  return v7;
}

@end
@interface MRAVConcreteOutputDeviceDescriptionImpl
- (MRAVConcreteOutputDeviceDescriptionImpl)initWithAVDescription:(id)a3;
- (unsigned)deviceSubtype;
- (unsigned)deviceType;
@end

@implementation MRAVConcreteOutputDeviceDescriptionImpl

- (unsigned)deviceSubtype
{
  v2 = [(AVOutputDeviceDescription *)self->_avDescription deviceSubType];

  return MRAVOutputDeviceSubtypeFromAVSubtype(v2);
}

- (unsigned)deviceType
{
  v2 = [(AVOutputDeviceDescription *)self->_avDescription deviceType];

  return MRAVOutputDeviceTypeFromAVType(v2);
}

- (MRAVConcreteOutputDeviceDescriptionImpl)initWithAVDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRAVConcreteOutputDeviceDescriptionImpl;
  v6 = [(MRAVConcreteOutputDeviceDescriptionImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avDescription, a3);
  }

  return v7;
}

@end
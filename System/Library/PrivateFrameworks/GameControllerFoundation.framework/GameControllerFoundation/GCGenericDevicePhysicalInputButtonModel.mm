@interface GCGenericDevicePhysicalInputButtonModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDevicePhysicalInputButtonModel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDevicePhysicalInputButtonModel

- (GCGenericDevicePhysicalInputButtonModel)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = GCGenericDevicePhysicalInputButtonModel;
  v3 = a3;
  v4 = [(GCGenericDevicePhysicalInputElementModel *)&v9 initWithCoder:v3];
  [v3 decodeDoubleForKey:{@"pressedThreshold", v9.receiver, v9.super_class}];
  v4->_pressedThreshold = v5;
  [v3 decodeDoubleForKey:@"touchedThreshold"];
  v4->_touchedThreshold = v6;
  v4->_sourcePressedValueExtendedEventFieldIndex = [v3 decodeIntegerForKey:@"sourcePressedValueExtendedEventFieldIndex"];
  v7 = [v3 decodeIntegerForKey:@"sourceTouchedValueExtendedEventFieldIndex"];

  v4->_sourceTouchedValueExtendedEventFieldIndex = v7;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCGenericDevicePhysicalInputButtonModel;
  v4 = a3;
  [(GCGenericDevicePhysicalInputElementModel *)&v5 encodeWithCoder:v4];
  [(GCGenericDevicePhysicalInputButtonModel *)self pressedThreshold:v5.receiver];
  [v4 encodeDouble:@"pressedThreshold" forKey:?];
  [(GCGenericDevicePhysicalInputButtonModel *)self touchedThreshold];
  [v4 encodeDouble:@"touchedThreshold" forKey:?];
  [v4 encodeInteger:-[GCGenericDevicePhysicalInputButtonModel sourcePressedValueExtendedEventFieldIndex](self forKey:{"sourcePressedValueExtendedEventFieldIndex"), @"sourcePressedValueExtendedEventFieldIndex"}];
  [v4 encodeInteger:-[GCGenericDevicePhysicalInputButtonModel sourceTouchedValueExtendedEventFieldIndex](self forKey:{"sourceTouchedValueExtendedEventFieldIndex"), @"sourceTouchedValueExtendedEventFieldIndex"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GCGenericDevicePhysicalInputButtonModel;
  if (-[GCGenericDevicePhysicalInputElementModel isEqual:](&v15, sel_isEqual_, v4) && (-[GCGenericDevicePhysicalInputButtonModel pressedThreshold](self, "pressedThreshold"), v6 = v5, [v4 pressedThreshold], v6 == v7) && (-[GCGenericDevicePhysicalInputButtonModel touchedThreshold](self, "touchedThreshold"), v9 = v8, objc_msgSend(v4, "touchedThreshold"), v9 == v10) && (v11 = -[GCGenericDevicePhysicalInputButtonModel sourcePressedValueExtendedEventFieldIndex](self, "sourcePressedValueExtendedEventFieldIndex"), v11 == objc_msgSend(v4, "sourcePressedValueExtendedEventFieldIndex")))
  {
    v12 = [(GCGenericDevicePhysicalInputButtonModel *)self sourceTouchedValueExtendedEventFieldIndex];
    v13 = v12 == [v4 sourceTouchedValueExtendedEventFieldIndex];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
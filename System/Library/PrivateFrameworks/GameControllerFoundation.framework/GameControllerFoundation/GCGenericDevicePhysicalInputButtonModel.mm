@interface GCGenericDevicePhysicalInputButtonModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDevicePhysicalInputButtonModel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDevicePhysicalInputButtonModel

- (GCGenericDevicePhysicalInputButtonModel)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = GCGenericDevicePhysicalInputButtonModel;
  coderCopy = coder;
  v4 = [(GCGenericDevicePhysicalInputElementModel *)&v9 initWithCoder:coderCopy];
  [coderCopy decodeDoubleForKey:{@"pressedThreshold", v9.receiver, v9.super_class}];
  v4->_pressedThreshold = v5;
  [coderCopy decodeDoubleForKey:@"touchedThreshold"];
  v4->_touchedThreshold = v6;
  v4->_sourcePressedValueExtendedEventFieldIndex = [coderCopy decodeIntegerForKey:@"sourcePressedValueExtendedEventFieldIndex"];
  v7 = [coderCopy decodeIntegerForKey:@"sourceTouchedValueExtendedEventFieldIndex"];

  v4->_sourceTouchedValueExtendedEventFieldIndex = v7;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GCGenericDevicePhysicalInputButtonModel;
  coderCopy = coder;
  [(GCGenericDevicePhysicalInputElementModel *)&v5 encodeWithCoder:coderCopy];
  [(GCGenericDevicePhysicalInputButtonModel *)self pressedThreshold:v5.receiver];
  [coderCopy encodeDouble:@"pressedThreshold" forKey:?];
  [(GCGenericDevicePhysicalInputButtonModel *)self touchedThreshold];
  [coderCopy encodeDouble:@"touchedThreshold" forKey:?];
  [coderCopy encodeInteger:-[GCGenericDevicePhysicalInputButtonModel sourcePressedValueExtendedEventFieldIndex](self forKey:{"sourcePressedValueExtendedEventFieldIndex"), @"sourcePressedValueExtendedEventFieldIndex"}];
  [coderCopy encodeInteger:-[GCGenericDevicePhysicalInputButtonModel sourceTouchedValueExtendedEventFieldIndex](self forKey:{"sourceTouchedValueExtendedEventFieldIndex"), @"sourceTouchedValueExtendedEventFieldIndex"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = GCGenericDevicePhysicalInputButtonModel;
  if (-[GCGenericDevicePhysicalInputElementModel isEqual:](&v15, sel_isEqual_, equalCopy) && (-[GCGenericDevicePhysicalInputButtonModel pressedThreshold](self, "pressedThreshold"), v6 = v5, [equalCopy pressedThreshold], v6 == v7) && (-[GCGenericDevicePhysicalInputButtonModel touchedThreshold](self, "touchedThreshold"), v9 = v8, objc_msgSend(equalCopy, "touchedThreshold"), v9 == v10) && (v11 = -[GCGenericDevicePhysicalInputButtonModel sourcePressedValueExtendedEventFieldIndex](self, "sourcePressedValueExtendedEventFieldIndex"), v11 == objc_msgSend(equalCopy, "sourcePressedValueExtendedEventFieldIndex")))
  {
    sourceTouchedValueExtendedEventFieldIndex = [(GCGenericDevicePhysicalInputButtonModel *)self sourceTouchedValueExtendedEventFieldIndex];
    v13 = sourceTouchedValueExtendedEventFieldIndex == [equalCopy sourceTouchedValueExtendedEventFieldIndex];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
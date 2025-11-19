@interface GCGenericDevicePhysicalInputDpadModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDevicePhysicalInputDpadModel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDevicePhysicalInputDpadModel

- (GCGenericDevicePhysicalInputDpadModel)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GCGenericDevicePhysicalInputDpadModel;
  v3 = a3;
  v4 = [(GCGenericDevicePhysicalInputElementModel *)&v7 initWithCoder:v3];
  v4->_sourceUpExtendedEventFieldIndex = [v3 decodeIntegerForKey:{@"sourceUpExtendedEventFieldIndex", v7.receiver, v7.super_class}];
  v4->_sourceDownExtendedEventFieldIndex = [v3 decodeIntegerForKey:@"sourceDownExtendedEventFieldIndex"];
  v4->_sourceLeftExtendedEventFieldIndex = [v3 decodeIntegerForKey:@"sourceLeftExtendedEventFieldIndex"];
  v5 = [v3 decodeIntegerForKey:@"sourceRightExtendedEventFieldIndex"];

  v4->_sourceRightExtendedEventFieldIndex = v5;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCGenericDevicePhysicalInputDpadModel;
  v4 = a3;
  [(GCGenericDevicePhysicalInputElementModel *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[GCGenericDevicePhysicalInputDpadModel sourceUpExtendedEventFieldIndex](self forKey:{"sourceUpExtendedEventFieldIndex", v5.receiver, v5.super_class), @"sourceUpExtendedEventFieldIndex"}];
  [v4 encodeInteger:-[GCGenericDevicePhysicalInputDpadModel sourceDownExtendedEventFieldIndex](self forKey:{"sourceDownExtendedEventFieldIndex"), @"sourceDownExtendedEventFieldIndex"}];
  [v4 encodeInteger:-[GCGenericDevicePhysicalInputDpadModel sourceLeftExtendedEventFieldIndex](self forKey:{"sourceLeftExtendedEventFieldIndex"), @"sourceLeftExtendedEventFieldIndex"}];
  [v4 encodeInteger:-[GCGenericDevicePhysicalInputDpadModel sourceRightExtendedEventFieldIndex](self forKey:{"sourceRightExtendedEventFieldIndex"), @"sourceRightExtendedEventFieldIndex"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GCGenericDevicePhysicalInputDpadModel;
  if (-[GCGenericDevicePhysicalInputElementModel isEqual:](&v11, sel_isEqual_, v4) && (v5 = -[GCGenericDevicePhysicalInputDpadModel sourceUpExtendedEventFieldIndex](self, "sourceUpExtendedEventFieldIndex"), v5 == [v4 sourceUpExtendedEventFieldIndex]) && (v6 = -[GCGenericDevicePhysicalInputDpadModel sourceDownExtendedEventFieldIndex](self, "sourceDownExtendedEventFieldIndex"), v6 == objc_msgSend(v4, "sourceDownExtendedEventFieldIndex")) && (v7 = -[GCGenericDevicePhysicalInputDpadModel sourceLeftExtendedEventFieldIndex](self, "sourceLeftExtendedEventFieldIndex"), v7 == objc_msgSend(v4, "sourceLeftExtendedEventFieldIndex")))
  {
    v8 = [(GCGenericDevicePhysicalInputDpadModel *)self sourceRightExtendedEventFieldIndex];
    v9 = v8 == [v4 sourceRightExtendedEventFieldIndex];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
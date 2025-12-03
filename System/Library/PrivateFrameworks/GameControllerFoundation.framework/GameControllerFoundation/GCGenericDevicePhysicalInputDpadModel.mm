@interface GCGenericDevicePhysicalInputDpadModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDevicePhysicalInputDpadModel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDevicePhysicalInputDpadModel

- (GCGenericDevicePhysicalInputDpadModel)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = GCGenericDevicePhysicalInputDpadModel;
  coderCopy = coder;
  v4 = [(GCGenericDevicePhysicalInputElementModel *)&v7 initWithCoder:coderCopy];
  v4->_sourceUpExtendedEventFieldIndex = [coderCopy decodeIntegerForKey:{@"sourceUpExtendedEventFieldIndex", v7.receiver, v7.super_class}];
  v4->_sourceDownExtendedEventFieldIndex = [coderCopy decodeIntegerForKey:@"sourceDownExtendedEventFieldIndex"];
  v4->_sourceLeftExtendedEventFieldIndex = [coderCopy decodeIntegerForKey:@"sourceLeftExtendedEventFieldIndex"];
  v5 = [coderCopy decodeIntegerForKey:@"sourceRightExtendedEventFieldIndex"];

  v4->_sourceRightExtendedEventFieldIndex = v5;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GCGenericDevicePhysicalInputDpadModel;
  coderCopy = coder;
  [(GCGenericDevicePhysicalInputElementModel *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[GCGenericDevicePhysicalInputDpadModel sourceUpExtendedEventFieldIndex](self forKey:{"sourceUpExtendedEventFieldIndex", v5.receiver, v5.super_class), @"sourceUpExtendedEventFieldIndex"}];
  [coderCopy encodeInteger:-[GCGenericDevicePhysicalInputDpadModel sourceDownExtendedEventFieldIndex](self forKey:{"sourceDownExtendedEventFieldIndex"), @"sourceDownExtendedEventFieldIndex"}];
  [coderCopy encodeInteger:-[GCGenericDevicePhysicalInputDpadModel sourceLeftExtendedEventFieldIndex](self forKey:{"sourceLeftExtendedEventFieldIndex"), @"sourceLeftExtendedEventFieldIndex"}];
  [coderCopy encodeInteger:-[GCGenericDevicePhysicalInputDpadModel sourceRightExtendedEventFieldIndex](self forKey:{"sourceRightExtendedEventFieldIndex"), @"sourceRightExtendedEventFieldIndex"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = GCGenericDevicePhysicalInputDpadModel;
  if (-[GCGenericDevicePhysicalInputElementModel isEqual:](&v11, sel_isEqual_, equalCopy) && (v5 = -[GCGenericDevicePhysicalInputDpadModel sourceUpExtendedEventFieldIndex](self, "sourceUpExtendedEventFieldIndex"), v5 == [equalCopy sourceUpExtendedEventFieldIndex]) && (v6 = -[GCGenericDevicePhysicalInputDpadModel sourceDownExtendedEventFieldIndex](self, "sourceDownExtendedEventFieldIndex"), v6 == objc_msgSend(equalCopy, "sourceDownExtendedEventFieldIndex")) && (v7 = -[GCGenericDevicePhysicalInputDpadModel sourceLeftExtendedEventFieldIndex](self, "sourceLeftExtendedEventFieldIndex"), v7 == objc_msgSend(equalCopy, "sourceLeftExtendedEventFieldIndex")))
  {
    sourceRightExtendedEventFieldIndex = [(GCGenericDevicePhysicalInputDpadModel *)self sourceRightExtendedEventFieldIndex];
    v9 = sourceRightExtendedEventFieldIndex == [equalCopy sourceRightExtendedEventFieldIndex];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
@interface ULLabelWiFi
- (BOOL)isEqual:(id)equal;
- (ULLabelWiFi)initWithCoder:(id)coder;
- (ULLabelWiFi)initWithName:(id)name rssi:(int64_t)rssi;
- (ULLabelWiFi)initWithName:(id)name rssi:(int64_t)rssi timestamp:(id)timestamp coordinates:(id)coordinates probabilityVector:(id)vector imageIdentifiersVector:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULLabelWiFi

- (ULLabelWiFi)initWithName:(id)name rssi:(int64_t)rssi
{
  v6 = MEMORY[0x277CBEAA8];
  nameCopy = name;
  v8 = [v6 now];
  array = [MEMORY[0x277CBEA60] array];
  array2 = [MEMORY[0x277CBEA60] array];
  v11 = [(ULLabelWiFi *)self initWithName:nameCopy rssi:rssi timestamp:v8 coordinates:array probabilityVector:array2 imageIdentifiersVector:*&ULCoordinatesNotAvailable];

  return v11;
}

- (ULLabelWiFi)initWithName:(id)name rssi:(int64_t)rssi timestamp:(id)timestamp coordinates:(id)coordinates probabilityVector:(id)vector imageIdentifiersVector:
{
  v11.receiver = self;
  v11.super_class = ULLabelWiFi;
  v8 = [(ULLabel *)&v11 initWithName:name timestamp:timestamp contextLayer:@"ULContextLayerTypeWiFi" deviceClass:0 coordinates:coordinates probabilityVector:vector imageIdentifiersVector:?];
  v9 = v8;
  if (v8)
  {
    [(ULLabelWiFi *)v8 setRssi:rssi];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  name = [(ULLabel *)self name];
  rssi = [(ULLabelWiFi *)self rssi];
  timestamp = [(ULLabel *)self timestamp];
  [(ULLabel *)self coordinates];
  v13 = v8;
  probabilityVector = [(ULLabel *)self probabilityVector];
  imageIdentifiersVector = [(ULLabel *)self imageIdentifiersVector];
  v11 = [v4 initWithName:name rssi:rssi timestamp:timestamp coordinates:probabilityVector probabilityVector:imageIdentifiersVector imageIdentifiersVector:v13];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ULLabelWiFi;
  coderCopy = coder;
  [(ULLabel *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{self->_rssi, v6.receiver, v6.super_class}];
  [coderCopy encodeObject:v5 forKey:@"rssi"];
}

- (ULLabelWiFi)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ULLabelWiFi;
  v5 = [(ULLabel *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rssi"];
    v7 = v6;
    if (v6)
    {
      integerValue = [(ULLabelWiFi *)v6 integerValue];

      v5->_rssi = integerValue;
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ULLabelWiFi;
  v4 = [(ULLabel *)&v8 description];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ULLabelWiFi rssi](self, "rssi")}];
  v6 = [v3 stringWithFormat:@"%@, rssi: %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = ULLabelWiFi, [(ULLabel *)&v8 isEqual:equalCopy]))
  {
    rssi = [(ULLabelWiFi *)self rssi];
    v6 = rssi == [equalCopy rssi];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = ULLabelWiFi;
  return [(ULLabel *)&v3 hash]^ self->_rssi ^ 0x1F;
}

@end
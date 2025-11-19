@interface ULLabelWiFi
- (BOOL)isEqual:(id)a3;
- (ULLabelWiFi)initWithCoder:(id)a3;
- (ULLabelWiFi)initWithName:(id)a3 rssi:(int64_t)a4;
- (ULLabelWiFi)initWithName:(id)a3 rssi:(int64_t)a4 timestamp:(id)a5 coordinates:(id)a6 probabilityVector:(id)a7 imageIdentifiersVector:;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULLabelWiFi

- (ULLabelWiFi)initWithName:(id)a3 rssi:(int64_t)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 now];
  v9 = [MEMORY[0x277CBEA60] array];
  v10 = [MEMORY[0x277CBEA60] array];
  v11 = [(ULLabelWiFi *)self initWithName:v7 rssi:a4 timestamp:v8 coordinates:v9 probabilityVector:v10 imageIdentifiersVector:*&ULCoordinatesNotAvailable];

  return v11;
}

- (ULLabelWiFi)initWithName:(id)a3 rssi:(int64_t)a4 timestamp:(id)a5 coordinates:(id)a6 probabilityVector:(id)a7 imageIdentifiersVector:
{
  v11.receiver = self;
  v11.super_class = ULLabelWiFi;
  v8 = [(ULLabel *)&v11 initWithName:a3 timestamp:a5 contextLayer:@"ULContextLayerTypeWiFi" deviceClass:0 coordinates:a6 probabilityVector:a7 imageIdentifiersVector:?];
  v9 = v8;
  if (v8)
  {
    [(ULLabelWiFi *)v8 setRssi:a4];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ULLabel *)self name];
  v6 = [(ULLabelWiFi *)self rssi];
  v7 = [(ULLabel *)self timestamp];
  [(ULLabel *)self coordinates];
  v13 = v8;
  v9 = [(ULLabel *)self probabilityVector];
  v10 = [(ULLabel *)self imageIdentifiersVector];
  v11 = [v4 initWithName:v5 rssi:v6 timestamp:v7 coordinates:v9 probabilityVector:v10 imageIdentifiersVector:v13];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ULLabelWiFi;
  v4 = a3;
  [(ULLabel *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{self->_rssi, v6.receiver, v6.super_class}];
  [v4 encodeObject:v5 forKey:@"rssi"];
}

- (ULLabelWiFi)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ULLabelWiFi;
  v5 = [(ULLabel *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rssi"];
    v7 = v6;
    if (v6)
    {
      v8 = [(ULLabelWiFi *)v6 integerValue];

      v5->_rssi = v8;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = ULLabelWiFi, [(ULLabel *)&v8 isEqual:v4]))
  {
    v5 = [(ULLabelWiFi *)self rssi];
    v6 = v5 == [v4 rssi];
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
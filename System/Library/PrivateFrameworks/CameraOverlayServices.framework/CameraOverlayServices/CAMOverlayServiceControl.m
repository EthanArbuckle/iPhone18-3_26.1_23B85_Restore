@interface CAMOverlayServiceControl
- (CAMOverlayServiceControl)init;
- (CAMOverlayServiceControl)initWithCoder:(id)a3;
- (CAMOverlayServiceControl)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAMOverlayServiceControl

- (CAMOverlayServiceControl)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = CAMOverlayServiceControl;
  result = [(CAMAbstractOverlayServiceControl *)&v4 _initWithIdentifier:a3 title:&stru_28432BD98 imageName:&stru_28432BD98];
  if (result)
  {
    result->_captureDeviceProperty = 0;
    result->_rangeScale = 0;
  }

  return result;
}

- (CAMOverlayServiceControl)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [(CAMOverlayServiceControl *)self initWithIdentifier:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(CAMAbstractOverlayServiceControl *)self identifier];
  v6 = [v4 initWithIdentifier:v5];

  v7 = [(CAMOverlayServiceControl *)self valueRange];
  [v6 setValueRange:v7];

  v8 = [(CAMOverlayServiceControl *)self valueFormat];
  [v6 setValueFormat:v8];

  v9 = [(CAMOverlayServiceControl *)self primaryValues];
  [v6 setPrimaryValues:v9];

  v10 = [(CAMAbstractOverlayServiceControl *)self imageName];
  [v6 setImageName:v10];

  v11 = [(CAMAbstractOverlayServiceControl *)self title];
  [v6 setTitle:v11];

  [v6 setRangeScale:{-[CAMOverlayServiceControl rangeScale](self, "rangeScale")}];
  v12 = [(CAMOverlayServiceControl *)self captureDeviceUniqueID];
  [v6 setCaptureDeviceUniqueID:v12];

  [v6 setCaptureDeviceProperty:{-[CAMOverlayServiceControl captureDeviceProperty](self, "captureDeviceProperty")}];
  return v6;
}

- (CAMOverlayServiceControl)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = CAMOverlayServiceControl;
  v5 = [(CAMAbstractOverlayServiceControl *)&v46 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"%@.%@", v12, @"valueRange"];
    v14 = [v4 decodeObjectOfClasses:v9 forKey:v13];
    valueRange = v5->_valueRange;
    v5->_valueRange = v14;

    v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"%@.%@", v19, @"valueFormat"];
    v21 = [v4 decodeObjectOfClasses:v16 forKey:v20];
    valueFormat = v5->_valueFormat;
    v5->_valueFormat = v21;

    v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v24 = MEMORY[0x277CCACA8];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v24 stringWithFormat:@"%@.%@", v26, @"primaryValues"];
    v28 = [v4 decodeObjectOfClasses:v23 forKey:v27];
    primaryValues = v5->_primaryValues;
    v5->_primaryValues = v28;

    v30 = MEMORY[0x277CCACA8];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = [v30 stringWithFormat:@"%@.%@", v32, @"rangeScale"];
    v5->_rangeScale = [v4 decodeIntegerForKey:v33];

    v34 = MEMORY[0x277CCACA8];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v34 stringWithFormat:@"%@.%@", v36, @"captureDeviceProperty"];
    v5->_captureDeviceProperty = [v4 decodeIntegerForKey:v37];

    v38 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v39 = MEMORY[0x277CCACA8];
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = [v39 stringWithFormat:@"%@.%@", v41, @"captureDeviceUniqueID"];
    v43 = [v4 decodeObjectOfClasses:v38 forKey:v42];
    captureDeviceUniqueID = v5->_captureDeviceUniqueID;
    v5->_captureDeviceUniqueID = v43;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v35.receiver = self;
  v35.super_class = CAMOverlayServiceControl;
  v4 = a3;
  [(CAMAbstractOverlayServiceControl *)&v35 encodeWithCoder:v4];
  v5 = [(CAMOverlayServiceControl *)self valueRange];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@.%@", v8, @"valueRange", v35.receiver, v35.super_class];
  [v4 encodeObject:v5 forKey:v9];

  v10 = [(CAMOverlayServiceControl *)self valueFormat];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.%@", v13, @"valueFormat"];
  [v4 encodeObject:v10 forKey:v14];

  v15 = [(CAMOverlayServiceControl *)self primaryValues];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v16 stringWithFormat:@"%@.%@", v18, @"primaryValues"];
  [v4 encodeObject:v15 forKey:v19];

  v20 = [(CAMOverlayServiceControl *)self rangeScale];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [v21 stringWithFormat:@"%@.%@", v23, @"rangeScale"];
  [v4 encodeInteger:v20 forKey:v24];

  v25 = [(CAMOverlayServiceControl *)self captureDeviceProperty];
  v26 = MEMORY[0x277CCACA8];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = [v26 stringWithFormat:@"%@.%@", v28, @"captureDeviceProperty"];
  [v4 encodeInteger:v25 forKey:v29];

  v30 = [(CAMOverlayServiceControl *)self captureDeviceUniqueID];
  v31 = MEMORY[0x277CCACA8];
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = [v31 stringWithFormat:@"%@.%@", v33, @"captureDeviceUniqueID"];
  [v4 encodeObject:v30 forKey:v34];
}

@end
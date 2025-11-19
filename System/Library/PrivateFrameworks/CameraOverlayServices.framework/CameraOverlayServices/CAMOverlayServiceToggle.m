@interface CAMOverlayServiceToggle
- (BOOL)isContentEqual:(id)a3;
- (CAMOverlayServiceToggle)initWithCoder:(id)a3;
- (CAMOverlayServiceToggle)initWithIdentifier:(id)a3 title:(id)a4 imageName:(id)a5 onImageName:(id)a6 offImageName:(id)a7;
- (CAMOverlayServiceToggle)initWithIdentifier:(id)a3 toggleType:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAMOverlayServiceToggle

- (CAMOverlayServiceToggle)initWithIdentifier:(id)a3 title:(id)a4 imageName:(id)a5 onImageName:(id)a6 offImageName:(id)a7
{
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = CAMOverlayServiceToggle;
  v15 = [(CAMAbstractOverlayServiceControl *)&v24 _initWithIdentifier:a3 title:a4 imageName:a5];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 7, a6);
    objc_storeStrong(&v16->_offImageName, a7);
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Camoverlayserv.isa)];
    v18 = [v17 localizedStringForKey:@"TOGGLE_ON" value:&stru_28432BD98 table:@"CameraOverlayServices"];
    onTitle = v16->_onTitle;
    v16->_onTitle = v18;

    v20 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Camoverlayserv.isa)];
    v21 = [v20 localizedStringForKey:@"TOGGLE_OFF" value:&stru_28432BD98 table:@"CameraOverlayServices"];
    offTitle = v16->_offTitle;
    v16->_offTitle = v21;

    v16->_toggleType = 0;
  }

  return v16;
}

- (CAMOverlayServiceToggle)initWithIdentifier:(id)a3 toggleType:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v10.receiver = self;
      v10.super_class = CAMOverlayServiceToggle;
      self = [(CAMAbstractOverlayServiceControl *)&v10 _initWithIdentifier:v6 title:&stru_28432BD98 imageName:&stru_28432BD98];
      offImageName = self->_offImageName;
      self->_offImageName = @"lock.open.fill";

      onImageName = self->_onImageName;
      self->_onImageName = @"lock.fill";

      self->_toggleType = 1;
    }
  }

  else
  {

    self = 0;
  }

  return self;
}

- (BOOL)isContentEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CAMOverlayServiceToggle;
  if (-[CAMAbstractOverlayServiceControl isContentEqual:](&v16, sel_isContentEqual_, v4) && (toggleType = self->_toggleType, toggleType == [v4 toggleType]))
  {
    onTitle = self->_onTitle;
    v7 = [v4 onTitle];
    if ([(NSString *)onTitle isEqualToString:v7])
    {
      offTitle = self->_offTitle;
      v9 = [v4 offTitle];
      if ([(NSString *)offTitle isEqualToString:v9])
      {
        offImageName = self->_offImageName;
        v11 = [v4 offImageName];
        if ([(NSString *)offImageName isEqualToString:v11])
        {
          onImageName = self->_onImageName;
          v13 = [v4 onImageName];
          v14 = [(NSString *)onImageName isEqualToString:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v30.receiver = self;
  v30.super_class = CAMOverlayServiceToggle;
  v4 = a3;
  [(CAMAbstractOverlayServiceControl *)&v30 encodeWithCoder:v4];
  v5 = [(CAMOverlayServiceToggle *)self onImageName];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@.%@", v8, @"onImageName", v30.receiver, v30.super_class];
  [v4 encodeObject:v5 forKey:v9];

  v10 = [(CAMOverlayServiceToggle *)self offImageName];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.%@", v13, @"offImageName"];
  [v4 encodeObject:v10 forKey:v14];

  v15 = [(CAMOverlayServiceToggle *)self onTitle];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v16 stringWithFormat:@"%@.%@", v18, @"onTitle"];
  [v4 encodeObject:v15 forKey:v19];

  v20 = [(CAMOverlayServiceToggle *)self offTitle];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [v21 stringWithFormat:@"%@.%@", v23, @"offTitle"];
  [v4 encodeObject:v20 forKey:v24];

  v25 = [(CAMOverlayServiceToggle *)self toggleType];
  v26 = MEMORY[0x277CCACA8];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = [v26 stringWithFormat:@"%@.%@", v28, @"toggleType"];
  [v4 encodeInteger:v25 forKey:v29];
}

- (CAMOverlayServiceToggle)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@.%@", v7, @"toggleType"];
  v55 = [v5 decodeIntegerForKey:v8];

  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@.%@", v12, @"identifier"];
  v57 = [v5 decodeObjectOfClasses:v9 forKey:v13];

  v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"%@.%@", v17, @"title"];
  v56 = [v5 decodeObjectOfClasses:v14 forKey:v18];

  v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v20 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [v20 stringWithFormat:@"%@.%@", v22, @"imageName"];
  v54 = [v5 decodeObjectOfClasses:v19 forKey:v23];

  v24 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v25 = MEMORY[0x277CCACA8];
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [v25 stringWithFormat:@"%@.%@", v27, @"onImageName"];
  v53 = [v5 decodeObjectOfClasses:v24 forKey:v28];

  v29 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v30 = MEMORY[0x277CCACA8];
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = [v30 stringWithFormat:@"%@.%@", v32, @"offImageName"];
  v34 = [v5 decodeObjectOfClasses:v29 forKey:v33];

  v35 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v36 = MEMORY[0x277CCACA8];
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v39 = [v36 stringWithFormat:@"%@.%@", v38, @"onTitle"];
  v40 = [v5 decodeObjectOfClasses:v35 forKey:v39];

  v41 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v42 = MEMORY[0x277CCACA8];
  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  v45 = [v42 stringWithFormat:@"%@.%@", v44, @"offTitle"];
  v46 = [v5 decodeObjectOfClasses:v41 forKey:v45];

  if (v55 == 1)
  {
    v47 = v57;
    if (v57)
    {
      self = [(CAMOverlayServiceToggle *)self initWithIdentifier:v57 toggleType:1];
    }

    goto LABEL_12;
  }

  if (v55)
  {
    v47 = v57;
LABEL_12:
    v48 = v56;
    v50 = v53;
    v49 = v54;
    goto LABEL_13;
  }

  v48 = v56;
  v47 = v57;
  v50 = v53;
  v49 = v54;
  if (v57 && v56 && v54 && v53 && v34)
  {
    self = [(CAMOverlayServiceToggle *)self initWithIdentifier:v57 title:v56 imageName:v54 onImageName:v53 offImageName:v34];
    objc_storeStrong(&self->_onTitle, v40);
    objc_storeStrong(&self->_offTitle, v46);
  }

LABEL_13:
  v51 = [(CAMAbstractOverlayServiceControl *)self identifier];

  if (!v51)
  {

    self = 0;
  }

  return self;
}

@end
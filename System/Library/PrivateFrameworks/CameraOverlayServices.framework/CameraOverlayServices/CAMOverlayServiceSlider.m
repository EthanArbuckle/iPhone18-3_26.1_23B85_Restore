@interface CAMOverlayServiceSlider
- (BOOL)isContentEqual:(id)a3;
- (BOOL)isEnabled;
- (CAMOverlayServiceSlider)initWithCoder:(id)a3;
- (CAMOverlayServiceSlider)initWithIdentifier:(id)a3 title:(id)a4 imageName:(id)a5 rangeScale:(int64_t)a6 valueRange:(id)a7 primaryValues:(id)a8;
- (CAMOverlayServiceSlider)sliderWithPrimaryValues:(id)a3;
- (id)_initWithIdentifier:(id)a3 sliderType:(int64_t)a4 captureUniqueID:(id)a5 zoomRange:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initPhotoZoomSliderWithIdentifier:(id)a3 maximumZoomFactor:(double)a4 captureDeviceUniqueID:(id)a5;
- (id)initVideoZoomSliderWithIdentifier:(id)a3 maximumZoomFactor:(double)a4 captureDeviceUniqueID:(id)a5;
- (id)sliderUnpackingDisplayValuesIfNeeded;
- (id)updateWithFloatValue:(float)a3;
- (id)updateWithStyleDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setValueFormat:(id)a3;
@end

@implementation CAMOverlayServiceSlider

- (CAMOverlayServiceSlider)initWithIdentifier:(id)a3 title:(id)a4 imageName:(id)a5 rangeScale:(int64_t)a6 valueRange:(id)a7 primaryValues:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = CAMOverlayServiceSlider;
  v17 = [(CAMAbstractOverlayServiceControl *)&v20 _initWithIdentifier:a3 title:a4 imageName:a5];
  v18 = v17;
  if (v17)
  {
    v17->_rangeScale = a6;
    objc_storeStrong(&v17->_valueRange, a7);
    objc_storeStrong(&v18->_primaryValues, a8);
    v18->_sliderType = 0;
  }

  return v18;
}

- (id)initPhotoZoomSliderWithIdentifier:(id)a3 maximumZoomFactor:(double)a4 captureDeviceUniqueID:(id)a5
{
  v7 = fmax(a4, 1.0);
  v8 = a5;
  v9 = a3;
  v10 = [[CAMOverlayContinuousFloatRange alloc] initWithMinimum:1.0 maximum:v7];
  v11 = [(CAMOverlayServiceSlider *)self _initWithIdentifier:v9 sliderType:5 captureUniqueID:v8 zoomRange:v10];

  return v11;
}

- (id)initVideoZoomSliderWithIdentifier:(id)a3 maximumZoomFactor:(double)a4 captureDeviceUniqueID:(id)a5
{
  v7 = fmax(a4, 1.0);
  v8 = a5;
  v9 = a3;
  v10 = [[CAMOverlayContinuousFloatRange alloc] initWithMinimum:1.0 maximum:v7];
  v11 = [(CAMOverlayServiceSlider *)self _initWithIdentifier:v9 sliderType:6 captureUniqueID:v8 zoomRange:v10];

  return v11;
}

- (id)_initWithIdentifier:(id)a3 sliderType:(int64_t)a4 captureUniqueID:(id)a5 zoomRange:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 > 3)
  {
    if ((a4 - 5) < 2)
    {
      objc_storeStrong(&self->_captureDeviceUniqueID, a5);
      self->_rangeScale = 1;
      objc_storeStrong(&self->_valueRange, a6);
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Camoverlayserv.isa)];
      v21 = [v14 localizedStringForKey:@"ZOOM_FACTOR_TEXT" value:&stru_28432BD98 table:@"CameraOverlayServices"];
      valueFormat = self->_valueFormat;
      self->_valueFormat = v21;

      v15 = @"crosshair.viewfinder";
      v16 = @"SLIDER_ZOOM";
      goto LABEL_15;
    }

    if (a4 == 4)
    {
      objc_storeStrong(&self->_captureSessionUniqueID, a5);
      v31 = [[CAMOverlayContinuousFloatRange alloc] initWithMinimum:-1.0 maximum:1.0];
      valueRange = self->_valueRange;
      self->_valueRange = v31;

      v14 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Camoverlayserv.isa)];
      v33 = [v14 localizedStringForKey:@"TONE_TEXT" value:&stru_28432BD98 table:@"CameraOverlayServices"];
      v34 = self->_valueFormat;
      self->_valueFormat = v33;

      v15 = @"dot.grid.bottomrighthalf.app";
      v16 = @"SLIDER_STYLE_TONE";
      goto LABEL_15;
    }

    if (a4 == 7)
    {
      objc_storeStrong(&self->_captureDeviceUniqueID, a5);
      v17 = [[CAMOverlayDiscreteFloatRange alloc] initWithValues:&unk_28432E5B0];
      v18 = self->_valueRange;
      self->_valueRange = v17;

      v14 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Camoverlayserv.isa)];
      v19 = [v14 localizedStringForKey:@"ZOOM_FACTOR_TEXT" value:&stru_28432BD98 table:@"CameraOverlayServices"];
      v20 = self->_valueFormat;
      self->_valueFormat = v19;

      v15 = @"camera.aperture";
      v16 = @"SLIDER_LENS";
      goto LABEL_15;
    }
  }

  else
  {
    switch(a4)
    {
      case 1:
        objc_storeStrong(&self->_captureDeviceUniqueID, a5);
        v23 = [[CAMOverlayDiscreteFloatRange alloc] initWithMinimum:-2.0 maximum:2.0 step:0.333333333];
        v24 = self->_valueRange;
        self->_valueRange = v23;

        v25 = [[CAMOverlayDiscreteFloatRange alloc] initWithMinimum:-2.0 maximum:2.0 step:1.0];
        primaryValues = self->_primaryValues;
        self->_primaryValues = v25;

        v14 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Camoverlayserv.isa)];
        v27 = [v14 localizedStringForKey:@"EXPOSURE_BIAS_TEXT" value:&stru_28432BD98 table:@"CameraOverlayServices"];
        v28 = self->_valueFormat;
        self->_valueFormat = v27;

        v15 = @"plusminus";
        v16 = @"SLIDER_EXPOSURE";
        goto LABEL_15;
      case 2:
        objc_storeStrong(&self->_captureSessionUniqueID, a5);
        v29 = [[CAMOverlayContinuousFloatRange alloc] initWithMinimum:-1.0 maximum:1.0];
        v14 = self->_valueRange;
        self->_valueRange = v29;
        v15 = @"swirl.circle.righthalf.filled";
        v16 = @"SLIDER_STYLE_COLOR";
        goto LABEL_15;
      case 3:
        objc_storeStrong(&self->_captureSessionUniqueID, a5);
        v13 = [[CAMOverlayContinuousFloatRange alloc] initWithMinimum:0.0 maximum:1.0];
        v14 = self->_valueRange;
        self->_valueRange = v13;
        v15 = @"lifepreserver";
        v16 = @"SLIDER_STYLE_INTENSITY";
LABEL_15:

        v35 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Camoverlayserv.isa)];
        v36 = [v35 localizedStringForKey:v16 value:&stru_28432BD98 table:@"CameraOverlayServices"];
        v38.receiver = self;
        v38.super_class = CAMOverlayServiceSlider;
        v30 = [(CAMAbstractOverlayServiceControl *)&v38 _initWithIdentifier:v10 title:v36 imageName:v15];

        v30[9] = a4;
        goto LABEL_16;
    }
  }

  v30 = 0;
LABEL_16:

  return v30;
}

- (id)sliderUnpackingDisplayValuesIfNeeded
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = self;
  v3 = [(CAMOverlayServiceSlider *)v2 displayValuesByValue];
  if ([v3 count])
  {
    v4 = [v3 allKeys];
    v5 = [v4 sortedArrayUsingSelector:sel_compare_];

    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = v5;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v44;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(v7);
          }

          values = [v3 objectForKeyedSubscript:{*(*(&v43 + 1) + 8 * i), v43}];
          if ([(NSArray *)v6 count])
          {
            [values doubleValue];
            v14 = v13;
            v15 = [(NSArray *)v6 lastObject];
            [v15 doubleValue];
            v17 = v16;

            if (v14 < v17)
            {

              v23 = v7;
              goto LABEL_17;
            }
          }

          [(NSArray *)v6 addObject:values];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (v6)
    {
      v18 = [(CAMOverlayServiceSlider *)v2 copy];

      if ([(CAMOverlayServiceSlider *)v2 sliderType]== 7)
      {
        v19 = [[CAMOverlayDiscreteFloatRange alloc] initWithValues:v7];
        valueRange = v18->_valueRange;
        v18->_valueRange = v19;

        v21 = [[CAMOverlayDiscreteFloatRange alloc] initWithValues:v6];
        displayValueRange = v18->_displayValueRange;
        v18->_displayValueRange = v21;
      }

      else
      {
        v24 = [CAMOverlayContinuousFloatRange alloc];
        v25 = [(NSArray *)v7 firstObject];
        [v25 doubleValue];
        v27 = v26;
        v28 = [(NSArray *)v7 lastObject];
        [v28 doubleValue];
        v30 = [(CAMOverlayContinuousFloatRange *)v24 initWithMinimum:v27 maximum:v29];
        v31 = v18->_valueRange;
        v18->_valueRange = v30;

        v32 = [CAMOverlayContinuousFloatRange alloc];
        displayValueRange = [(NSArray *)v6 firstObject];
        [displayValueRange doubleValue];
        v34 = v33;
        v35 = [(NSArray *)v6 lastObject];
        [v35 doubleValue];
        v37 = [(CAMOverlayContinuousFloatRange *)v32 initWithMinimum:v34 maximum:v36];
        v38 = v18->_displayValueRange;
        v18->_displayValueRange = v37;
      }

      displayValues = v18->_displayValues;
      v18->_displayValues = v6;
      v23 = v6;

      v40 = v7;
      values = v18->_values;
      v18->_values = v40;
      v2 = v18;
LABEL_17:
    }
  }

  v41 = *MEMORY[0x277D85DE8];

  return v2;
}

- (CAMOverlayServiceSlider)sliderWithPrimaryValues:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayServiceSlider *)self copy];
  v6 = v5[14];
  v5[14] = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(CAMOverlayServiceSlider *)self sliderType];
  v5 = objc_alloc(objc_opt_class());
  v6 = [(CAMAbstractOverlayServiceControl *)self identifier];
  if (v4)
  {
    v7 = [(CAMOverlayServiceSlider *)self sliderType];
    v8 = [(CAMOverlayServiceSlider *)self captureDeviceUniqueID];
    if (v8)
    {
      v9 = [v5 initWithIdentifier:v6 sliderType:v7 captureUniqueID:v8];
    }

    else
    {
      v15 = [(CAMOverlayServiceSlider *)self captureSessionUniqueID];
      v9 = [v5 initWithIdentifier:v6 sliderType:v7 captureUniqueID:v15];
    }

    v16 = [(CAMOverlayServiceSlider *)self primaryValues];
    v6 = v9[14];
    v9[14] = v16;
  }

  else
  {
    v10 = [(CAMAbstractOverlayServiceControl *)self title];
    v11 = [(CAMAbstractOverlayServiceControl *)self imageName];
    v12 = [(CAMOverlayServiceSlider *)self rangeScale];
    v13 = [(CAMOverlayServiceSlider *)self valueRange];
    v14 = [(CAMOverlayServiceSlider *)self primaryValues];
    v9 = [v5 initWithIdentifier:v6 title:v10 imageName:v11 rangeScale:v12 valueRange:v13 primaryValues:v14];
  }

  v17 = [(CAMOverlayServiceSlider *)self displayValuesByValue];
  [v9 setDisplayValuesByValue:v17];

  v18 = [(CAMOverlayServiceSlider *)self valueFormat];
  [v9 setValueFormat:v18];

  [v9 setEnabled:self->super._enabled];
  return v9;
}

- (void)setValueFormat:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v11, @"test"];
    v6 = v11;
    if (v5)
    {
      v7 = [v4 copy];
      valueFormat = self->_valueFormat;
      self->_valueFormat = v7;
    }

    else
    {
      valueFormat = os_log_create("com.apple.camera.overlay", "Client");
      if (os_log_type_enabled(valueFormat, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v13 = v4;
        v14 = 2114;
        v15 = self;
        v16 = 2112;
        v17 = v6;
        _os_log_error_impl(&dword_22E684000, valueFormat, OS_LOG_TYPE_ERROR, "Invalid value format %{public}@ for %{public}@: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v9 = self->_valueFormat;
    self->_valueFormat = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEnabled
{
  v12.receiver = self;
  v12.super_class = CAMOverlayServiceSlider;
  v3 = [(CAMAbstractOverlayServiceControl *)&v12 isEnabled];
  if (v3)
  {
    v4 = [(CAMOverlayFloatValueRange *)self->_valueRange isDiscrete];
    valueRange = self->_valueRange;
    if (v4)
    {
      LOBYTE(v3) = [(CAMOverlayFloatValueRange *)valueRange count]> 1;
    }

    else if ([(CAMOverlayFloatValueRange *)valueRange isFloatingPoint])
    {
      v6 = self->_valueRange;
      [(CAMOverlayFloatValueRange *)v6 minimum];
      v8 = v7;
      [(CAMOverlayFloatValueRange *)v6 maximum];
      v10 = v9;

      LOBYTE(v3) = v8 != v10;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)isContentEqual:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CAMOverlayServiceSlider;
  if ([(CAMAbstractOverlayServiceControl *)&v19 isContentEqual:v4])
  {
    sliderType = self->_sliderType;
    if (sliderType == [v4 sliderType])
    {
      valueRange = self->_valueRange;
      v7 = [v4 valueRange];
      if (![(CAMOverlayFloatValueRange *)valueRange isEqualToRange:v7])
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v8 = 112;
      primaryValues = self->_primaryValues;
      v10 = [v4 primaryValues];
      if (primaryValues != v10)
      {
        v11 = self->_primaryValues;
        v8 = [v4 primaryValues];
        if (![(CAMOverlayDiscreteFloatRange *)v11 isEqualToRange:v8])
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v13 = 128;
      valueFormat = self->_valueFormat;
      v15 = [v4 valueFormat];
      if (valueFormat == v15 || (v16 = self->_valueFormat, [v4 valueFormat], v13 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v16, "isEqualToString:", v13)))
      {
        rangeScale = self->_rangeScale;
        v12 = rangeScale == [v4 rangeScale];
        if (valueFormat == v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = 0;
      }

LABEL_14:
      if (primaryValues == v10)
      {
LABEL_16:

        goto LABEL_17;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (CAMOverlayServiceSlider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@.%@", v7, @"sliderType"];
  v78 = [v4 decodeIntegerForKey:v8];

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"%@.%@", v11, @"rangeScale"];
  v77 = [v4 decodeIntegerForKey:v12];

  v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v14 stringWithFormat:@"%@.%@", v16, @"identifier"];
  v79 = [v4 decodeObjectOfClasses:v13 forKey:v17];

  v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [v19 stringWithFormat:@"%@.%@", v21, @"title"];
  v82 = [v4 decodeObjectOfClasses:v18 forKey:v22];

  v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v24 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = [v24 stringWithFormat:@"%@.%@", v26, @"imageName"];
  v81 = [v4 decodeObjectOfClasses:v23 forKey:v27];

  v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v29 = MEMORY[0x277CCACA8];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v32 = [v29 stringWithFormat:@"%@.%@", v31, @"captureDeviceUniqueID"];
  v84 = [v4 decodeObjectOfClasses:v28 forKey:v32];

  v33 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v34 = MEMORY[0x277CCACA8];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v37 = [v34 stringWithFormat:@"%@.%@", v36, @"captureSessionUniqueID"];
  v80 = [v4 decodeObjectOfClasses:v33 forKey:v37];

  v38 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v39 = MEMORY[0x277CCACA8];
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v42 = [v39 stringWithFormat:@"%@.%@", v41, @"primaryValues"];
  v83 = [v4 decodeObjectOfClasses:v38 forKey:v42];

  v43 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v44 = MEMORY[0x277CCACA8];
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  v47 = [v44 stringWithFormat:@"%@.%@", v46, @"valueFormat"];
  v48 = [v4 decodeObjectOfClasses:v43 forKey:v47];

  v49 = MEMORY[0x277CBEB98];
  v50 = objc_opt_class();
  v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
  v52 = MEMORY[0x277CCACA8];
  v53 = objc_opt_class();
  v54 = NSStringFromClass(v53);
  v55 = [v52 stringWithFormat:@"%@.%@", v54, @"valueRange"];
  v56 = [v4 decodeObjectOfClasses:v51 forKey:v55];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;
  if (v78 > 4)
  {
    if ((v78 - 5) >= 3)
    {
      v59 = v79;
    }

    else
    {
      v59 = v79;
      if (v79 && v84)
      {
        self = [CAMOverlayServiceSlider _initWithIdentifier:"_initWithIdentifier:sliderType:captureUniqueID:zoomRange:" sliderType:v79 captureUniqueID:? zoomRange:?];
        v65 = MEMORY[0x277CBEB98];
        v66 = objc_opt_class();
        v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
        v68 = MEMORY[0x277CCACA8];
        v69 = objc_opt_class();
        v70 = NSStringFromClass(v69);
        v71 = [v68 stringWithFormat:@"%@.%@", v70, @"displayValuesByValue"];
        v72 = [v4 decodeObjectOfClasses:v67 forKey:v71];
        displayValuesByValue = self->_displayValuesByValue;
        self->_displayValuesByValue = v72;
      }
    }

    v62 = v81;
    v61 = v82;
    v60 = v80;
  }

  else if ((v78 - 2) >= 3)
  {
    v59 = v79;
    v60 = v80;
    v62 = v81;
    v61 = v82;
    if (v78)
    {
      if (v78 == 1 && v79 && v84)
      {
        v63 = self;
        v64 = v79;
        goto LABEL_18;
      }
    }

    else if (v79 && v82 && v81 && v56 && v83)
    {
      v74 = [(CAMOverlayServiceSlider *)self initWithIdentifier:v79 title:v82 imageName:v81 rangeScale:v77 valueRange:v56 primaryValues:v83];
      goto LABEL_19;
    }
  }

  else
  {
    v59 = v79;
    v60 = v80;
    v62 = v81;
    v61 = v82;
    if (v79 && v80)
    {
      v63 = self;
      v64 = v79;
LABEL_18:
      v74 = [CAMOverlayServiceSlider initWithIdentifier:v63 sliderType:"initWithIdentifier:sliderType:captureUniqueID:" captureUniqueID:v64];
LABEL_19:
      self = v74;
    }
  }

  if (v48)
  {
    [(CAMOverlayServiceSlider *)self setValueFormat:v48];
  }

  v75 = [(CAMAbstractOverlayServiceControl *)self identifier];

  if (!v75)
  {

    self = 0;
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v45.receiver = self;
  v45.super_class = CAMOverlayServiceSlider;
  v4 = a3;
  [(CAMAbstractOverlayServiceControl *)&v45 encodeWithCoder:v4];
  v5 = [(CAMOverlayServiceSlider *)self sliderType];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@.%@", v8, @"sliderType", v45.receiver, v45.super_class];
  [v4 encodeInteger:v5 forKey:v9];

  v10 = [(CAMOverlayServiceSlider *)self rangeScale];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.%@", v13, @"rangeScale"];
  [v4 encodeInteger:v10 forKey:v14];

  v15 = [(CAMOverlayServiceSlider *)self valueRange];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v16 stringWithFormat:@"%@.%@", v18, @"valueRange"];
  [v4 encodeObject:v15 forKey:v19];

  v20 = [(CAMOverlayServiceSlider *)self primaryValues];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [v21 stringWithFormat:@"%@.%@", v23, @"primaryValues"];
  [v4 encodeObject:v20 forKey:v24];

  v25 = [(CAMOverlayServiceSlider *)self displayValuesByValue];
  v26 = MEMORY[0x277CCACA8];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = [v26 stringWithFormat:@"%@.%@", v28, @"displayValuesByValue"];
  [v4 encodeObject:v25 forKey:v29];

  v30 = [(CAMOverlayServiceSlider *)self captureDeviceUniqueID];
  v31 = MEMORY[0x277CCACA8];
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = [v31 stringWithFormat:@"%@.%@", v33, @"captureDeviceUniqueID"];
  [v4 encodeObject:v30 forKey:v34];

  v35 = [(CAMOverlayServiceSlider *)self captureSessionUniqueID];
  v36 = MEMORY[0x277CCACA8];
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v39 = [v36 stringWithFormat:@"%@.%@", v38, @"captureSessionUniqueID"];
  [v4 encodeObject:v35 forKey:v39];

  v40 = [(CAMOverlayServiceSlider *)self valueFormat];
  v41 = MEMORY[0x277CCACA8];
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  v44 = [v41 stringWithFormat:@"%@.%@", v43, @"valueFormat"];
  [v4 encodeObject:v40 forKey:v44];
}

- (id)updateWithStyleDictionary:(id)a3
{
  v4 = a3;
  if (([(CAMOverlayServiceSlider *)self sliderType]- 2) > 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = [CAMOverlayServiceControlUpdate alloc];
    v6 = [(CAMAbstractOverlayServiceControl *)self identifier];
    v7 = [(CAMOverlayServiceControlUpdate *)v5 _initWithControlIdentifier:v6 styleDictionary:v4];
  }

  return v7;
}

- (id)updateWithFloatValue:(float)a3
{
  v5 = [CAMOverlayServiceControlUpdate alloc];
  v6 = [(CAMAbstractOverlayServiceControl *)self identifier];
  *&v7 = a3;
  v8 = [(CAMOverlayServiceControlUpdate *)v5 _initWithControlIdentifier:v6 floatValue:v7];

  return v8;
}

@end
@interface CAMOverlayServiceSlider
- (BOOL)isContentEqual:(id)equal;
- (BOOL)isEnabled;
- (CAMOverlayServiceSlider)initWithCoder:(id)coder;
- (CAMOverlayServiceSlider)initWithIdentifier:(id)identifier title:(id)title imageName:(id)name rangeScale:(int64_t)scale valueRange:(id)range primaryValues:(id)values;
- (CAMOverlayServiceSlider)sliderWithPrimaryValues:(id)values;
- (id)_initWithIdentifier:(id)identifier sliderType:(int64_t)type captureUniqueID:(id)d zoomRange:(id)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPhotoZoomSliderWithIdentifier:(id)identifier maximumZoomFactor:(double)factor captureDeviceUniqueID:(id)d;
- (id)initVideoZoomSliderWithIdentifier:(id)identifier maximumZoomFactor:(double)factor captureDeviceUniqueID:(id)d;
- (id)sliderUnpackingDisplayValuesIfNeeded;
- (id)updateWithFloatValue:(float)value;
- (id)updateWithStyleDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)setValueFormat:(id)format;
@end

@implementation CAMOverlayServiceSlider

- (CAMOverlayServiceSlider)initWithIdentifier:(id)identifier title:(id)title imageName:(id)name rangeScale:(int64_t)scale valueRange:(id)range primaryValues:(id)values
{
  rangeCopy = range;
  valuesCopy = values;
  v20.receiver = self;
  v20.super_class = CAMOverlayServiceSlider;
  v17 = [(CAMAbstractOverlayServiceControl *)&v20 _initWithIdentifier:identifier title:title imageName:name];
  v18 = v17;
  if (v17)
  {
    v17->_rangeScale = scale;
    objc_storeStrong(&v17->_valueRange, range);
    objc_storeStrong(&v18->_primaryValues, values);
    v18->_sliderType = 0;
  }

  return v18;
}

- (id)initPhotoZoomSliderWithIdentifier:(id)identifier maximumZoomFactor:(double)factor captureDeviceUniqueID:(id)d
{
  v7 = fmax(factor, 1.0);
  dCopy = d;
  identifierCopy = identifier;
  v10 = [[CAMOverlayContinuousFloatRange alloc] initWithMinimum:1.0 maximum:v7];
  v11 = [(CAMOverlayServiceSlider *)self _initWithIdentifier:identifierCopy sliderType:5 captureUniqueID:dCopy zoomRange:v10];

  return v11;
}

- (id)initVideoZoomSliderWithIdentifier:(id)identifier maximumZoomFactor:(double)factor captureDeviceUniqueID:(id)d
{
  v7 = fmax(factor, 1.0);
  dCopy = d;
  identifierCopy = identifier;
  v10 = [[CAMOverlayContinuousFloatRange alloc] initWithMinimum:1.0 maximum:v7];
  v11 = [(CAMOverlayServiceSlider *)self _initWithIdentifier:identifierCopy sliderType:6 captureUniqueID:dCopy zoomRange:v10];

  return v11;
}

- (id)_initWithIdentifier:(id)identifier sliderType:(int64_t)type captureUniqueID:(id)d zoomRange:(id)range
{
  identifierCopy = identifier;
  dCopy = d;
  rangeCopy = range;
  if (type > 3)
  {
    if ((type - 5) < 2)
    {
      objc_storeStrong(&self->_captureDeviceUniqueID, d);
      self->_rangeScale = 1;
      objc_storeStrong(&self->_valueRange, range);
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Camoverlayserv.isa)];
      v21 = [v14 localizedStringForKey:@"ZOOM_FACTOR_TEXT" value:&stru_28432BD98 table:@"CameraOverlayServices"];
      valueFormat = self->_valueFormat;
      self->_valueFormat = v21;

      v15 = @"crosshair.viewfinder";
      v16 = @"SLIDER_ZOOM";
      goto LABEL_15;
    }

    if (type == 4)
    {
      objc_storeStrong(&self->_captureSessionUniqueID, d);
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

    if (type == 7)
    {
      objc_storeStrong(&self->_captureDeviceUniqueID, d);
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
    switch(type)
    {
      case 1:
        objc_storeStrong(&self->_captureDeviceUniqueID, d);
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
        objc_storeStrong(&self->_captureSessionUniqueID, d);
        v29 = [[CAMOverlayContinuousFloatRange alloc] initWithMinimum:-1.0 maximum:1.0];
        v14 = self->_valueRange;
        self->_valueRange = v29;
        v15 = @"swirl.circle.righthalf.filled";
        v16 = @"SLIDER_STYLE_COLOR";
        goto LABEL_15;
      case 3:
        objc_storeStrong(&self->_captureSessionUniqueID, d);
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
        v30 = [(CAMAbstractOverlayServiceControl *)&v38 _initWithIdentifier:identifierCopy title:v36 imageName:v15];

        v30[9] = type;
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
  selfCopy = self;
  displayValuesByValue = [(CAMOverlayServiceSlider *)selfCopy displayValuesByValue];
  if ([displayValuesByValue count])
  {
    allKeys = [displayValuesByValue allKeys];
    v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

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

          values = [displayValuesByValue objectForKeyedSubscript:{*(*(&v43 + 1) + 8 * i), v43}];
          if ([(NSArray *)v6 count])
          {
            [values doubleValue];
            v14 = v13;
            lastObject = [(NSArray *)v6 lastObject];
            [lastObject doubleValue];
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
      v18 = [(CAMOverlayServiceSlider *)selfCopy copy];

      if ([(CAMOverlayServiceSlider *)selfCopy sliderType]== 7)
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
        firstObject = [(NSArray *)v7 firstObject];
        [firstObject doubleValue];
        v27 = v26;
        lastObject2 = [(NSArray *)v7 lastObject];
        [lastObject2 doubleValue];
        v30 = [(CAMOverlayContinuousFloatRange *)v24 initWithMinimum:v27 maximum:v29];
        v31 = v18->_valueRange;
        v18->_valueRange = v30;

        v32 = [CAMOverlayContinuousFloatRange alloc];
        displayValueRange = [(NSArray *)v6 firstObject];
        [displayValueRange doubleValue];
        v34 = v33;
        lastObject3 = [(NSArray *)v6 lastObject];
        [lastObject3 doubleValue];
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
      selfCopy = v18;
LABEL_17:
    }
  }

  v41 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (CAMOverlayServiceSlider)sliderWithPrimaryValues:(id)values
{
  valuesCopy = values;
  v5 = [(CAMOverlayServiceSlider *)self copy];
  v6 = v5[14];
  v5[14] = valuesCopy;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  sliderType = [(CAMOverlayServiceSlider *)self sliderType];
  v5 = objc_alloc(objc_opt_class());
  identifier = [(CAMAbstractOverlayServiceControl *)self identifier];
  if (sliderType)
  {
    sliderType2 = [(CAMOverlayServiceSlider *)self sliderType];
    captureDeviceUniqueID = [(CAMOverlayServiceSlider *)self captureDeviceUniqueID];
    if (captureDeviceUniqueID)
    {
      v9 = [v5 initWithIdentifier:identifier sliderType:sliderType2 captureUniqueID:captureDeviceUniqueID];
    }

    else
    {
      captureSessionUniqueID = [(CAMOverlayServiceSlider *)self captureSessionUniqueID];
      v9 = [v5 initWithIdentifier:identifier sliderType:sliderType2 captureUniqueID:captureSessionUniqueID];
    }

    primaryValues = [(CAMOverlayServiceSlider *)self primaryValues];
    identifier = v9[14];
    v9[14] = primaryValues;
  }

  else
  {
    title = [(CAMAbstractOverlayServiceControl *)self title];
    imageName = [(CAMAbstractOverlayServiceControl *)self imageName];
    rangeScale = [(CAMOverlayServiceSlider *)self rangeScale];
    valueRange = [(CAMOverlayServiceSlider *)self valueRange];
    primaryValues2 = [(CAMOverlayServiceSlider *)self primaryValues];
    v9 = [v5 initWithIdentifier:identifier title:title imageName:imageName rangeScale:rangeScale valueRange:valueRange primaryValues:primaryValues2];
  }

  displayValuesByValue = [(CAMOverlayServiceSlider *)self displayValuesByValue];
  [v9 setDisplayValuesByValue:displayValuesByValue];

  valueFormat = [(CAMOverlayServiceSlider *)self valueFormat];
  [v9 setValueFormat:valueFormat];

  [v9 setEnabled:self->super._enabled];
  return v9;
}

- (void)setValueFormat:(id)format
{
  v18 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  if (formatCopy)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:formatCopy validFormatSpecifiers:@"%@" error:&v11, @"test"];
    v6 = v11;
    if (v5)
    {
      v7 = [formatCopy copy];
      valueFormat = self->_valueFormat;
      self->_valueFormat = v7;
    }

    else
    {
      valueFormat = os_log_create("com.apple.camera.overlay", "Client");
      if (os_log_type_enabled(valueFormat, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v13 = formatCopy;
        v14 = 2114;
        selfCopy = self;
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
  isEnabled = [(CAMAbstractOverlayServiceControl *)&v12 isEnabled];
  if (isEnabled)
  {
    isDiscrete = [(CAMOverlayFloatValueRange *)self->_valueRange isDiscrete];
    valueRange = self->_valueRange;
    if (isDiscrete)
    {
      LOBYTE(isEnabled) = [(CAMOverlayFloatValueRange *)valueRange count]> 1;
    }

    else if ([(CAMOverlayFloatValueRange *)valueRange isFloatingPoint])
    {
      v6 = self->_valueRange;
      [(CAMOverlayFloatValueRange *)v6 minimum];
      v8 = v7;
      [(CAMOverlayFloatValueRange *)v6 maximum];
      v10 = v9;

      LOBYTE(isEnabled) = v8 != v10;
    }

    else
    {
      LOBYTE(isEnabled) = 1;
    }
  }

  return isEnabled;
}

- (BOOL)isContentEqual:(id)equal
{
  equalCopy = equal;
  v19.receiver = self;
  v19.super_class = CAMOverlayServiceSlider;
  if ([(CAMAbstractOverlayServiceControl *)&v19 isContentEqual:equalCopy])
  {
    sliderType = self->_sliderType;
    if (sliderType == [equalCopy sliderType])
    {
      valueRange = self->_valueRange;
      valueRange = [equalCopy valueRange];
      if (![(CAMOverlayFloatValueRange *)valueRange isEqualToRange:valueRange])
      {
        v12 = 0;
LABEL_17:

        goto LABEL_18;
      }

      primaryValues2 = 112;
      primaryValues = self->_primaryValues;
      primaryValues = [equalCopy primaryValues];
      if (primaryValues != primaryValues)
      {
        v11 = self->_primaryValues;
        primaryValues2 = [equalCopy primaryValues];
        if (![(CAMOverlayDiscreteFloatRange *)v11 isEqualToRange:primaryValues2])
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v13 = 128;
      valueFormat = self->_valueFormat;
      valueFormat = [equalCopy valueFormat];
      if (valueFormat == valueFormat || (v16 = self->_valueFormat, [equalCopy valueFormat], v13 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v16, "isEqualToString:", v13)))
      {
        rangeScale = self->_rangeScale;
        v12 = rangeScale == [equalCopy rangeScale];
        if (valueFormat == valueFormat)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = 0;
      }

LABEL_14:
      if (primaryValues == primaryValues)
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

- (CAMOverlayServiceSlider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@.%@", v7, @"sliderType"];
  v78 = [coderCopy decodeIntegerForKey:v8];

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"%@.%@", v11, @"rangeScale"];
  v77 = [coderCopy decodeIntegerForKey:v12];

  v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v14 stringWithFormat:@"%@.%@", v16, @"identifier"];
  v79 = [coderCopy decodeObjectOfClasses:v13 forKey:v17];

  v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [v19 stringWithFormat:@"%@.%@", v21, @"title"];
  v82 = [coderCopy decodeObjectOfClasses:v18 forKey:v22];

  v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v24 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = [v24 stringWithFormat:@"%@.%@", v26, @"imageName"];
  v81 = [coderCopy decodeObjectOfClasses:v23 forKey:v27];

  v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v29 = MEMORY[0x277CCACA8];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v32 = [v29 stringWithFormat:@"%@.%@", v31, @"captureDeviceUniqueID"];
  v84 = [coderCopy decodeObjectOfClasses:v28 forKey:v32];

  v33 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v34 = MEMORY[0x277CCACA8];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v37 = [v34 stringWithFormat:@"%@.%@", v36, @"captureSessionUniqueID"];
  v80 = [coderCopy decodeObjectOfClasses:v33 forKey:v37];

  v38 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v39 = MEMORY[0x277CCACA8];
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v42 = [v39 stringWithFormat:@"%@.%@", v41, @"primaryValues"];
  v83 = [coderCopy decodeObjectOfClasses:v38 forKey:v42];

  v43 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v44 = MEMORY[0x277CCACA8];
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  v47 = [v44 stringWithFormat:@"%@.%@", v46, @"valueFormat"];
  v48 = [coderCopy decodeObjectOfClasses:v43 forKey:v47];

  v49 = MEMORY[0x277CBEB98];
  v50 = objc_opt_class();
  v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
  v52 = MEMORY[0x277CCACA8];
  v53 = objc_opt_class();
  v54 = NSStringFromClass(v53);
  v55 = [v52 stringWithFormat:@"%@.%@", v54, @"valueRange"];
  v56 = [coderCopy decodeObjectOfClasses:v51 forKey:v55];

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
        v72 = [coderCopy decodeObjectOfClasses:v67 forKey:v71];
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
        selfCopy2 = self;
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
      selfCopy2 = self;
      v64 = v79;
LABEL_18:
      v74 = [CAMOverlayServiceSlider initWithIdentifier:selfCopy2 sliderType:"initWithIdentifier:sliderType:captureUniqueID:" captureUniqueID:v64];
LABEL_19:
      self = v74;
    }
  }

  if (v48)
  {
    [(CAMOverlayServiceSlider *)self setValueFormat:v48];
  }

  identifier = [(CAMAbstractOverlayServiceControl *)self identifier];

  if (!identifier)
  {

    self = 0;
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  v45.receiver = self;
  v45.super_class = CAMOverlayServiceSlider;
  coderCopy = coder;
  [(CAMAbstractOverlayServiceControl *)&v45 encodeWithCoder:coderCopy];
  sliderType = [(CAMOverlayServiceSlider *)self sliderType];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"%@.%@", v8, @"sliderType", v45.receiver, v45.super_class];
  [coderCopy encodeInteger:sliderType forKey:v9];

  rangeScale = [(CAMOverlayServiceSlider *)self rangeScale];
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.%@", v13, @"rangeScale"];
  [coderCopy encodeInteger:rangeScale forKey:v14];

  valueRange = [(CAMOverlayServiceSlider *)self valueRange];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v16 stringWithFormat:@"%@.%@", v18, @"valueRange"];
  [coderCopy encodeObject:valueRange forKey:v19];

  primaryValues = [(CAMOverlayServiceSlider *)self primaryValues];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v24 = [v21 stringWithFormat:@"%@.%@", v23, @"primaryValues"];
  [coderCopy encodeObject:primaryValues forKey:v24];

  displayValuesByValue = [(CAMOverlayServiceSlider *)self displayValuesByValue];
  v26 = MEMORY[0x277CCACA8];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = [v26 stringWithFormat:@"%@.%@", v28, @"displayValuesByValue"];
  [coderCopy encodeObject:displayValuesByValue forKey:v29];

  captureDeviceUniqueID = [(CAMOverlayServiceSlider *)self captureDeviceUniqueID];
  v31 = MEMORY[0x277CCACA8];
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  v34 = [v31 stringWithFormat:@"%@.%@", v33, @"captureDeviceUniqueID"];
  [coderCopy encodeObject:captureDeviceUniqueID forKey:v34];

  captureSessionUniqueID = [(CAMOverlayServiceSlider *)self captureSessionUniqueID];
  v36 = MEMORY[0x277CCACA8];
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v39 = [v36 stringWithFormat:@"%@.%@", v38, @"captureSessionUniqueID"];
  [coderCopy encodeObject:captureSessionUniqueID forKey:v39];

  valueFormat = [(CAMOverlayServiceSlider *)self valueFormat];
  v41 = MEMORY[0x277CCACA8];
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  v44 = [v41 stringWithFormat:@"%@.%@", v43, @"valueFormat"];
  [coderCopy encodeObject:valueFormat forKey:v44];
}

- (id)updateWithStyleDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (([(CAMOverlayServiceSlider *)self sliderType]- 2) > 2)
  {
    v7 = 0;
  }

  else
  {
    v5 = [CAMOverlayServiceControlUpdate alloc];
    identifier = [(CAMAbstractOverlayServiceControl *)self identifier];
    v7 = [(CAMOverlayServiceControlUpdate *)v5 _initWithControlIdentifier:identifier styleDictionary:dictionaryCopy];
  }

  return v7;
}

- (id)updateWithFloatValue:(float)value
{
  v5 = [CAMOverlayServiceControlUpdate alloc];
  identifier = [(CAMAbstractOverlayServiceControl *)self identifier];
  *&v7 = value;
  v8 = [(CAMOverlayServiceControlUpdate *)v5 _initWithControlIdentifier:identifier floatValue:v7];

  return v8;
}

@end
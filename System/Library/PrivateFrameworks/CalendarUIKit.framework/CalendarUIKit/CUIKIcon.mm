@interface CUIKIcon
- (CUIKIcon)initWithDate:(id)date calendar:(id)calendar format:(int64_t)format;
- (CUIKIcon)initWithDateComponents:(id)components calendar:(id)calendar format:(int64_t)format forceNoTextEffects:(BOOL)effects;
- (id)_imageForDescriptor:(id)descriptor;
- (id)digestFromISImageDescriptor:(id)descriptor;
- (id)iconImageWithSize:(CGSize)size scale:(double)scale appearance:(int64_t)appearance layers:(unint64_t)layers;
- (id)prepareImageForDescriptor:(id)descriptor;
- (void)getImageForImageDescriptor:(id)descriptor completion:(id)completion;
- (void)prepareImagesForImageDescriptors:(id)descriptors;
@end

@implementation CUIKIcon

- (CUIKIcon)initWithDate:(id)date calendar:(id)calendar format:(int64_t)format
{
  calendarCopy = calendar;
  v9 = [calendarCopy components:542 fromDate:date];
  v10 = [(CUIKIcon *)self initWithDateComponents:v9 calendar:calendarCopy format:format forceNoTextEffects:0];

  return v10;
}

- (CUIKIcon)initWithDateComponents:(id)components calendar:(id)calendar format:(int64_t)format forceNoTextEffects:(BOOL)effects
{
  effectsCopy = effects;
  componentsCopy = components;
  calendarCopy = calendar;
  v28.receiver = self;
  v28.super_class = CUIKIcon;
  _init = [(CUIKIcon *)&v28 _init];
  if (_init)
  {
    v13 = [componentsCopy copy];
    dateComponents = _init->_dateComponents;
    _init->_dateComponents = v13;

    mEMORY[0x1E6992FB0] = [MEMORY[0x1E6992FB0] shared];
    stopTimeDemoModeActive = [mEMORY[0x1E6992FB0] stopTimeDemoModeActive];

    if (stopTimeDemoModeActive)
    {
      mEMORY[0x1E6992FB0]2 = [MEMORY[0x1E6992FB0] shared];
      stopTimeDemoModeComponents = [mEMORY[0x1E6992FB0]2 stopTimeDemoModeComponents];
      v19 = [stopTimeDemoModeComponents copy];
      v20 = _init->_dateComponents;
      _init->_dateComponents = v19;
    }

    v21 = [calendarCopy copy];
    calendar = _init->_calendar;
    _init->_calendar = v21;

    _init->_format = format;
    v23 = objc_opt_new();
    internalIcons = _init->_internalIcons;
    _init->_internalIcons = v23;

    v25 = [objc_msgSend(objc_opt_class() "alloc")];
    iconGenerator = _init->_iconGenerator;
    _init->_iconGenerator = v25;
  }

  return _init;
}

- (id)digestFromISImageDescriptor:(id)descriptor
{
  v3 = MEMORY[0x1E696AEC0];
  descriptorCopy = descriptor;
  v5 = [v3 stringWithFormat:@"%ld:%ld:%ld:%ld", objc_msgSend(descriptorCopy, "appearance"), objc_msgSend(descriptorCopy, "contrast"), objc_msgSend(descriptorCopy, "vibrancy"), objc_msgSend(descriptorCopy, "appearanceVariant")];
  tintColor = [descriptorCopy tintColor];
  digest = [tintColor digest];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(descriptorCopy, "background")];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(descriptorCopy, "specialIconOptions")];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(descriptorCopy, "platformStyle")];
  v11 = MEMORY[0x1E696AEC0];
  [descriptorCopy scale];
  v13 = v12;
  variantOptions = [descriptorCopy variantOptions];
  languageDirection = [descriptorCopy languageDirection];

  v16 = [v11 stringWithFormat:@"%.0f:%d:%@:%lu:%@:%@:%@:%@:%@", v13, variantOptions, 0, languageDirection, v5, digest, v8, v9, v10];
  v17 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v16];

  return v17;
}

- (void)prepareImagesForImageDescriptors:(id)descriptors
{
  v137 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  internalIcons = [(CUIKIcon *)self internalIcons];
  [internalIcons removeAllObjects];

  internalIcon = self->_internalIcon;
  self->_internalIcon = 0;

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = descriptorsCopy;
  v8 = [obj countByEnumeratingWithState:&v112 objects:v136 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0x1E8397000uLL;
    v11 = *v113;
    v99 = v7;
    v109 = *v113;
    do
    {
      v12 = 0;
      v110 = v9;
      do
      {
        if (*v113 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v112 + 1) + 8 * v12);
        [v13 size];
        v15 = v14;
        v17 = v16;
        [v13 scale];
        v19 = v18;
        appearance = [v13 appearance];
        defaultCategory = [*(v10 + 3912) defaultCategory];
        if (os_log_type_enabled(defaultCategory, OS_LOG_TYPE_DEBUG))
        {
          dateComponents = [(CUIKIcon *)self dateComponents];
          calendar = [(CUIKIcon *)self calendar];
          calendarIdentifier = [calendar calendarIdentifier];
          format = [(CUIKIcon *)self format];
          v57 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
          *buf = 138544898;
          v123 = *&dateComponents;
          v124 = 2114;
          v125 = *&calendarIdentifier;
          v126 = 2048;
          v127 = *&format;
          v11 = v109;
          v128 = 2048;
          v129 = v15;
          v130 = 2048;
          v131 = v17;
          v132 = 2048;
          v133 = v19;
          v134 = 2112;
          v135 = v57;
          _os_log_debug_impl(&dword_1CAB19000, defaultCategory, OS_LOG_TYPE_DEBUG, "Request to prepare icon with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

          v7 = v99;
          v9 = v110;

          v10 = 0x1E8397000;
        }

        if (CUIKSolariumIconEnabled_onceToken != -1)
        {
          [CUIKIcon prepareImagesForImageDescriptors:];
        }

        if (CUIKSolariumIconEnabled_solariumIconEnabled != 1)
        {
          defaultCategory3 = [(CUIKIcon *)self iconImageWithSize:appearance scale:7 appearance:v15 layers:v17, v19];
          if (defaultCategory3)
          {
            [v7 addObject:defaultCategory3];
            goto LABEL_49;
          }

          defaultCategory2 = [*(v10 + 3912) defaultCategory];
          if (os_log_type_enabled(defaultCategory2, OS_LOG_TYPE_ERROR))
          {
            dateComponents2 = [(CUIKIcon *)self dateComponents];
            calendar2 = [(CUIKIcon *)self calendar];
            calendarIdentifier2 = [calendar2 calendarIdentifier];
            format2 = [(CUIKIcon *)self format];
            v72 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
            *buf = 138544898;
            v123 = *&dateComponents2;
            v124 = 2114;
            v125 = *&calendarIdentifier2;
            v126 = 2048;
            v127 = *&format2;
            v11 = v109;
            v128 = 2048;
            v129 = v15;
            v130 = 2048;
            v131 = v17;
            v132 = 2048;
            v133 = v19;
            v134 = 2112;
            v135 = v72;
            _os_log_error_impl(&dword_1CAB19000, defaultCategory2, OS_LOG_TYPE_ERROR, "Failed to prepare icon with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

            v9 = v110;
            v10 = 0x1E8397000;
          }

LABEL_25:

          goto LABEL_49;
        }

        v22 = [(CUIKIcon *)self digestFromISImageDescriptor:v13];
        if (!v22)
        {
          defaultCategory3 = [*(v10 + 3912) defaultCategory];
          if (!os_log_type_enabled(defaultCategory3, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          defaultCategory2 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
          *buf = 134218754;
          v123 = v15;
          v124 = 2048;
          v125 = v17;
          v126 = 2048;
          v127 = v19;
          v128 = 2112;
          v129 = *&defaultCategory2;
          _os_log_error_impl(&dword_1CAB19000, defaultCategory3, OS_LOG_TYPE_ERROR, "Failed to generate digest with size: (%f, %f), scale: %f, appearance: %@", buf, 0x2Au);
          goto LABEL_25;
        }

        defaultCategory3 = v22;
        v24 = [(CUIKIcon *)self iconImageWithSize:appearance scale:4 appearance:v15 layers:v17, v19];
        if (v24)
        {
          v25 = objc_alloc(MEMORY[0x1E69A8A18]);
          v121 = v24;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
          defaultCategory4 = [v25 initWithImages:v26];

          if (defaultCategory4)
          {
            [defaultCategory4 setOpacity:1.0];
            white = [MEMORY[0x1E69A8968] white];
            [defaultCategory4 setFillColor:white forAppearance:1];

            white2 = [MEMORY[0x1E69A8968] white];
            [defaultCategory4 setFillColor:white2 forAppearance:2];

            [defaultCategory4 setHasEffects:1];
            dateComponents8 = [(CUIKIcon *)self iconImageWithSize:appearance scale:2 appearance:v15 layers:v17, v19];
            if (dateComponents8)
            {
              v104 = v24;
              v31 = objc_alloc(MEMORY[0x1E69A8A18]);
              v32 = dateComponents8;
              v33 = v31;
              log = v32;
              v120 = v32;
              v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
              v35 = [v33 initWithImages:v34];

              if (v35)
              {
                [v35 setOpacity:1.0];
                v36 = [objc_alloc(MEMORY[0x1E69A8968]) initWithSystemColor:13];
                [v35 setFillColor:v36 forAppearance:2];

                [v35 setHasEffects:1];
                v37 = objc_alloc_init(MEMORY[0x1E69A8A20]);
                [v37 setOpacity:1.0];
                [v37 setHasOverlappingChildSpecularsCombined:0];
                [v37 setHasSpecular:1];
                [v37 setTranslucency:0.3];
                [v37 setTranslucency:1 forAppearance:0.5];
                [v37 setTranslucency:2 forAppearance:0.5];
                [v37 setShadow:0.5];
                [v37 setShadowStyle:1];
                v119 = defaultCategory4;
                v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
                [v37 setLayers:v38];

                v39 = objc_alloc_init(MEMORY[0x1E69A8A20]);
                [v39 setOpacity:1.0];
                [v39 setHasOverlappingChildSpecularsCombined:0];
                [v39 setHasSpecular:0];
                [v39 setShadow:0.5];
                [v39 setShadow:0 forAppearance:0.3];
                [v39 setShadowStyle:1];
                [v39 setShadowStyle:2 forAppearance:0];
                v97 = v35;
                v118 = v35;
                v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
                [v39 setLayers:v40];

                v117[0] = v39;
                v117[1] = v37;
                v41 = 0x1E695D000uLL;
                v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
                v42 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithTypeIdentifier:@"com.apple.application-icon.calendar.base" layerGroups:v95];
                if (v42)
                {
                  v100 = v42;
                  v43 = [v42 prepareImageForDescriptor:v13];
                  v24 = v104;
                  if (v43)
                  {
                    v44 = v43;
                    goto LABEL_42;
                  }

                  v62 = +[CUIKLogSubsystem defaultCategory];
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    dateComponents3 = [(CUIKIcon *)self dateComponents];
                    calendar3 = [(CUIKIcon *)self calendar];
                    calendarIdentifier3 = [calendar3 calendarIdentifier];
                    format3 = [(CUIKIcon *)self format];
                    v79 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
                    *buf = 138544898;
                    v123 = *&dateComponents3;
                    v124 = 2114;
                    v125 = *&calendarIdentifier3;
                    v126 = 2048;
                    v127 = *&format3;
                    v128 = 2048;
                    v129 = v15;
                    v130 = 2048;
                    v131 = v17;
                    v132 = 2048;
                    v133 = v19;
                    v134 = 2112;
                    v135 = v79;
                    v80 = v79;
                    _os_log_error_impl(&dword_1CAB19000, v62, OS_LOG_TYPE_ERROR, "Failed to create image with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@. Falling back on legacy render.", buf, 0x48u);

                    v41 = 0x1E695D000;
                  }

                  v63 = [(CUIKIcon *)self iconImageWithSize:appearance scale:7 appearance:v15 layers:v17, v19];
                  if (v63)
                  {
                    v44 = v63;
                    v64 = objc_alloc(MEMORY[0x1E69A8A00]);
                    v116 = v44;
                    v65 = [*(v41 + 3784) arrayWithObjects:&v116 count:1];
                    v66 = [v64 initWithImages:v65];

                    v100 = v66;
LABEL_42:
                    v7 = v99;
                    internalIcons2 = [(CUIKIcon *)self internalIcons];
                    [internalIcons2 setObject:v100 forKeyedSubscript:defaultCategory3];
                  }

                  else
                  {
                    v44 = +[CUIKLogSubsystem defaultCategory];
                    v7 = v99;
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      dateComponents4 = [(CUIKIcon *)self dateComponents];
                      calendar4 = [(CUIKIcon *)self calendar];
                      calendarIdentifier4 = [calendar4 calendarIdentifier];
                      format4 = [(CUIKIcon *)self format];
                      v73 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
                      *buf = 138544898;
                      v123 = *&dateComponents4;
                      v124 = 2114;
                      v125 = *&calendarIdentifier4;
                      v126 = 2048;
                      v127 = *&format4;
                      v7 = v99;
                      v128 = 2048;
                      v129 = v15;
                      v130 = 2048;
                      v131 = v17;
                      v132 = 2048;
                      v133 = v19;
                      v134 = 2112;
                      v135 = v73;
                      _os_log_error_impl(&dword_1CAB19000, v44, OS_LOG_TYPE_ERROR, "Failed to render legacy image with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);
                    }
                  }

                  v61 = v95;
                }

                else
                {
                  v100 = +[CUIKLogSubsystem defaultCategory];
                  v7 = v99;
                  v24 = v104;
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                  {
                    dateComponents5 = [(CUIKIcon *)self dateComponents];
                    calendar5 = [(CUIKIcon *)self calendar];
                    calendarIdentifier5 = [calendar5 calendarIdentifier];
                    format5 = [(CUIKIcon *)self format];
                    v78 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
                    *buf = 138544898;
                    v123 = *&dateComponents5;
                    v124 = 2114;
                    v125 = *&calendarIdentifier5;
                    v126 = 2048;
                    v127 = *&format5;
                    v128 = 2048;
                    v129 = v15;
                    v130 = 2048;
                    v131 = v17;
                    v132 = 2048;
                    v133 = v19;
                    v134 = 2112;
                    v135 = v78;
                    _os_log_error_impl(&dword_1CAB19000, v100, OS_LOG_TYPE_ERROR, "Failed to create icon with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

                    v7 = v99;
                  }

                  v61 = v95;
                }

                v10 = 0x1E8397000;
                calendar9 = v97;
              }

              else
              {
                v10 = 0x1E8397000uLL;
                v37 = +[CUIKLogSubsystem defaultCategory];
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  dateComponents6 = [(CUIKIcon *)self dateComponents];
                  calendar6 = [(CUIKIcon *)self calendar];
                  calendarIdentifier6 = [calendar6 calendarIdentifier];
                  format6 = [(CUIKIcon *)self format];
                  v75 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
                  *buf = 138544898;
                  v123 = *&dateComponents6;
                  v124 = 2114;
                  v125 = *&calendarIdentifier6;
                  v76 = calendarIdentifier6;
                  v126 = 2048;
                  v127 = *&format6;
                  v10 = 0x1E8397000;
                  v128 = 2048;
                  v129 = v15;
                  v130 = 2048;
                  v131 = v17;
                  v132 = 2048;
                  v133 = v19;
                  v134 = 2112;
                  v135 = v75;
                  _os_log_error_impl(&dword_1CAB19000, v37, OS_LOG_TYPE_ERROR, "Failed to prepare date name layer with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);
                }

                calendar9 = 0;
                v24 = v104;
              }

              dateComponents8 = log;
            }

            else
            {
              v10 = 0x1E8397000uLL;
              calendar9 = +[CUIKLogSubsystem defaultCategory];
              if (os_log_type_enabled(calendar9, OS_LOG_TYPE_ERROR))
              {
                logb = [(CUIKIcon *)self dateComponents];
                calendar7 = [(CUIKIcon *)self calendar];
                calendarIdentifier7 = [calendar7 calendarIdentifier];
                format7 = [(CUIKIcon *)self format];
                v60 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
                *buf = 138544898;
                v123 = *&logb;
                v124 = 2114;
                v125 = *&calendarIdentifier7;
                v126 = 2048;
                v127 = *&format7;
                dateComponents8 = 0;
                v128 = 2048;
                v129 = v15;
                v130 = 2048;
                v131 = v17;
                v132 = 2048;
                v133 = v19;
                v134 = 2112;
                v135 = v60;
                _os_log_error_impl(&dword_1CAB19000, calendar9, OS_LOG_TYPE_ERROR, "Failed to prepare date name image with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

                v10 = 0x1E8397000;
              }
            }

LABEL_46:
          }

          else
          {
            v10 = 0x1E8397000uLL;
            dateComponents8 = +[CUIKLogSubsystem defaultCategory];
            if (os_log_type_enabled(dateComponents8, OS_LOG_TYPE_ERROR))
            {
              dateComponents7 = [(CUIKIcon *)self dateComponents];
              calendar8 = [(CUIKIcon *)self calendar];
              calendarIdentifier8 = [calendar8 calendarIdentifier];
              loga = dateComponents8;
              format8 = [(CUIKIcon *)self format];
              v52 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
              *buf = 138544898;
              v123 = *&dateComponents7;
              v124 = 2114;
              v125 = *&calendarIdentifier8;
              v126 = 2048;
              v127 = *&format8;
              dateComponents8 = loga;
              v128 = 2048;
              v129 = v15;
              v130 = 2048;
              v131 = v17;
              v132 = 2048;
              v133 = v19;
              v134 = 2112;
              v135 = v52;
              _os_log_error_impl(&dword_1CAB19000, loga, OS_LOG_TYPE_ERROR, "Failed to prepare number layer with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

              v10 = 0x1E8397000;
            }
          }

          goto LABEL_48;
        }

        defaultCategory4 = [*(v10 + 3912) defaultCategory];
        if (os_log_type_enabled(defaultCategory4, OS_LOG_TYPE_ERROR))
        {
          dateComponents8 = [(CUIKIcon *)self dateComponents];
          calendar9 = [(CUIKIcon *)self calendar];
          calendarIdentifier9 = [calendar9 calendarIdentifier];
          format9 = [(CUIKIcon *)self format];
          v49 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
          *buf = 138544898;
          v123 = *&dateComponents8;
          v124 = 2114;
          v125 = *&calendarIdentifier9;
          v126 = 2048;
          v127 = *&format9;
          v7 = v99;
          v128 = 2048;
          v129 = v15;
          v130 = 2048;
          v131 = v17;
          v132 = 2048;
          v133 = v19;
          v134 = 2112;
          v135 = v49;
          _os_log_error_impl(&dword_1CAB19000, defaultCategory4, OS_LOG_TYPE_ERROR, "Failed to prepare number image with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

          v10 = 0x1E8397000;
          goto LABEL_46;
        }

LABEL_48:

        v11 = v109;
        v9 = v110;
LABEL_49:

        ++v12;
      }

      while (v9 != v12);
      v81 = [obj countByEnumeratingWithState:&v112 objects:v136 count:16];
      v9 = v81;
    }

    while (v81);
  }

  if ([v7 count])
  {
    v82 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithImages:v7];
    v83 = self->_internalIcon;
    self->_internalIcon = v82;
  }
}

- (id)iconImageWithSize:(CGSize)size scale:(double)scale appearance:(int64_t)appearance layers:(unint64_t)layers
{
  height = size.height;
  width = size.width;
  v46 = *MEMORY[0x1E69E9840];
  if (CUIKSolariumIconEnabled_onceToken != -1)
  {
    CUIKSolariumIconEnabled_cold_1();
  }

  scaleCopy = scale;
  v13 = height;
  v14 = width;
  if (CUIKSolariumIconEnabled_solariumIconEnabled == 1)
  {
    defaultIconSpecification = [MEMORY[0x1E69A8980] defaultIconSpecification];
    v16 = [defaultIconSpecification imageSpecificationForSize:width scale:{height, scale}];
    [v16 size];
    v14 = v17;
    v13 = v18;
    [v16 scale];
    scaleCopy = v19;
  }

  iconGenerator = [(CUIKIcon *)self iconGenerator];
  dateComponents = [(CUIKIcon *)self dateComponents];
  calendar = [(CUIKIcon *)self calendar];
  v23 = [iconGenerator iconImageWithDateComponents:dateComponents calendar:calendar format:-[CUIKIcon format](self size:"format") scale:appearance appearance:layers layers:{v14, v13, scaleCopy}];

  if (v23)
  {
    v24 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:v23 scale:scale];
    CFRelease(v23);
  }

  else
  {
    v25 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      dateComponents2 = [(CUIKIcon *)self dateComponents];
      calendar2 = [(CUIKIcon *)self calendar];
      calendarIdentifier = [calendar2 calendarIdentifier];
      format = [(CUIKIcon *)self format];
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
      v32 = 138544898;
      v33 = dateComponents2;
      v34 = 2114;
      v35 = calendarIdentifier;
      v36 = 2048;
      v37 = format;
      v38 = 2048;
      v39 = width;
      v40 = 2048;
      v41 = height;
      v42 = 2048;
      scaleCopy2 = scale;
      v44 = 2112;
      v45 = v31;
      _os_log_error_impl(&dword_1CAB19000, v25, OS_LOG_TYPE_ERROR, "Failed to prepare icon with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", &v32, 0x48u);
    }

    v24 = 0;
  }

  return v24;
}

- (id)prepareImageForDescriptor:(id)descriptor
{
  v10[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v5 = [(CUIKIcon *)self _imageForDescriptor:descriptorCopy];
  v6 = v5;
  if (!v5 || [v5 placeholder])
  {
    v10[0] = descriptorCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(CUIKIcon *)self prepareImagesForImageDescriptors:v7];

    v8 = [(CUIKIcon *)self _imageForDescriptor:descriptorCopy];

    v6 = v8;
  }

  return v6;
}

- (id)_imageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (CUIKSolariumIconEnabled_onceToken != -1)
  {
    CUIKSolariumIconEnabled_cold_1();
  }

  if (CUIKSolariumIconEnabled_solariumIconEnabled == 1)
  {
    v5 = [(CUIKIcon *)self digestFromISImageDescriptor:descriptorCopy];
    internalIcons = [(CUIKIcon *)self internalIcons];
    v7 = [internalIcons objectForKeyedSubscript:v5];

    v8 = [v7 imageForDescriptor:descriptorCopy];
  }

  else
  {
    v8 = [(ISIcon *)self->_internalIcon imageForDescriptor:descriptorCopy];
  }

  return v8;
}

- (void)getImageForImageDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  v8 = [(CUIKIcon *)self prepareImageForDescriptor:descriptor];
  (*(completion + 2))(completionCopy, v8);
}

@end
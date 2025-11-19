@interface CUIKIcon
- (CUIKIcon)initWithDate:(id)a3 calendar:(id)a4 format:(int64_t)a5;
- (CUIKIcon)initWithDateComponents:(id)a3 calendar:(id)a4 format:(int64_t)a5 forceNoTextEffects:(BOOL)a6;
- (id)_imageForDescriptor:(id)a3;
- (id)digestFromISImageDescriptor:(id)a3;
- (id)iconImageWithSize:(CGSize)a3 scale:(double)a4 appearance:(int64_t)a5 layers:(unint64_t)a6;
- (id)prepareImageForDescriptor:(id)a3;
- (void)getImageForImageDescriptor:(id)a3 completion:(id)a4;
- (void)prepareImagesForImageDescriptors:(id)a3;
@end

@implementation CUIKIcon

- (CUIKIcon)initWithDate:(id)a3 calendar:(id)a4 format:(int64_t)a5
{
  v8 = a4;
  v9 = [v8 components:542 fromDate:a3];
  v10 = [(CUIKIcon *)self initWithDateComponents:v9 calendar:v8 format:a5 forceNoTextEffects:0];

  return v10;
}

- (CUIKIcon)initWithDateComponents:(id)a3 calendar:(id)a4 format:(int64_t)a5 forceNoTextEffects:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v28.receiver = self;
  v28.super_class = CUIKIcon;
  v12 = [(CUIKIcon *)&v28 _init];
  if (v12)
  {
    v13 = [v10 copy];
    dateComponents = v12->_dateComponents;
    v12->_dateComponents = v13;

    v15 = [MEMORY[0x1E6992FB0] shared];
    v16 = [v15 stopTimeDemoModeActive];

    if (v16)
    {
      v17 = [MEMORY[0x1E6992FB0] shared];
      v18 = [v17 stopTimeDemoModeComponents];
      v19 = [v18 copy];
      v20 = v12->_dateComponents;
      v12->_dateComponents = v19;
    }

    v21 = [v11 copy];
    calendar = v12->_calendar;
    v12->_calendar = v21;

    v12->_format = a5;
    v23 = objc_opt_new();
    internalIcons = v12->_internalIcons;
    v12->_internalIcons = v23;

    v25 = [objc_msgSend(objc_opt_class() "alloc")];
    iconGenerator = v12->_iconGenerator;
    v12->_iconGenerator = v25;
  }

  return v12;
}

- (id)digestFromISImageDescriptor:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"%ld:%ld:%ld:%ld", objc_msgSend(v4, "appearance"), objc_msgSend(v4, "contrast"), objc_msgSend(v4, "vibrancy"), objc_msgSend(v4, "appearanceVariant")];
  v6 = [v4 tintColor];
  v7 = [v6 digest];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v4, "background")];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v4, "specialIconOptions")];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v4, "platformStyle")];
  v11 = MEMORY[0x1E696AEC0];
  [v4 scale];
  v13 = v12;
  v14 = [v4 variantOptions];
  v15 = [v4 languageDirection];

  v16 = [v11 stringWithFormat:@"%.0f:%d:%@:%lu:%@:%@:%@:%@:%@", v13, v14, 0, v15, v5, v7, v8, v9, v10];
  v17 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v16];

  return v17;
}

- (void)prepareImagesForImageDescriptors:(id)a3
{
  v137 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CUIKIcon *)self internalIcons];
  [v5 removeAllObjects];

  internalIcon = self->_internalIcon;
  self->_internalIcon = 0;

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = v4;
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
        v20 = [v13 appearance];
        v21 = [*(v10 + 3912) defaultCategory];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v53 = [(CUIKIcon *)self dateComponents];
          v54 = [(CUIKIcon *)self calendar];
          v55 = [v54 calendarIdentifier];
          v56 = [(CUIKIcon *)self format];
          v57 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
          *buf = 138544898;
          v123 = *&v53;
          v124 = 2114;
          v125 = *&v55;
          v126 = 2048;
          v127 = *&v56;
          v11 = v109;
          v128 = 2048;
          v129 = v15;
          v130 = 2048;
          v131 = v17;
          v132 = 2048;
          v133 = v19;
          v134 = 2112;
          v135 = v57;
          _os_log_debug_impl(&dword_1CAB19000, v21, OS_LOG_TYPE_DEBUG, "Request to prepare icon with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

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
          v23 = [(CUIKIcon *)self iconImageWithSize:v20 scale:7 appearance:v15 layers:v17, v19];
          if (v23)
          {
            [v7 addObject:v23];
            goto LABEL_49;
          }

          v45 = [*(v10 + 3912) defaultCategory];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v68 = [(CUIKIcon *)self dateComponents];
            v69 = [(CUIKIcon *)self calendar];
            v70 = [v69 calendarIdentifier];
            v71 = [(CUIKIcon *)self format];
            v72 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
            *buf = 138544898;
            v123 = *&v68;
            v124 = 2114;
            v125 = *&v70;
            v126 = 2048;
            v127 = *&v71;
            v11 = v109;
            v128 = 2048;
            v129 = v15;
            v130 = 2048;
            v131 = v17;
            v132 = 2048;
            v133 = v19;
            v134 = 2112;
            v135 = v72;
            _os_log_error_impl(&dword_1CAB19000, v45, OS_LOG_TYPE_ERROR, "Failed to prepare icon with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

            v9 = v110;
            v10 = 0x1E8397000;
          }

LABEL_25:

          goto LABEL_49;
        }

        v22 = [(CUIKIcon *)self digestFromISImageDescriptor:v13];
        if (!v22)
        {
          v23 = [*(v10 + 3912) defaultCategory];
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          v45 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
          *buf = 134218754;
          v123 = v15;
          v124 = 2048;
          v125 = v17;
          v126 = 2048;
          v127 = v19;
          v128 = 2112;
          v129 = *&v45;
          _os_log_error_impl(&dword_1CAB19000, v23, OS_LOG_TYPE_ERROR, "Failed to generate digest with size: (%f, %f), scale: %f, appearance: %@", buf, 0x2Au);
          goto LABEL_25;
        }

        v23 = v22;
        v24 = [(CUIKIcon *)self iconImageWithSize:v20 scale:4 appearance:v15 layers:v17, v19];
        if (v24)
        {
          v25 = objc_alloc(MEMORY[0x1E69A8A18]);
          v121 = v24;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
          v27 = [v25 initWithImages:v26];

          if (v27)
          {
            [v27 setOpacity:1.0];
            v28 = [MEMORY[0x1E69A8968] white];
            [v27 setFillColor:v28 forAppearance:1];

            v29 = [MEMORY[0x1E69A8968] white];
            [v27 setFillColor:v29 forAppearance:2];

            [v27 setHasEffects:1];
            v30 = [(CUIKIcon *)self iconImageWithSize:v20 scale:2 appearance:v15 layers:v17, v19];
            if (v30)
            {
              v104 = v24;
              v31 = objc_alloc(MEMORY[0x1E69A8A18]);
              v32 = v30;
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
                v119 = v27;
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
                    v94 = [(CUIKIcon *)self dateComponents];
                    v91 = [(CUIKIcon *)self calendar];
                    v88 = [v91 calendarIdentifier];
                    v85 = [(CUIKIcon *)self format];
                    v79 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
                    *buf = 138544898;
                    v123 = *&v94;
                    v124 = 2114;
                    v125 = *&v88;
                    v126 = 2048;
                    v127 = *&v85;
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

                  v63 = [(CUIKIcon *)self iconImageWithSize:v20 scale:7 appearance:v15 layers:v17, v19];
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
                    v67 = [(CUIKIcon *)self internalIcons];
                    [v67 setObject:v100 forKeyedSubscript:v23];
                  }

                  else
                  {
                    v44 = +[CUIKLogSubsystem defaultCategory];
                    v7 = v99;
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                    {
                      v92 = [(CUIKIcon *)self dateComponents];
                      v89 = [(CUIKIcon *)self calendar];
                      v86 = [v89 calendarIdentifier];
                      v84 = [(CUIKIcon *)self format];
                      v73 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
                      *buf = 138544898;
                      v123 = *&v92;
                      v124 = 2114;
                      v125 = *&v86;
                      v126 = 2048;
                      v127 = *&v84;
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
                    v90 = [(CUIKIcon *)self dateComponents];
                    v93 = [(CUIKIcon *)self calendar];
                    v77 = [v93 calendarIdentifier];
                    v87 = [(CUIKIcon *)self format];
                    v78 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
                    *buf = 138544898;
                    v123 = *&v90;
                    v124 = 2114;
                    v125 = *&v77;
                    v126 = 2048;
                    v127 = *&v87;
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
                v46 = v97;
              }

              else
              {
                v10 = 0x1E8397000uLL;
                v37 = +[CUIKLogSubsystem defaultCategory];
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v98 = [(CUIKIcon *)self dateComponents];
                  v103 = [(CUIKIcon *)self calendar];
                  v74 = [v103 calendarIdentifier];
                  v96 = [(CUIKIcon *)self format];
                  v75 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
                  *buf = 138544898;
                  v123 = *&v98;
                  v124 = 2114;
                  v125 = *&v74;
                  v76 = v74;
                  v126 = 2048;
                  v127 = *&v96;
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

                v46 = 0;
                v24 = v104;
              }

              v30 = log;
            }

            else
            {
              v10 = 0x1E8397000uLL;
              v46 = +[CUIKLogSubsystem defaultCategory];
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                logb = [(CUIKIcon *)self dateComponents];
                v102 = [(CUIKIcon *)self calendar];
                v58 = [v102 calendarIdentifier];
                v59 = [(CUIKIcon *)self format];
                v60 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
                *buf = 138544898;
                v123 = *&logb;
                v124 = 2114;
                v125 = *&v58;
                v126 = 2048;
                v127 = *&v59;
                v30 = 0;
                v128 = 2048;
                v129 = v15;
                v130 = 2048;
                v131 = v17;
                v132 = 2048;
                v133 = v19;
                v134 = 2112;
                v135 = v60;
                _os_log_error_impl(&dword_1CAB19000, v46, OS_LOG_TYPE_ERROR, "Failed to prepare date name image with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

                v10 = 0x1E8397000;
              }
            }

LABEL_46:
          }

          else
          {
            v10 = 0x1E8397000uLL;
            v30 = +[CUIKLogSubsystem defaultCategory];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v101 = [(CUIKIcon *)self dateComponents];
              v105 = [(CUIKIcon *)self calendar];
              v50 = [v105 calendarIdentifier];
              loga = v30;
              v51 = [(CUIKIcon *)self format];
              v52 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
              *buf = 138544898;
              v123 = *&v101;
              v124 = 2114;
              v125 = *&v50;
              v126 = 2048;
              v127 = *&v51;
              v30 = loga;
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

        v27 = [*(v10 + 3912) defaultCategory];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v30 = [(CUIKIcon *)self dateComponents];
          v46 = [(CUIKIcon *)self calendar];
          v47 = [v46 calendarIdentifier];
          v48 = [(CUIKIcon *)self format];
          v49 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
          *buf = 138544898;
          v123 = *&v30;
          v124 = 2114;
          v125 = *&v47;
          v126 = 2048;
          v127 = *&v48;
          v7 = v99;
          v128 = 2048;
          v129 = v15;
          v130 = 2048;
          v131 = v17;
          v132 = 2048;
          v133 = v19;
          v134 = 2112;
          v135 = v49;
          _os_log_error_impl(&dword_1CAB19000, v27, OS_LOG_TYPE_ERROR, "Failed to prepare number image with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", buf, 0x48u);

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

- (id)iconImageWithSize:(CGSize)a3 scale:(double)a4 appearance:(int64_t)a5 layers:(unint64_t)a6
{
  height = a3.height;
  width = a3.width;
  v46 = *MEMORY[0x1E69E9840];
  if (CUIKSolariumIconEnabled_onceToken != -1)
  {
    CUIKSolariumIconEnabled_cold_1();
  }

  v12 = a4;
  v13 = height;
  v14 = width;
  if (CUIKSolariumIconEnabled_solariumIconEnabled == 1)
  {
    v15 = [MEMORY[0x1E69A8980] defaultIconSpecification];
    v16 = [v15 imageSpecificationForSize:width scale:{height, a4}];
    [v16 size];
    v14 = v17;
    v13 = v18;
    [v16 scale];
    v12 = v19;
  }

  v20 = [(CUIKIcon *)self iconGenerator];
  v21 = [(CUIKIcon *)self dateComponents];
  v22 = [(CUIKIcon *)self calendar];
  v23 = [v20 iconImageWithDateComponents:v21 calendar:v22 format:-[CUIKIcon format](self size:"format") scale:a5 appearance:a6 layers:{v14, v13, v12}];

  if (v23)
  {
    v24 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:v23 scale:a4];
    CFRelease(v23);
  }

  else
  {
    v25 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = [(CUIKIcon *)self dateComponents];
      v28 = [(CUIKIcon *)self calendar];
      v29 = [v28 calendarIdentifier];
      v30 = [(CUIKIcon *)self format];
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
      v32 = 138544898;
      v33 = v27;
      v34 = 2114;
      v35 = v29;
      v36 = 2048;
      v37 = v30;
      v38 = 2048;
      v39 = width;
      v40 = 2048;
      v41 = height;
      v42 = 2048;
      v43 = a4;
      v44 = 2112;
      v45 = v31;
      _os_log_error_impl(&dword_1CAB19000, v25, OS_LOG_TYPE_ERROR, "Failed to prepare icon with dateComponents: %{public}@, calendar: %{public}@, format: %ld, size: (%f, %f), scale: %f, appearance: %@", &v32, 0x48u);
    }

    v24 = 0;
  }

  return v24;
}

- (id)prepareImageForDescriptor:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CUIKIcon *)self _imageForDescriptor:v4];
  v6 = v5;
  if (!v5 || [v5 placeholder])
  {
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(CUIKIcon *)self prepareImagesForImageDescriptors:v7];

    v8 = [(CUIKIcon *)self _imageForDescriptor:v4];

    v6 = v8;
  }

  return v6;
}

- (id)_imageForDescriptor:(id)a3
{
  v4 = a3;
  if (CUIKSolariumIconEnabled_onceToken != -1)
  {
    CUIKSolariumIconEnabled_cold_1();
  }

  if (CUIKSolariumIconEnabled_solariumIconEnabled == 1)
  {
    v5 = [(CUIKIcon *)self digestFromISImageDescriptor:v4];
    v6 = [(CUIKIcon *)self internalIcons];
    v7 = [v6 objectForKeyedSubscript:v5];

    v8 = [v7 imageForDescriptor:v4];
  }

  else
  {
    v8 = [(ISIcon *)self->_internalIcon imageForDescriptor:v4];
  }

  return v8;
}

- (void)getImageForImageDescriptor:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = [(CUIKIcon *)self prepareImageForDescriptor:a3];
  (*(a4 + 2))(v7, v8);
}

@end
@interface HFColorPalette
+ (HFColorPaletteColor)warmWhiteColor;
+ (id)_defaultColorsOfType:(unint64_t)a3;
+ (id)_defaultRGBColors;
+ (id)_defaultTemperatureColors;
+ (id)defaultColorPaletteOfType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HFColorPalette)init;
- (HFColorPalette)initWithColors:(id)a3 type:(unint64_t)a4;
- (HFColorPalette)initWithDawnColorPickerFavorites:(id)a3 type:(unint64_t)a4;
- (HFColorPalette)initWithSerializedRepresentation:(id)a3 type:(unint64_t)a4;
- (NSArray)colors;
- (id)colorPaletteByAdjustingForColorProfile:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (id)serializedRepresentation;
- (unint64_t)hash;
@end

@implementation HFColorPalette

+ (HFColorPaletteColor)warmWhiteColor
{
  v2 = [HFRGBColor alloc];
  LODWORD(v3) = 1063295210;
  LODWORD(v4) = 1061494456;
  LODWORD(v5) = 1.0;
  v6 = [(HFRGBColor *)v2 initWithRed:v5 green:v3 blue:v4];
  v7 = [HFTemperatureColor alloc];
  LODWORD(v8) = 1136066560;
  v9 = [(HFTemperatureColor *)v7 initWithTemperatureInMired:v8];
  v10 = [HFColorCollection alloc];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{v6, v9, 0}];
  v12 = [(HFColorCollection *)v10 initWithPrimitiveColors:v11];

  v13 = [[HFColorPaletteColor alloc] initWithColorCollection:v12];

  return v13;
}

+ (id)_defaultRGBColors
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__HFColorPalette__defaultRGBColors__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __35__HFColorPalette__defaultRGBColors__block_invoke(v4);

  return v2;
}

id __35__HFColorPalette__defaultRGBColors__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HFColorPalette__defaultRGBColors__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_MergedGlobals_285 != -1)
  {
    dispatch_once(&_MergedGlobals_285, block);
  }

  v1 = qword_280E03790;

  return v1;
}

void __35__HFColorPalette__defaultRGBColors__block_invoke_2(uint64_t a1)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v2 = [HFColorPaletteColor alloc];
  LODWORD(v3) = 1061966242;
  LODWORD(v4) = 1062994089;
  LODWORD(v5) = 1.0;
  v6 = [(HFColorPaletteColor *)v2 initWithRed:v3 green:v4 blue:v5];
  v31[0] = v6;
  v7 = [HFColorPaletteColor alloc];
  LODWORD(v8) = 1064668145;
  LODWORD(v9) = 1064514355;
  LODWORD(v10) = 1.0;
  v11 = [(HFColorPaletteColor *)v7 initWithRed:v8 green:v9 blue:v10];
  v31[1] = v11;
  v12 = [*(a1 + 32) warmWhiteColor];
  v31[2] = v12;
  v13 = [HFColorPaletteColor alloc];
  LODWORD(v14) = 1061300772;
  LODWORD(v15) = 1057278939;
  LODWORD(v16) = 1.0;
  v17 = [(HFColorPaletteColor *)v13 initWithRed:v16 green:v14 blue:v15];
  v31[3] = v17;
  v18 = [HFColorPaletteColor alloc];
  LODWORD(v19) = 1059695018;
  LODWORD(v20) = 1051372202;
  LODWORD(v21) = 1.0;
  v22 = [(HFColorPaletteColor *)v18 initWithRed:v21 green:v19 blue:v20];
  v31[4] = v22;
  v23 = [HFColorPaletteColor alloc];
  LODWORD(v24) = 1056629064;
  LODWORD(v25) = 1050924810;
  LODWORD(v26) = 1.0;
  v27 = [(HFColorPaletteColor *)v23 initWithRed:v24 green:v25 blue:v26];
  v31[5] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:6];
  v29 = qword_280E03790;
  qword_280E03790 = v28;

  v30 = *MEMORY[0x277D85DE8];
}

+ (id)_defaultTemperatureColors
{
  if (qword_280E03798 != -1)
  {
    dispatch_once(&qword_280E03798, &__block_literal_global_9_6);
  }

  v3 = qword_280E037A0;

  return v3;
}

void __43__HFColorPalette__defaultTemperatureColors__block_invoke_2()
{
  v0 = [&unk_282525858 na_map:&__block_literal_global_27_8];
  v1 = qword_280E037A0;
  qword_280E037A0 = v0;
}

HFColorPaletteColor *__43__HFColorPalette__defaultTemperatureColors__block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HFTemperatureColor alloc];
  [v2 floatValue];
  v5 = v4;

  LODWORD(v6) = v5;
  v7 = [(HFTemperatureColor *)v3 initWithTemperatureInKelvin:v6];
  v8 = [[HFColorCollection alloc] initWithPrimitiveColor:v7];
  v9 = [[HFColorPaletteColor alloc] initWithColorCollection:v8];

  return v9;
}

+ (id)_defaultColorsOfType:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      goto LABEL_8;
    }

    if (a3 != 2)
    {
      goto LABEL_9;
    }

LABEL_7:
    v4 = [a1 _defaultRGBColors];
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  if (a3 == 1)
  {
LABEL_8:
    v4 = [a1 _defaultTemperatureColors];
  }

LABEL_9:

  return v4;
}

+ (id)defaultColorPaletteOfType:(unint64_t)a3
{
  v5 = [a1 alloc];
  v6 = [a1 _defaultColorsOfType:a3];
  v7 = [v5 initWithColors:v6 type:a3];

  return v7;
}

- (HFColorPalette)initWithColors:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HFColorPalette;
  v8 = [(HFColorPalette *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_paletteType = a4;
    objc_storeStrong(&v8->_rawColors, a3);
  }

  return v9;
}

- (HFColorPalette)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithColors_type_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFColorPalette.m" lineNumber:102 description:{@"%s is unavailable; use %@ instead", "-[HFColorPalette init]", v5}];

  return 0;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v4 = [(HFColorPalette *)self colors];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFColorPalette alloc];
  v5 = [(HFColorPalette *)self rawColors];
  v6 = [(HFColorPalette *)v4 initWithColors:v5 type:[(HFColorPalette *)self paletteType]];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HFMutableColorPalette alloc];
  v5 = [(HFColorPalette *)self rawColors];
  v6 = [(HFColorPalette *)v4 initWithColors:v5 type:[(HFColorPalette *)self paletteType]];

  return v6;
}

- (HFColorPalette)initWithSerializedRepresentation:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_opt_class() _defaultColorsOfType:a4];
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__HFColorPalette_initWithSerializedRepresentation_type___block_invoke;
    v12[3] = &unk_277DFDC70;
    v14 = v15;
    v8 = v7;
    v13 = v8;
    v9 = [v6 na_map:v12];
    self = [(HFColorPalette *)self initWithColors:v9 type:a4];

    _Block_object_dispose(v15, 8);
    v10 = self;
  }

  else
  {
    NSLog(&cfstr_InvalidReprese.isa, v6);
    v10 = 0;
  }

  return v10;
}

HFColorPaletteColor *__56__HFColorPalette_initWithSerializedRepresentation_type___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__HFColorPalette_initWithSerializedRepresentation_type___block_invoke_2;
  aBlock[3] = &unk_277DFDC48;
  aBlock[4] = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[HFColorPaletteColor alloc] initWithDictionaryRepresentation:v3];
    if (v5)
    {
LABEL_5:
      if (!v4)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 < [*(a1 + 32) count])
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    goto LABEL_5;
  }

  v5 = 0;
  if (v4)
  {
LABEL_6:
    v4[2](v4);
  }

LABEL_7:

  return v5;
}

- (id)serializedRepresentation
{
  v3 = [(HFColorPalette *)self rawColors];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HFColorPalette_serializedRepresentation__block_invoke;
  v6[3] = &unk_277DFDC98;
  v6[4] = self;
  v4 = [v3 na_map:v6];

  return v4;
}

id __42__HFColorPalette_serializedRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 dictionaryRepresentationWithPreferredPaletteType:{objc_msgSend(v2, "paletteType")}];

  return v4;
}

- (HFColorPalette)initWithDawnColorPickerFavorites:(id)a3 type:(unint64_t)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v45 = HFLogForCategory(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v74 = v6;
      _os_log_error_impl(&dword_20D9BF000, v45, OS_LOG_TYPE_ERROR, "Invalid color picker favorites %@", buf, 0xCu);
    }

    v53 = 0;
  }

  else
  {
    v57 = self;
    v56 = [objc_opt_class() _defaultColorsOfType:a4];
    v7 = [MEMORY[0x277CBEB18] array];
    v59 = a4;
    v8 = 0x277DEF000uLL;
    if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = [[HFColorPaletteColor alloc] initWithNaturalLightColor];
      [v7 addObject:v9];
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v58 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = v59 & 0xFFFFFFFFFFFFFFFDLL;
      v62 = *v68;
      v60 = v10;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v68 != v62)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v67 + 1) + 8 * v14);
        if ([v7 count] > 5)
        {
          goto LABEL_30;
        }

        v16 = [v15 objectForKeyedSubscript:@"temperature"];
        if (v16)
        {
          break;
        }

        if (v13 != 1)
        {
          v19 = [v15 objectForKeyedSubscript:@"hue"];
          v20 = [v15 objectForKeyedSubscript:@"saturation"];
          if (v19)
          {
            v21 = v20 == 0;
          }

          else
          {
            v21 = 1;
          }

          v61 = v20;
          if (v21)
          {
            v18 = 0;
          }

          else
          {
            v22 = v20;
            v23 = [HFRGBColor alloc];
            [v19 floatValue];
            v25 = v24;
            [v22 floatValue];
            LODWORD(v27) = v26;
            LODWORD(v28) = 1.0;
            LODWORD(v29) = v25;
            v30 = [(HFRGBColor *)v23 initWithHue:v29 saturation:v27 brightness:v28];
            v18 = [objc_alloc(*(v8 + 2264)) initWithColorPrimitive:v30];
          }

          v31 = [v15 objectForKeyedSubscript:@"r"];
          v32 = [v15 objectForKeyedSubscript:@"g"];
          v33 = [v15 objectForKeyedSubscript:@"b"];
          v34 = v33;
          if (v31 && v32 && v33)
          {
            v35 = objc_alloc(*(v8 + 2264));
            [v31 floatValue];
            v37 = v36;
            [v32 floatValue];
            v39 = v38;
            [v34 floatValue];
            LODWORD(v41) = v40;
            LODWORD(v42) = v37;
            LODWORD(v43) = v39;
            v44 = [v35 initWithRed:v42 green:v43 blue:v41];

            v18 = v44;
          }

          if (v18)
          {
            [v7 addObject:v18];
          }

          v8 = 0x277DEF000;
          v13 = v59 & 0xFFFFFFFFFFFFFFFDLL;
          v10 = v60;
          goto LABEL_27;
        }

LABEL_28:

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v67 objects:v72 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_30;
        }
      }

      v17 = [HFTemperatureColor alloc];
      [v16 floatValue];
      v18 = [(HFTemperatureColor *)v17 initWithTemperatureInMired:?];
      v19 = [objc_alloc(*(v8 + 2264)) initWithColorPrimitive:v18];
      [v7 addObject:v19];
LABEL_27:

      goto LABEL_28;
    }

LABEL_30:

    v45 = v56;
    if ([v7 count] <= 5)
    {
      v46 = [v7 count];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v47 = v56;
      v48 = [v47 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = 6 - v46;
        v51 = *v64;
LABEL_33:
        v52 = 0;
        while (1)
        {
          if (*v64 != v51)
          {
            objc_enumerationMutation(v47);
          }

          if (v50 == v52)
          {
            break;
          }

          [v7 addObject:*(*(&v63 + 1) + 8 * v52++)];
          if (v49 == v52)
          {
            v49 = [v47 countByEnumeratingWithState:&v63 objects:v71 count:16];
            v50 -= v52;
            if (v49)
            {
              goto LABEL_33;
            }

            break;
          }
        }
      }
    }

    self = [(HFColorPalette *)v57 initWithColors:v7 type:v59];

    v53 = self;
    v6 = v58;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v53;
}

- (NSArray)colors
{
  v3 = [(HFColorPalette *)self rawColors];
  if ([(HFColorPalette *)self _isNaturalLightPalette])
  {
    v4 = [v3 mutableCopy];
    v5 = [[HFColorPaletteColor alloc] initWithNaturalLightColor];
    [v4 replaceObjectAtIndex:0 withObject:v5];
  }

  else
  {
    v4 = [v3 copy];
  }

  return v4;
}

- (id)colorPaletteByAdjustingForColorProfile:(id)a3
{
  v4 = a3;
  v5 = [(HFColorPalette *)self colors];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HFColorPalette_colorPaletteByAdjustingForColorProfile___block_invoke;
  v10[3] = &unk_277DFDCC0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 na_map:v10];

  v8 = [objc_alloc(objc_opt_class()) initWithColors:v7 type:{-[HFColorPalette paletteType](self, "paletteType")}];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HFColorPalette *)self colors];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HFColorPalette *)self colors];
      v6 = [(HFColorPalette *)v4 colors];
      v7 = [v5 isEqualToArray:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end
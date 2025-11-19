@interface UnitsInfo
+ (UnitsInfo)converterUnits;
+ (UnitsInfo)unitsInfoWithDictionary:(id)a3;
- (UnitInfo)degreesInfo;
- (UnitInfo)radiansInfo;
- (UnitTypeInfo)angleInfo;
- (UnitsInfo)initWithDictionary:(id)a3;
- (id)infoForUnitID:(int)a3;
- (id)infoForUnitName:(id)a3;
- (id)infoForUnitType:(int)a3;
- (id)infoForUnitTypeName:(id)a3;
- (void)populateSubunitIDs:(id)a3 forUnit:(id)a4 visited:(id)a5;
@end

@implementation UnitsInfo

void __27__UnitsInfo_converterUnits__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v0 pathForResource:@"ConverterUnits" ofType:@"plist"];

  v1 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v4];
  v2 = [UnitsInfo unitsInfoWithDictionary:v1];
  v3 = converterUnits_unitsInfo;
  converterUnits_unitsInfo = v2;
}

+ (UnitsInfo)converterUnits
{
  if (converterUnits_loadUnitDictionaryOnce != -1)
  {
    dispatch_once(&converterUnits_loadUnitDictionaryOnce, &__block_literal_global_387);
  }

  v3 = converterUnits_unitsInfo;

  return v3;
}

- (UnitInfo)radiansInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_radiansInfo);

  return WeakRetained;
}

- (UnitInfo)degreesInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_degreesInfo);

  return WeakRetained;
}

- (UnitTypeInfo)angleInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_angleInfo);

  return WeakRetained;
}

- (id)infoForUnitName:(id)a3
{
  v4 = a3;
  v5 = [(UnitsInfo *)self unitNameToInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)infoForUnitID:(int)a3
{
  if (a3 < 0 || (-[UnitsInfo unitIDToInfo](self, "unitIDToInfo"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(UnitsInfo *)self unitIDToInfo];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (id)infoForUnitTypeName:(id)a3
{
  v4 = a3;
  v5 = [(UnitsInfo *)self unitTypeNameToInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)infoForUnitType:(int)a3
{
  if (a3 < 1 || (-[UnitsInfo unitTypeToInfo](self, "unitTypeToInfo"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(UnitsInfo *)self unitTypeToInfo];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (UnitsInfo)initWithDictionary:(id)a3
{
  v198 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v190.receiver = self;
  v190.super_class = UnitsInfo;
  v5 = [(UnitsInfo *)&v190 init];
  if (!v5)
  {
    goto LABEL_123;
  }

  v6 = objc_opt_new();
  [(UnitsInfo *)v5 setUnitNameToInfo:v6];

  v7 = objc_opt_new();
  [(UnitsInfo *)v5 setUnitIDToInfo:v7];

  v8 = objc_opt_new();
  [(UnitsInfo *)v5 setUnitTypeNameToInfo:v8];

  v9 = objc_opt_new();
  [(UnitsInfo *)v5 setUnitTypeToInfo:v9];

  v10 = [(UnitsInfo *)v5 unitIDToInfo];
  v11 = objc_opt_new();
  [v10 addObject:v11];

  v12 = [(UnitsInfo *)v5 unitTypeToInfo];
  v13 = objc_opt_new();
  [v12 addObject:v13];

  v134 = objc_opt_new();
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v126 = v4;
  obj = v4;
  v14 = 0x1EDC2B000;
  v138 = [obj countByEnumeratingWithState:&v186 objects:v197 count:16];
  if (!v138)
  {
    v135 = 0;
    goto LABEL_63;
  }

  v135 = 0;
  v136 = *v187;
  v15 = @"BaseNumerator";
  v16 = @"BaseDenominator";
  do
  {
    v17 = 0;
    do
    {
      if (*v187 != v136)
      {
        objc_enumerationMutation(obj);
      }

      v142 = v17;
      v18 = *(*(&v186 + 1) + 8 * v17);
      v19 = [obj objectForKeyedSubscript:v18];
      v20 = objc_opt_new();
      [v20 setUnitType:++v135];
      [v20 setName:v18];
      [v20 setDecompositionCoefficient:{1, 0x3040000000000000}];
      v21 = [v19 objectForKeyedSubscript:@"BaseDecomposition"];
      [v20 setIsDecomposable:v21 != 0];

      if ([v18 isEqualToString:@"Temperature"])
      {
        [v20 setIsTemperature:1];
      }

      else if ([v18 isEqualToString:@"Currency"])
      {
        [v20 setIsCurrency:1];
      }

      else if ([v18 isEqualToString:@"Volume"])
      {
        [v20 setIsVolume:1];
      }

      if ([v18 isEqualToString:@"Angle"])
      {
        [(UnitsInfo *)v5 setAngleInfo:v20];
      }

      v22 = [(UnitsInfo *)v5 unitTypeNameToInfo];
      [v22 setObject:v20 forKeyedSubscript:v18];

      v23 = [(UnitsInfo *)v5 unitTypeToInfo];
      [v23 addObject:v20];

      v148 = objc_opt_new();
      [v20 setUnits:?];
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v24 = v19;
      v25 = [v24 countByEnumeratingWithState:&v182 objects:v196 count:16];
      v14 = 0x1EDC2B000uLL;
      if (v25)
      {
        v26 = v25;
        v27 = *v183;
        v144 = *v183;
        v146 = v24;
        do
        {
          v28 = 0;
          v150 = v26;
          do
          {
            if (*v183 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v182 + 1) + 8 * v28);
            if (([v14 + 4080 shouldSkipUnitName:v29] & 1) == 0)
            {
              v30 = [v24 objectForKeyedSubscript:v29];
              v31 = [(UnitsInfo *)v5 unitIDToInfo];
              v32 = [v31 count];

              v33 = objc_opt_new();
              [v33 setUnitID:v32];
              [v33 setUnitType:v135];
              [v33 setName:v29];
              [v33 setTypeInfo:v20];
              v34 = [v30 objectForKeyedSubscript:@"Inverted"];
              [v33 setIsInverted:{objc_msgSend(v34, "BOOLValue")}];

              if ([v20 isDecomposable])
              {
                v35 = [v30 objectForKeyedSubscript:@"IsDisplayName"];
                [v33 setIsDisplayName:{objc_msgSend(v35, "BOOLValue")}];
              }

              else
              {
                [v33 setIsDisplayName:0];
              }

              if ([v33 isDisplayName])
              {
                v36 = [v30 objectForKeyedSubscript:@"ImpliesDivision"];
                [v33 setImpliesDivision:{objc_msgSend(v36, "BOOLValue")}];
              }

              else
              {
                [v33 setImpliesDivision:0];
              }

              v37 = [v30 objectForKeyedSubscript:@"DoNotSuggest"];
              [v33 setDoNotSuggest:{objc_msgSend(v37, "BOOLValue")}];

              v38 = [v30 objectForKeyedSubscript:@"FormatNextSmallest"];
              [v33 setFormatNextSmallest:{objc_msgSend(v38, "BOOLValue")}];

              v39 = [v30 objectForKeyedSubscript:@"PreferredUnit"];
              [v33 setIsPreferredUnit:{objc_msgSend(v39, "BOOLValue")}];

              [v33 setMeasurementSystem:0];
              v40 = [v30 objectForKeyedSubscript:@"MeasurementSystem"];
              v41 = v40;
              if (v40)
              {
                if ([v40 isEqualToString:@"Metric"])
                {
                  v42 = 1;
                  goto LABEL_34;
                }

                if ([v41 isEqualToString:@"US"])
                {
                  v42 = 2;
                  goto LABEL_34;
                }

                if ([v41 isEqualToString:@"UK"])
                {
                  v42 = 3;
LABEL_34:
                  [v33 setMeasurementSystem:v42];
                }
              }

              if ([v20 isTemperature])
              {
                if ([v29 isEqualToString:@"fahrenheit"])
                {
                  [v33 setIsFahrenheit:1];
                }

                else if ([v29 isEqualToString:@"celsius"])
                {
                  [v33 setIsCelsius:1];
                }

                else if ([v29 isEqualToString:@"kelvin"])
                {
                  [v33 setIsKelvin:1];
                }
              }

              v43 = v16;
              if ([v29 isEqualToString:@"degree"])
              {
                [(UnitsInfo *)v5 setDegreesInfo:v33];
              }

              v44 = v15;
              if ([v29 isEqualToString:@"radian"])
              {
                [(UnitsInfo *)v5 setRadiansInfo:v33];
              }

              v45 = [(UnitsInfo *)v5 unitNameToInfo];
              [v45 setObject:v33 forKeyedSubscript:v29];

              v46 = [(UnitsInfo *)v5 unitIDToInfo];
              [v46 addObject:v33];

              [v148 addObject:v33];
              [v134 addObject:v29];
              LODWORD(v165[0]) = 0;
              v15 = v44;
              v47 = [v30 objectForKeyedSubscript:v44];

              if (v47)
              {
                v48 = [v30 objectForKeyedSubscript:v44];
                v49 = __bid128_from_string([v48 UTF8String], 4, v165);
                [v33 setBaseNumerator:{v49, v50}];
              }

              v16 = v43;
              v51 = [v30 objectForKeyedSubscript:v43];

              if (v51)
              {
                v52 = [v30 objectForKeyedSubscript:v43];
                v53 = __bid128_from_string([v52 UTF8String], 4, v165);
                [v33 setBaseDenominator:{v53, v54}];
              }

              v55 = [v20 baseUnit];
              v27 = v144;
              if (v55 || (v56 = [v33 baseNumerator], !__bid128_quiet_equal(v56, v57, 1uLL, 0x3040000000000000uLL, v165)))
              {
              }

              else
              {
                v58 = [v33 baseDenominator];
                if (__bid128_quiet_equal(v58, v59, 1uLL, 0x3040000000000000uLL, v165))
                {
                  [v33 setIsBaseUnit:1];
                  [v20 setBaseUnit:v33];
                }
              }

              v14 = 0x1EDC2B000;
              v24 = v146;
              v26 = v150;
            }

            ++v28;
          }

          while (v26 != v28);
          v60 = [v24 countByEnumeratingWithState:&v182 objects:v196 count:16];
          v26 = v60;
        }

        while (v60);
      }

      v17 = v142 + 1;
    }

    while ((v142 + 1) != v138);
    v138 = [obj countByEnumeratingWithState:&v186 objects:v197 count:16];
  }

  while (v138);
LABEL_63:

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v129 = obj;
  v128 = [v129 countByEnumeratingWithState:&v178 objects:v195 count:16];
  if (v128)
  {
    v127 = *v179;
    do
    {
      v61 = 0;
      do
      {
        if (*v179 != v127)
        {
          v62 = v61;
          objc_enumerationMutation(v129);
          v61 = v62;
        }

        v130 = v61;
        v63 = *(*(&v178 + 1) + 8 * v61);
        v64 = [v129 objectForKeyedSubscript:v63];
        v139 = [v64 objectForKeyedSubscript:@"BaseDecomposition"];
        if (v139)
        {
          v151 = v64;
          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          v170 = 0u;
          v171 = 0u;
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          v169 = 0u;
          v65 = [v139 countByEnumeratingWithState:&v166 objects:v194 count:16];
          if (v65)
          {
            v66 = v65;
            v67 = *v167;
            do
            {
              for (i = 0; i != v66; ++i)
              {
                if (*v167 != v67)
                {
                  objc_enumerationMutation(v139);
                }

                v69 = *(*(&v166 + 1) + 8 * i);
                v70 = [v139 objectForKeyedSubscript:v69];
                if ([v69 isEqualToString:@"Coefficient"])
                {
                  v71 = [v70 intValue];
                  if (v71 >= 0)
                  {
                    v72 = v71;
                  }

                  else
                  {
                    v72 = -v71;
                  }

                  if (v71 < 0)
                  {
                    v73 = 0xB040000000000000;
                  }

                  else
                  {
                    v73 = 0x3040000000000000;
                  }

                  v74 = [(UnitsInfo *)v5 unitTypeNameToInfo];
                  v75 = [v74 objectForKeyedSubscript:v63];
                  [v75 setDecompositionCoefficient:{v72, v73}];
                }

                else
                {
                  v76 = [(UnitsInfo *)v5 unitNameToInfo];
                  v74 = [v76 objectForKeyedSubscript:v69];

                  v77 = v67;
                  v78 = &v170 + 2 * [v74 unitType];
                  *v78 = [v74 unitID];
                  v78[1] = [v70 intValue];
                  v67 = v77;
                }
              }

              v66 = [v139 countByEnumeratingWithState:&v166 objects:v194 count:16];
            }

            while (v66);
          }

          v79 = [(UnitsInfo *)v5 unitTypeNameToInfo];
          v80 = [v79 objectForKeyedSubscript:v63];
          v165[4] = v174;
          v165[5] = v175;
          v165[6] = v176;
          v165[7] = v177;
          v165[0] = v170;
          v165[1] = v171;
          v165[2] = v172;
          v165[3] = v173;
          [v80 setDecomposition:v165];

          v14 = 0x1EDC2B000uLL;
          v64 = v151;
        }

        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v81 = v64;
        v82 = [v81 countByEnumeratingWithState:&v161 objects:v193 count:16];
        if (v82)
        {
          v83 = v82;
          v84 = *v162;
          v131 = *v162;
          v132 = v81;
          do
          {
            v85 = 0;
            v133 = v83;
            do
            {
              if (*v162 != v84)
              {
                objc_enumerationMutation(v81);
              }

              v86 = *(*(&v161 + 1) + 8 * v85);
              if (([v14 + 4080 shouldSkipUnitName:v86] & 1) == 0)
              {
                v147 = v85;
                v149 = [v81 objectForKeyedSubscript:v86];
                v87 = [v149 objectForKeyedSubscript:@"BestEquivalent"];
                v145 = v87;
                if (v87)
                {
                  v88 = v87;
                  v89 = [(UnitsInfo *)v5 unitNameToInfo];
                  v90 = [v89 objectForKeyedSubscript:v88];
                }

                else
                {
                  v90 = 0;
                }

                v91 = [(UnitsInfo *)v5 unitNameToInfo];
                v92 = [v91 objectForKeyedSubscript:v86];
                [v92 setBestEquivalent:v90];

                v93 = [v149 objectForKeyedSubscript:@"NextSmallest"];
                v143 = v93;
                if (v93)
                {
                  v94 = v93;
                  v95 = [(UnitsInfo *)v5 unitNameToInfo];
                  v96 = [v95 objectForKeyedSubscript:v94];
                }

                else
                {
                  v96 = 0;
                }

                v97 = [(UnitsInfo *)v5 unitNameToInfo];
                v98 = [v97 objectForKeyedSubscript:v86];
                obja = v96;
                [v98 setNextSmallest:v96];

                v99 = [v149 objectForKeyedSubscript:@"Subunits"];
                if (v99)
                {
                  v152 = v86;
                  v100 = v5;
                  v101 = objc_opt_new();
                  v157 = 0u;
                  v158 = 0u;
                  v159 = 0u;
                  v160 = 0u;
                  v137 = v99;
                  v102 = v99;
                  v103 = [v102 countByEnumeratingWithState:&v157 objects:v192 count:16];
                  if (v103)
                  {
                    v104 = v103;
                    v105 = *v158;
                    do
                    {
                      for (j = 0; j != v104; ++j)
                      {
                        v107 = v90;
                        if (*v158 != v105)
                        {
                          objc_enumerationMutation(v102);
                        }

                        v108 = *(*(&v157 + 1) + 8 * j);
                        v109 = [(UnitsInfo *)v100 unitNameToInfo];
                        v110 = [v109 objectForKeyedSubscript:v108];

                        if (v110)
                        {
                          v111 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v110, "unitID")}];
                          [v101 addObject:v111];
                        }

                        else
                        {
                          NSLog(&cfstr_WarningUnitTyp.isa, v152, v108);
                        }

                        v90 = v107;
                      }

                      v104 = [v102 countByEnumeratingWithState:&v157 objects:v192 count:16];
                    }

                    while (v104);
                  }

                  v5 = v100;
                  v112 = [(UnitsInfo *)v100 unitNameToInfo];
                  v113 = [v112 objectForKeyedSubscript:v152];
                  [v113 setSubunitIDs:v101];

                  v14 = 0x1EDC2B000;
                  v84 = v131;
                  v81 = v132;
                  v83 = v133;
                  v99 = v137;
                }

                v85 = v147;
              }

              ++v85;
            }

            while (v85 != v83);
            v83 = [v81 countByEnumeratingWithState:&v161 objects:v193 count:16];
          }

          while (v83);
        }

        v61 = v130 + 1;
      }

      while (v130 + 1 != v128);
      v128 = [v129 countByEnumeratingWithState:&v178 objects:v195 count:16];
    }

    while (v128);
  }

  v114 = objc_opt_new();
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v115 = [(UnitsInfo *)v5 unitIDToInfo];
  v116 = [v115 countByEnumeratingWithState:&v153 objects:v191 count:16];
  if (v116)
  {
    v117 = v116;
    v118 = *v154;
    do
    {
      for (k = 0; k != v117; ++k)
      {
        if (*v154 != v118)
        {
          objc_enumerationMutation(v115);
        }

        [(UnitsInfo *)v5 populateSubunitIDs:*(*(&v153 + 1) + 8 * k) forUnit:*(*(&v153 + 1) + 8 * k) visited:v114];
        [v114 removeAllObjects];
      }

      v117 = [v115 countByEnumeratingWithState:&v153 objects:v191 count:16];
    }

    while (v117);
  }

  v120 = [v134 copy];
  unitNames = v5->_unitNames;
  v5->_unitNames = v120;

  v5->_unitTypeCount = v135;
  v122 = [(UnitsInfo *)v5 unitIDToInfo];
  v5->_unitCount = [v122 count];

  v123 = v5;
  v4 = v126;
LABEL_123:

  v124 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)populateSubunitIDs:(id)a3 forUnit:(id)a4 visited:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "unitID")}];
  if (([v10 containsObject:v11] & 1) == 0)
  {
    [v10 addObject:v11];
    v12 = [v9 allSubunitIDs];
    [v12 addObject:v11];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v8 subunitIDs];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = -[UnitsInfo infoForUnitID:](self, "infoForUnitID:", [*(*(&v20 + 1) + 8 * v17) intValue]);
          [(UnitsInfo *)self populateSubunitIDs:v18 forUnit:v9 visited:v10];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (UnitsInfo)unitsInfoWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [[UnitsInfo alloc] initWithDictionary:v3];

  return v4;
}

@end
@interface CCToolKitToolTypedValuePrimitiveValueRecurrenceRule
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)calendar;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRule)initWithCalendar:(id)calendar frequency:(unsigned int)frequency interval:(id)interval end:(id)end matchingPolicy:(unsigned int)policy repeatedTimePolicy:(unsigned int)timePolicy months:(id)months daysOfTheYear:(id)self0 daysOfTheMonth:(id)self1 weeks:(id)self2 weekdays:(id)self3 hours:(id)self4 minutes:(id)self5 seconds:(id)self6 setPositions:(id)self7 error:(id *)self8;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRule)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd)end;
- (NSArray)months;
- (NSArray)weekdays;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueRecurrenceRule

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRule)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v283 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  v273[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"calendar"];
    if (v9)
    {
      v273[0] = 0;
      v10 = [[CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar alloc] initWithJSONDictionary:v9 error:v273];
      v11 = v273[0];
      v12 = v11;
      if (!v10 || v11)
      {
        CCSetError();
        v14 = 0;
LABEL_173:

        goto LABEL_174;
      }

      v9 = v10;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"frequency"];
    v12 = v13;
    if (v13)
    {
      unsignedIntegerValue = [v13 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"interval"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"end"];
    if (v15)
    {
      v16 = v15;
      v272 = 0;
      v17 = [[CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd alloc] initWithJSONDictionary:v15 error:&v272];
      v18 = v272;
      v19 = v18;
      if (!v17 || v18)
      {
        v217 = v17;
        CCSetError();
        v14 = 0;
LABEL_172:

        goto LABEL_173;
      }

      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"matchingPolicy"];
    v22 = v21;
    errorCopy = error;
    if (v21)
    {
      unsignedIntegerValue2 = [v21 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 0;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"repeatedTimePolicy"];
    v216 = v20;
    if (v23)
    {
      v24 = v23;
      unsignedIntegerValue3 = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd *)v23 unsignedIntegerValue];
    }

    else
    {
      v24 = 0;
      unsignedIntegerValue3 = 0;
    }

    v215 = v22;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"months"];
    v217 = v24;
    if (v25)
    {
      v26 = v25;
      v27 = v12;
      v28 = v9;
      v29 = v10;
      objc_opt_class();
      v271 = v8;
      v30 = CCValidateIsInstanceOfExpectedClass();
      v31 = v8;

      if ((v30 & 1) == 0)
      {
        CCSetError();
        v14 = 0;
        v32 = v26;
        v16 = v216;
LABEL_171:

        v8 = v31;
        v19 = v215;
        v10 = v29;
        v9 = v28;
        v12 = v27;
        goto LABEL_172;
      }

      v181 = v31;
      v209 = v28;
      v186 = dictionaryCopy;
      v218 = objc_opt_new();
      v267 = 0u;
      v268 = 0u;
      v269 = 0u;
      v270 = 0u;
      v32 = v26;
      v33 = [v32 countByEnumeratingWithState:&v267 objects:v282 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v268;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v268 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v267 + 1) + 8 * i);
            v38 = [CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth alloc];
            v266 = 0;
            v39 = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth *)v38 initWithJSONDictionary:v37 error:&v266];
            v40 = v266;
            if (v39)
            {
              v41 = v40 == 0;
            }

            else
            {
              v41 = 0;
            }

            if (!v41)
            {
              v58 = v40;
              CCSetError();

              v14 = 0;
              dictionaryCopy = v186;
              v28 = v209;
              v16 = v216;
              v31 = v181;
              goto LABEL_171;
            }

            [v218 addObject:v39];
          }

          v34 = [v32 countByEnumeratingWithState:&v267 objects:v282 count:16];
        }

        while (v34);
      }

      dictionaryCopy = v186;
      v10 = v29;
      v12 = v27;
      v9 = v209;
      v42 = v181;
    }

    else
    {
      v218 = 0;
      v42 = v8;
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"daysOfTheYear"];
    selfCopy = self;
    if (v43)
    {
      v44 = v43;
      objc_opt_class();
      v265 = v42;
      v45 = v42;
      v46 = CCValidateIsInstanceOfExpectedClass();
      v47 = v265;

      if ((v46 & 1) == 0)
      {
        v27 = v12;
        v28 = v9;
        v29 = v10;
        CCSetError();
        v14 = 0;
        v57 = v44;
LABEL_65:
        v16 = v216;
        goto LABEL_170;
      }

      v193 = v10;
      v201 = v12;
      v210 = v9;
      v187 = dictionaryCopy;
      v48 = objc_opt_new();
      v261 = 0u;
      v262 = 0u;
      v263 = 0u;
      v264 = 0u;
      v49 = v44;
      v50 = [v49 countByEnumeratingWithState:&v261 objects:v281 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v262;
        while (2)
        {
          v53 = 0;
          v54 = v47;
          do
          {
            if (*v262 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v55 = *(*(&v261 + 1) + 8 * v53);
            objc_opt_class();
            v260 = v54;
            v56 = CCValidateIsInstanceOfExpectedClass();
            v47 = v54;

            if (!v56)
            {
              CCSetError();

              v14 = 0;
              v57 = v49;
              dictionaryCopy = v187;
              v29 = v193;
              v27 = v201;
              v28 = v210;
              goto LABEL_65;
            }

            [v48 appendInt64Value:{objc_msgSend(v55, "longLongValue")}];
            ++v53;
            v54 = v47;
          }

          while (v51 != v53);
          v51 = [v49 countByEnumeratingWithState:&v261 objects:v281 count:16];
          if (v51)
          {
            continue;
          }

          break;
        }
      }

      v42 = v47;
      dictionaryCopy = v187;
      v10 = v193;
      v12 = v201;
      v9 = v210;
      v57 = v48;
    }

    else
    {
      v57 = 0;
    }

    v59 = [dictionaryCopy objectForKeyedSubscript:@"daysOfTheMonth"];
    if (v59)
    {
      v60 = v59;
      objc_opt_class();
      v259 = v42;
      v61 = v42;
      v62 = CCValidateIsInstanceOfExpectedClass();
      v47 = v259;

      if ((v62 & 1) == 0)
      {
        v27 = v12;
        v28 = v9;
        CCSetError();
        v14 = 0;
        v85 = v60;
        v16 = v216;
LABEL_169:
        v29 = v10;

LABEL_170:
        v31 = v47;
        self = selfCopy;
        v32 = v218;
        goto LABEL_171;
      }

      v176 = v57;
      v194 = v10;
      v202 = v12;
      v211 = v9;
      v188 = dictionaryCopy;
      v63 = objc_opt_new();
      v255 = 0u;
      v256 = 0u;
      v257 = 0u;
      v258 = 0u;
      v64 = v60;
      v65 = [v64 countByEnumeratingWithState:&v255 objects:v280 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v256;
        while (2)
        {
          v68 = 0;
          v69 = v47;
          do
          {
            if (*v256 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v70 = *(*(&v255 + 1) + 8 * v68);
            objc_opt_class();
            v254 = v69;
            v71 = CCValidateIsInstanceOfExpectedClass();
            v47 = v69;

            if (!v71)
            {
              CCSetError();

              v14 = 0;
              v85 = v64;
              dictionaryCopy = v188;
              v10 = v194;
              v27 = v202;
              v28 = v211;
              v16 = v216;
              v57 = v176;
              goto LABEL_169;
            }

            [v63 appendInt64Value:{objc_msgSend(v70, "longLongValue")}];
            ++v68;
            v69 = v47;
          }

          while (v66 != v68);
          v66 = [v64 countByEnumeratingWithState:&v255 objects:v280 count:16];
          if (v66)
          {
            continue;
          }

          break;
        }
      }

      v42 = v47;
      dictionaryCopy = v188;
      v10 = v194;
      v12 = v202;
      v9 = v211;
      v57 = v176;
      v172 = v63;
    }

    else
    {
      v172 = 0;
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"weeks"];
    v212 = v9;
    if (v72)
    {
      v73 = v72;
      v74 = v10;
      objc_opt_class();
      v253 = v42;
      v75 = v42;
      v76 = CCValidateIsInstanceOfExpectedClass();
      v47 = v253;

      if ((v76 & 1) == 0)
      {
        v27 = v12;
        CCSetError();
        v14 = 0;
        v104 = v73;
        v16 = v216;
        v10 = v74;
        v9 = v212;
        v85 = v172;
LABEL_168:
        v28 = v9;

        goto LABEL_169;
      }

      v177 = v57;
      v195 = v74;
      v203 = v12;
      v182 = objc_opt_new();
      v249 = 0u;
      v250 = 0u;
      v251 = 0u;
      v252 = 0u;
      v77 = v73;
      v78 = [v77 countByEnumeratingWithState:&v249 objects:v279 count:16];
      if (v78)
      {
        v79 = v78;
        v80 = *v250;
        while (2)
        {
          v81 = 0;
          v82 = v47;
          do
          {
            if (*v250 != v80)
            {
              objc_enumerationMutation(v77);
            }

            v83 = *(*(&v249 + 1) + 8 * v81);
            objc_opt_class();
            v248 = v82;
            v84 = CCValidateIsInstanceOfExpectedClass();
            v47 = v82;

            if (!v84)
            {
              CCSetError();

              v14 = 0;
              v104 = v77;
              v10 = v195;
              v27 = v203;
              v9 = v212;
              v16 = v216;
              v85 = v172;
              v57 = v177;
              goto LABEL_168;
            }

            [v182 appendInt64Value:{objc_msgSend(v83, "longLongValue")}];
            ++v81;
            v82 = v47;
          }

          while (v79 != v81);
          v79 = [v77 countByEnumeratingWithState:&v249 objects:v279 count:16];
          if (v79)
          {
            continue;
          }

          break;
        }
      }

      v42 = v47;
      v10 = v195;
      v12 = v203;
      v9 = v212;
      v57 = v177;
    }

    else
    {
      v182 = 0;
    }

    v86 = [dictionaryCopy objectForKeyedSubscript:@"weekdays"];
    if (v86)
    {
      v87 = v86;
      v88 = v12;
      v89 = v9;
      v90 = v10;
      objc_opt_class();
      v247 = v42;
      v91 = v42;
      v92 = CCValidateIsInstanceOfExpectedClass();
      v47 = v247;

      if ((v92 & 1) == 0)
      {
        CCSetError();
        v14 = 0;
        v119 = v87;
        v16 = v216;
        v10 = v90;
        v9 = v89;
        v12 = v88;
        v85 = v172;
LABEL_167:
        v27 = v12;

        v104 = v182;
        goto LABEL_168;
      }

      v178 = v57;
      v196 = v90;
      v204 = v88;
      v93 = dictionaryCopy;
      v180 = objc_opt_new();
      v243 = 0u;
      v244 = 0u;
      v245 = 0u;
      v246 = 0u;
      v94 = v87;
      v95 = [v94 countByEnumeratingWithState:&v243 objects:v278 count:16];
      if (v95)
      {
        v96 = v95;
        v97 = *v244;
        do
        {
          for (j = 0; j != v96; ++j)
          {
            if (*v244 != v97)
            {
              objc_enumerationMutation(v94);
            }

            v99 = *(*(&v243 + 1) + 8 * j);
            v100 = [CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday alloc];
            v242 = 0;
            v101 = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday *)v100 initWithJSONDictionary:v99 error:&v242];
            v102 = v242;
            if (v101)
            {
              v103 = v102 == 0;
            }

            else
            {
              v103 = 0;
            }

            if (!v103)
            {
              v118 = v102;
              CCSetError();

              v14 = 0;
              v119 = v94;
              dictionaryCopy = v93;
              v12 = v204;
              v9 = v212;
              v10 = v196;
              v16 = v216;
              v85 = v172;
              v57 = v178;
              goto LABEL_167;
            }

            [v180 addObject:v101];
          }

          v96 = [v94 countByEnumeratingWithState:&v243 objects:v278 count:16];
        }

        while (v96);
      }

      dictionaryCopy = v93;
      v12 = v204;
      v9 = v212;
      v10 = v196;
      v57 = v178;
    }

    else
    {
      v180 = 0;
      v47 = v42;
    }

    v105 = v172;
    v106 = [dictionaryCopy objectForKeyedSubscript:@"hours"];
    v179 = v57;
    if (v106)
    {
      v107 = v106;
      objc_opt_class();
      v241 = v47;
      v108 = CCValidateIsInstanceOfExpectedClass();
      v109 = v47;

      if ((v108 & 1) == 0)
      {
        CCSetError();
        v14 = 0;
        v136 = v107;
        v16 = v216;
        goto LABEL_165;
      }

      v197 = v10;
      v205 = v12;
      v189 = dictionaryCopy;
      v171 = objc_opt_new();
      v237 = 0u;
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;
      v110 = v107;
      v111 = [v110 countByEnumeratingWithState:&v237 objects:v277 count:16];
      if (v111)
      {
        v112 = v111;
        v113 = *v238;
        while (2)
        {
          v114 = 0;
          v115 = v109;
          do
          {
            if (*v238 != v113)
            {
              objc_enumerationMutation(v110);
            }

            v116 = *(*(&v237 + 1) + 8 * v114);
            objc_opt_class();
            v236 = v115;
            v117 = CCValidateIsInstanceOfExpectedClass();
            v109 = v115;

            if (!v117)
            {
              CCSetError();

              v14 = 0;
              v136 = v110;
              dictionaryCopy = v189;
              v10 = v197;
              v12 = v205;
              v9 = v212;
              v16 = v216;
              v85 = v172;
              goto LABEL_166;
            }

            [v171 appendInt64Value:{objc_msgSend(v116, "longLongValue")}];
            ++v114;
            v115 = v109;
          }

          while (v112 != v114);
          v112 = [v110 countByEnumeratingWithState:&v237 objects:v277 count:16];
          if (v112)
          {
            continue;
          }

          break;
        }
      }

      v47 = v109;
      dictionaryCopy = v189;
      v10 = v197;
      v12 = v205;
      v9 = v212;
      v105 = v172;
      v57 = v179;
    }

    else
    {
      v171 = 0;
    }

    v120 = [dictionaryCopy objectForKeyedSubscript:@"minutes"];
    if (v120)
    {
      v121 = v120;
      objc_opt_class();
      v235 = v47;
      v122 = CCValidateIsInstanceOfExpectedClass();
      v123 = v47;

      v169 = v123;
      if ((v122 & 1) == 0)
      {
        CCSetError();
        v14 = 0;
        v137 = v121;
        v16 = v216;
        v136 = v171;
LABEL_164:

        v109 = v169;
LABEL_165:
        v85 = v105;
LABEL_166:

        v47 = v109;
        v57 = v179;
        v119 = v180;
        goto LABEL_167;
      }

      v173 = v105;
      v198 = v10;
      v206 = v12;
      v190 = dictionaryCopy;
      v124 = objc_opt_new();
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v234 = 0u;
      v125 = v121;
      v126 = [v125 countByEnumeratingWithState:&v231 objects:v276 count:16];
      if (v126)
      {
        v127 = v126;
        v128 = *v232;
        v129 = v169;
        while (2)
        {
          v130 = 0;
          v131 = v129;
          do
          {
            v132 = v124;
            if (*v232 != v128)
            {
              objc_enumerationMutation(v125);
            }

            v133 = *(*(&v231 + 1) + 8 * v130);
            objc_opt_class();
            v230 = v131;
            v134 = CCValidateIsInstanceOfExpectedClass();
            v129 = v131;

            if (!v134)
            {
              v169 = v129;
              CCSetError();

              v14 = 0;
              v137 = v125;
              dictionaryCopy = v190;
              v10 = v198;
              v12 = v206;
              v9 = v212;
              v16 = v216;
              v136 = v171;
              v105 = v173;
              goto LABEL_164;
            }

            longLongValue = [v133 longLongValue];
            v124 = v132;
            [v132 appendInt64Value:longLongValue];
            ++v130;
            v131 = v129;
          }

          while (v127 != v130);
          v127 = [v125 countByEnumeratingWithState:&v231 objects:v276 count:16];
          if (v127)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v129 = v169;
      }

      v47 = v129;
      dictionaryCopy = v190;
      v10 = v198;
      v12 = v206;
      v9 = v212;
      v105 = v173;
      v57 = v179;
    }

    else
    {
      v124 = 0;
    }

    v138 = [dictionaryCopy objectForKeyedSubscript:@"seconds"];
    v168 = v124;
    if (v138)
    {
      v139 = v138;
      objc_opt_class();
      v229 = v47;
      v140 = CCValidateIsInstanceOfExpectedClass();
      v141 = v47;

      if ((v140 & 1) == 0)
      {
        v169 = v141;
        CCSetError();
        v14 = 0;
        v143 = v139;
        v16 = v216;
LABEL_144:
        v136 = v171;
        v137 = v168;
        goto LABEL_163;
      }

      v142 = v141;
      v174 = v105;
      v199 = v10;
      v207 = v12;
      v191 = dictionaryCopy;
      v170 = objc_opt_new();
      v225 = 0u;
      v226 = 0u;
      v227 = 0u;
      v228 = 0u;
      v143 = v139;
      v144 = [v143 countByEnumeratingWithState:&v225 objects:v275 count:16];
      if (v144)
      {
        v145 = v144;
        v146 = *v226;
        v147 = v142;
        while (2)
        {
          v148 = 0;
          v149 = v147;
          do
          {
            if (*v226 != v146)
            {
              objc_enumerationMutation(v143);
            }

            v150 = *(*(&v225 + 1) + 8 * v148);
            objc_opt_class();
            v224 = v149;
            v151 = CCValidateIsInstanceOfExpectedClass();
            v147 = v149;

            if (!v151)
            {
              v169 = v147;
              CCSetError();

              v14 = 0;
              dictionaryCopy = v191;
              v10 = v199;
              v12 = v207;
              v9 = v212;
              v16 = v216;
              v105 = v174;
              goto LABEL_144;
            }

            [v170 appendInt64Value:{objc_msgSend(v150, "longLongValue")}];
            ++v148;
            v149 = v147;
          }

          while (v145 != v148);
          v145 = [v143 countByEnumeratingWithState:&v225 objects:v275 count:16];
          if (v145)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v147 = v142;
      }

      v47 = v147;
      dictionaryCopy = v191;
      v10 = v199;
      v12 = v207;
      v9 = v212;
      v105 = v174;
      v57 = v179;
      v124 = v168;
    }

    else
    {
      v170 = 0;
    }

    [dictionaryCopy objectForKeyedSubscript:@"setPositions"];
    v167 = v16 = v216;
    if (v167)
    {
      objc_opt_class();
      v223 = v47;
      v152 = CCValidateIsInstanceOfExpectedClass();
      v153 = v47;

      v169 = v153;
      if ((v152 & 1) == 0)
      {
        CCSetError();
        v14 = 0;
        v136 = v171;
        v164 = v167;
        goto LABEL_162;
      }

      v175 = v105;
      v208 = v12;
      v192 = dictionaryCopy;
      v154 = objc_opt_new();
      v219 = 0u;
      v220 = 0u;
      v221 = 0u;
      v222 = 0u;
      v155 = v167;
      v156 = [v155 countByEnumeratingWithState:&v219 objects:v274 count:16];
      v200 = v10;
      if (v156)
      {
        v157 = v156;
        v158 = *v220;
        while (2)
        {
          v159 = 0;
          v160 = v169;
          do
          {
            if (*v220 != v158)
            {
              objc_enumerationMutation(v155);
            }

            v161 = *(*(&v219 + 1) + 8 * v159);
            objc_opt_class();
            v162 = CCValidateIsInstanceOfExpectedClass();
            v163 = v160;

            if (!v162)
            {
              v169 = v163;
              CCSetError();
              v164 = v155;

              v14 = 0;
              dictionaryCopy = v192;
              v10 = v200;
              v12 = v208;
              v9 = v212;
              v16 = v216;
              v136 = v171;
              v105 = v175;
              goto LABEL_162;
            }

            [v154 appendInt64Value:{objc_msgSend(v161, "longLongValue")}];
            ++v159;
            v160 = v163;
          }

          while (v157 != v159);
          v169 = v163;
          v157 = [v155 countByEnumeratingWithState:&v219 objects:v274 count:16];
          if (v157)
          {
            continue;
          }

          break;
        }
      }

      dictionaryCopy = v192;
      v10 = v200;
      v12 = v208;
      v9 = v212;
      v16 = v216;
      v57 = v179;
      v124 = v168;
    }

    else
    {
      v175 = v105;
      v154 = 0;
      v169 = v47;
    }

    v136 = v171;
    v14 = [[CCToolKitToolTypedValuePrimitiveValueRecurrenceRule alloc] initWithCalendar:v9 frequency:unsignedIntegerValue interval:v10 end:v16 matchingPolicy:unsignedIntegerValue2 repeatedTimePolicy:unsignedIntegerValue3 months:v218 daysOfTheYear:v57 daysOfTheMonth:v175 weeks:v182 weekdays:v180 hours:v171 minutes:v124 seconds:v170 setPositions:v154 error:errorCopy];
    v164 = v154;
    v105 = v175;
LABEL_162:

    v137 = v168;
    v143 = v170;
LABEL_163:

    goto LABEL_164;
  }

  CCSetError();
  v14 = 0;
LABEL_174:

  v165 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)jsonDictionary
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_calendar)
  {
    calendar = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self calendar];
    jsonDictionary = [calendar jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"calendar"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRule frequency](self, "frequency")}];
  [v3 setObject:v6 forKeyedSubscript:@"frequency"];

  if (self->_hasInterval)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRule interval](self, "interval")}];
    [v3 setObject:v7 forKeyedSubscript:@"interval"];
  }

  if (self->_end)
  {
    v8 = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self end];
    jsonDictionary2 = [v8 jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"end"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRule matchingPolicy](self, "matchingPolicy")}];
  [v3 setObject:v10 forKeyedSubscript:@"matchingPolicy"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValueRecurrenceRule repeatedTimePolicy](self, "repeatedTimePolicy")}];
  [v3 setObject:v11 forKeyedSubscript:@"repeatedTimePolicy"];

  if (self->_months)
  {
    v12 = objc_opt_new();
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    months = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self months];
    v14 = [months countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v72;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v72 != v16)
          {
            objc_enumerationMutation(months);
          }

          jsonDictionary3 = [*(*(&v71 + 1) + 8 * i) jsonDictionary];
          [v12 addObject:jsonDictionary3];
        }

        v15 = [months countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"months"];
  }

  if (self->_daysOfTheYear)
  {
    v19 = objc_opt_new();
    daysOfTheYear = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self daysOfTheYear];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke;
    v69[3] = &unk_1E73E8EF0;
    v70 = v19;
    v21 = v19;
    [daysOfTheYear enumerateInt64ValuesWithBlock:v69];

    [v3 setObject:v21 forKeyedSubscript:@"daysOfTheYear"];
  }

  if (self->_daysOfTheMonth)
  {
    v22 = objc_opt_new();
    daysOfTheMonth = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self daysOfTheMonth];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_2;
    v67[3] = &unk_1E73E8EF0;
    v68 = v22;
    v24 = v22;
    [daysOfTheMonth enumerateInt64ValuesWithBlock:v67];

    [v3 setObject:v24 forKeyedSubscript:@"daysOfTheMonth"];
  }

  if (self->_weeks)
  {
    v25 = objc_opt_new();
    weeks = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self weeks];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_3;
    v65[3] = &unk_1E73E8EF0;
    v66 = v25;
    v27 = v25;
    [weeks enumerateInt64ValuesWithBlock:v65];

    [v3 setObject:v27 forKeyedSubscript:@"weeks"];
  }

  if (self->_weekdays)
  {
    v28 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    weekdays = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self weekdays];
    v30 = [weekdays countByEnumeratingWithState:&v61 objects:v75 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v62;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v62 != v32)
          {
            objc_enumerationMutation(weekdays);
          }

          jsonDictionary4 = [*(*(&v61 + 1) + 8 * j) jsonDictionary];
          [v28 addObject:jsonDictionary4];
        }

        v31 = [weekdays countByEnumeratingWithState:&v61 objects:v75 count:16];
      }

      while (v31);
    }

    [v3 setObject:v28 forKeyedSubscript:@"weekdays"];
  }

  if (self->_hours)
  {
    v35 = objc_opt_new();
    hours = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self hours];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_4;
    v59[3] = &unk_1E73E8EF0;
    v60 = v35;
    v37 = v35;
    [hours enumerateInt64ValuesWithBlock:v59];

    [v3 setObject:v37 forKeyedSubscript:@"hours"];
  }

  if (self->_minutes)
  {
    v38 = objc_opt_new();
    minutes = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self minutes];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_5;
    v57[3] = &unk_1E73E8EF0;
    v58 = v38;
    v40 = v38;
    [minutes enumerateInt64ValuesWithBlock:v57];

    [v3 setObject:v40 forKeyedSubscript:@"minutes"];
  }

  if (self->_seconds)
  {
    v41 = objc_opt_new();
    seconds = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self seconds];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_6;
    v55[3] = &unk_1E73E8EF0;
    v56 = v41;
    v43 = v41;
    [seconds enumerateInt64ValuesWithBlock:v55];

    [v3 setObject:v43 forKeyedSubscript:@"seconds"];
  }

  if (self->_setPositions)
  {
    v44 = objc_opt_new();
    setPositions = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self setPositions];
    v50 = MEMORY[0x1E69E9820];
    v51 = 3221225472;
    v52 = __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_7;
    v53 = &unk_1E73E8EF0;
    v54 = v44;
    v46 = v44;
    [setPositions enumerateInt64ValuesWithBlock:&v50];

    [v3 setObject:v46 forKeyedSubscript:{@"setPositions", v50, v51, v52, v53}];
  }

  v47 = [v3 copy];

  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

void __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __69__CCToolKitToolTypedValuePrimitiveValueRecurrenceRule_jsonDictionary__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  [v2 addObject:v3];
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_calendar)
  {
    v5 = objc_alloc(MEMORY[0x1E69939F0]);
    v6 = *MEMORY[0x1E69939A8];
    v7 = [v5 initWithFieldType:v6 subMessageValue:self->_calendar];
    blockCopy[2](blockCopy, v7);
  }

  else
  {
    v6 = *MEMORY[0x1E69939A8];
  }

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_frequency];
  blockCopy[2](blockCopy, v8);

  if (self->_hasInterval)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int64Value:self->_interval];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_end)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_end];
    blockCopy[2](blockCopy, v10);
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_matchingPolicy];
  blockCopy[2](blockCopy, v11);

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_repeatedTimePolicy];
  blockCopy[2](blockCopy, v12);

  if (self->_months)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedSubMessageValue:self->_months];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_daysOfTheYear)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedInt64Value:self->_daysOfTheYear];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_daysOfTheMonth)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedInt64Value:self->_daysOfTheMonth];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_weeks)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedInt64Value:self->_weeks];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_weekdays)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedSubMessageValue:self->_weekdays];
    blockCopy[2](blockCopy, v17);
  }

  if (self->_hours)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedInt64Value:self->_hours];
    blockCopy[2](blockCopy, v18);
  }

  if (self->_minutes)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedInt64Value:self->_minutes];
    blockCopy[2](blockCopy, v19);
  }

  if (self->_seconds)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedInt64Value:self->_seconds];
    blockCopy[2](blockCopy, v20);
  }

  v21 = blockCopy;
  if (self->_setPositions)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 repeatedInt64Value:self->_setPositions];
    blockCopy[2](blockCopy, v22);

    v21 = blockCopy;
  }
}

- (NSArray)weekdays
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_weekdays copyItems:1];

  return v2;
}

- (NSArray)months
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_months copyItems:1];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd)end
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd *)self->_end copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)calendar
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar *)self->_calendar copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  errorCopy = error;
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] >= *&v5[*MEMORY[0x1E6993AB0]])
  {
    v98 = 0;
    v99 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v9 = 0;
    v100 = 0;
    v97 = 0;
LABEL_111:
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v9 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v101 = 0;
    v10 = MEMORY[0x1E6993AA8];
    v11 = MEMORY[0x1E6993AA0];
    do
    {
      if (*&v5[*v10])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (!v12)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v16 = *v6;
        v17 = *&v5[v16];
        v18 = v17 + 1;
        if (v17 == -1 || v18 > *&v5[*v7])
        {
          break;
        }

        v19 = *(*&v5[*v11] + v17);
        *&v5[v16] = v18;
        v15 |= (v19 & 0x7F) << v13;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v13 += 7;
        v20 = v14++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v5[*v10])
          {
            goto LABEL_111;
          }

          goto LABEL_21;
        }
      }

      *&v5[*v10] = 1;
LABEL_17:
      v22 = *&v5[*v10];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15;
      }

      if (v22)
      {
        goto LABEL_111;
      }

LABEL_21:
      switch((v21 >> 3))
      {
        case 1u:
          v23 = [CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar alloc];
          v24 = CCPBReaderReadDataNoCopy();
          v108 = 0;
          v25 = [(CCItemMessage *)v23 initWithData:v24 error:&v108];
          v8 = v108;
          v26 = 32;
          goto LABEL_52;
        case 2u:
          v49 = 0;
          v50 = 0;
          v30 = 0;
          while (2)
          {
            v51 = *v6;
            v52 = *&v5[v51];
            v53 = v52 + 1;
            if (v52 == -1 || v53 > *&v5[*v7])
            {
              *&v5[*v10] = 1;
            }

            else
            {
              v54 = *(*&v5[*v11] + v52);
              *&v5[v51] = v53;
              v30 |= (v54 & 0x7F) << v49;
              if (v54 < 0)
              {
                v49 += 7;
                v20 = v50++ >= 9;
                if (v20)
                {
                  LODWORD(v30) = 0;
                  goto LABEL_102;
                }

                continue;
              }
            }

            break;
          }

          if (*&v5[*v10])
          {
            LODWORD(v30) = 0;
          }

LABEL_102:
          v8 = 0;
          v68 = 20;
          goto LABEL_107;
        case 3u:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          while (2)
          {
            v40 = *v6;
            v41 = *&v5[v40];
            v42 = v41 + 1;
            if (v41 == -1 || v42 > *&v5[*v7])
            {
              *&v5[*v10] = 1;
            }

            else
            {
              v43 = *(*&v5[*v11] + v41);
              *&v5[v40] = v42;
              v39 |= (v43 & 0x7F) << v37;
              if (v43 < 0)
              {
                v37 += 7;
                v20 = v38++ >= 9;
                if (v20)
                {
                  v39 = 0;
                  goto LABEL_98;
                }

                continue;
              }
            }

            break;
          }

          if (*&v5[*v10])
          {
            v39 = 0;
          }

LABEL_98:
          v8 = 0;
          self->_interval = v39;
          self->_hasInterval = 1;
          continue;
        case 4u:
          v46 = [CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleEnd alloc];
          v24 = CCPBReaderReadDataNoCopy();
          v107 = 0;
          v25 = [(CCItemMessage *)v46 initWithData:v24 error:&v107];
          v8 = v107;
          v26 = 48;
LABEL_52:
          v47 = *(&self->super.super.isa + v26);
          *(&self->super.super.isa + v26) = v25;

          goto LABEL_53;
        case 5u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (2)
          {
            v31 = *v6;
            v32 = *&v5[v31];
            v33 = v32 + 1;
            if (v32 == -1 || v33 > *&v5[*v7])
            {
              *&v5[*v10] = 1;
            }

            else
            {
              v34 = *(*&v5[*v11] + v32);
              *&v5[v31] = v33;
              v30 |= (v34 & 0x7F) << v28;
              if (v34 < 0)
              {
                v28 += 7;
                v20 = v29++ >= 9;
                if (v20)
                {
                  LODWORD(v30) = 0;
                  goto LABEL_94;
                }

                continue;
              }
            }

            break;
          }

          if (*&v5[*v10])
          {
            LODWORD(v30) = 0;
          }

LABEL_94:
          v8 = 0;
          v68 = 24;
          goto LABEL_107;
        case 6u:
          v55 = 0;
          v56 = 0;
          v30 = 0;
          break;
        case 7u:
          v62 = CCPBReaderReadDataNoCopy();
          if (!v97)
          {
            v97 = objc_opt_new();
          }

          v63 = [CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleMonth alloc];
          v106 = 0;
          v64 = [(CCItemMessage *)v63 initWithData:v62 error:&v106];
          v8 = v106;
          if (v8 || !v64)
          {
            goto LABEL_85;
          }

          v65 = v97;
          goto LABEL_84;
        case 8u:
          v48 = v100;
          if (!v100)
          {
            v48 = objc_opt_new();
          }

          v100 = v48;
          goto LABEL_89;
        case 9u:
          v67 = v99;
          if (!v99)
          {
            v67 = objc_opt_new();
          }

          v99 = v67;
          goto LABEL_89;
        case 0xAu:
          v36 = v98;
          if (!v98)
          {
            v36 = objc_opt_new();
          }

          v98 = v36;
          goto LABEL_89;
        case 0xBu:
          v62 = CCPBReaderReadDataNoCopy();
          if (!v101)
          {
            v101 = objc_opt_new();
          }

          v66 = [CCToolKitToolTypedValuePrimitiveValueRecurrenceRuleRecurrenceRuleWeekday alloc];
          v105 = 0;
          v64 = [(CCItemMessage *)v66 initWithData:v62 error:&v105];
          v8 = v105;
          if (v8 || !v64)
          {
            goto LABEL_85;
          }

          v65 = v101;
LABEL_84:
          [v65 addObject:{v64, errorCopy}];
LABEL_85:

          continue;
        case 0xCu:
          v27 = v104;
          if (!v104)
          {
            v27 = objc_opt_new();
          }

          v104 = v27;
          goto LABEL_89;
        case 0xDu:
          v35 = v103;
          if (!v103)
          {
            v35 = objc_opt_new();
          }

          v103 = v35;
          goto LABEL_89;
        case 0xEu:
          v61 = v102;
          if (!v102)
          {
            v61 = objc_opt_new();
          }

          v102 = v61;
          goto LABEL_89;
        case 0xFu:
          if (!v9)
          {
            v9 = objc_opt_new();
          }

LABEL_89:
          CCPBReaderAppendRepeatedInt64FieldValues();
          goto LABEL_90;
        default:
          if (CCPBReaderSkipValueWithTag())
          {
LABEL_90:
            v8 = 0;
          }

          else
          {
            v44 = objc_opt_class();
            v24 = NSStringFromClass(v44);
            v45 = *&v5[*v10];
            v8 = CCSkipFieldErrorForMessage();
LABEL_53:
          }

          continue;
      }

      while (1)
      {
        v57 = *v6;
        v58 = *&v5[v57];
        v59 = v58 + 1;
        if (v58 == -1 || v59 > *&v5[*v7])
        {
          break;
        }

        v60 = *(*&v5[*v11] + v58);
        *&v5[v57] = v59;
        v30 |= (v60 & 0x7F) << v55;
        if ((v60 & 0x80) == 0)
        {
          goto LABEL_104;
        }

        v55 += 7;
        v20 = v56++ >= 9;
        if (v20)
        {
          LODWORD(v30) = 0;
          goto LABEL_106;
        }
      }

      *&v5[*v10] = 1;
LABEL_104:
      if (*&v5[*v10])
      {
        LODWORD(v30) = 0;
      }

LABEL_106:
      v8 = 0;
      v68 = 28;
LABEL_107:
      *(&self->super.super.isa + v68) = v30;
    }

    while (*&v5[*v6] < *&v5[*v7]);
  }

  v69 = [v97 copy];
  months = self->_months;
  self->_months = v69;

  v71 = [v100 copy];
  daysOfTheYear = self->_daysOfTheYear;
  self->_daysOfTheYear = v71;

  v73 = [v99 copy];
  daysOfTheMonth = self->_daysOfTheMonth;
  self->_daysOfTheMonth = v73;

  v75 = [v98 copy];
  weeks = self->_weeks;
  self->_weeks = v75;

  v77 = [v101 copy];
  weekdays = self->_weekdays;
  self->_weekdays = v77;

  v79 = [v104 copy];
  hours = self->_hours;
  self->_hours = v79;

  v81 = [v103 copy];
  minutes = self->_minutes;
  self->_minutes = v81;

  v83 = [v102 copy];
  seconds = self->_seconds;
  self->_seconds = v83;

  v85 = [v9 copy];
  setPositions = self->_setPositions;
  self->_setPositions = v85;

  if (v8)
  {
    CCSetError();
    v87 = 0;
    v88 = dataCopy;
  }

  else
  {
    v89 = MEMORY[0x1E6993AA8];
    v88 = dataCopy;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v90 = objc_opt_class();
      v91 = NSStringFromClass(v90);
      v92 = *&v5[*v89];
      v93 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v87 = 0;
    }

    else
    {
      v87 = 1;
    }
  }

  return v87;
}

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRule)initWithCalendar:(id)calendar frequency:(unsigned int)frequency interval:(id)interval end:(id)end matchingPolicy:(unsigned int)policy repeatedTimePolicy:(unsigned int)timePolicy months:(id)months daysOfTheYear:(id)self0 daysOfTheMonth:(id)self1 weeks:(id)self2 weekdays:(id)self3 hours:(id)self4 minutes:(id)self5 seconds:(id)self6 setPositions:(id)self7 error:(id *)self8
{
  v109 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  intervalCopy = interval;
  endCopy = end;
  monthsCopy = months;
  yearCopy = year;
  monthCopy = month;
  weeksCopy = weeks;
  weekdaysCopy = weekdays;
  hoursCopy = hours;
  minutesCopy = minutes;
  secondsCopy = seconds;
  positionsCopy = positions;
  v23 = objc_opt_new();
  if (calendarCopy)
  {
    objc_opt_class();
    v106 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v25 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v31 = 0;
      v32 = monthsCopy;
      v27 = endCopy;
LABEL_62:
      v28 = intervalCopy;
      goto LABEL_63;
    }

    data = [calendarCopy data];
    CCPBDataWriterWriteDataField();
  }

  else
  {
    v25 = 0;
  }

  v27 = endCopy;
  v28 = intervalCopy;
  if (frequency)
  {
    v105 = v25;
    v29 = CCValidateEnumField();
    v30 = v25;

    if (!v29)
    {
      CCSetError();
      v31 = 0;
      v25 = v30;
      goto LABEL_18;
    }

    CCPBDataWriterWriteUint32Field();
    if (!intervalCopy)
    {
LABEL_8:
      v25 = v30;
      goto LABEL_13;
    }
  }

  else
  {
    v30 = v25;
    if (!intervalCopy)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v104 = v30;
  v33 = CCValidateIsInstanceOfExpectedClass();
  v25 = v30;

  if (v33)
  {
    [intervalCopy longLongValue];
    CCPBDataWriterWriteInt64Field();
LABEL_13:
    v32 = monthsCopy;
    if (endCopy)
    {
      objc_opt_class();
      v103 = v25;
      v34 = CCValidateIsInstanceOfExpectedClass();
      v35 = v25;

      if (!v34)
      {
        goto LABEL_49;
      }

      data2 = [endCopy data];
      CCPBDataWriterWriteDataField();
    }

    else
    {
      v35 = v25;
    }

    if (policy)
    {
      v102 = v35;
      v37 = CCValidateEnumField();
      v25 = v35;

      if (!v37)
      {
        goto LABEL_61;
      }

      CCPBDataWriterWriteUint32Field();
    }

    else
    {
      v25 = v35;
    }

    if (timePolicy)
    {
      v101 = v25;
      v38 = CCValidateEnumField();
      v35 = v25;

      if (!v38)
      {
        goto LABEL_49;
      }

      CCPBDataWriterWriteUint32Field();
      if (!monthsCopy)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v35 = v25;
      if (!monthsCopy)
      {
LABEL_27:
        v25 = v35;
LABEL_38:
        v46 = 0x1E6993000uLL;
        if (!yearCopy)
        {
          v35 = v25;
          goto LABEL_42;
        }

        objc_opt_class();
        v95 = v25;
        v47 = CCValidateIsInstanceOfExpectedClass();
        v35 = v25;

        if (v47)
        {
          CCPBDataWriterWriteRepeatedInt64Field();
          v46 = 0x1E6993000;
LABEL_42:
          if (!monthCopy)
          {
            v25 = v35;
            goto LABEL_46;
          }

          v48 = *(v46 + 2624);
          objc_opt_class();
          v94 = v35;
          v49 = CCValidateIsInstanceOfExpectedClass();
          v25 = v35;

          if (v49)
          {
            CCPBDataWriterWriteRepeatedInt64Field();
            v46 = 0x1E6993000;
LABEL_46:
            if (!weeksCopy)
            {
              v35 = v25;
              goto LABEL_51;
            }

            v50 = *(v46 + 2624);
            objc_opt_class();
            v93 = v25;
            v51 = CCValidateIsInstanceOfExpectedClass();
            v35 = v25;

            if (v51)
            {
              CCPBDataWriterWriteRepeatedInt64Field();
              v46 = 0x1E6993000;
LABEL_51:
              if (!weekdaysCopy)
              {
                v25 = v35;
                goto LABEL_66;
              }

              objc_opt_class();
              v92 = v35;
              v52 = CCValidateArrayValues();
              v25 = v35;

              if (v52)
              {
                v77 = calendarCopy;
                v90 = 0u;
                v91 = 0u;
                v88 = 0u;
                v89 = 0u;
                v53 = weekdaysCopy;
                v54 = [v53 countByEnumeratingWithState:&v88 objects:v107 count:16];
                if (v54)
                {
                  v55 = v54;
                  v56 = *v89;
                  do
                  {
                    for (i = 0; i != v55; ++i)
                    {
                      if (*v89 != v56)
                      {
                        objc_enumerationMutation(v53);
                      }

                      data3 = [*(*(&v88 + 1) + 8 * i) data];
                      CCPBDataWriterWriteDataField();
                    }

                    v55 = [v53 countByEnumeratingWithState:&v88 objects:v107 count:16];
                  }

                  while (v55);
                }

                calendarCopy = v77;
                v32 = monthsCopy;
                v27 = endCopy;
                v46 = 0x1E6993000;
LABEL_66:
                v60 = minutesCopy;
                v59 = hoursCopy;
                if (hoursCopy)
                {
                  v63 = *(v46 + 2624);
                  objc_opt_class();
                  v64 = CCValidateIsInstanceOfExpectedClass();
                  v65 = v25;

                  if (!v64)
                  {
                    goto LABEL_77;
                  }

                  CCPBDataWriterWriteRepeatedInt64Field();
                  v46 = 0x1E6993000;
                }

                else
                {
                  v65 = v25;
                }

                if (minutesCopy)
                {
                  v66 = *(v46 + 2624);
                  objc_opt_class();
                  v67 = CCValidateIsInstanceOfExpectedClass();
                  v25 = v65;

                  if (!v67)
                  {
LABEL_82:
                    CCSetError();
                    v31 = 0;
                    goto LABEL_83;
                  }

                  CCPBDataWriterWriteRepeatedInt64Field();
                  v46 = 0x1E6993000;
                }

                else
                {
                  v25 = v65;
                }

                if (!secondsCopy)
                {
                  v65 = v25;
                  goto LABEL_79;
                }

                v68 = *(v46 + 2624);
                objc_opt_class();
                v69 = CCValidateIsInstanceOfExpectedClass();
                v65 = v25;

                if (v69)
                {
                  CCPBDataWriterWriteRepeatedInt64Field();
                  v46 = 0x1E6993000;
LABEL_79:
                  if (!positionsCopy)
                  {
                    v25 = v65;
                    goto LABEL_85;
                  }

                  v70 = *(v46 + 2624);
                  objc_opt_class();
                  v71 = CCValidateIsInstanceOfExpectedClass();
                  v25 = v65;

                  if (v71)
                  {
                    CCPBDataWriterWriteRepeatedInt64Field();
LABEL_85:
                    v28 = intervalCopy;
                    immutableData = [v23 immutableData];
                    v31 = [(CCItemMessage *)self initWithData:immutableData error:error];

                    self = v31;
                    goto LABEL_64;
                  }

                  goto LABEL_82;
                }

LABEL_77:
                CCSetError();
                v31 = 0;
                v25 = v65;
LABEL_83:
                v28 = intervalCopy;
                goto LABEL_64;
              }

              goto LABEL_61;
            }

            goto LABEL_49;
          }

LABEL_61:
          CCSetError();
          v31 = 0;
          goto LABEL_62;
        }

LABEL_49:
        CCSetError();
        v31 = 0;
        v25 = v35;
        goto LABEL_62;
      }
    }

    objc_opt_class();
    v100 = v35;
    v39 = CCValidateArrayValues();
    v25 = v35;

    if (!v39)
    {
      goto LABEL_61;
    }

    v76 = calendarCopy;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v40 = monthsCopy;
    v41 = [v40 countByEnumeratingWithState:&v96 objects:v108 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v97;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v97 != v43)
          {
            objc_enumerationMutation(v40);
          }

          data4 = [*(*(&v96 + 1) + 8 * j) data];
          CCPBDataWriterWriteDataField();
        }

        v42 = [v40 countByEnumeratingWithState:&v96 objects:v108 count:16];
      }

      while (v42);
    }

    calendarCopy = v76;
    v32 = monthsCopy;
    v27 = endCopy;
    goto LABEL_38;
  }

  CCSetError();
  v31 = 0;
LABEL_18:
  v32 = monthsCopy;
LABEL_63:
  v60 = minutesCopy;
  v59 = hoursCopy;
LABEL_64:

  v61 = *MEMORY[0x1E69E9840];
  return v31;
}

@end
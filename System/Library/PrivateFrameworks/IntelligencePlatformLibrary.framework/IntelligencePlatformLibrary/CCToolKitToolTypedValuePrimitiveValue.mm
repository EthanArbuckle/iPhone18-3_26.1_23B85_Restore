@interface CCToolKitToolTypedValuePrimitiveValue
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTimestamp)date;
- (CCToolKitToolTypedValuePrimitiveValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValue)initWithPrimitiveValue_kind:(id)value_kind primitiveValue_kindType:(unsigned int)type error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueApp)app;
- (CCToolKitToolTypedValuePrimitiveValueCurrencyAmount)currencyAmount;
- (CCToolKitToolTypedValuePrimitiveValueDateComponents)encodedDateComponents;
- (CCToolKitToolTypedValuePrimitiveValueDateInterval)dateInterval;
- (CCToolKitToolTypedValuePrimitiveValueDecimal)decimal;
- (CCToolKitToolTypedValuePrimitiveValueDuration)duration;
- (CCToolKitToolTypedValuePrimitiveValueFile)file;
- (CCToolKitToolTypedValuePrimitiveValueMeasurement)measurement;
- (CCToolKitToolTypedValuePrimitiveValuePaymentMethod)paymentMethod;
- (CCToolKitToolTypedValuePrimitiveValuePerson)person;
- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponents)personNameComponents;
- (CCToolKitToolTypedValuePrimitiveValuePlacemark)placemark;
- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRule)recurrenceRule;
- (CCToolKitToolTypedValuePrimitiveValueShortcut)shortcut;
- (NSData)attributedString;
- (NSData)dateComponents;
- (NSData)searchableItem;
- (NSString)string;
- (NSString)url;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValue

- (CCToolKitToolTypedValuePrimitiveValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v196[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"noneVariant"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"BOOLType"];
    v181 = [dictionaryCopy objectForKeyedSubscript:@"intType"];
    v180 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"decimal"];
    if (v11)
    {
      v196[0] = 0;
      v12 = [[CCToolKitToolTypedValuePrimitiveValueDecimal alloc] initWithJSONDictionary:v11 error:v196];
      v13 = v196[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();
        v21 = 0;
LABEL_167:

        goto LABEL_168;
      }

      v15 = v12;

      v11 = v15;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"string"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"date"];
    v179 = v10;
    if (v12)
    {
      v16 = [CCToolKitToolTimestamp alloc];
      v195 = 0;
      v17 = [(CCToolKitToolTimestamp *)v16 initWithJSONDictionary:v12 error:&v195];
      v18 = v195;
      v19 = v18;
      if (!v17 || v18)
      {
        CCSetError();

        v21 = 0;
        v10 = v179;
        goto LABEL_166;
      }

      v177 = v9;
      v20 = v17;

      v12 = v20;
      v10 = v179;
    }

    else
    {
      v177 = v9;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"dateComponents"];
    if (!v19)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    v194[2] = v8;
    v22 = CCValidateIsInstanceOfExpectedClass();
    v23 = v8;

    if (v22)
    {
      v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v19 options:0];

      v19 = v24;
      v8 = v23;
      v10 = v179;
LABEL_16:
      v176 = [dictionaryCopy objectForKeyedSubscript:@"url"];
      v25 = [dictionaryCopy objectForKeyedSubscript:@"attributedString"];
      if (v25)
      {
        v173 = v12;
        v26 = v11;
        v27 = v19;
        selfCopy = self;
        v29 = v14;
        v30 = v25;
        objc_opt_class();
        v194[1] = v8;
        v31 = CCValidateIsInstanceOfExpectedClass();
        v32 = v8;

        if ((v31 & 1) == 0)
        {
          v175 = v30;
          CCSetError();
          v21 = 0;
          v8 = v32;
          v9 = v177;
          v10 = v179;
          v14 = v29;
          self = selfCopy;
          v19 = v27;
          v11 = v26;
          v12 = v173;
LABEL_165:

          goto LABEL_166;
        }

        v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v30 options:0];

        v175 = v33;
        v8 = v32;
        v10 = v179;
        v14 = v29;
        self = selfCopy;
        v19 = v27;
        v11 = v26;
        v12 = v173;
      }

      else
      {
        v175 = 0;
      }

      v34 = [dictionaryCopy objectForKeyedSubscript:@"measurement"];
      if (v34)
      {
        v35 = v34;
        v36 = [CCToolKitToolTypedValuePrimitiveValueMeasurement alloc];
        v194[0] = 0;
        v174 = v35;
        v37 = [(CCToolKitToolTypedValuePrimitiveValueMeasurement *)v36 initWithJSONDictionary:v35 error:v194];
        v38 = v194[0];
        if (!v37 || v38)
        {
          v171 = v37;
          v172 = v38;
          CCSetError();
          v21 = 0;
          v9 = v177;
          goto LABEL_164;
        }

        v39 = v37;

        v174 = v39;
      }

      else
      {
        v174 = 0;
      }

      v40 = [dictionaryCopy objectForKeyedSubscript:@"currencyAmount"];
      if (!v40)
      {
        v172 = 0;
LABEL_34:
        v46 = [dictionaryCopy objectForKeyedSubscript:@"paymentMethod"];
        if (v46)
        {
          v47 = [CCToolKitToolTypedValuePrimitiveValuePaymentMethod alloc];
          v192 = 0;
          v171 = v46;
          v48 = [(CCToolKitToolTypedValuePrimitiveValuePaymentMethod *)v47 initWithJSONDictionary:v46 error:&v192];
          v49 = v192;
          if (!v48 || v49)
          {
            v168 = v48;
            v169 = v49;
            CCSetError();
            v21 = 0;
            v9 = v177;

LABEL_163:
            goto LABEL_164;
          }

          v46 = v48;
        }

        v171 = v46;
        v50 = [dictionaryCopy objectForKeyedSubscript:@"placemark"];
        if (v50)
        {
          v51 = [CCToolKitToolTypedValuePrimitiveValuePlacemark alloc];
          v191 = 0;
          v169 = v50;
          v52 = [(CCToolKitToolTypedValuePrimitiveValuePlacemark *)v51 initWithJSONDictionary:v50 error:&v191];
          v53 = v191;
          if (!v52 || v53)
          {
            v166 = v52;
            v167 = v53;
            CCSetError();
            v21 = 0;
            v9 = v177;

LABEL_162:
            goto LABEL_163;
          }

          v50 = v52;
        }

        v169 = v50;
        v54 = [dictionaryCopy objectForKeyedSubscript:@"person"];
        if (v54)
        {
          v55 = [CCToolKitToolTypedValuePrimitiveValuePerson alloc];
          v190 = 0;
          v167 = v54;
          v56 = [(CCToolKitToolTypedValuePrimitiveValuePerson *)v55 initWithJSONDictionary:v54 error:&v190];
          v57 = v190;
          if (!v56 || v57)
          {
            v164 = v56;
            v165 = v57;
            CCSetError();
            v21 = 0;
            v9 = v177;

LABEL_161:
            goto LABEL_162;
          }

          v54 = v56;
        }

        v167 = v54;
        v58 = [dictionaryCopy objectForKeyedSubscript:@"file"];
        if (v58)
        {
          v59 = [CCToolKitToolTypedValuePrimitiveValueFile alloc];
          v189 = 0;
          v165 = v58;
          v60 = [(CCToolKitToolTypedValuePrimitiveValueFile *)v59 initWithJSONDictionary:v58 error:&v189];
          v61 = v189;
          if (!v60 || v61)
          {
            v161 = v60;
            v163 = v61;
            goto LABEL_73;
          }

          v58 = v60;
        }

        v165 = v58;
        v62 = [dictionaryCopy objectForKeyedSubscript:@"app"];
        if (v62)
        {
          v63 = [CCToolKitToolTypedValuePrimitiveValueApp alloc];
          v188 = 0;
          v163 = v62;
          v64 = [(CCToolKitToolTypedValuePrimitiveValueApp *)v63 initWithJSONDictionary:v62 error:&v188];
          v65 = v188;
          if (!v64 || v65)
          {
            v162 = v65;
            CCSetError();

            v21 = 0;
            v9 = v177;
            v10 = v179;

LABEL_160:
            goto LABEL_161;
          }

          v62 = v64;

          v10 = v179;
        }

        v163 = v62;
        v66 = [dictionaryCopy objectForKeyedSubscript:@"searchableItem"];
        if (!v66)
        {
          v69 = 0;
LABEL_64:
          v161 = v69;
          v70 = [dictionaryCopy objectForKeyedSubscript:@"encodedDateComponents"];
          if (v70)
          {
            v71 = [CCToolKitToolTypedValuePrimitiveValueDateComponents alloc];
            v187[0] = 0;
            v160 = v70;
            v72 = [(CCToolKitToolTypedValuePrimitiveValueDateComponents *)v71 initWithJSONDictionary:v70 error:v187];
            v73 = v187[0];
            if (!v72 || v73)
            {
              v157 = v73;
              v158 = v72;
              CCSetError();
              v21 = 0;
              v9 = v177;
LABEL_158:

              goto LABEL_159;
            }

            v70 = v72;
          }

          v160 = v70;
          v74 = [dictionaryCopy objectForKeyedSubscript:@"shortcut"];
          if (v74)
          {
            v75 = v74;
            v76 = [CCToolKitToolTypedValuePrimitiveValueShortcut alloc];
            v186 = 0;
            v157 = v75;
            v77 = [(CCToolKitToolTypedValuePrimitiveValueShortcut *)v76 initWithJSONDictionary:v75 error:&v186];
            v78 = v186;
            v156 = v77;
            if (!v77 || v78)
            {
              v158 = v78;
              CCSetError();
              v21 = 0;
              v9 = v177;
LABEL_157:

              goto LABEL_158;
            }

            v79 = v77;

            v157 = v79;
          }

          else
          {
            v157 = 0;
          }

          v9 = v177;
          v80 = [dictionaryCopy objectForKeyedSubscript:@"recurrenceRule"];
          if (v80)
          {
            v158 = v80;
            v81 = [CCToolKitToolTypedValuePrimitiveValueRecurrenceRule alloc];
            v185 = 0;
            v155 = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)v81 initWithJSONDictionary:v158 error:&v185];
            v82 = v185;
            if (!v155 || v82)
            {
              v156 = v82;
              CCSetError();
              v21 = 0;
LABEL_156:

              goto LABEL_157;
            }

            v83 = v155;

            v158 = v83;
            v9 = v177;
            v10 = v179;
          }

          else
          {
            v158 = 0;
          }

          v84 = [dictionaryCopy objectForKeyedSubscript:@"dateInterval"];
          if (v84)
          {
            v156 = v84;
            v85 = [CCToolKitToolTypedValuePrimitiveValueDateInterval alloc];
            v184 = 0;
            v154 = [(CCToolKitToolTypedValuePrimitiveValueDateInterval *)v85 initWithJSONDictionary:v156 error:&v184];
            v86 = v184;
            if (!v154 || v86)
            {
              v155 = v86;
              CCSetError();
              v21 = 0;
LABEL_155:

              goto LABEL_156;
            }

            v87 = v9;
            v88 = v154;

            v156 = v88;
            v9 = v87;
            v10 = v179;
          }

          else
          {
            v156 = 0;
          }

          v89 = [dictionaryCopy objectForKeyedSubscript:@"personNameComponents"];
          if (v89)
          {
            v155 = v89;
            v90 = [CCToolKitToolTypedValuePrimitiveValuePersonNameComponents alloc];
            v183 = 0;
            v153 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)v90 initWithJSONDictionary:v155 error:&v183];
            v91 = v183;
            if (!v153 || v91)
            {
              v154 = v91;
              CCSetError();
              v21 = 0;
LABEL_154:

              goto LABEL_155;
            }

            v92 = v9;
            v93 = v153;

            v155 = v93;
            v9 = v92;
            v10 = v179;
          }

          else
          {
            v155 = 0;
          }

          v94 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
          if (v94)
          {
            v95 = v94;
            v96 = [CCToolKitToolTypedValuePrimitiveValueDuration alloc];
            v182 = 0;
            v154 = v95;
            v97 = [(CCToolKitToolTypedValuePrimitiveValueDuration *)v96 initWithJSONDictionary:v95 error:&v182];
            v98 = v182;
            if (!v97 || v98)
            {
              v153 = v98;
              CCSetError();

              v21 = 0;
LABEL_153:
              v10 = v179;
              goto LABEL_154;
            }

            v99 = v97;
            v100 = v9;
            v101 = v99;

            v102 = v101;
            v9 = v100;
            v10 = v179;
          }

          else
          {
            v102 = 0;
          }

          v154 = v102;
          if (v9)
          {
            v103 = v9;
            v104 = 1;
          }

          else
          {
            v104 = 0;
          }

          v105 = v9;
          if (v10)
          {
            v106 = v10;

            v105 = v106;
            v104 = 2;
          }

          v178 = v9;
          if (v181)
          {
            v107 = v105;
            v108 = v181;

            v109 = 3;
            v105 = v108;
          }

          else
          {
            v109 = v104;
          }

          if (v180)
          {
            v110 = v105;
            v111 = v180;

            v109 = 4;
            v105 = v111;
          }

          if (v11)
          {
            v112 = v105;
            v113 = v11;

            v109 = 5;
            v105 = v113;
          }

          if (v14)
          {
            v114 = v105;
            v115 = v14;

            v109 = 6;
            v105 = v115;
          }

          if (v12)
          {
            v116 = v105;
            v117 = v12;

            v109 = 7;
            v105 = v117;
          }

          if (v19)
          {
            v118 = v105;
            v119 = v19;

            v109 = 8;
            v105 = v119;
          }

          if (v176)
          {
            v120 = v105;
            v121 = v176;

            v109 = 9;
            v105 = v121;
          }

          if (v175)
          {
            v122 = v105;
            v123 = v175;

            v109 = 10;
            v105 = v123;
          }

          if (v174)
          {
            v124 = v105;
            v125 = v174;

            v109 = 11;
            v105 = v125;
          }

          if (v172)
          {
            v126 = v105;
            v127 = v172;

            v109 = 12;
            v105 = v127;
          }

          if (v171)
          {
            v128 = v105;
            v129 = v171;

            v109 = 13;
            v105 = v129;
          }

          if (v169)
          {
            v130 = v105;
            v131 = v169;

            v109 = 14;
            v105 = v131;
          }

          if (v167)
          {
            v132 = v105;
            v133 = v167;

            v109 = 15;
            v105 = v133;
          }

          if (v165)
          {
            v134 = v105;
            v135 = v165;

            v109 = 16;
            v105 = v135;
          }

          if (v163)
          {
            v136 = v105;
            v137 = v163;

            v109 = 17;
            v105 = v137;
          }

          if (v161)
          {
            v138 = v105;
            v139 = v161;

            v109 = 18;
            v105 = v139;
          }

          if (v160)
          {
            v140 = v105;
            v141 = v160;

            v109 = 19;
            v105 = v141;
          }

          if (v157)
          {
            v142 = v105;
            v143 = v157;

            v109 = 20;
            v105 = v143;
          }

          if (v158)
          {
            v144 = v105;
            v145 = v158;

            v109 = 22;
            v105 = v145;
          }

          if (v156)
          {
            v146 = v105;
            v147 = v156;

            v109 = 23;
            v105 = v147;
          }

          if (v155)
          {
            v148 = v105;
            v149 = v155;

            v109 = 24;
            v105 = v149;
          }

          if (v154)
          {
            v150 = v105;
            v151 = v154;

            v109 = 25;
            v153 = v151;
            v9 = v178;
          }

          else
          {
            v9 = v178;
            v153 = v105;
          }

          v21 = [[CCToolKitToolTypedValuePrimitiveValue alloc] initWithPrimitiveValue_kind:v153 primitiveValue_kindType:v109 error:error];
          goto LABEL_153;
        }

        v67 = v66;
        objc_opt_class();
        v187[1] = v8;
        v161 = v67;
        LOBYTE(v67) = CCValidateIsInstanceOfExpectedClass();
        v159 = v8;

        if (v67)
        {
          v68 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v161 options:0];

          v69 = v68;
          v8 = v159;
          goto LABEL_64;
        }

        v8 = v159;
LABEL_73:
        CCSetError();
        v21 = 0;
        v9 = v177;
LABEL_159:

        goto LABEL_160;
      }

      v41 = v40;
      v42 = [CCToolKitToolTypedValuePrimitiveValueCurrencyAmount alloc];
      v193 = 0;
      v172 = v41;
      v43 = [(CCToolKitToolTypedValuePrimitiveValueCurrencyAmount *)v42 initWithJSONDictionary:v41 error:&v193];
      v44 = v193;
      if (v43 && !v44)
      {
        v45 = v43;

        v172 = v45;
        goto LABEL_34;
      }

      v170 = v43;
      v171 = v44;
      CCSetError();
      v21 = 0;
      v9 = v177;

LABEL_164:
      goto LABEL_165;
    }

    CCSetError();
    v21 = 0;
    v8 = v23;
    v9 = v177;
    v10 = v179;
LABEL_166:

    goto LABEL_167;
  }

  CCSetError();
  v21 = 0;
LABEL_168:

  return v21;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  primitiveValue_kindType = self->_primitiveValue_kindType;
  if (primitiveValue_kindType == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypedValuePrimitiveValue noneVariant](self, "noneVariant")}];
    [v3 setObject:v5 forKeyedSubscript:@"noneVariant"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 2)
  {
    if (!self->_hasBoolType)
    {
      goto LABEL_72;
    }

    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCToolKitToolTypedValuePrimitiveValue BOOLType](self, "BOOLType")}];
    [v3 setObject:v6 forKeyedSubscript:@"BOOLType"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 3)
  {
    if (!self->_hasIntType)
    {
      goto LABEL_72;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValue intType](self, "intType")}];
    [v3 setObject:v7 forKeyedSubscript:@"intType"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 4)
  {
    if (!self->_hasNumber)
    {
      goto LABEL_72;
    }

    v8 = MEMORY[0x1E696AD98];
    [(CCToolKitToolTypedValuePrimitiveValue *)self number];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"number"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 5)
  {
    if (!self->_decimal)
    {
      goto LABEL_72;
    }

    decimal = [(CCToolKitToolTypedValuePrimitiveValue *)self decimal];
    jsonDictionary = [decimal jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"decimal"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 6)
  {
    if (!self->_string)
    {
      goto LABEL_72;
    }

    string = [(CCToolKitToolTypedValuePrimitiveValue *)self string];
    [v3 setObject:string forKeyedSubscript:@"string"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 7)
  {
    if (!self->_date)
    {
      goto LABEL_72;
    }

    date = [(CCToolKitToolTypedValuePrimitiveValue *)self date];
    jsonDictionary2 = [date jsonDictionary];
    [v3 setObject:jsonDictionary2 forKeyedSubscript:@"date"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 8)
  {
    if (!self->_dateComponents)
    {
      goto LABEL_72;
    }

    dateComponents = [(CCToolKitToolTypedValuePrimitiveValue *)self dateComponents];
    v16 = [dateComponents base64EncodedStringWithOptions:0];
    [v3 setObject:v16 forKeyedSubscript:@"dateComponents"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 9)
  {
    if (!self->_url)
    {
      goto LABEL_72;
    }

    v17 = [(CCToolKitToolTypedValuePrimitiveValue *)self url];
    [v3 setObject:v17 forKeyedSubscript:@"url"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 10)
  {
    if (!self->_attributedString)
    {
      goto LABEL_72;
    }

    attributedString = [(CCToolKitToolTypedValuePrimitiveValue *)self attributedString];
    v19 = [attributedString base64EncodedStringWithOptions:0];
    [v3 setObject:v19 forKeyedSubscript:@"attributedString"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 11)
  {
    if (!self->_measurement)
    {
      goto LABEL_72;
    }

    measurement = [(CCToolKitToolTypedValuePrimitiveValue *)self measurement];
    jsonDictionary3 = [measurement jsonDictionary];
    [v3 setObject:jsonDictionary3 forKeyedSubscript:@"measurement"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 12)
  {
    if (!self->_currencyAmount)
    {
      goto LABEL_72;
    }

    currencyAmount = [(CCToolKitToolTypedValuePrimitiveValue *)self currencyAmount];
    jsonDictionary4 = [currencyAmount jsonDictionary];
    [v3 setObject:jsonDictionary4 forKeyedSubscript:@"currencyAmount"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 13)
  {
    if (!self->_paymentMethod)
    {
      goto LABEL_72;
    }

    paymentMethod = [(CCToolKitToolTypedValuePrimitiveValue *)self paymentMethod];
    jsonDictionary5 = [paymentMethod jsonDictionary];
    [v3 setObject:jsonDictionary5 forKeyedSubscript:@"paymentMethod"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 14)
  {
    if (!self->_placemark)
    {
      goto LABEL_72;
    }

    placemark = [(CCToolKitToolTypedValuePrimitiveValue *)self placemark];
    jsonDictionary6 = [placemark jsonDictionary];
    [v3 setObject:jsonDictionary6 forKeyedSubscript:@"placemark"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 15)
  {
    if (!self->_person)
    {
      goto LABEL_72;
    }

    person = [(CCToolKitToolTypedValuePrimitiveValue *)self person];
    jsonDictionary7 = [person jsonDictionary];
    [v3 setObject:jsonDictionary7 forKeyedSubscript:@"person"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 16)
  {
    if (!self->_file)
    {
      goto LABEL_72;
    }

    file = [(CCToolKitToolTypedValuePrimitiveValue *)self file];
    jsonDictionary8 = [file jsonDictionary];
    [v3 setObject:jsonDictionary8 forKeyedSubscript:@"file"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 17)
  {
    if (!self->_app)
    {
      goto LABEL_72;
    }

    v32 = [(CCToolKitToolTypedValuePrimitiveValue *)self app];
    jsonDictionary9 = [v32 jsonDictionary];
    [v3 setObject:jsonDictionary9 forKeyedSubscript:@"app"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 18)
  {
    if (!self->_searchableItem)
    {
      goto LABEL_72;
    }

    searchableItem = [(CCToolKitToolTypedValuePrimitiveValue *)self searchableItem];
    v35 = [searchableItem base64EncodedStringWithOptions:0];
    [v3 setObject:v35 forKeyedSubscript:@"searchableItem"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 19)
  {
    if (!self->_encodedDateComponents)
    {
      goto LABEL_72;
    }

    encodedDateComponents = [(CCToolKitToolTypedValuePrimitiveValue *)self encodedDateComponents];
    jsonDictionary10 = [encodedDateComponents jsonDictionary];
    [v3 setObject:jsonDictionary10 forKeyedSubscript:@"encodedDateComponents"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 20)
  {
    if (!self->_shortcut)
    {
      goto LABEL_72;
    }

    shortcut = [(CCToolKitToolTypedValuePrimitiveValue *)self shortcut];
    jsonDictionary11 = [shortcut jsonDictionary];
    [v3 setObject:jsonDictionary11 forKeyedSubscript:@"shortcut"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 22)
  {
    if (!self->_recurrenceRule)
    {
      goto LABEL_72;
    }

    recurrenceRule = [(CCToolKitToolTypedValuePrimitiveValue *)self recurrenceRule];
    jsonDictionary12 = [recurrenceRule jsonDictionary];
    [v3 setObject:jsonDictionary12 forKeyedSubscript:@"recurrenceRule"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 23)
  {
    if (!self->_dateInterval)
    {
      goto LABEL_72;
    }

    dateInterval = [(CCToolKitToolTypedValuePrimitiveValue *)self dateInterval];
    jsonDictionary13 = [dateInterval jsonDictionary];
    [v3 setObject:jsonDictionary13 forKeyedSubscript:@"dateInterval"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 24)
  {
    if (!self->_personNameComponents)
    {
      goto LABEL_72;
    }

    personNameComponents = [(CCToolKitToolTypedValuePrimitiveValue *)self personNameComponents];
    jsonDictionary14 = [personNameComponents jsonDictionary];
    [v3 setObject:jsonDictionary14 forKeyedSubscript:@"personNameComponents"];

    primitiveValue_kindType = self->_primitiveValue_kindType;
  }

  if (primitiveValue_kindType == 25 && self->_duration)
  {
    duration = [(CCToolKitToolTypedValuePrimitiveValue *)self duration];
    jsonDictionary15 = [duration jsonDictionary];
    [v3 setObject:jsonDictionary15 forKeyedSubscript:@"duration"];
  }

LABEL_72:
  v48 = [v3 copy];

  return v48;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_noneVariant];
  blockCopy[2](blockCopy, v7);

  if (self->_hasBoolType)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 BOOLValue:self->_BOOLType];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_hasIntType)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 int64Value:self->_intType];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_hasNumber)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 doubleValue:self->_number];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_decimal)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_decimal];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_string)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_string];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_date)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_date];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_dateComponents)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 bytesValue:self->_dateComponents];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_url)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 stringValue:self->_url];
    blockCopy[2](blockCopy, v15);
  }

  if (self->_attributedString)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 bytesValue:self->_attributedString];
    blockCopy[2](blockCopy, v16);
  }

  if (self->_measurement)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_measurement];
    blockCopy[2](blockCopy, v17);
  }

  if (self->_currencyAmount)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_currencyAmount];
    blockCopy[2](blockCopy, v18);
  }

  if (self->_paymentMethod)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_paymentMethod];
    blockCopy[2](blockCopy, v19);
  }

  if (self->_placemark)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_placemark];
    blockCopy[2](blockCopy, v20);
  }

  if (self->_person)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_person];
    blockCopy[2](blockCopy, v21);
  }

  if (self->_file)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_file];
    blockCopy[2](blockCopy, v22);
  }

  if (self->_app)
  {
    v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_app];
    blockCopy[2](blockCopy, v23);
  }

  if (self->_searchableItem)
  {
    v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 bytesValue:self->_searchableItem];
    blockCopy[2](blockCopy, v24);
  }

  if (self->_encodedDateComponents)
  {
    v25 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_encodedDateComponents];
    blockCopy[2](blockCopy, v25);
  }

  if (self->_shortcut)
  {
    v26 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_shortcut];
    blockCopy[2](blockCopy, v26);
  }

  if (self->_recurrenceRule)
  {
    v27 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_recurrenceRule];
    blockCopy[2](blockCopy, v27);
  }

  if (self->_dateInterval)
  {
    v28 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_dateInterval];
    blockCopy[2](blockCopy, v28);
  }

  if (self->_personNameComponents)
  {
    v29 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_personNameComponents];
    blockCopy[2](blockCopy, v29);
  }

  v30 = blockCopy;
  if (self->_duration)
  {
    v31 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_duration];
    blockCopy[2](blockCopy, v31);

    v30 = blockCopy;
  }
}

- (CCToolKitToolTypedValuePrimitiveValueDuration)duration
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueDuration *)self->_duration copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValuePersonNameComponents)personNameComponents
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValuePersonNameComponents *)self->_personNameComponents copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueDateInterval)dateInterval
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueDateInterval *)self->_dateInterval copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueRecurrenceRule)recurrenceRule
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueRecurrenceRule *)self->_recurrenceRule copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueShortcut)shortcut
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueShortcut *)self->_shortcut copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueDateComponents)encodedDateComponents
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueDateComponents *)self->_encodedDateComponents copy];

  return v2;
}

- (NSData)searchableItem
{
  v2 = [(NSData *)self->_searchableItem copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueApp)app
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueApp *)self->_app copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueFile)file
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueFile *)self->_file copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValuePerson)person
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValuePerson *)self->_person copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValuePlacemark)placemark
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValuePlacemark *)self->_placemark copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValuePaymentMethod)paymentMethod
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValuePaymentMethod *)self->_paymentMethod copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueCurrencyAmount)currencyAmount
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueCurrencyAmount *)self->_currencyAmount copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueMeasurement)measurement
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueMeasurement *)self->_measurement copy];

  return v2;
}

- (NSData)attributedString
{
  v2 = [(NSData *)self->_attributedString copy];

  return v2;
}

- (NSString)url
{
  v2 = [(NSString *)self->_url copy];

  return v2;
}

- (NSData)dateComponents
{
  v2 = [(NSData *)self->_dateComponents copy];

  return v2;
}

- (CCToolKitToolTimestamp)date
{
  v2 = [(CCToolKitToolTimestamp *)self->_date copy];

  return v2;
}

- (NSString)string
{
  v2 = [(NSString *)self->_string copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueDecimal)decimal
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueDecimal *)self->_decimal copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_126;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
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
      v16 = *v7;
      v17 = *&v6[v16];
      v18 = v17 + 1;
      if (v17 == -1 || v18 > *&v6[*v8])
      {
        break;
      }

      v19 = *(*&v6[*v11] + v17);
      *&v6[v16] = v18;
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
        v22 = *v9;
        if (*&v6[v22])
        {
          goto LABEL_127;
        }

        goto LABEL_21;
      }
    }

    *&v6[*v9] = 1;
LABEL_17:
    v22 = *v9;
    v23 = *&v6[v22];
    if (v23)
    {
      v21 = 0;
    }

    else
    {
      v21 = v15;
    }

    if (v23)
    {
      goto LABEL_127;
    }

LABEL_21:
    switch((v21 >> 3))
    {
      case 1u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v27 = *v7;
          v28 = *&v6[v27];
          v29 = v28 + 1;
          if (v28 == -1 || v29 > *&v6[*v8])
          {
            break;
          }

          v30 = *(*&v6[*v11] + v28);
          *&v6[v27] = v29;
          v26 |= (v30 & 0x7F) << v24;
          if ((v30 & 0x80) == 0)
          {
            goto LABEL_101;
          }

          v24 += 7;
          v20 = v25++ >= 9;
          if (v20)
          {
            LODWORD(v26) = 0;
            goto LABEL_103;
          }
        }

        *&v6[*v9] = 1;
LABEL_101:
        if (*&v6[*v9])
        {
          LODWORD(v26) = 0;
        }

LABEL_103:
        self->_noneVariant = v26;
        self->_primitiveValue_kindType = 1;
        self->_BOOLType = 0;
        goto LABEL_112;
      case 2u:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        while (2)
        {
          v193 = *v7;
          v194 = *&v6[v193];
          v195 = v194 + 1;
          if (v194 == -1 || v195 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v196 = *(*&v6[*v11] + v194);
            *&v6[v193] = v195;
            v192 |= (v196 & 0x7F) << v190;
            if (v196 < 0)
            {
              v190 += 7;
              v20 = v191++ >= 9;
              if (v20)
              {
                v197 = 0;
                goto LABEL_111;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          v331 = 1;
        }

        else
        {
          v331 = v192 == 0;
        }

        v197 = !v331;
LABEL_111:
        self->_BOOLType = v197;
        self->_hasBoolType = 1;
        self->_noneVariant = 0;
        self->_primitiveValue_kindType = 2;
LABEL_112:
        self->_intType = 0;
        goto LABEL_113;
      case 3u:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        break;
      case 4u:
        v238 = *v7;
        v239 = *&v6[v238];
        if (v239 <= 0xFFFFFFFFFFFFFFF7 && v239 + 8 <= *&v6[*v8])
        {
          v240 = *(*&v6[*v11] + v239);
          *&v6[v238] = v239 + 8;
        }

        else
        {
          *&v6[v22] = 1;
          v240 = 0.0;
        }

        self->_number = v240;
        self->_hasNumber = 1;
        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_primitiveValue_kindType = 4;
        goto LABEL_116;
      case 5u:
        v241 = [CCToolKitToolTypedValuePrimitiveValueDecimal alloc];
        v242 = CCPBReaderReadDataNoCopy();
        v372 = 0;
        v243 = [(CCItemMessage *)v241 initWithData:v242 error:&v372];
        v10 = v372;
        decimal = self->_decimal;
        self->_decimal = v243;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        self->_primitiveValue_kindType = 5;
        string = self->_string;
        self->_string = 0;

        date = self->_date;
        self->_date = 0;

        goto LABEL_74;
      case 6u:
        v176 = CCPBReaderReadStringNoCopy();
        v177 = self->_string;
        self->_string = v176;

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v178 = self->_decimal;
        self->_decimal = 0;

        self->_primitiveValue_kindType = 6;
        goto LABEL_117;
      case 7u:
        v198 = [CCToolKitToolTimestamp alloc];
        v199 = CCPBReaderReadDataNoCopy();
        v371 = 0;
        v200 = [(CCItemMessage *)v198 initWithData:v199 error:&v371];
        v10 = v371;
        v201 = self->_date;
        self->_date = v200;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v202 = self->_decimal;
        self->_decimal = 0;

        v203 = self->_string;
        self->_string = 0;

        self->_primitiveValue_kindType = 7;
LABEL_74:
        dateComponents = self->_dateComponents;
        self->_dateComponents = 0;

        url = self->_url;
        self->_url = 0;

        attributedString = self->_attributedString;
        self->_attributedString = 0;

        measurement = self->_measurement;
        self->_measurement = 0;

        goto LABEL_75;
      case 8u:
        v204 = CCPBReaderReadData();
        v205 = self->_dateComponents;
        self->_dateComponents = v204;

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v206 = self->_decimal;
        self->_decimal = 0;

        v207 = self->_string;
        self->_string = 0;

        v208 = self->_date;
        self->_date = 0;

        self->_primitiveValue_kindType = 8;
        goto LABEL_118;
      case 9u:
        v271 = CCPBReaderReadStringNoCopy();
        v272 = self->_url;
        self->_url = v271;

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v273 = self->_decimal;
        self->_decimal = 0;

        v274 = self->_string;
        self->_string = 0;

        v275 = self->_date;
        self->_date = 0;

        v276 = self->_dateComponents;
        self->_dateComponents = 0;

        self->_primitiveValue_kindType = 9;
        goto LABEL_119;
      case 0xAu:
        v264 = CCPBReaderReadData();
        v265 = self->_attributedString;
        self->_attributedString = v264;

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v266 = self->_decimal;
        self->_decimal = 0;

        v267 = self->_string;
        self->_string = 0;

        v268 = self->_date;
        self->_date = 0;

        v269 = self->_dateComponents;
        self->_dateComponents = 0;

        v270 = self->_url;
        self->_url = 0;

        self->_primitiveValue_kindType = 10;
        goto LABEL_120;
      case 0xBu:
        v106 = [CCToolKitToolTypedValuePrimitiveValueMeasurement alloc];
        v107 = CCPBReaderReadDataNoCopy();
        v370 = 0;
        v108 = [(CCItemMessage *)v106 initWithData:v107 error:&v370];
        v10 = v370;
        v109 = self->_measurement;
        self->_measurement = v108;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v110 = self->_decimal;
        self->_decimal = 0;

        v111 = self->_string;
        self->_string = 0;

        v112 = self->_date;
        self->_date = 0;

        v113 = self->_dateComponents;
        self->_dateComponents = 0;

        v114 = self->_url;
        self->_url = 0;

        v115 = self->_attributedString;
        self->_attributedString = 0;

        self->_primitiveValue_kindType = 11;
LABEL_75:
        currencyAmount = self->_currencyAmount;
        self->_currencyAmount = 0;

        goto LABEL_76;
      case 0xCu:
        v179 = [CCToolKitToolTypedValuePrimitiveValueCurrencyAmount alloc];
        v180 = CCPBReaderReadDataNoCopy();
        v369 = 0;
        v181 = [(CCItemMessage *)v179 initWithData:v180 error:&v369];
        v10 = v369;
        v182 = self->_currencyAmount;
        self->_currencyAmount = v181;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v183 = self->_decimal;
        self->_decimal = 0;

        v184 = self->_string;
        self->_string = 0;

        v185 = self->_date;
        self->_date = 0;

        v186 = self->_dateComponents;
        self->_dateComponents = 0;

        v187 = self->_url;
        self->_url = 0;

        v188 = self->_attributedString;
        self->_attributedString = 0;

        v189 = self->_measurement;
        self->_measurement = 0;

        self->_primitiveValue_kindType = 12;
LABEL_76:
        paymentMethod = self->_paymentMethod;
        self->_paymentMethod = 0;

        goto LABEL_77;
      case 0xDu:
        v138 = [CCToolKitToolTypedValuePrimitiveValuePaymentMethod alloc];
        v139 = CCPBReaderReadDataNoCopy();
        v368 = 0;
        v140 = [(CCItemMessage *)v138 initWithData:v139 error:&v368];
        v10 = v368;
        v141 = self->_paymentMethod;
        self->_paymentMethod = v140;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v142 = self->_decimal;
        self->_decimal = 0;

        v143 = self->_string;
        self->_string = 0;

        v144 = self->_date;
        self->_date = 0;

        v145 = self->_dateComponents;
        self->_dateComponents = 0;

        v146 = self->_url;
        self->_url = 0;

        v147 = self->_attributedString;
        self->_attributedString = 0;

        v148 = self->_measurement;
        self->_measurement = 0;

        v149 = self->_currencyAmount;
        self->_currencyAmount = 0;

        self->_primitiveValue_kindType = 13;
LABEL_77:
        placemark = self->_placemark;
        self->_placemark = 0;

        goto LABEL_78;
      case 0xEu:
        v70 = [CCToolKitToolTypedValuePrimitiveValuePlacemark alloc];
        v71 = CCPBReaderReadDataNoCopy();
        v367 = 0;
        v72 = [(CCItemMessage *)v70 initWithData:v71 error:&v367];
        v10 = v367;
        v73 = self->_placemark;
        self->_placemark = v72;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v74 = self->_decimal;
        self->_decimal = 0;

        v75 = self->_string;
        self->_string = 0;

        v76 = self->_date;
        self->_date = 0;

        v77 = self->_dateComponents;
        self->_dateComponents = 0;

        v78 = self->_url;
        self->_url = 0;

        v79 = self->_attributedString;
        self->_attributedString = 0;

        v80 = self->_measurement;
        self->_measurement = 0;

        v81 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v82 = self->_paymentMethod;
        self->_paymentMethod = 0;

        self->_primitiveValue_kindType = 14;
LABEL_78:
        person = self->_person;
        self->_person = 0;

        goto LABEL_79;
      case 0xFu:
        v209 = [CCToolKitToolTypedValuePrimitiveValuePerson alloc];
        v210 = CCPBReaderReadDataNoCopy();
        v366 = 0;
        v211 = [(CCItemMessage *)v209 initWithData:v210 error:&v366];
        v10 = v366;
        v212 = self->_person;
        self->_person = v211;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v213 = self->_decimal;
        self->_decimal = 0;

        v214 = self->_string;
        self->_string = 0;

        v215 = self->_date;
        self->_date = 0;

        v216 = self->_dateComponents;
        self->_dateComponents = 0;

        v217 = self->_url;
        self->_url = 0;

        v218 = self->_attributedString;
        self->_attributedString = 0;

        v219 = self->_measurement;
        self->_measurement = 0;

        v220 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v221 = self->_paymentMethod;
        self->_paymentMethod = 0;

        v222 = self->_placemark;
        self->_placemark = 0;

        self->_primitiveValue_kindType = 15;
LABEL_79:
        file = self->_file;
        self->_file = 0;

        goto LABEL_80;
      case 0x10u:
        v223 = [CCToolKitToolTypedValuePrimitiveValueFile alloc];
        v224 = CCPBReaderReadDataNoCopy();
        v365 = 0;
        v225 = [(CCItemMessage *)v223 initWithData:v224 error:&v365];
        v10 = v365;
        v226 = self->_file;
        self->_file = v225;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v227 = self->_decimal;
        self->_decimal = 0;

        v228 = self->_string;
        self->_string = 0;

        v229 = self->_date;
        self->_date = 0;

        v230 = self->_dateComponents;
        self->_dateComponents = 0;

        v231 = self->_url;
        self->_url = 0;

        v232 = self->_attributedString;
        self->_attributedString = 0;

        v233 = self->_measurement;
        self->_measurement = 0;

        v234 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v235 = self->_paymentMethod;
        self->_paymentMethod = 0;

        v236 = self->_placemark;
        self->_placemark = 0;

        v237 = self->_person;
        self->_person = 0;

        self->_primitiveValue_kindType = 16;
LABEL_80:
        app = self->_app;
        self->_app = 0;

        goto LABEL_81;
      case 0x11u:
        v292 = [CCToolKitToolTypedValuePrimitiveValueApp alloc];
        v293 = CCPBReaderReadDataNoCopy();
        v364 = 0;
        v294 = [(CCItemMessage *)v292 initWithData:v293 error:&v364];
        v10 = v364;
        v295 = self->_app;
        self->_app = v294;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v296 = self->_decimal;
        self->_decimal = 0;

        v297 = self->_string;
        self->_string = 0;

        v298 = self->_date;
        self->_date = 0;

        v299 = self->_dateComponents;
        self->_dateComponents = 0;

        v300 = self->_url;
        self->_url = 0;

        v301 = self->_attributedString;
        self->_attributedString = 0;

        v302 = self->_measurement;
        self->_measurement = 0;

        v303 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v304 = self->_paymentMethod;
        self->_paymentMethod = 0;

        v305 = self->_placemark;
        self->_placemark = 0;

        v306 = self->_person;
        self->_person = 0;

        v307 = self->_file;
        self->_file = 0;

        self->_primitiveValue_kindType = 17;
LABEL_81:
        searchableItem = self->_searchableItem;
        self->_searchableItem = 0;

        encodedDateComponents = self->_encodedDateComponents;
        self->_encodedDateComponents = 0;

        goto LABEL_82;
      case 0x12u:
        v277 = CCPBReaderReadData();
        v278 = self->_searchableItem;
        self->_searchableItem = v277;

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v279 = self->_decimal;
        self->_decimal = 0;

        v280 = self->_string;
        self->_string = 0;

        v281 = self->_date;
        self->_date = 0;

        v282 = self->_dateComponents;
        self->_dateComponents = 0;

        v283 = self->_url;
        self->_url = 0;

        v284 = self->_attributedString;
        self->_attributedString = 0;

        v285 = self->_measurement;
        self->_measurement = 0;

        v286 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v287 = self->_paymentMethod;
        self->_paymentMethod = 0;

        v288 = self->_placemark;
        self->_placemark = 0;

        v289 = self->_person;
        self->_person = 0;

        v290 = self->_file;
        self->_file = 0;

        v291 = self->_app;
        self->_app = 0;

        self->_primitiveValue_kindType = 18;
        goto LABEL_121;
      case 0x13u:
        v31 = [CCToolKitToolTypedValuePrimitiveValueDateComponents alloc];
        v32 = CCPBReaderReadDataNoCopy();
        v363 = 0;
        v33 = [(CCItemMessage *)v31 initWithData:v32 error:&v363];
        v10 = v363;
        v34 = self->_encodedDateComponents;
        self->_encodedDateComponents = v33;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v35 = self->_decimal;
        self->_decimal = 0;

        v36 = self->_string;
        self->_string = 0;

        v37 = self->_date;
        self->_date = 0;

        v38 = self->_dateComponents;
        self->_dateComponents = 0;

        v39 = self->_url;
        self->_url = 0;

        v40 = self->_attributedString;
        self->_attributedString = 0;

        v41 = self->_measurement;
        self->_measurement = 0;

        v42 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v43 = self->_paymentMethod;
        self->_paymentMethod = 0;

        v44 = self->_placemark;
        self->_placemark = 0;

        v45 = self->_person;
        self->_person = 0;

        v46 = self->_file;
        self->_file = 0;

        v47 = self->_app;
        self->_app = 0;

        v48 = self->_searchableItem;
        self->_searchableItem = 0;

        self->_primitiveValue_kindType = 19;
LABEL_82:
        shortcut = self->_shortcut;
        self->_shortcut = 0;

        goto LABEL_83;
      case 0x14u:
        v150 = [CCToolKitToolTypedValuePrimitiveValueShortcut alloc];
        v151 = CCPBReaderReadDataNoCopy();
        v362 = 0;
        v152 = [(CCItemMessage *)v150 initWithData:v151 error:&v362];
        v10 = v362;
        v153 = self->_shortcut;
        self->_shortcut = v152;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v154 = self->_decimal;
        self->_decimal = 0;

        v155 = self->_string;
        self->_string = 0;

        v156 = self->_date;
        self->_date = 0;

        v157 = self->_dateComponents;
        self->_dateComponents = 0;

        v158 = self->_url;
        self->_url = 0;

        v159 = self->_attributedString;
        self->_attributedString = 0;

        v160 = self->_measurement;
        self->_measurement = 0;

        v161 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v162 = self->_paymentMethod;
        self->_paymentMethod = 0;

        v163 = self->_placemark;
        self->_placemark = 0;

        v164 = self->_person;
        self->_person = 0;

        v165 = self->_file;
        self->_file = 0;

        v166 = self->_app;
        self->_app = 0;

        v167 = self->_searchableItem;
        self->_searchableItem = 0;

        v168 = self->_encodedDateComponents;
        self->_encodedDateComponents = 0;

        self->_primitiveValue_kindType = 20;
LABEL_83:
        recurrenceRule = self->_recurrenceRule;
        self->_recurrenceRule = 0;

        goto LABEL_84;
      case 0x16u:
        v308 = [CCToolKitToolTypedValuePrimitiveValueRecurrenceRule alloc];
        v309 = CCPBReaderReadDataNoCopy();
        v361 = 0;
        v310 = [(CCItemMessage *)v308 initWithData:v309 error:&v361];
        v10 = v361;
        v311 = self->_recurrenceRule;
        self->_recurrenceRule = v310;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v312 = self->_decimal;
        self->_decimal = 0;

        v313 = self->_string;
        self->_string = 0;

        v314 = self->_date;
        self->_date = 0;

        v315 = self->_dateComponents;
        self->_dateComponents = 0;

        v316 = self->_url;
        self->_url = 0;

        v317 = self->_attributedString;
        self->_attributedString = 0;

        v318 = self->_measurement;
        self->_measurement = 0;

        v319 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v320 = self->_paymentMethod;
        self->_paymentMethod = 0;

        v321 = self->_placemark;
        self->_placemark = 0;

        v322 = self->_person;
        self->_person = 0;

        v323 = self->_file;
        self->_file = 0;

        v324 = self->_app;
        self->_app = 0;

        v325 = self->_searchableItem;
        self->_searchableItem = 0;

        v326 = self->_encodedDateComponents;
        self->_encodedDateComponents = 0;

        v327 = self->_shortcut;
        self->_shortcut = 0;

        self->_primitiveValue_kindType = 22;
LABEL_84:
        dateInterval = self->_dateInterval;
        self->_dateInterval = 0;

        goto LABEL_85;
      case 0x17u:
        v49 = [CCToolKitToolTypedValuePrimitiveValueDateInterval alloc];
        v50 = CCPBReaderReadDataNoCopy();
        v360 = 0;
        v51 = [(CCItemMessage *)v49 initWithData:v50 error:&v360];
        v10 = v360;
        v52 = self->_dateInterval;
        self->_dateInterval = v51;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v53 = self->_decimal;
        self->_decimal = 0;

        v54 = self->_string;
        self->_string = 0;

        v55 = self->_date;
        self->_date = 0;

        v56 = self->_dateComponents;
        self->_dateComponents = 0;

        v57 = self->_url;
        self->_url = 0;

        v58 = self->_attributedString;
        self->_attributedString = 0;

        v59 = self->_measurement;
        self->_measurement = 0;

        v60 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v61 = self->_paymentMethod;
        self->_paymentMethod = 0;

        v62 = self->_placemark;
        self->_placemark = 0;

        v63 = self->_person;
        self->_person = 0;

        v64 = self->_file;
        self->_file = 0;

        v65 = self->_app;
        self->_app = 0;

        v66 = self->_searchableItem;
        self->_searchableItem = 0;

        v67 = self->_encodedDateComponents;
        self->_encodedDateComponents = 0;

        v68 = self->_shortcut;
        self->_shortcut = 0;

        v69 = self->_recurrenceRule;
        self->_recurrenceRule = 0;

        self->_primitiveValue_kindType = 23;
LABEL_85:
        personNameComponents = self->_personNameComponents;
        self->_personNameComponents = 0;

        goto LABEL_86;
      case 0x18u:
        v116 = [CCToolKitToolTypedValuePrimitiveValuePersonNameComponents alloc];
        v117 = CCPBReaderReadDataNoCopy();
        v359 = 0;
        v118 = [(CCItemMessage *)v116 initWithData:v117 error:&v359];
        v10 = v359;
        v119 = self->_personNameComponents;
        self->_personNameComponents = v118;

        if (v10)
        {
          continue;
        }

        self->_noneVariant = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0.0;
        v120 = self->_decimal;
        self->_decimal = 0;

        v121 = self->_string;
        self->_string = 0;

        v122 = self->_date;
        self->_date = 0;

        v123 = self->_dateComponents;
        self->_dateComponents = 0;

        v124 = self->_url;
        self->_url = 0;

        v125 = self->_attributedString;
        self->_attributedString = 0;

        v126 = self->_measurement;
        self->_measurement = 0;

        v127 = self->_currencyAmount;
        self->_currencyAmount = 0;

        v128 = self->_paymentMethod;
        self->_paymentMethod = 0;

        v129 = self->_placemark;
        self->_placemark = 0;

        v130 = self->_person;
        self->_person = 0;

        v131 = self->_file;
        self->_file = 0;

        v132 = self->_app;
        self->_app = 0;

        v133 = self->_searchableItem;
        self->_searchableItem = 0;

        v134 = self->_encodedDateComponents;
        self->_encodedDateComponents = 0;

        v135 = self->_shortcut;
        self->_shortcut = 0;

        v136 = self->_recurrenceRule;
        self->_recurrenceRule = 0;

        v137 = self->_dateInterval;
        self->_dateInterval = 0;

        self->_primitiveValue_kindType = 24;
LABEL_86:
        duration = self->_duration;
        self->_duration = 0;

        continue;
      case 0x19u:
        v83 = [CCToolKitToolTypedValuePrimitiveValueDuration alloc];
        v84 = CCPBReaderReadDataNoCopy();
        v358 = 0;
        v85 = [(CCItemMessage *)v83 initWithData:v84 error:&v358];
        v10 = v358;
        v86 = self->_duration;
        self->_duration = v85;

        if (!v10)
        {
          self->_noneVariant = 0;
          self->_BOOLType = 0;
          self->_intType = 0;
          self->_number = 0.0;
          v87 = self->_decimal;
          self->_decimal = 0;

          v88 = self->_string;
          self->_string = 0;

          v89 = self->_date;
          self->_date = 0;

          v90 = self->_dateComponents;
          self->_dateComponents = 0;

          v91 = self->_url;
          self->_url = 0;

          v92 = self->_attributedString;
          self->_attributedString = 0;

          v93 = self->_measurement;
          self->_measurement = 0;

          v94 = self->_currencyAmount;
          self->_currencyAmount = 0;

          v95 = self->_paymentMethod;
          self->_paymentMethod = 0;

          v96 = self->_placemark;
          self->_placemark = 0;

          v97 = self->_person;
          self->_person = 0;

          v98 = self->_file;
          self->_file = 0;

          v99 = self->_app;
          self->_app = 0;

          v100 = self->_searchableItem;
          self->_searchableItem = 0;

          v101 = self->_encodedDateComponents;
          self->_encodedDateComponents = 0;

          v102 = self->_shortcut;
          self->_shortcut = 0;

          v103 = self->_recurrenceRule;
          self->_recurrenceRule = 0;

          v104 = self->_dateInterval;
          self->_dateInterval = 0;

          v105 = self->_personNameComponents;
          self->_personNameComponents = 0;

          self->_primitiveValue_kindType = 25;
        }

        continue;
      default:
        if (CCPBReaderSkipValueWithTag())
        {
          goto LABEL_122;
        }

        v328 = objc_opt_class();
        v329 = NSStringFromClass(v328);
        v330 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();

        continue;
    }

    while (1)
    {
      v172 = *v7;
      v173 = *&v6[v172];
      v174 = v173 + 1;
      if (v173 == -1 || v174 > *&v6[*v8])
      {
        break;
      }

      v175 = *(*&v6[*v11] + v173);
      *&v6[v172] = v174;
      v171 |= (v175 & 0x7F) << v169;
      if ((v175 & 0x80) == 0)
      {
        goto LABEL_97;
      }

      v169 += 7;
      v20 = v170++ >= 9;
      if (v20)
      {
        v171 = 0;
        goto LABEL_99;
      }
    }

    *&v6[*v9] = 1;
LABEL_97:
    if (*&v6[*v9])
    {
      v171 = 0;
    }

LABEL_99:
    self->_intType = v171;
    self->_hasIntType = 1;
    self->_noneVariant = 0;
    self->_BOOLType = 0;
    self->_primitiveValue_kindType = 3;
LABEL_113:
    self->_number = 0.0;
LABEL_116:
    v332 = self->_decimal;
    self->_decimal = 0;

    v333 = self->_string;
    self->_string = 0;

LABEL_117:
    v334 = self->_date;
    self->_date = 0;

    v335 = self->_dateComponents;
    self->_dateComponents = 0;

LABEL_118:
    v336 = self->_url;
    self->_url = 0;

LABEL_119:
    v337 = self->_attributedString;
    self->_attributedString = 0;

LABEL_120:
    v338 = self->_measurement;
    self->_measurement = 0;

    v339 = self->_currencyAmount;
    self->_currencyAmount = 0;

    v340 = self->_paymentMethod;
    self->_paymentMethod = 0;

    v341 = self->_placemark;
    self->_placemark = 0;

    v342 = self->_person;
    self->_person = 0;

    v343 = self->_file;
    self->_file = 0;

    v344 = self->_app;
    self->_app = 0;

    v345 = self->_searchableItem;
    self->_searchableItem = 0;

LABEL_121:
    v346 = self->_encodedDateComponents;
    self->_encodedDateComponents = 0;

    v347 = self->_shortcut;
    self->_shortcut = 0;

    v348 = self->_recurrenceRule;
    self->_recurrenceRule = 0;

    v349 = self->_dateInterval;
    self->_dateInterval = 0;

    v350 = self->_personNameComponents;
    self->_personNameComponents = 0;

    v351 = self->_duration;
    self->_duration = 0;

LABEL_122:
    v10 = 0;
  }

  while (*&v6[*v7] < *&v6[*v8]);
  if (v10)
  {
    CCSetError();
  }

  else
  {
LABEL_126:
    if (!*&v6[*v9])
    {
      v10 = 0;
      v356 = 1;
      goto LABEL_130;
    }

LABEL_127:
    v352 = objc_opt_class();
    v353 = NSStringFromClass(v352);
    v354 = *&v6[*v9];
    v355 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v10 = 0;
  }

  v356 = 0;
LABEL_130:

  return v356;
}

- (CCToolKitToolTypedValuePrimitiveValue)initWithPrimitiveValue_kind:(id)value_kind primitiveValue_kindType:(unsigned int)type error:(id *)error
{
  value_kindCopy = value_kind;
  v9 = objc_opt_new();
  if (!value_kindCopy || type != 1)
  {
    if (value_kindCopy && type == 2)
    {
      objc_opt_class();
      IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (IsInstanceOfExpectedClass)
      {
        [value_kindCopy BOOLValue];
        CCPBDataWriterWriteBOOLField();
LABEL_35:
        immutableData = [v9 immutableData];
        self = [(CCItemMessage *)self initWithData:immutableData error:error];

        v11 = v13;
        selfCopy = self;
        goto LABEL_100;
      }

      goto LABEL_99;
    }

    if (value_kindCopy && type == 3)
    {
      objc_opt_class();
      v15 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v15)
      {
        [value_kindCopy longLongValue];
        CCPBDataWriterWriteInt64Field();
        goto LABEL_35;
      }

LABEL_99:
      CCSetError();
      selfCopy = 0;
      v11 = v13;
      goto LABEL_100;
    }

    if (value_kindCopy && type == 4)
    {
      objc_opt_class();
      v17 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v17)
      {
        [value_kindCopy doubleValue];
        CCPBDataWriterWriteDoubleField();
        goto LABEL_35;
      }

      goto LABEL_99;
    }

    if (value_kindCopy && type == 5)
    {
      objc_opt_class();
      v18 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (!v18)
      {
        goto LABEL_99;
      }

      goto LABEL_22;
    }

    if (value_kindCopy && type == 6)
    {
      objc_opt_class();
      v20 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (!v20)
      {
        goto LABEL_99;
      }

LABEL_26:
      CCPBDataWriterWriteStringField();
      goto LABEL_35;
    }

    if (value_kindCopy && type == 7)
    {
      objc_opt_class();
      v21 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (!v21)
      {
        goto LABEL_99;
      }

      goto LABEL_22;
    }

    if (value_kindCopy && type == 8)
    {
      objc_opt_class();
      v22 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (!v22)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (value_kindCopy && type == 9)
      {
        objc_opt_class();
        v24 = CCValidateIsInstanceOfExpectedClass();
        v13 = 0;
        if (!v24)
        {
          goto LABEL_99;
        }

        goto LABEL_26;
      }

      if (value_kindCopy && type == 10)
      {
        objc_opt_class();
        v25 = CCValidateIsInstanceOfExpectedClass();
        v13 = 0;
        if (!v25)
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (value_kindCopy && type == 11)
        {
          objc_opt_class();
          v26 = CCValidateIsInstanceOfExpectedClass();
          v13 = 0;
          if (!v26)
          {
            goto LABEL_99;
          }

          goto LABEL_22;
        }

        if (value_kindCopy && type == 12)
        {
          objc_opt_class();
          v27 = CCValidateIsInstanceOfExpectedClass();
          v13 = 0;
          if (!v27)
          {
            goto LABEL_99;
          }

          goto LABEL_22;
        }

        if (value_kindCopy && type == 13)
        {
          objc_opt_class();
          v28 = CCValidateIsInstanceOfExpectedClass();
          v13 = 0;
          if (!v28)
          {
            goto LABEL_99;
          }

          goto LABEL_22;
        }

        if (value_kindCopy && type == 14)
        {
          objc_opt_class();
          v29 = CCValidateIsInstanceOfExpectedClass();
          v13 = 0;
          if (!v29)
          {
            goto LABEL_99;
          }

          goto LABEL_22;
        }

        if (value_kindCopy && type == 15)
        {
          objc_opt_class();
          v30 = CCValidateIsInstanceOfExpectedClass();
          v13 = 0;
          if (!v30)
          {
            goto LABEL_99;
          }

          goto LABEL_22;
        }

        typeCopy = type;
        if (value_kindCopy && type == 16)
        {
          objc_opt_class();
          v32 = CCValidateIsInstanceOfExpectedClass();
          v13 = 0;
          if (!v32)
          {
            goto LABEL_99;
          }

          goto LABEL_22;
        }

        if (value_kindCopy && type == 17)
        {
          objc_opt_class();
          v33 = CCValidateIsInstanceOfExpectedClass();
          v13 = 0;
          if (!v33)
          {
            goto LABEL_99;
          }

          goto LABEL_22;
        }

        if (!value_kindCopy || type != 18)
        {
          if (value_kindCopy && type == 19)
          {
            objc_opt_class();
            v35 = CCValidateIsInstanceOfExpectedClass();
            v13 = 0;
            if (!v35)
            {
              goto LABEL_99;
            }
          }

          else if (value_kindCopy && type == 20)
          {
            objc_opt_class();
            v36 = CCValidateIsInstanceOfExpectedClass();
            v13 = 0;
            if (!v36)
            {
              goto LABEL_99;
            }
          }

          else if (value_kindCopy && type == 22)
          {
            objc_opt_class();
            v37 = CCValidateIsInstanceOfExpectedClass();
            v13 = 0;
            if (!v37)
            {
              goto LABEL_99;
            }
          }

          else if (value_kindCopy && type == 23)
          {
            objc_opt_class();
            v38 = CCValidateIsInstanceOfExpectedClass();
            v13 = 0;
            if (!v38)
            {
              goto LABEL_99;
            }
          }

          else if (value_kindCopy && type == 24)
          {
            objc_opt_class();
            v39 = CCValidateIsInstanceOfExpectedClass();
            v13 = 0;
            if (!v39)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v13 = 0;
            if (!value_kindCopy || typeCopy != 25)
            {
              goto LABEL_35;
            }

            objc_opt_class();
            v40 = CCValidateIsInstanceOfExpectedClass();
            v13 = 0;
            if (!v40)
            {
              goto LABEL_99;
            }
          }

LABEL_22:
          data = [value_kindCopy data];
          CCPBDataWriterWriteDataField();

          goto LABEL_35;
        }

        objc_opt_class();
        v34 = CCValidateIsInstanceOfExpectedClass();
        v13 = 0;
        if (!v34)
        {
          goto LABEL_99;
        }
      }
    }

    CCPBDataWriterWriteDataField();
    goto LABEL_35;
  }

  objc_opt_class();
  v10 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (v10)
  {
    [value_kindCopy unsignedIntegerValue];
    v12 = CCValidateEnumField();
    v13 = v11;

    if (v12)
    {
      CCPBDataWriterWriteUint32Field();
    }

    goto LABEL_35;
  }

  CCSetError();
  selfCopy = 0;
LABEL_100:

  return selfCopy;
}

@end
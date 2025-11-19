@interface CCToolKitToolTypeIdentifierPrimitive
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeIdentifierPrimitive)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeIdentifierPrimitive)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypeIdentifierPrimitive

- (CCToolKitToolTypeIdentifierPrimitive)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v43 = a4;
    v9 = [v6 objectForKeyedSubscript:@"none_p"];
    v10 = [v6 objectForKeyedSubscript:@"BOOLType"];
    v64 = [v6 objectForKeyedSubscript:@"intType"];
    v63 = [v6 objectForKeyedSubscript:@"number"];
    v62 = [v6 objectForKeyedSubscript:@"decimal"];
    v61 = [v6 objectForKeyedSubscript:@"string"];
    v60 = [v6 objectForKeyedSubscript:@"date"];
    v59 = [v6 objectForKeyedSubscript:@"dateComponents"];
    v58 = [v6 objectForKeyedSubscript:@"url"];
    v57 = [v6 objectForKeyedSubscript:@"dictionary"];
    v56 = [v6 objectForKeyedSubscript:@"attributedString"];
    v55 = [v6 objectForKeyedSubscript:@"measurement"];
    v54 = [v6 objectForKeyedSubscript:@"currencyAmount"];
    v53 = [v6 objectForKeyedSubscript:@"paymentMethod"];
    v52 = [v6 objectForKeyedSubscript:@"placemark"];
    v51 = [v6 objectForKeyedSubscript:@"person"];
    v50 = [v6 objectForKeyedSubscript:@"file"];
    v49 = [v6 objectForKeyedSubscript:@"app"];
    v48 = [v6 objectForKeyedSubscript:@"searchableItem"];
    v47 = [v6 objectForKeyedSubscript:@"intentsFile"];
    v46 = [v6 objectForKeyedSubscript:@"shortcut"];
    v11 = [v6 objectForKeyedSubscript:@"recurrenceRule"];
    v12 = [v6 objectForKeyedSubscript:@"dateInterval"];
    v13 = [v6 objectForKeyedSubscript:@"personNameComponents"];
    v14 = [v6 objectForKeyedSubscript:@"duration"];
    v45 = self;
    if (v9)
    {
      v15 = v9;
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v18 = v9;
    if (v10)
    {
      v18 = v10;

      v16 = 2;
    }

    v44 = v10;
    if (v64)
    {
      v19 = v64;

      v16 = 3;
      v18 = v19;
    }

    if (v63)
    {
      v20 = v63;

      v16 = 4;
      v18 = v20;
    }

    if (v62)
    {
      v21 = v62;

      v16 = 5;
      v18 = v21;
    }

    if (v61)
    {
      v22 = v61;

      v16 = 6;
      v18 = v22;
    }

    if (v60)
    {
      v23 = v60;

      v16 = 7;
      v18 = v23;
    }

    if (v59)
    {
      v24 = v59;

      v16 = 8;
      v18 = v24;
    }

    if (v58)
    {
      v25 = v58;

      v16 = 9;
      v18 = v25;
    }

    if (v57)
    {
      v26 = v57;

      v16 = 10;
      v18 = v26;
    }

    if (v56)
    {
      v27 = v56;

      v16 = 11;
      v18 = v27;
    }

    if (v55)
    {
      v28 = v55;

      v16 = 12;
      v18 = v28;
    }

    if (v54)
    {
      v29 = v54;

      v16 = 13;
      v18 = v29;
    }

    if (v53)
    {
      v30 = v53;

      v16 = 14;
      v18 = v30;
    }

    if (v52)
    {
      v31 = v52;

      v16 = 15;
      v18 = v31;
    }

    if (v51)
    {
      v32 = v51;

      v16 = 16;
      v18 = v32;
    }

    if (v50)
    {
      v33 = v50;

      v16 = 17;
      v18 = v33;
    }

    if (v49)
    {
      v34 = v49;

      v16 = 18;
      v18 = v34;
    }

    if (v48)
    {
      v35 = v48;

      v16 = 19;
      v18 = v35;
    }

    if (v47)
    {
      v36 = v47;

      v16 = 20;
      v18 = v36;
    }

    if (v46)
    {
      v37 = v46;

      v16 = 21;
      v18 = v37;
    }

    if (v11)
    {
      v38 = v11;

      v16 = 22;
      v18 = v38;
    }

    if (v12)
    {
      v39 = v12;

      v16 = 23;
      v18 = v39;
    }

    if (v13)
    {
      v40 = v13;

      v16 = 24;
      v18 = v40;
    }

    if (v14)
    {
      v41 = v14;

      v16 = 25;
      v18 = v41;
    }

    v17 = [[CCToolKitToolTypeIdentifierPrimitive alloc] initWithKind:v18 kindType:v16 error:v43];

    self = v45;
  }

  else
  {
    CCSetError();
    v17 = 0;
  }

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive none_p](self, "none_p")}];
    [v3 setObject:v5 forKeyedSubscript:@"none_p"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive BOOLType](self, "BOOLType")}];
    [v3 setObject:v6 forKeyedSubscript:@"BOOLType"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive intType](self, "intType")}];
    [v3 setObject:v7 forKeyedSubscript:@"intType"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive number](self, "number")}];
    [v3 setObject:v8 forKeyedSubscript:@"number"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive decimal](self, "decimal")}];
    [v3 setObject:v9 forKeyedSubscript:@"decimal"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive string](self, "string")}];
    [v3 setObject:v10 forKeyedSubscript:@"string"];

    kindType = self->_kindType;
  }

  if (kindType == 7)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive date](self, "date")}];
    [v3 setObject:v11 forKeyedSubscript:@"date"];

    kindType = self->_kindType;
  }

  if (kindType == 8)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive dateComponents](self, "dateComponents")}];
    [v3 setObject:v12 forKeyedSubscript:@"dateComponents"];

    kindType = self->_kindType;
  }

  if (kindType == 9)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive url](self, "url")}];
    [v3 setObject:v13 forKeyedSubscript:@"url"];

    kindType = self->_kindType;
  }

  if (kindType == 10)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive dictionary](self, "dictionary")}];
    [v3 setObject:v14 forKeyedSubscript:@"dictionary"];

    kindType = self->_kindType;
  }

  if (kindType == 11)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive attributedString](self, "attributedString")}];
    [v3 setObject:v15 forKeyedSubscript:@"attributedString"];

    kindType = self->_kindType;
  }

  if (kindType == 12)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive measurement](self, "measurement")}];
    [v3 setObject:v16 forKeyedSubscript:@"measurement"];

    kindType = self->_kindType;
  }

  if (kindType == 13)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive currencyAmount](self, "currencyAmount")}];
    [v3 setObject:v17 forKeyedSubscript:@"currencyAmount"];

    kindType = self->_kindType;
  }

  if (kindType == 14)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive paymentMethod](self, "paymentMethod")}];
    [v3 setObject:v18 forKeyedSubscript:@"paymentMethod"];

    kindType = self->_kindType;
  }

  if (kindType == 15)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive placemark](self, "placemark")}];
    [v3 setObject:v19 forKeyedSubscript:@"placemark"];

    kindType = self->_kindType;
  }

  if (kindType == 16)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive person](self, "person")}];
    [v3 setObject:v20 forKeyedSubscript:@"person"];

    kindType = self->_kindType;
  }

  if (kindType == 17)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive file](self, "file")}];
    [v3 setObject:v21 forKeyedSubscript:@"file"];

    kindType = self->_kindType;
  }

  if (kindType == 18)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive app](self, "app")}];
    [v3 setObject:v22 forKeyedSubscript:@"app"];

    kindType = self->_kindType;
  }

  if (kindType == 19)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive searchableItem](self, "searchableItem")}];
    [v3 setObject:v23 forKeyedSubscript:@"searchableItem"];

    kindType = self->_kindType;
  }

  if (kindType == 20)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive intentsFile](self, "intentsFile")}];
    [v3 setObject:v24 forKeyedSubscript:@"intentsFile"];

    kindType = self->_kindType;
  }

  if (kindType == 21)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive shortcut](self, "shortcut")}];
    [v3 setObject:v25 forKeyedSubscript:@"shortcut"];

    kindType = self->_kindType;
  }

  if (kindType == 22)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive recurrenceRule](self, "recurrenceRule")}];
    [v3 setObject:v26 forKeyedSubscript:@"recurrenceRule"];

    kindType = self->_kindType;
  }

  if (kindType == 23)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive dateInterval](self, "dateInterval")}];
    [v3 setObject:v27 forKeyedSubscript:@"dateInterval"];

    kindType = self->_kindType;
  }

  if (kindType == 24)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive personNameComponents](self, "personNameComponents")}];
    [v3 setObject:v28 forKeyedSubscript:@"personNameComponents"];

    kindType = self->_kindType;
  }

  if (kindType == 25)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierPrimitive duration](self, "duration")}];
    [v3 setObject:v29 forKeyedSubscript:@"duration"];
  }

  v30 = [v3 copy];

  return v30;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v4 = a3;
  v6 = MEMORY[0x1E69939F0];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = *MEMORY[0x1E69939A8];
  v10 = [v8 initWithFieldType:v9 enumValue:self->_none_p];
  v11 = v4[2];
  v4 += 2;
  v11(v7, v10);

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_BOOLType];
  (*v4)(v7, v12);

  v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_intType];
  (*v4)(v7, v13);

  v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_number];
  (*v4)(v7, v14);

  v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_decimal];
  (*v4)(v7, v15);

  v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_string];
  (*v4)(v7, v16);

  v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_date];
  (*v4)(v7, v17);

  v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_dateComponents];
  (*v4)(v7, v18);

  v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_url];
  (*v4)(v7, v19);

  v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_dictionary];
  (*v4)(v7, v20);

  v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_attributedString];
  (*v4)(v7, v21);

  v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_measurement];
  (*v4)(v7, v22);

  v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_currencyAmount];
  (*v4)(v7, v23);

  v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_paymentMethod];
  (*v4)(v7, v24);

  v25 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_placemark];
  (*v4)(v7, v25);

  v26 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_person];
  (*v4)(v7, v26);

  v27 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_file];
  (*v4)(v7, v27);

  v28 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_app];
  (*v4)(v7, v28);

  v29 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_searchableItem];
  (*v4)(v7, v29);

  v30 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_intentsFile];
  (*v4)(v7, v30);

  v31 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_shortcut];
  (*v4)(v7, v31);

  v32 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_recurrenceRule];
  (*v4)(v7, v32);

  v33 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_dateInterval];
  (*v4)(v7, v33);

  v34 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_personNameComponents];
  (*v4)(v7, v34);

  v35 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_duration];
  (*v4)(v7, v35);
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_327;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (!v13)
    {
      break;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = *v8;
      v18 = *&v7[v17];
      v19 = v18 + 1;
      if (v18 == -1 || v19 > *&v7[*v9])
      {
        break;
      }

      v20 = *(*&v7[*v12] + v18);
      *&v7[v17] = v19;
      v16 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v14 += 7;
      v21 = v15++ >= 9;
      if (v21)
      {
        v22 = 0;
        if (*&v7[*v10])
        {
          goto LABEL_328;
        }

        goto LABEL_21;
      }
    }

    *&v7[*v10] = 1;
LABEL_17:
    v23 = *&v7[*v10];
    if (v23)
    {
      v22 = 0;
    }

    else
    {
      v22 = v16;
    }

    if (v23)
    {
      goto LABEL_328;
    }

LABEL_21:
    switch((v22 >> 3))
    {
      case 1u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v27 = *v8;
          v28 = *&v7[v27];
          v29 = v28 + 1;
          if (v28 == -1 || v29 > *&v7[*v9])
          {
            break;
          }

          v30 = *(*&v7[*v12] + v28);
          *&v7[v27] = v29;
          v26 |= (v30 & 0x7F) << v24;
          if ((v30 & 0x80) == 0)
          {
            goto LABEL_244;
          }

          v24 += 7;
          v21 = v25++ >= 9;
          if (v21)
          {
            LODWORD(v26) = 0;
            goto LABEL_246;
          }
        }

        *&v7[*v10] = 1;
LABEL_244:
        if (*&v7[*v10])
        {
          LODWORD(v26) = 0;
        }

LABEL_246:
        v11 = 0;
        self->_none_p = v26;
        self->_kindType = 1;
        self->_BOOLType = 0;
        goto LABEL_251;
      case 2u:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        while (2)
        {
          v111 = *v8;
          v112 = *&v7[v111];
          v113 = v112 + 1;
          if (v112 == -1 || v113 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v114 = *(*&v7[*v12] + v112);
            *&v7[v111] = v113;
            v110 |= (v114 & 0x7F) << v108;
            if (v114 < 0)
            {
              v108 += 7;
              v21 = v109++ >= 9;
              if (v21)
              {
                LODWORD(v110) = 0;
                goto LABEL_250;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v110) = 0;
        }

LABEL_250:
        v11 = 0;
        self->_BOOLType = v110;
        self->_none_p = 0;
        self->_kindType = 2;
LABEL_251:
        self->_intType = 0;
        goto LABEL_252;
      case 3u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        while (2)
        {
          v83 = *v8;
          v84 = *&v7[v83];
          v85 = v84 + 1;
          if (v84 == -1 || v85 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v86 = *(*&v7[*v12] + v84);
            *&v7[v83] = v85;
            v82 |= (v86 & 0x7F) << v80;
            if (v86 < 0)
            {
              v80 += 7;
              v21 = v81++ >= 9;
              if (v21)
              {
                LODWORD(v82) = 0;
                goto LABEL_230;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v82) = 0;
        }

LABEL_230:
        v11 = 0;
        self->_intType = v82;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_kindType = 3;
LABEL_252:
        self->_number = 0;
        goto LABEL_253;
      case 4u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        while (2)
        {
          v97 = *v8;
          v98 = *&v7[v97];
          v99 = v98 + 1;
          if (v98 == -1 || v99 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v100 = *(*&v7[*v12] + v98);
            *&v7[v97] = v99;
            v96 |= (v100 & 0x7F) << v94;
            if (v100 < 0)
            {
              v94 += 7;
              v21 = v95++ >= 9;
              if (v21)
              {
                LODWORD(v96) = 0;
                goto LABEL_238;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v96) = 0;
        }

LABEL_238:
        v11 = 0;
        self->_number = v96;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_kindType = 4;
LABEL_253:
        self->_decimal = 0;
        goto LABEL_254;
      case 5u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        while (2)
        {
          v55 = *v8;
          v56 = *&v7[v55];
          v57 = v56 + 1;
          if (v56 == -1 || v57 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v58 = *(*&v7[*v12] + v56);
            *&v7[v55] = v57;
            v54 |= (v58 & 0x7F) << v52;
            if (v58 < 0)
            {
              v52 += 7;
              v21 = v53++ >= 9;
              if (v21)
              {
                LODWORD(v54) = 0;
                goto LABEL_214;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v54) = 0;
        }

LABEL_214:
        v11 = 0;
        self->_decimal = v54;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_kindType = 5;
LABEL_254:
        self->_string = 0;
        goto LABEL_255;
      case 6u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        while (2)
        {
          v132 = *v8;
          v133 = *&v7[v132];
          v134 = v133 + 1;
          if (v133 == -1 || v134 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v135 = *(*&v7[*v12] + v133);
            *&v7[v132] = v134;
            v131 |= (v135 & 0x7F) << v129;
            if (v135 < 0)
            {
              v129 += 7;
              v21 = v130++ >= 9;
              if (v21)
              {
                LODWORD(v131) = 0;
                goto LABEL_287;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v131) = 0;
        }

LABEL_287:
        v11 = 0;
        self->_string = v131;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_kindType = 6;
LABEL_255:
        self->_date = 0;
        goto LABEL_256;
      case 7u:
        v150 = 0;
        v151 = 0;
        v152 = 0;
        while (2)
        {
          v153 = *v8;
          v154 = *&v7[v153];
          v155 = v154 + 1;
          if (v154 == -1 || v155 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v156 = *(*&v7[*v12] + v154);
            *&v7[v153] = v155;
            v152 |= (v156 & 0x7F) << v150;
            if (v156 < 0)
            {
              v150 += 7;
              v21 = v151++ >= 9;
              if (v21)
              {
                LODWORD(v152) = 0;
                goto LABEL_299;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v152) = 0;
        }

LABEL_299:
        v11 = 0;
        self->_date = v152;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_kindType = 7;
LABEL_256:
        self->_dateComponents = 0;
        goto LABEL_257;
      case 8u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        while (2)
        {
          v104 = *v8;
          v105 = *&v7[v104];
          v106 = v105 + 1;
          if (v105 == -1 || v106 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v107 = *(*&v7[*v12] + v105);
            *&v7[v104] = v106;
            v103 |= (v107 & 0x7F) << v101;
            if (v107 < 0)
            {
              v101 += 7;
              v21 = v102++ >= 9;
              if (v21)
              {
                LODWORD(v103) = 0;
                goto LABEL_242;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v103) = 0;
        }

LABEL_242:
        v11 = 0;
        self->_dateComponents = v103;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_kindType = 8;
LABEL_257:
        self->_url = 0;
        goto LABEL_258;
      case 9u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        while (2)
        {
          v174 = *v8;
          v175 = *&v7[v174];
          v176 = v175 + 1;
          if (v175 == -1 || v176 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v177 = *(*&v7[*v12] + v175);
            *&v7[v174] = v176;
            v173 |= (v177 & 0x7F) << v171;
            if (v177 < 0)
            {
              v171 += 7;
              v21 = v172++ >= 9;
              if (v21)
              {
                LODWORD(v173) = 0;
                goto LABEL_311;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v173) = 0;
        }

LABEL_311:
        v11 = 0;
        self->_url = v173;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_kindType = 9;
LABEL_258:
        self->_dictionary = 0;
        goto LABEL_259;
      case 0xAu:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        while (2)
        {
          v69 = *v8;
          v70 = *&v7[v69];
          v71 = v70 + 1;
          if (v70 == -1 || v71 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v72 = *(*&v7[*v12] + v70);
            *&v7[v69] = v71;
            v68 |= (v72 & 0x7F) << v66;
            if (v72 < 0)
            {
              v66 += 7;
              v21 = v67++ >= 9;
              if (v21)
              {
                LODWORD(v68) = 0;
                goto LABEL_222;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v68) = 0;
        }

LABEL_222:
        v11 = 0;
        self->_dictionary = v68;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_kindType = 10;
LABEL_259:
        self->_attributedString = 0;
        goto LABEL_260;
      case 0xBu:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        while (2)
        {
          v167 = *v8;
          v168 = *&v7[v167];
          v169 = v168 + 1;
          if (v168 == -1 || v169 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v170 = *(*&v7[*v12] + v168);
            *&v7[v167] = v169;
            v166 |= (v170 & 0x7F) << v164;
            if (v170 < 0)
            {
              v164 += 7;
              v21 = v165++ >= 9;
              if (v21)
              {
                LODWORD(v166) = 0;
                goto LABEL_307;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v166) = 0;
        }

LABEL_307:
        v11 = 0;
        self->_attributedString = v166;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_kindType = 11;
LABEL_260:
        self->_measurement = 0;
        goto LABEL_261;
      case 0xCu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (2)
        {
          v48 = *v8;
          v49 = *&v7[v48];
          v50 = v49 + 1;
          if (v49 == -1 || v50 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v51 = *(*&v7[*v12] + v49);
            *&v7[v48] = v50;
            v47 |= (v51 & 0x7F) << v45;
            if (v51 < 0)
            {
              v45 += 7;
              v21 = v46++ >= 9;
              if (v21)
              {
                LODWORD(v47) = 0;
                goto LABEL_210;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v47) = 0;
        }

LABEL_210:
        v11 = 0;
        self->_measurement = v47;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_kindType = 12;
LABEL_261:
        self->_currencyAmount = 0;
        goto LABEL_262;
      case 0xDu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        while (2)
        {
          v62 = *v8;
          v63 = *&v7[v62];
          v64 = v63 + 1;
          if (v63 == -1 || v64 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v65 = *(*&v7[*v12] + v63);
            *&v7[v62] = v64;
            v61 |= (v65 & 0x7F) << v59;
            if (v65 < 0)
            {
              v59 += 7;
              v21 = v60++ >= 9;
              if (v21)
              {
                LODWORD(v61) = 0;
                goto LABEL_218;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v61) = 0;
        }

LABEL_218:
        v11 = 0;
        self->_currencyAmount = v61;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_kindType = 13;
LABEL_262:
        self->_paymentMethod = 0;
        goto LABEL_263;
      case 0xEu:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        while (2)
        {
          v146 = *v8;
          v147 = *&v7[v146];
          v148 = v147 + 1;
          if (v147 == -1 || v148 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v149 = *(*&v7[*v12] + v147);
            *&v7[v146] = v148;
            v145 |= (v149 & 0x7F) << v143;
            if (v149 < 0)
            {
              v143 += 7;
              v21 = v144++ >= 9;
              if (v21)
              {
                LODWORD(v145) = 0;
                goto LABEL_295;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v145) = 0;
        }

LABEL_295:
        v11 = 0;
        self->_paymentMethod = v145;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_kindType = 14;
LABEL_263:
        self->_placemark = 0;
        goto LABEL_264;
      case 0xFu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (2)
        {
          v41 = *v8;
          v42 = *&v7[v41];
          v43 = v42 + 1;
          if (v42 == -1 || v43 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v44 = *(*&v7[*v12] + v42);
            *&v7[v41] = v43;
            v40 |= (v44 & 0x7F) << v38;
            if (v44 < 0)
            {
              v38 += 7;
              v21 = v39++ >= 9;
              if (v21)
              {
                LODWORD(v40) = 0;
                goto LABEL_206;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v40) = 0;
        }

LABEL_206:
        v11 = 0;
        self->_placemark = v40;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_kindType = 15;
LABEL_264:
        self->_person = 0;
        goto LABEL_265;
      case 0x10u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        while (2)
        {
          v90 = *v8;
          v91 = *&v7[v90];
          v92 = v91 + 1;
          if (v91 == -1 || v92 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v93 = *(*&v7[*v12] + v91);
            *&v7[v90] = v92;
            v89 |= (v93 & 0x7F) << v87;
            if (v93 < 0)
            {
              v87 += 7;
              v21 = v88++ >= 9;
              if (v21)
              {
                LODWORD(v89) = 0;
                goto LABEL_234;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v89) = 0;
        }

LABEL_234:
        v11 = 0;
        self->_person = v89;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_placemark = 0;
        self->_kindType = 16;
LABEL_265:
        self->_file = 0;
        goto LABEL_266;
      case 0x11u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (2)
        {
          v34 = *v8;
          v35 = *&v7[v34];
          v36 = v35 + 1;
          if (v35 == -1 || v36 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v37 = *(*&v7[*v12] + v35);
            *&v7[v34] = v36;
            v33 |= (v37 & 0x7F) << v31;
            if (v37 < 0)
            {
              v31 += 7;
              v21 = v32++ >= 9;
              if (v21)
              {
                LODWORD(v33) = 0;
                goto LABEL_202;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v33) = 0;
        }

LABEL_202:
        v11 = 0;
        self->_file = v33;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_placemark = 0;
        self->_person = 0;
        self->_kindType = 17;
LABEL_266:
        self->_app = 0;
        goto LABEL_267;
      case 0x12u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        while (2)
        {
          v118 = *v8;
          v119 = *&v7[v118];
          v120 = v119 + 1;
          if (v119 == -1 || v120 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v121 = *(*&v7[*v12] + v119);
            *&v7[v118] = v120;
            v117 |= (v121 & 0x7F) << v115;
            if (v121 < 0)
            {
              v115 += 7;
              v21 = v116++ >= 9;
              if (v21)
              {
                LODWORD(v117) = 0;
                goto LABEL_279;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v117) = 0;
        }

LABEL_279:
        v11 = 0;
        self->_app = v117;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_placemark = 0;
        self->_person = 0;
        self->_file = 0;
        self->_kindType = 18;
LABEL_267:
        self->_searchableItem = 0;
        goto LABEL_268;
      case 0x13u:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        while (2)
        {
          v160 = *v8;
          v161 = *&v7[v160];
          v162 = v161 + 1;
          if (v161 == -1 || v162 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v163 = *(*&v7[*v12] + v161);
            *&v7[v160] = v162;
            v159 |= (v163 & 0x7F) << v157;
            if (v163 < 0)
            {
              v157 += 7;
              v21 = v158++ >= 9;
              if (v21)
              {
                LODWORD(v159) = 0;
                goto LABEL_303;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v159) = 0;
        }

LABEL_303:
        v11 = 0;
        self->_searchableItem = v159;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_placemark = 0;
        self->_person = 0;
        self->_file = 0;
        self->_app = 0;
        self->_kindType = 19;
LABEL_268:
        self->_intentsFile = 0;
        goto LABEL_269;
      case 0x14u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        while (2)
        {
          v188 = *v8;
          v189 = *&v7[v188];
          v190 = v189 + 1;
          if (v189 == -1 || v190 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v191 = *(*&v7[*v12] + v189);
            *&v7[v188] = v190;
            v187 |= (v191 & 0x7F) << v185;
            if (v191 < 0)
            {
              v185 += 7;
              v21 = v186++ >= 9;
              if (v21)
              {
                LODWORD(v187) = 0;
                goto LABEL_319;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v187) = 0;
        }

LABEL_319:
        v11 = 0;
        self->_intentsFile = v187;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_placemark = 0;
        self->_person = 0;
        self->_file = 0;
        self->_app = 0;
        self->_searchableItem = 0;
        self->_kindType = 20;
LABEL_269:
        self->_shortcut = 0;
        goto LABEL_270;
      case 0x15u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        while (2)
        {
          v125 = *v8;
          v126 = *&v7[v125];
          v127 = v126 + 1;
          if (v126 == -1 || v127 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v128 = *(*&v7[*v12] + v126);
            *&v7[v125] = v127;
            v124 |= (v128 & 0x7F) << v122;
            if (v128 < 0)
            {
              v122 += 7;
              v21 = v123++ >= 9;
              if (v21)
              {
                LODWORD(v124) = 0;
                goto LABEL_283;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v124) = 0;
        }

LABEL_283:
        v11 = 0;
        self->_shortcut = v124;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_placemark = 0;
        self->_person = 0;
        self->_file = 0;
        self->_app = 0;
        self->_searchableItem = 0;
        self->_intentsFile = 0;
        self->_kindType = 21;
LABEL_270:
        self->_recurrenceRule = 0;
        goto LABEL_271;
      case 0x16u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        while (2)
        {
          v139 = *v8;
          v140 = *&v7[v139];
          v141 = v140 + 1;
          if (v140 == -1 || v141 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v142 = *(*&v7[*v12] + v140);
            *&v7[v139] = v141;
            v138 |= (v142 & 0x7F) << v136;
            if (v142 < 0)
            {
              v136 += 7;
              v21 = v137++ >= 9;
              if (v21)
              {
                LODWORD(v138) = 0;
                goto LABEL_291;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v138) = 0;
        }

LABEL_291:
        v11 = 0;
        self->_recurrenceRule = v138;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_placemark = 0;
        self->_person = 0;
        self->_file = 0;
        self->_app = 0;
        self->_searchableItem = 0;
        self->_intentsFile = 0;
        self->_shortcut = 0;
        self->_kindType = 22;
LABEL_271:
        self->_dateInterval = 0;
        goto LABEL_272;
      case 0x17u:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        while (2)
        {
          v181 = *v8;
          v182 = *&v7[v181];
          v183 = v182 + 1;
          if (v182 == -1 || v183 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v184 = *(*&v7[*v12] + v182);
            *&v7[v181] = v183;
            v180 |= (v184 & 0x7F) << v178;
            if (v184 < 0)
            {
              v178 += 7;
              v21 = v179++ >= 9;
              if (v21)
              {
                LODWORD(v180) = 0;
                goto LABEL_315;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v180) = 0;
        }

LABEL_315:
        v11 = 0;
        self->_dateInterval = v180;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_placemark = 0;
        self->_person = 0;
        self->_file = 0;
        self->_app = 0;
        self->_searchableItem = 0;
        self->_intentsFile = 0;
        self->_shortcut = 0;
        self->_recurrenceRule = 0;
        self->_kindType = 23;
LABEL_272:
        self->_personNameComponents = 0;
        goto LABEL_273;
      case 0x18u:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        while (2)
        {
          v195 = *v8;
          v196 = *&v7[v195];
          v197 = v196 + 1;
          if (v196 == -1 || v197 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v198 = *(*&v7[*v12] + v196);
            *&v7[v195] = v197;
            v194 |= (v198 & 0x7F) << v192;
            if (v198 < 0)
            {
              v192 += 7;
              v21 = v193++ >= 9;
              if (v21)
              {
                LODWORD(v194) = 0;
                goto LABEL_323;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v194) = 0;
        }

LABEL_323:
        v11 = 0;
        self->_personNameComponents = v194;
        self->_none_p = 0;
        self->_BOOLType = 0;
        self->_intType = 0;
        self->_number = 0;
        self->_decimal = 0;
        self->_string = 0;
        self->_date = 0;
        self->_dateComponents = 0;
        self->_url = 0;
        self->_dictionary = 0;
        self->_attributedString = 0;
        self->_measurement = 0;
        self->_currencyAmount = 0;
        self->_paymentMethod = 0;
        self->_placemark = 0;
        self->_person = 0;
        self->_file = 0;
        self->_app = 0;
        self->_searchableItem = 0;
        self->_intentsFile = 0;
        self->_shortcut = 0;
        self->_recurrenceRule = 0;
        self->_dateInterval = 0;
        self->_kindType = 24;
LABEL_273:
        self->_duration = 0;
        continue;
      case 0x19u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        break;
      default:
        if (CCPBReaderSkipValueWithTag())
        {
          v11 = 0;
        }

        else
        {
          v199 = objc_opt_class();
          NSStringFromClass(v199);
          v208 = v6;
          v201 = v200 = a4;
          v202 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          a4 = v200;
          v6 = v208;
        }

        continue;
    }

    while (1)
    {
      v76 = *v8;
      v77 = *&v7[v76];
      v78 = v77 + 1;
      if (v77 == -1 || v78 > *&v7[*v9])
      {
        break;
      }

      v79 = *(*&v7[*v12] + v77);
      *&v7[v76] = v78;
      v75 |= (v79 & 0x7F) << v73;
      if ((v79 & 0x80) == 0)
      {
        goto LABEL_224;
      }

      v73 += 7;
      v21 = v74++ >= 9;
      if (v21)
      {
        LODWORD(v75) = 0;
        goto LABEL_226;
      }
    }

    *&v7[*v10] = 1;
LABEL_224:
    if (*&v7[*v10])
    {
      LODWORD(v75) = 0;
    }

LABEL_226:
    v11 = 0;
    self->_duration = v75;
    self->_none_p = 0;
    self->_BOOLType = 0;
    self->_intType = 0;
    self->_number = 0;
    self->_decimal = 0;
    self->_string = 0;
    self->_date = 0;
    self->_dateComponents = 0;
    self->_url = 0;
    self->_dictionary = 0;
    self->_attributedString = 0;
    self->_measurement = 0;
    self->_currencyAmount = 0;
    self->_paymentMethod = 0;
    self->_placemark = 0;
    self->_person = 0;
    self->_file = 0;
    self->_app = 0;
    self->_searchableItem = 0;
    self->_intentsFile = 0;
    self->_shortcut = 0;
    self->_recurrenceRule = 0;
    self->_dateInterval = 0;
    self->_personNameComponents = 0;
    self->_kindType = 25;
  }

  while (*&v7[*v8] < *&v7[*v9]);
  if (v11)
  {
    CCSetError();
  }

  else
  {
LABEL_327:
    if (!*&v7[*v10])
    {
      v206 = 1;
      goto LABEL_331;
    }

LABEL_328:
    v203 = objc_opt_class();
    v11 = NSStringFromClass(v203);
    v204 = *&v7[*v10];
    v205 = CCInvalidBufferErrorForMessage();
    CCSetError();
  }

  v206 = 0;
LABEL_331:

  return v206;
}

- (CCToolKitToolTypeIdentifierPrimitive)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      [v8 unsignedIntegerValue];
      v12 = CCValidateEnumField();
      v13 = v11;

      if (v12)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

LABEL_127:
    CCSetError();
    v63 = 0;
    goto LABEL_128;
  }

  if (v8 && a4 == 2)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      [v8 unsignedIntegerValue];
      v15 = CCValidateEnumField();
      v13 = v11;

      if (v15)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 3)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v16)
    {
      [v8 unsignedIntegerValue];
      v17 = CCValidateEnumField();
      v13 = v11;

      if (v17)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 4)
  {
    objc_opt_class();
    v18 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v18)
    {
      [v8 unsignedIntegerValue];
      v19 = CCValidateEnumField();
      v13 = v11;

      if (v19)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 5)
  {
    objc_opt_class();
    v20 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v20)
    {
      [v8 unsignedIntegerValue];
      v21 = CCValidateEnumField();
      v13 = v11;

      if (v21)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 6)
  {
    objc_opt_class();
    v22 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v22)
    {
      [v8 unsignedIntegerValue];
      v23 = CCValidateEnumField();
      v13 = v11;

      if (v23)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 7)
  {
    objc_opt_class();
    v24 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v24)
    {
      [v8 unsignedIntegerValue];
      v25 = CCValidateEnumField();
      v13 = v11;

      if (v25)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 8)
  {
    objc_opt_class();
    v26 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v26)
    {
      [v8 unsignedIntegerValue];
      v27 = CCValidateEnumField();
      v13 = v11;

      if (v27)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 9)
  {
    objc_opt_class();
    v28 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v28)
    {
      [v8 unsignedIntegerValue];
      v29 = CCValidateEnumField();
      v13 = v11;

      if (v29)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 10)
  {
    objc_opt_class();
    v30 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v30)
    {
      [v8 unsignedIntegerValue];
      v31 = CCValidateEnumField();
      v13 = v11;

      if (v31)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 11)
  {
    objc_opt_class();
    v32 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v32)
    {
      [v8 unsignedIntegerValue];
      v33 = CCValidateEnumField();
      v13 = v11;

      if (v33)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 12)
  {
    objc_opt_class();
    v34 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v34)
    {
      [v8 unsignedIntegerValue];
      v35 = CCValidateEnumField();
      v13 = v11;

      if (v35)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 13)
  {
    objc_opt_class();
    v36 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v36)
    {
      [v8 unsignedIntegerValue];
      v37 = CCValidateEnumField();
      v13 = v11;

      if (v37)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 14)
  {
    objc_opt_class();
    v38 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v38)
    {
      [v8 unsignedIntegerValue];
      v39 = CCValidateEnumField();
      v13 = v11;

      if (v39)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 15)
  {
    objc_opt_class();
    v40 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v40)
    {
      [v8 unsignedIntegerValue];
      v41 = CCValidateEnumField();
      v13 = v11;

      if (v41)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 16)
  {
    objc_opt_class();
    v42 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v42)
    {
      [v8 unsignedIntegerValue];
      v43 = CCValidateEnumField();
      v13 = v11;

      if (v43)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 17)
  {
    objc_opt_class();
    v44 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v44)
    {
      [v8 unsignedIntegerValue];
      v45 = CCValidateEnumField();
      v13 = v11;

      if (v45)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 18)
  {
    objc_opt_class();
    v46 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v46)
    {
      [v8 unsignedIntegerValue];
      v47 = CCValidateEnumField();
      v13 = v11;

      if (v47)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 19)
  {
    objc_opt_class();
    v48 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v48)
    {
      [v8 unsignedIntegerValue];
      v49 = CCValidateEnumField();
      v13 = v11;

      if (v49)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 20)
  {
    objc_opt_class();
    v50 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v50)
    {
      [v8 unsignedIntegerValue];
      v51 = CCValidateEnumField();
      v13 = v11;

      if (v51)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 21)
  {
    objc_opt_class();
    v52 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v52)
    {
      [v8 unsignedIntegerValue];
      v53 = CCValidateEnumField();
      v13 = v11;

      if (v53)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 22)
  {
    objc_opt_class();
    v54 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v54)
    {
      [v8 unsignedIntegerValue];
      v55 = CCValidateEnumField();
      v13 = v11;

      if (v55)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 23)
  {
    objc_opt_class();
    v56 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v56)
    {
      [v8 unsignedIntegerValue];
      v57 = CCValidateEnumField();
      v13 = v11;

      if (v57)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  if (v8 && a4 == 24)
  {
    objc_opt_class();
    v58 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v58)
    {
      [v8 unsignedIntegerValue];
      v59 = CCValidateEnumField();
      v13 = v11;

      if (v59)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }

    goto LABEL_127;
  }

  v13 = 0;
  if (!v8 || a4 != 25)
  {
    goto LABEL_126;
  }

  objc_opt_class();
  v60 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v60)
  {
    goto LABEL_127;
  }

  [v8 unsignedIntegerValue];
  v65 = v11;
  v61 = CCValidateEnumField();
  v13 = v11;

  if (v61)
  {
LABEL_125:
    CCPBDataWriterWriteUint32Field();
  }

LABEL_126:
  v62 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v62 error:a5];

  v11 = v13;
  v63 = self;
LABEL_128:

  return v63;
}

@end
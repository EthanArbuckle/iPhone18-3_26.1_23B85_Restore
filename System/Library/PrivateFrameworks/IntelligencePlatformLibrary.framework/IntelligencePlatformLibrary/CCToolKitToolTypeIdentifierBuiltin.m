@interface CCToolKitToolTypeIdentifierBuiltin
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeIdentifier)query;
- (CCToolKitToolTypeIdentifierBuiltin)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolTypeIdentifierBuiltin)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolTypeIdentifierBuiltin

- (CCToolKitToolTypeIdentifierBuiltin)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v48[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"app"];
    v47 = [v6 objectForKeyedSubscript:@"boundNumber"];
    v46 = [v6 objectForKeyedSubscript:@"calendar"];
    v45 = [v6 objectForKeyedSubscript:@"color"];
    v44 = [v6 objectForKeyedSubscript:@"currency"];
    v43 = [v6 objectForKeyedSubscript:@"file"];
    v42 = [v6 objectForKeyedSubscript:@"homeArea"];
    v41 = [v6 objectForKeyedSubscript:@"mediaRoute"];
    v40 = [v6 objectForKeyedSubscript:@"paymentMethod"];
    v39 = [v6 objectForKeyedSubscript:@"podcast"];
    v38 = [v6 objectForKeyedSubscript:@"person"];
    v37 = [v6 objectForKeyedSubscript:@"placemark"];
    v36 = [v6 objectForKeyedSubscript:@"rideshareOption"];
    v35 = [v6 objectForKeyedSubscript:@"vpn"];
    v10 = [v6 objectForKeyedSubscript:@"timeZone"];
    v11 = [v6 objectForKeyedSubscript:@"query"];
    if (v11)
    {
      v48[0] = 0;
      v12 = [[CCToolKitToolTypeIdentifier alloc] initWithJSONDictionary:v11 error:v48];
      v13 = v48[0];
      v14 = v13;
      if (!v12 || v13)
      {
        CCSetError();
        v17 = 0;
LABEL_44:

        goto LABEL_45;
      }

      v11 = v12;
    }

    v14 = [v6 objectForKeyedSubscript:@"measurement"];
    if (v9)
    {
      v15 = v9;
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v12 = v9;
    if (v47)
    {
      v12 = v47;

      v16 = 2;
    }

    v34 = self;
    if (v46)
    {
      v18 = v46;

      v16 = 3;
      v12 = v18;
    }

    if (v45)
    {
      v19 = v45;

      v16 = 4;
      v12 = v19;
    }

    if (v44)
    {
      v20 = v44;

      v16 = 5;
      v12 = v20;
    }

    if (v43)
    {
      v21 = v43;

      v16 = 6;
      v12 = v21;
    }

    if (v42)
    {
      v22 = v42;

      v16 = 7;
      v12 = v22;
    }

    if (v41)
    {
      v23 = v41;

      v16 = 8;
      v12 = v23;
    }

    if (v40)
    {
      v24 = v40;

      v16 = 9;
      v12 = v24;
    }

    if (v39)
    {
      v25 = v39;

      v16 = 10;
      v12 = v25;
    }

    if (v38)
    {
      v26 = v38;

      v16 = 11;
      v12 = v26;
    }

    if (v37)
    {
      v27 = v37;

      v16 = 12;
      v12 = v27;
    }

    if (v36)
    {
      v28 = v36;

      v16 = 13;
      v12 = v28;
    }

    if (v35)
    {
      v29 = v35;

      v16 = 14;
      v12 = v29;
    }

    if (v10)
    {
      v30 = v10;

      v16 = 15;
      v12 = v30;
    }

    if (v11)
    {
      v31 = v11;

      v16 = 16;
      v12 = v31;
    }

    if (v14)
    {
      v32 = v14;

      v16 = 17;
      v12 = v32;
    }

    self = v34;
    v17 = [[CCToolKitToolTypeIdentifierBuiltin alloc] initWithKind:v12 kindType:v16 error:a4];
    goto LABEL_44;
  }

  CCSetError();
  v17 = 0;
LABEL_45:

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin app](self, "app")}];
    [v3 setObject:v5 forKeyedSubscript:@"app"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin boundNumber](self, "boundNumber")}];
    [v3 setObject:v6 forKeyedSubscript:@"boundNumber"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin calendar](self, "calendar")}];
    [v3 setObject:v7 forKeyedSubscript:@"calendar"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin color](self, "color")}];
    [v3 setObject:v8 forKeyedSubscript:@"color"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin currency](self, "currency")}];
    [v3 setObject:v9 forKeyedSubscript:@"currency"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin file](self, "file")}];
    [v3 setObject:v10 forKeyedSubscript:@"file"];

    kindType = self->_kindType;
  }

  if (kindType == 7)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin homeArea](self, "homeArea")}];
    [v3 setObject:v11 forKeyedSubscript:@"homeArea"];

    kindType = self->_kindType;
  }

  if (kindType == 8)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin mediaRoute](self, "mediaRoute")}];
    [v3 setObject:v12 forKeyedSubscript:@"mediaRoute"];

    kindType = self->_kindType;
  }

  if (kindType == 9)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin paymentMethod](self, "paymentMethod")}];
    [v3 setObject:v13 forKeyedSubscript:@"paymentMethod"];

    kindType = self->_kindType;
  }

  if (kindType == 10)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin podcast](self, "podcast")}];
    [v3 setObject:v14 forKeyedSubscript:@"podcast"];

    kindType = self->_kindType;
  }

  if (kindType == 11)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin person](self, "person")}];
    [v3 setObject:v15 forKeyedSubscript:@"person"];

    kindType = self->_kindType;
  }

  if (kindType == 12)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin placemark](self, "placemark")}];
    [v3 setObject:v16 forKeyedSubscript:@"placemark"];

    kindType = self->_kindType;
  }

  if (kindType == 13)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin rideshareOption](self, "rideshareOption")}];
    [v3 setObject:v17 forKeyedSubscript:@"rideshareOption"];

    kindType = self->_kindType;
  }

  if (kindType == 14)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin vpn](self, "vpn")}];
    [v3 setObject:v18 forKeyedSubscript:@"vpn"];

    kindType = self->_kindType;
  }

  if (kindType == 15)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin timeZone](self, "timeZone")}];
    [v3 setObject:v19 forKeyedSubscript:@"timeZone"];

    kindType = self->_kindType;
  }

  if (kindType == 16)
  {
    if (!self->_query)
    {
      goto LABEL_36;
    }

    v20 = [(CCToolKitToolTypeIdentifierBuiltin *)self query];
    v21 = [v20 jsonDictionary];
    [v3 setObject:v21 forKeyedSubscript:@"query"];

    kindType = self->_kindType;
  }

  if (kindType == 17)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolTypeIdentifierBuiltin measurement](self, "measurement")}];
    [v3 setObject:v22 forKeyedSubscript:@"measurement"];
  }

LABEL_36:
  v23 = [v3 copy];

  return v23;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v24 = a3;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_app];
  v24[2](v24, v7);

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_boundNumber];
  v24[2](v24, v8);

  v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_calendar];
  v24[2](v24, v9);

  v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_color];
  v24[2](v24, v10);

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_currency];
  v24[2](v24, v11);

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_file];
  v24[2](v24, v12);

  v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_homeArea];
  v24[2](v24, v13);

  v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_mediaRoute];
  v24[2](v24, v14);

  v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_paymentMethod];
  v24[2](v24, v15);

  v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_podcast];
  v24[2](v24, v16);

  v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_person];
  v24[2](v24, v17);

  v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_placemark];
  v24[2](v24, v18);

  v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_rideshareOption];
  v24[2](v24, v19);

  v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_vpn];
  v24[2](v24, v20);

  v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_timeZone];
  v24[2](v24, v21);

  if (self->_query)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_query];
    v24[2](v24, v22);
  }

  v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_measurement];
  v24[2](v24, v23);
}

- (CCToolKitToolTypeIdentifier)query
{
  v2 = [(CCToolKitToolTypeIdentifier *)self->_query copy];

  return v2;
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
    goto LABEL_222;
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
          goto LABEL_223;
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
      goto LABEL_223;
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
            goto LABEL_175;
          }

          v24 += 7;
          v21 = v25++ >= 9;
          if (v21)
          {
            LODWORD(v26) = 0;
            goto LABEL_177;
          }
        }

        *&v7[*v10] = 1;
LABEL_175:
        if (*&v7[*v10])
        {
          LODWORD(v26) = 0;
        }

LABEL_177:
        self->_app = v26;
        self->_kindType = 1;
        self->_boundNumber = 0;
        goto LABEL_182;
      case 2u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        while (2)
        {
          v103 = *v8;
          v104 = *&v7[v103];
          v105 = v104 + 1;
          if (v104 == -1 || v105 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v106 = *(*&v7[*v12] + v104);
            *&v7[v103] = v105;
            v102 |= (v106 & 0x7F) << v100;
            if (v106 < 0)
            {
              v100 += 7;
              v21 = v101++ >= 9;
              if (v21)
              {
                LODWORD(v102) = 0;
                goto LABEL_181;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v102) = 0;
        }

LABEL_181:
        self->_boundNumber = v102;
        self->_app = 0;
        self->_kindType = 2;
LABEL_182:
        self->_calendar = 0;
        goto LABEL_183;
      case 3u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        while (2)
        {
          v76 = *v8;
          v77 = *&v7[v76];
          v78 = v77 + 1;
          if (v77 == -1 || v78 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v79 = *(*&v7[*v12] + v77);
            *&v7[v76] = v78;
            v75 |= (v79 & 0x7F) << v73;
            if (v79 < 0)
            {
              v73 += 7;
              v21 = v74++ >= 9;
              if (v21)
              {
                LODWORD(v75) = 0;
                goto LABEL_165;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v75) = 0;
        }

LABEL_165:
        self->_calendar = v75;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_kindType = 3;
LABEL_183:
        self->_color = 0;
        goto LABEL_184;
      case 4u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        while (2)
        {
          v89 = *v8;
          v90 = *&v7[v89];
          v91 = v90 + 1;
          if (v90 == -1 || v91 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v92 = *(*&v7[*v12] + v90);
            *&v7[v89] = v91;
            v88 |= (v92 & 0x7F) << v86;
            if (v92 < 0)
            {
              v86 += 7;
              v21 = v87++ >= 9;
              if (v21)
              {
                LODWORD(v88) = 0;
                goto LABEL_169;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v88) = 0;
        }

LABEL_169:
        self->_color = v88;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_kindType = 4;
LABEL_184:
        self->_currency = 0;
        goto LABEL_185;
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
                goto LABEL_153;
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

LABEL_153:
        self->_currency = v54;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_kindType = 5;
LABEL_185:
        self->_file = 0;
        goto LABEL_186;
      case 6u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        while (2)
        {
          v110 = *v8;
          v111 = *&v7[v110];
          v112 = v111 + 1;
          if (v111 == -1 || v112 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v113 = *(*&v7[*v12] + v111);
            *&v7[v110] = v112;
            v109 |= (v113 & 0x7F) << v107;
            if (v113 < 0)
            {
              v107 += 7;
              v21 = v108++ >= 9;
              if (v21)
              {
                LODWORD(v109) = 0;
                goto LABEL_202;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v109) = 0;
        }

LABEL_202:
        self->_file = v109;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_kindType = 6;
LABEL_186:
        self->_homeArea = 0;
        goto LABEL_187;
      case 7u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        while (2)
        {
          v124 = *v8;
          v125 = *&v7[v124];
          v126 = v125 + 1;
          if (v125 == -1 || v126 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v127 = *(*&v7[*v12] + v125);
            *&v7[v124] = v126;
            v123 |= (v127 & 0x7F) << v121;
            if (v127 < 0)
            {
              v121 += 7;
              v21 = v122++ >= 9;
              if (v21)
              {
                LODWORD(v123) = 0;
                goto LABEL_210;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v123) = 0;
        }

LABEL_210:
        self->_homeArea = v123;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_kindType = 7;
LABEL_187:
        self->_mediaRoute = 0;
        goto LABEL_188;
      case 8u:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        while (2)
        {
          v96 = *v8;
          v97 = *&v7[v96];
          v98 = v97 + 1;
          if (v97 == -1 || v98 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v99 = *(*&v7[*v12] + v97);
            *&v7[v96] = v98;
            v95 |= (v99 & 0x7F) << v93;
            if (v99 < 0)
            {
              v93 += 7;
              v21 = v94++ >= 9;
              if (v21)
              {
                LODWORD(v95) = 0;
                goto LABEL_173;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v95) = 0;
        }

LABEL_173:
        self->_mediaRoute = v95;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_homeArea = 0;
        self->_kindType = 8;
LABEL_188:
        self->_paymentMethod = 0;
        goto LABEL_189;
      case 9u:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        while (2)
        {
          v138 = *v8;
          v139 = *&v7[v138];
          v140 = v139 + 1;
          if (v139 == -1 || v140 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v141 = *(*&v7[*v12] + v139);
            *&v7[v138] = v140;
            v137 |= (v141 & 0x7F) << v135;
            if (v141 < 0)
            {
              v135 += 7;
              v21 = v136++ >= 9;
              if (v21)
              {
                LODWORD(v137) = 0;
                goto LABEL_218;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v137) = 0;
        }

LABEL_218:
        self->_paymentMethod = v137;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_homeArea = 0;
        self->_mediaRoute = 0;
        self->_kindType = 9;
LABEL_189:
        self->_podcast = 0;
        goto LABEL_190;
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
                goto LABEL_161;
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

LABEL_161:
        self->_podcast = v68;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_homeArea = 0;
        self->_mediaRoute = 0;
        self->_paymentMethod = 0;
        self->_kindType = 10;
LABEL_190:
        self->_person = 0;
        goto LABEL_191;
      case 0xBu:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        while (2)
        {
          v131 = *v8;
          v132 = *&v7[v131];
          v133 = v132 + 1;
          if (v132 == -1 || v133 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v134 = *(*&v7[*v12] + v132);
            *&v7[v131] = v133;
            v130 |= (v134 & 0x7F) << v128;
            if (v134 < 0)
            {
              v128 += 7;
              v21 = v129++ >= 9;
              if (v21)
              {
                LODWORD(v130) = 0;
                goto LABEL_214;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v130) = 0;
        }

LABEL_214:
        self->_person = v130;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_homeArea = 0;
        self->_mediaRoute = 0;
        self->_paymentMethod = 0;
        self->_podcast = 0;
        self->_kindType = 11;
LABEL_191:
        self->_placemark = 0;
        goto LABEL_192;
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
                goto LABEL_149;
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

LABEL_149:
        self->_placemark = v47;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_homeArea = 0;
        self->_mediaRoute = 0;
        self->_paymentMethod = 0;
        self->_podcast = 0;
        self->_person = 0;
        self->_kindType = 12;
LABEL_192:
        self->_rideshareOption = 0;
        goto LABEL_193;
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
                goto LABEL_157;
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

LABEL_157:
        self->_rideshareOption = v61;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_homeArea = 0;
        self->_mediaRoute = 0;
        self->_paymentMethod = 0;
        self->_podcast = 0;
        self->_person = 0;
        self->_placemark = 0;
        self->_kindType = 13;
LABEL_193:
        self->_vpn = 0;
        goto LABEL_194;
      case 0xEu:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        while (2)
        {
          v117 = *v8;
          v118 = *&v7[v117];
          v119 = v118 + 1;
          if (v118 == -1 || v119 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v120 = *(*&v7[*v12] + v118);
            *&v7[v117] = v119;
            v116 |= (v120 & 0x7F) << v114;
            if (v120 < 0)
            {
              v114 += 7;
              v21 = v115++ >= 9;
              if (v21)
              {
                LODWORD(v116) = 0;
                goto LABEL_206;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          LODWORD(v116) = 0;
        }

LABEL_206:
        self->_vpn = v116;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_homeArea = 0;
        self->_mediaRoute = 0;
        self->_paymentMethod = 0;
        self->_podcast = 0;
        self->_person = 0;
        self->_placemark = 0;
        self->_rideshareOption = 0;
        self->_kindType = 14;
LABEL_194:
        self->_timeZone = 0;
        goto LABEL_195;
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
                goto LABEL_145;
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

LABEL_145:
        self->_timeZone = v40;
        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_homeArea = 0;
        self->_mediaRoute = 0;
        self->_paymentMethod = 0;
        self->_podcast = 0;
        self->_person = 0;
        self->_placemark = 0;
        self->_rideshareOption = 0;
        self->_vpn = 0;
        self->_kindType = 15;
LABEL_195:
        query = self->_query;
        self->_query = 0;

        v11 = 0;
LABEL_196:
        self->_measurement = 0;
        continue;
      case 0x10u:
        v80 = [CCToolKitToolTypeIdentifier alloc];
        CCPBReaderReadDataNoCopy();
        v81 = a4;
        v83 = v82 = v6;
        v155 = 0;
        v84 = [(CCItemMessage *)v80 initWithData:v83 error:&v155];
        v11 = v155;
        v85 = self->_query;
        self->_query = v84;

        v6 = v82;
        a4 = v81;
        v10 = MEMORY[0x1E6993AA8];
        if (v11)
        {
          continue;
        }

        self->_app = 0;
        self->_boundNumber = 0;
        self->_calendar = 0;
        self->_color = 0;
        self->_currency = 0;
        self->_file = 0;
        self->_homeArea = 0;
        self->_mediaRoute = 0;
        self->_paymentMethod = 0;
        self->_podcast = 0;
        self->_person = 0;
        self->_placemark = 0;
        self->_rideshareOption = 0;
        self->_vpn = 0;
        self->_timeZone = 0;
        self->_kindType = 16;
        goto LABEL_196;
      case 0x11u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        break;
      default:
        if (CCPBReaderSkipValueWithTag())
        {
          v11 = 0;
        }

        else
        {
          v144 = objc_opt_class();
          NSStringFromClass(v144);
          v154 = a4;
          v146 = v145 = v6;
          v147 = *&v7[*v10];
          v11 = CCSkipFieldErrorForMessage();

          v6 = v145;
          a4 = v154;
        }

        continue;
    }

    while (1)
    {
      v34 = *v8;
      v35 = *&v7[v34];
      v36 = v35 + 1;
      if (v35 == -1 || v36 > *&v7[*v9])
      {
        break;
      }

      v37 = *(*&v7[*v12] + v35);
      *&v7[v34] = v36;
      v33 |= (v37 & 0x7F) << v31;
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_139;
      }

      v31 += 7;
      v21 = v32++ >= 9;
      if (v21)
      {
        LODWORD(v33) = 0;
        goto LABEL_141;
      }
    }

    *&v7[*v10] = 1;
LABEL_139:
    if (*&v7[*v10])
    {
      LODWORD(v33) = 0;
    }

LABEL_141:
    self->_measurement = v33;
    self->_app = 0;
    self->_boundNumber = 0;
    self->_calendar = 0;
    self->_color = 0;
    self->_currency = 0;
    self->_file = 0;
    self->_homeArea = 0;
    self->_mediaRoute = 0;
    self->_paymentMethod = 0;
    self->_podcast = 0;
    self->_person = 0;
    self->_placemark = 0;
    self->_rideshareOption = 0;
    self->_vpn = 0;
    self->_timeZone = 0;
    v142 = self->_query;
    self->_query = 0;

    v11 = 0;
    self->_kindType = 17;
  }

  while (*&v7[*v8] < *&v7[*v9]);
  if (v11)
  {
    CCSetError();
  }

  else
  {
LABEL_222:
    if (!*&v7[*v10])
    {
      v11 = 0;
      v152 = 1;
      goto LABEL_226;
    }

LABEL_223:
    v148 = objc_opt_class();
    v149 = NSStringFromClass(v148);
    v150 = *&v7[*v10];
    v151 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v11 = 0;
  }

  v152 = 0;
LABEL_226:

  return v152;
}

- (CCToolKitToolTypeIdentifierBuiltin)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

LABEL_86:
    CCSetError();
    v43 = 0;
    goto LABEL_87;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
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
        goto LABEL_75;
      }

      goto LABEL_76;
    }

    goto LABEL_86;
  }

  if (!v8 || a4 != 15)
  {
    if (v8 && a4 == 16)
    {
      objc_opt_class();
      v44 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (!v44)
      {
        CCSetError();
        v43 = 0;
        v11 = v13;
        goto LABEL_87;
      }

      v45 = [v8 data];
      CCPBDataWriterWriteDataField();

      goto LABEL_76;
    }

    v13 = 0;
    if (!v8 || a4 != 17)
    {
      goto LABEL_76;
    }

    objc_opt_class();
    v46 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v46)
    {
      [v8 unsignedIntegerValue];
      v47 = CCValidateEnumField();
      v13 = v11;

      if (!v47)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    goto LABEL_86;
  }

  objc_opt_class();
  v40 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v40)
  {
    goto LABEL_86;
  }

  [v8 unsignedIntegerValue];
  v41 = CCValidateEnumField();
  v13 = v11;

  if (v41)
  {
LABEL_75:
    CCPBDataWriterWriteUint32Field();
  }

LABEL_76:
  v42 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v42 error:a5];

  v11 = v13;
  v43 = self;
LABEL_87:

  return v43;
}

@end
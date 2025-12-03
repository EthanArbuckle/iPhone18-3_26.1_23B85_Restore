@interface BMWalletPaymentsCommerceOrderEmailAddress
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceOrderEmailAddress)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMWalletPaymentsCommerceOrderEmailAddress)initWithStreet:(id)street city:(id)city state:(id)state postalCode:(id)code country:(id)country addressLines:(id)lines locality:(id)locality subLocality:(id)self0 administrativeArea:(id)self1 subAdministrativeArea:(id)self2 countryCode:(id)self3 rawAddress:(id)self4;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_addressLinesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceOrderEmailAddress

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    street = [(BMWalletPaymentsCommerceOrderEmailAddress *)self street];
    street2 = [v5 street];
    v8 = street2;
    if (street == street2)
    {
    }

    else
    {
      street3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self street];
      street4 = [v5 street];
      v11 = [street3 isEqual:street4];

      if (!v11)
      {
        goto LABEL_45;
      }
    }

    city = [(BMWalletPaymentsCommerceOrderEmailAddress *)self city];
    city2 = [v5 city];
    v15 = city2;
    if (city == city2)
    {
    }

    else
    {
      city3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self city];
      city4 = [v5 city];
      v18 = [city3 isEqual:city4];

      if (!v18)
      {
        goto LABEL_45;
      }
    }

    state = [(BMWalletPaymentsCommerceOrderEmailAddress *)self state];
    state2 = [v5 state];
    v21 = state2;
    if (state == state2)
    {
    }

    else
    {
      state3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self state];
      state4 = [v5 state];
      v24 = [state3 isEqual:state4];

      if (!v24)
      {
        goto LABEL_45;
      }
    }

    postalCode = [(BMWalletPaymentsCommerceOrderEmailAddress *)self postalCode];
    postalCode2 = [v5 postalCode];
    v27 = postalCode2;
    if (postalCode == postalCode2)
    {
    }

    else
    {
      postalCode3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self postalCode];
      postalCode4 = [v5 postalCode];
      v30 = [postalCode3 isEqual:postalCode4];

      if (!v30)
      {
        goto LABEL_45;
      }
    }

    country = [(BMWalletPaymentsCommerceOrderEmailAddress *)self country];
    country2 = [v5 country];
    v33 = country2;
    if (country == country2)
    {
    }

    else
    {
      country3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self country];
      country4 = [v5 country];
      v36 = [country3 isEqual:country4];

      if (!v36)
      {
        goto LABEL_45;
      }
    }

    addressLines = [(BMWalletPaymentsCommerceOrderEmailAddress *)self addressLines];
    addressLines2 = [v5 addressLines];
    v39 = addressLines2;
    if (addressLines == addressLines2)
    {
    }

    else
    {
      addressLines3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self addressLines];
      addressLines4 = [v5 addressLines];
      v42 = [addressLines3 isEqual:addressLines4];

      if (!v42)
      {
        goto LABEL_45;
      }
    }

    locality = [(BMWalletPaymentsCommerceOrderEmailAddress *)self locality];
    locality2 = [v5 locality];
    v45 = locality2;
    if (locality == locality2)
    {
    }

    else
    {
      locality3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self locality];
      locality4 = [v5 locality];
      v48 = [locality3 isEqual:locality4];

      if (!v48)
      {
        goto LABEL_45;
      }
    }

    subLocality = [(BMWalletPaymentsCommerceOrderEmailAddress *)self subLocality];
    subLocality2 = [v5 subLocality];
    v51 = subLocality2;
    if (subLocality == subLocality2)
    {
    }

    else
    {
      subLocality3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self subLocality];
      subLocality4 = [v5 subLocality];
      v54 = [subLocality3 isEqual:subLocality4];

      if (!v54)
      {
        goto LABEL_45;
      }
    }

    administrativeArea = [(BMWalletPaymentsCommerceOrderEmailAddress *)self administrativeArea];
    administrativeArea2 = [v5 administrativeArea];
    v57 = administrativeArea2;
    if (administrativeArea == administrativeArea2)
    {
    }

    else
    {
      administrativeArea3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self administrativeArea];
      administrativeArea4 = [v5 administrativeArea];
      v60 = [administrativeArea3 isEqual:administrativeArea4];

      if (!v60)
      {
        goto LABEL_45;
      }
    }

    subAdministrativeArea = [(BMWalletPaymentsCommerceOrderEmailAddress *)self subAdministrativeArea];
    subAdministrativeArea2 = [v5 subAdministrativeArea];
    v63 = subAdministrativeArea2;
    if (subAdministrativeArea == subAdministrativeArea2)
    {
    }

    else
    {
      subAdministrativeArea3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self subAdministrativeArea];
      subAdministrativeArea4 = [v5 subAdministrativeArea];
      v66 = [subAdministrativeArea3 isEqual:subAdministrativeArea4];

      if (!v66)
      {
        goto LABEL_45;
      }
    }

    countryCode = [(BMWalletPaymentsCommerceOrderEmailAddress *)self countryCode];
    countryCode2 = [v5 countryCode];
    v69 = countryCode2;
    if (countryCode == countryCode2)
    {
    }

    else
    {
      countryCode3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self countryCode];
      countryCode4 = [v5 countryCode];
      v72 = [countryCode3 isEqual:countryCode4];

      if (!v72)
      {
LABEL_45:
        v12 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    rawAddress = [(BMWalletPaymentsCommerceOrderEmailAddress *)self rawAddress];
    rawAddress2 = [v5 rawAddress];
    if (rawAddress == rawAddress2)
    {
      v12 = 1;
    }

    else
    {
      rawAddress3 = [(BMWalletPaymentsCommerceOrderEmailAddress *)self rawAddress];
      rawAddress4 = [v5 rawAddress];
      v12 = [rawAddress3 isEqual:rawAddress4];
    }

    goto LABEL_46;
  }

  v12 = 0;
LABEL_47:

  return v12;
}

- (id)jsonDictionary
{
  v43[12] = *MEMORY[0x1E69E9840];
  street = [(BMWalletPaymentsCommerceOrderEmailAddress *)self street];
  city = [(BMWalletPaymentsCommerceOrderEmailAddress *)self city];
  state = [(BMWalletPaymentsCommerceOrderEmailAddress *)self state];
  postalCode = [(BMWalletPaymentsCommerceOrderEmailAddress *)self postalCode];
  country = [(BMWalletPaymentsCommerceOrderEmailAddress *)self country];
  _addressLinesJSONArray = [(BMWalletPaymentsCommerceOrderEmailAddress *)self _addressLinesJSONArray];
  locality = [(BMWalletPaymentsCommerceOrderEmailAddress *)self locality];
  subLocality = [(BMWalletPaymentsCommerceOrderEmailAddress *)self subLocality];
  administrativeArea = [(BMWalletPaymentsCommerceOrderEmailAddress *)self administrativeArea];
  subAdministrativeArea = [(BMWalletPaymentsCommerceOrderEmailAddress *)self subAdministrativeArea];
  countryCode = [(BMWalletPaymentsCommerceOrderEmailAddress *)self countryCode];
  rawAddress = [(BMWalletPaymentsCommerceOrderEmailAddress *)self rawAddress];
  v42[0] = @"street";
  null = street;
  if (!street)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null;
  v43[0] = null;
  v42[1] = @"city";
  null2 = city;
  if (!city)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null2;
  v43[1] = null2;
  v42[2] = @"state";
  null3 = state;
  if (!state)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null3;
  v43[2] = null3;
  v42[3] = @"postalCode";
  null4 = postalCode;
  if (!postalCode)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null4;
  v43[3] = null4;
  v42[4] = @"country";
  null5 = country;
  if (!country)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = postalCode;
  v37 = state;
  v28 = null5;
  v43[4] = null5;
  v42[5] = @"addressLines";
  null6 = _addressLinesJSONArray;
  if (!_addressLinesJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = country;
  v27 = null6;
  v43[5] = null6;
  v42[6] = @"locality";
  null7 = locality;
  if (!locality)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = _addressLinesJSONArray;
  v43[6] = null7;
  v42[7] = @"subLocality";
  null8 = subLocality;
  if (!subLocality)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = city;
  v43[7] = null8;
  v42[8] = @"administrativeArea";
  null9 = administrativeArea;
  if (!administrativeArea)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = street;
  v43[8] = null9;
  v42[9] = @"subAdministrativeArea";
  null10 = subAdministrativeArea;
  if (!subAdministrativeArea)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = null10;
  v42[10] = @"countryCode";
  null11 = countryCode;
  if (!countryCode)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v43[10] = null11;
  v42[11] = @"rawAddress";
  null12 = rawAddress;
  if (!rawAddress)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v43[11] = null12;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:12];
  if (!rawAddress)
  {
  }

  if (!countryCode)
  {
  }

  if (!subAdministrativeArea)
  {
  }

  if (!administrativeArea)
  {
  }

  if (!subLocality)
  {
  }

  if (!locality)
  {
  }

  if (!v34)
  {
  }

  if (v35)
  {
    if (v36)
    {
      goto LABEL_41;
    }
  }

  else
  {

    if (v36)
    {
LABEL_41:
      if (v37)
      {
        goto LABEL_42;
      }

      goto LABEL_49;
    }
  }

  if (v37)
  {
LABEL_42:
    if (v19)
    {
      goto LABEL_43;
    }

LABEL_50:

    if (v21)
    {
      goto LABEL_44;
    }

    goto LABEL_51;
  }

LABEL_49:

  if (!v19)
  {
    goto LABEL_50;
  }

LABEL_43:
  if (v21)
  {
    goto LABEL_44;
  }

LABEL_51:

LABEL_44:
  v25 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_addressLinesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  addressLines = [(BMWalletPaymentsCommerceOrderEmailAddress *)self addressLines];
  v5 = [addressLines countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(addressLines);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [addressLines countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceOrderEmailAddress)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v181[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"street"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = v7;
        v29 = p_isa;
        v30 = *MEMORY[0x1E698F240];
        v180 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"street"];
        v181[0] = v31;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v181 forKeys:&v180 count:1];
        v32 = [v27 initWithDomain:v30 code:2 userInfo:v9];
        v8 = 0;
        p_isa = 0;
        *v29 = v32;
        v7 = v28;
        goto LABEL_98;
      }

      v8 = 0;
      goto LABEL_99;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"city"];
  v147 = v7;
  v148 = v8;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy = self;
        v35 = p_isa;
        v36 = *MEMORY[0x1E698F240];
        v178 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"city"];
        v179 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
        v39 = v33;
        v10 = v38;
        v40 = [v39 initWithDomain:v36 code:2 userInfo:v38];
        v31 = 0;
        p_isa = 0;
        *v35 = v40;
        self = selfCopy;
        goto LABEL_96;
      }

      v31 = 0;
      goto LABEL_98;
    }

    v146 = v9;
  }

  else
  {
    v146 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"state"];
  v145 = p_isa;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v46 = v10;
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy2 = self;
        v49 = p_isa;
        v50 = *MEMORY[0x1E698F240];
        v176 = *MEMORY[0x1E696A578];
        v51 = v9;
        v52 = objc_alloc(MEMORY[0x1E696AEC0]);
        v119 = objc_opt_class();
        v53 = v52;
        v9 = v51;
        v54 = [v53 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v119, @"state"];
        v177 = v54;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
        v56 = v47;
        v10 = v46;
        v144 = v55;
        v57 = [v56 initWithDomain:v50 code:2 userInfo:?];
        v37 = 0;
        p_isa = 0;
        *v49 = v57;
        self = selfCopy2;
        v13 = v54;
        v31 = v146;
        goto LABEL_95;
      }

      v37 = 0;
      v31 = v146;
      goto LABEL_97;
    }

    v143 = v10;
  }

  else
  {
    v143 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"postalCode"];
  v144 = v11;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v145)
      {
        v60 = v10;
        v61 = objc_alloc(MEMORY[0x1E696ABC0]);
        v62 = *MEMORY[0x1E698F240];
        v174 = *MEMORY[0x1E696A578];
        v63 = v9;
        v64 = objc_alloc(MEMORY[0x1E696AEC0]);
        v120 = objc_opt_class();
        v65 = v64;
        v9 = v63;
        v66 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v120, @"postalCode"];
        v175 = v66;
        v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
        v68 = v61;
        v10 = v60;
        v142 = v67;
        v69 = [v68 initWithDomain:v62 code:2 userInfo:?];
        v13 = 0;
        p_isa = 0;
        *v145 = v69;
        v31 = v146;
        v37 = v143;
        goto LABEL_94;
      }

      v13 = 0;
      p_isa = 0;
      v31 = v146;
      v37 = v143;
      goto LABEL_95;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"country"];
  v140 = v10;
  v141 = v9;
  v142 = v14;
  if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v145)
      {
        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        v72 = v9;
        v73 = *MEMORY[0x1E698F240];
        v172 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"country"];
        v173 = v16;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
        v74 = v73;
        v9 = v72;
        v75 = [v71 initWithDomain:v74 code:2 userInfo:v19];
        v139 = 0;
        p_isa = 0;
        *v145 = v75;
        v31 = v146;
        v37 = v143;
        goto LABEL_92;
      }

      v66 = 0;
      p_isa = 0;
      v31 = v146;
      v37 = v143;
      goto LABEL_94;
    }

    v139 = v15;
  }

  else
  {
    v139 = 0;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"addressLines"];
  null = [MEMORY[0x1E695DFB0] null];
  v18 = [v16 isEqual:null];

  if (v18)
  {
    v137 = v13;

    v16 = 0;
  }

  else
  {
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        p_isa = v145;
        if (!v145)
        {
          v9 = v141;
          v31 = v146;
          v37 = v143;
          goto LABEL_93;
        }

        v76 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy3 = self;
        v78 = *MEMORY[0x1E698F240];
        v170 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"addressLines"];
        v171 = v19;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
        v80 = v78;
        self = selfCopy3;
        p_isa = 0;
        *v145 = [v76 initWithDomain:v80 code:2 userInfo:v79];
        v70 = v79;
LABEL_61:
        v9 = v141;
        v31 = v146;
        v37 = v143;
        goto LABEL_91;
      }
    }

    v137 = v13;
  }

  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v16 = v16;
  v20 = [v16 countByEnumeratingWithState:&v149 objects:v169 count:16];
  if (!v20)
  {
    goto LABEL_36;
  }

  v21 = v20;
  v22 = *v150;
  selfCopy4 = self;
  while (2)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v150 != v22)
      {
        objc_enumerationMutation(v16);
      }

      v24 = *(*(&v149 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v145)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v167 = *MEMORY[0x1E696A578];
          v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"addressLines"];
          v168 = v133;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
          v44 = v41;
          v45 = v42;
LABEL_53:
          v134 = v43;
          v31 = v146;
          v37 = v143;
          v13 = v137;
          p_isa = 0;
          *v145 = [v44 initWithDomain:v45 code:2 userInfo:?];
          v136 = v16;
          self = selfCopy4;
          v9 = v141;

          goto LABEL_90;
        }

        goto LABEL_56;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v145)
        {
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = *MEMORY[0x1E698F240];
          v165 = *MEMORY[0x1E696A578];
          v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"addressLines"];
          v166 = v133;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
          v44 = v58;
          v45 = v59;
          goto LABEL_53;
        }

LABEL_56:
        p_isa = 0;
        v70 = v16;
        v13 = v137;
        self = selfCopy4;
        goto LABEL_61;
      }

      [v19 addObject:v24];
    }

    v21 = [v16 countByEnumeratingWithState:&v149 objects:v169 count:16];
    self = selfCopy4;
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v25 = [dictionaryCopy objectForKeyedSubscript:@"locality"];
  v133 = v25;
  if (!v25)
  {
    v136 = 0;
    v9 = v141;
    goto LABEL_67;
  }

  v26 = v25;
  objc_opt_class();
  v9 = v141;
  if (objc_opt_isKindOfClass())
  {
    v136 = 0;
LABEL_67:
    v81 = [dictionaryCopy objectForKeyedSubscript:@"subLocality"];
    v13 = v137;
    v131 = v81;
    if (v81 && (v82 = v81, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v135 = v82;
        goto LABEL_70;
      }

      if (!v145)
      {
        v135 = 0;
        p_isa = 0;
        v31 = v146;
        v37 = v143;
        goto LABEL_88;
      }

      v98 = objc_alloc(MEMORY[0x1E696ABC0]);
      v99 = *MEMORY[0x1E698F240];
      v161 = *MEMORY[0x1E696A578];
      v100 = objc_alloc(MEMORY[0x1E696AEC0]);
      v121 = objc_opt_class();
      v101 = v100;
      v13 = v137;
      v130 = [v101 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v121, @"subLocality"];
      v162 = v130;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
      v128 = v9 = v141;
      v135 = 0;
      p_isa = 0;
      *v145 = [v98 initWithDomain:v99 code:2 userInfo:?];
    }

    else
    {
      v135 = 0;
LABEL_70:
      v83 = [dictionaryCopy objectForKeyedSubscript:@"administrativeArea"];
      v128 = v83;
      if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v130 = 0;
LABEL_73:
        v85 = [dictionaryCopy objectForKeyedSubscript:@"subAdministrativeArea"];
        v126 = v85;
        if (v85 && (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v129 = v86;
            goto LABEL_76;
          }

          if (v145)
          {
            v106 = objc_alloc(MEMORY[0x1E696ABC0]);
            v107 = *MEMORY[0x1E698F240];
            v157 = *MEMORY[0x1E696A578];
            v108 = objc_alloc(MEMORY[0x1E696AEC0]);
            v123 = objc_opt_class();
            v109 = v108;
            v13 = v137;
            v127 = [v109 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v123, @"subAdministrativeArea"];
            v158 = v127;
            v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
            v9 = v141;
            v110 = [v106 initWithDomain:v107 code:2 userInfo:v91];
            v129 = 0;
            p_isa = 0;
            *v145 = v110;
            goto LABEL_85;
          }

          v129 = 0;
          p_isa = 0;
        }

        else
        {
          v129 = 0;
LABEL_76:
          v87 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
          v125 = v87;
          if (v87 && (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v127 = v88;
              goto LABEL_79;
            }

            if (v145)
            {
              v111 = objc_alloc(MEMORY[0x1E696ABC0]);
              v112 = *MEMORY[0x1E698F240];
              v155 = *MEMORY[0x1E696A578];
              v91 = v125;
              v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
              v156 = v90;
              v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
              v114 = v112;
              v13 = v137;
              v89 = v113;
              v115 = [v111 initWithDomain:v114 code:2 userInfo:?];
              v127 = 0;
              p_isa = 0;
              *v145 = v115;
              goto LABEL_84;
            }

            v127 = 0;
            p_isa = 0;
            v91 = v125;
          }

          else
          {
            v127 = 0;
LABEL_79:
            v89 = [dictionaryCopy objectForKeyedSubscript:@"rawAddress"];
            if (!v89 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v90 = 0;
              goto LABEL_82;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v90 = v89;
LABEL_82:
              self = [(BMWalletPaymentsCommerceOrderEmailAddress *)self initWithStreet:v148 city:v146 state:v143 postalCode:v137 country:v139 addressLines:v19 locality:v136 subLocality:v135 administrativeArea:v130 subAdministrativeArea:v129 countryCode:v127 rawAddress:v90];
              p_isa = &self->super.super.isa;
            }

            else
            {
              v90 = v145;
              if (v145)
              {
                v116 = objc_alloc(MEMORY[0x1E696ABC0]);
                v124 = *MEMORY[0x1E698F240];
                v153 = *MEMORY[0x1E696A578];
                v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"rawAddress"];
                v154 = v117;
                v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
                *v145 = [v116 initWithDomain:v124 code:2 userInfo:v118];

                v13 = v137;
                v90 = 0;
              }

              p_isa = 0;
            }

            v91 = v125;
LABEL_84:

            v9 = v141;
          }

LABEL_85:
        }

LABEL_86:
        v31 = v146;
        v37 = v143;

LABEL_87:
LABEL_88:

LABEL_89:
        goto LABEL_90;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v130 = v84;
        goto LABEL_73;
      }

      if (v145)
      {
        v102 = objc_alloc(MEMORY[0x1E696ABC0]);
        v103 = *MEMORY[0x1E698F240];
        v159 = *MEMORY[0x1E696A578];
        v104 = objc_alloc(MEMORY[0x1E696AEC0]);
        v122 = objc_opt_class();
        v105 = v104;
        v13 = v137;
        v129 = [v105 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v122, @"administrativeArea"];
        v160 = v129;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        v126 = v9 = v141;
        v130 = 0;
        p_isa = 0;
        *v145 = [v102 initWithDomain:v103 code:2 userInfo:?];
        goto LABEL_86;
      }

      v130 = 0;
      p_isa = 0;
    }

    v31 = v146;
    v37 = v143;
    goto LABEL_87;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v136 = v26;
    goto LABEL_67;
  }

  if (v145)
  {
    v94 = objc_alloc(MEMORY[0x1E696ABC0]);
    v95 = *MEMORY[0x1E698F240];
    v163 = *MEMORY[0x1E696A578];
    v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"locality"];
    v164 = v135;
    v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
    v97 = v95;
    v9 = v141;
    v132 = v96;
    v136 = 0;
    p_isa = 0;
    *v145 = [v94 initWithDomain:v97 code:2 userInfo:?];
    v31 = v146;
    v37 = v143;
    v13 = v137;

    goto LABEL_89;
  }

  v136 = 0;
  p_isa = 0;
  v31 = v146;
  v37 = v143;
  v13 = v137;
LABEL_90:

  v70 = v136;
LABEL_91:

LABEL_92:
LABEL_93:

  v66 = v139;
  v10 = v140;
LABEL_94:

LABEL_95:
LABEL_96:
  v8 = v148;
LABEL_97:

  v7 = v147;
LABEL_98:

LABEL_99:
  v92 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceOrderEmailAddress *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_street)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_state)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_addressLines;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_locality)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subLocality)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_administrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subAdministrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_rawAddress)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMWalletPaymentsCommerceOrderEmailAddress;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v28 = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v28 & 0x7F) << v8;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 7)
      {
        if (v16 > 10)
        {
          switch(v16)
          {
            case 0xB:
              v17 = PBReaderReadString();
              v18 = 104;
              goto LABEL_46;
            case 0xC:
              v17 = PBReaderReadString();
              v18 = 112;
LABEL_46:
              v20 = *(&v5->super.super.isa + v18);
              *(&v5->super.super.isa + v18) = v17;
LABEL_47:

              goto LABEL_48;
            case 0xD:
              v17 = PBReaderReadString();
              v18 = 64;
              goto LABEL_46;
          }
        }

        else
        {
          switch(v16)
          {
            case 8:
              v17 = PBReaderReadString();
              v18 = 80;
              goto LABEL_46;
            case 9:
              v17 = PBReaderReadString();
              v18 = 88;
              goto LABEL_46;
            case 0xA:
              v17 = PBReaderReadString();
              v18 = 96;
              goto LABEL_46;
          }
        }
      }

      else if (v16 > 3)
      {
        switch(v16)
        {
          case 4:
            v17 = PBReaderReadString();
            v18 = 48;
            goto LABEL_46;
          case 5:
            v17 = PBReaderReadString();
            v18 = 56;
            goto LABEL_46;
          case 7:
            v19 = PBReaderReadString();
            if (!v19)
            {
              goto LABEL_51;
            }

            v20 = v19;
            [v6 addObject:v19];
            goto LABEL_47;
        }
      }

      else
      {
        switch(v16)
        {
          case 1:
            v17 = PBReaderReadString();
            v18 = 24;
            goto LABEL_46;
          case 2:
            v17 = PBReaderReadString();
            v18 = 32;
            goto LABEL_46;
          case 3:
            v17 = PBReaderReadString();
            v18 = 40;
            goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_51:

        goto LABEL_53;
      }

LABEL_48:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v22 = [v6 copy];
  addressLines = v5->_addressLines;
  v5->_addressLines = v22;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_53:
    v25 = 0;
  }

  else
  {
LABEL_54:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  street = [(BMWalletPaymentsCommerceOrderEmailAddress *)self street];
  city = [(BMWalletPaymentsCommerceOrderEmailAddress *)self city];
  state = [(BMWalletPaymentsCommerceOrderEmailAddress *)self state];
  postalCode = [(BMWalletPaymentsCommerceOrderEmailAddress *)self postalCode];
  country = [(BMWalletPaymentsCommerceOrderEmailAddress *)self country];
  addressLines = [(BMWalletPaymentsCommerceOrderEmailAddress *)self addressLines];
  locality = [(BMWalletPaymentsCommerceOrderEmailAddress *)self locality];
  subLocality = [(BMWalletPaymentsCommerceOrderEmailAddress *)self subLocality];
  administrativeArea = [(BMWalletPaymentsCommerceOrderEmailAddress *)self administrativeArea];
  subAdministrativeArea = [(BMWalletPaymentsCommerceOrderEmailAddress *)self subAdministrativeArea];
  countryCode = [(BMWalletPaymentsCommerceOrderEmailAddress *)self countryCode];
  rawAddress = [(BMWalletPaymentsCommerceOrderEmailAddress *)self rawAddress];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceOrderEmailAddress with street: %@, city: %@, state: %@, postalCode: %@, country: %@, addressLines: %@, locality: %@, subLocality: %@, administrativeArea: %@, subAdministrativeArea: %@, countryCode: %@, rawAddress: %@", street, city, state, postalCode, country, addressLines, locality, subLocality, administrativeArea, subAdministrativeArea, countryCode, rawAddress];

  return v15;
}

- (BMWalletPaymentsCommerceOrderEmailAddress)initWithStreet:(id)street city:(id)city state:(id)state postalCode:(id)code country:(id)country addressLines:(id)lines locality:(id)locality subLocality:(id)self0 administrativeArea:(id)self1 subAdministrativeArea:(id)self2 countryCode:(id)self3 rawAddress:(id)self4
{
  streetCopy = street;
  cityCopy = city;
  cityCopy2 = city;
  stateCopy = state;
  stateCopy2 = state;
  codeCopy = code;
  countryCopy = country;
  linesCopy = lines;
  localityCopy = locality;
  subLocalityCopy = subLocality;
  areaCopy = area;
  administrativeAreaCopy = administrativeArea;
  countryCodeCopy = countryCode;
  addressCopy = address;
  v37.receiver = self;
  v37.super_class = BMWalletPaymentsCommerceOrderEmailAddress;
  v23 = [(BMEventBase *)&v37 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_street, street);
    objc_storeStrong(&v23->_city, cityCopy);
    objc_storeStrong(&v23->_state, stateCopy);
    objc_storeStrong(&v23->_postalCode, code);
    objc_storeStrong(&v23->_country, country);
    objc_storeStrong(&v23->_addressLines, lines);
    objc_storeStrong(&v23->_locality, locality);
    objc_storeStrong(&v23->_subLocality, subLocality);
    objc_storeStrong(&v23->_administrativeArea, area);
    objc_storeStrong(&v23->_subAdministrativeArea, administrativeArea);
    objc_storeStrong(&v23->_countryCode, countryCode);
    objc_storeStrong(&v23->_rawAddress, address);
  }

  return v23;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"street" number:1 type:13 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"city" number:2 type:13 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"state" number:3 type:13 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"postalCode" number:4 type:13 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"country" number:5 type:13 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"addressLines" number:7 type:13 subMessageClass:0];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locality" number:8 type:13 subMessageClass:0];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subLocality" number:9 type:13 subMessageClass:0];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"administrativeArea" number:10 type:13 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subAdministrativeArea" number:11 type:13 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:12 type:13 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawAddress" number:13 type:13 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"street" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"city" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"state" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"postalCode" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"country" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"addressLines_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_519];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locality" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subLocality" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"administrativeArea" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subAdministrativeArea" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawAddress" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v17[6] = v6;
  v17[7] = v7;
  v17[8] = v8;
  v17[9] = v14;
  v17[10] = v9;
  v17[11] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

id __52__BMWalletPaymentsCommerceOrderEmailAddress_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _addressLinesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMWalletPaymentsCommerceOrderEmailAddress alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end
@interface BMWalletPaymentsCommerceTrackedOrderAddress
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrderAddress)initWithAddressLines:(id)a3 locality:(id)a4 subLocality:(id)a5 administrativeArea:(id)a6 subAdministrativeArea:(id)a7 postalCode:(id)a8 countryCode:(id)a9;
- (BMWalletPaymentsCommerceTrackedOrderAddress)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMWalletPaymentsCommerceTrackedOrderAddress)initWithStreet:(id)a3 city:(id)a4 state:(id)a5 postalCode:(id)a6 country:(id)a7 addressLines:(id)a8 locality:(id)a9 subLocality:(id)a10 administrativeArea:(id)a11 subAdministrativeArea:(id)a12 countryCode:(id)a13 rawAddress:(id)a14;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_addressLinesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceTrackedOrderAddress

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self street];
    v7 = [v5 street];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self street];
      v10 = [v5 street];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_45;
      }
    }

    v13 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self city];
    v14 = [v5 city];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self city];
      v17 = [v5 city];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_45;
      }
    }

    v19 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self state];
    v20 = [v5 state];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self state];
      v23 = [v5 state];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_45;
      }
    }

    v25 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self postalCode];
    v26 = [v5 postalCode];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self postalCode];
      v29 = [v5 postalCode];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_45;
      }
    }

    v31 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self country];
    v32 = [v5 country];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self country];
      v35 = [v5 country];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_45;
      }
    }

    v37 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self addressLines];
    v38 = [v5 addressLines];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self addressLines];
      v41 = [v5 addressLines];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_45;
      }
    }

    v43 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self locality];
    v44 = [v5 locality];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self locality];
      v47 = [v5 locality];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_45;
      }
    }

    v49 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self subLocality];
    v50 = [v5 subLocality];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self subLocality];
      v53 = [v5 subLocality];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_45;
      }
    }

    v55 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self administrativeArea];
    v56 = [v5 administrativeArea];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self administrativeArea];
      v59 = [v5 administrativeArea];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_45;
      }
    }

    v61 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self subAdministrativeArea];
    v62 = [v5 subAdministrativeArea];
    v63 = v62;
    if (v61 == v62)
    {
    }

    else
    {
      v64 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self subAdministrativeArea];
      v65 = [v5 subAdministrativeArea];
      v66 = [v64 isEqual:v65];

      if (!v66)
      {
        goto LABEL_45;
      }
    }

    v67 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self countryCode];
    v68 = [v5 countryCode];
    v69 = v68;
    if (v67 == v68)
    {
    }

    else
    {
      v70 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self countryCode];
      v71 = [v5 countryCode];
      v72 = [v70 isEqual:v71];

      if (!v72)
      {
LABEL_45:
        v12 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    v74 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self rawAddress];
    v75 = [v5 rawAddress];
    if (v74 == v75)
    {
      v12 = 1;
    }

    else
    {
      v76 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self rawAddress];
      v77 = [v5 rawAddress];
      v12 = [v76 isEqual:v77];
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
  v3 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self street];
  v4 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self city];
  v5 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self state];
  v6 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self postalCode];
  v7 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self country];
  v8 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self _addressLinesJSONArray];
  v9 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self locality];
  v41 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self subLocality];
  v40 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self administrativeArea];
  v39 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self subAdministrativeArea];
  v38 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self countryCode];
  v10 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self rawAddress];
  v42[0] = @"street";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v11;
  v43[0] = v11;
  v42[1] = @"city";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v12;
  v43[1] = v12;
  v42[2] = @"state";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v13;
  v43[2] = v13;
  v42[3] = @"postalCode";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v14;
  v43[3] = v14;
  v42[4] = @"country";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v6;
  v37 = v5;
  v28 = v15;
  v43[4] = v15;
  v42[5] = @"addressLines";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v7;
  v27 = v16;
  v43[5] = v16;
  v42[6] = @"locality";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v8;
  v43[6] = v17;
  v42[7] = @"subLocality";
  v18 = v41;
  if (!v41)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v4;
  v43[7] = v18;
  v42[8] = @"administrativeArea";
  v20 = v40;
  if (!v40)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v43[8] = v20;
  v42[9] = @"subAdministrativeArea";
  v22 = v39;
  if (!v39)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = v22;
  v42[10] = @"countryCode";
  v23 = v38;
  if (!v38)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v43[10] = v23;
  v42[11] = @"rawAddress";
  v24 = v10;
  if (!v10)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v43[11] = v24;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:12];
  if (!v10)
  {
  }

  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v9)
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
  v4 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self addressLines];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceTrackedOrderAddress)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v181[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"street"];
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

  v9 = [v6 objectForKeyedSubscript:@"city"];
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
        v34 = self;
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
        self = v34;
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

  v10 = [v6 objectForKeyedSubscript:@"state"];
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
        v48 = self;
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
        self = v48;
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

  v11 = [v6 objectForKeyedSubscript:@"postalCode"];
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

  v14 = [v6 objectForKeyedSubscript:@"country"];
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

  v16 = [v6 objectForKeyedSubscript:@"addressLines"];
  v17 = [MEMORY[0x1E695DFB0] null];
  v18 = [v16 isEqual:v17];

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
        v77 = self;
        v78 = *MEMORY[0x1E698F240];
        v170 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"addressLines"];
        v171 = v19;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
        v80 = v78;
        self = v77;
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
  v138 = self;
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
          self = v138;
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
        self = v138;
        goto LABEL_61;
      }

      [v19 addObject:v24];
    }

    v21 = [v16 countByEnumeratingWithState:&v149 objects:v169 count:16];
    self = v138;
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v25 = [v6 objectForKeyedSubscript:@"locality"];
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
    v81 = [v6 objectForKeyedSubscript:@"subLocality"];
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
      v83 = [v6 objectForKeyedSubscript:@"administrativeArea"];
      v128 = v83;
      if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v130 = 0;
LABEL_73:
        v85 = [v6 objectForKeyedSubscript:@"subAdministrativeArea"];
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
          v87 = [v6 objectForKeyedSubscript:@"countryCode"];
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
            v89 = [v6 objectForKeyedSubscript:@"rawAddress"];
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
              self = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self initWithStreet:v148 city:v146 state:v143 postalCode:v137 country:v139 addressLines:v19 locality:v136 subLocality:v135 administrativeArea:v130 subAdministrativeArea:v129 countryCode:v127 rawAddress:v90];
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
  [(BMWalletPaymentsCommerceTrackedOrderAddress *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMWalletPaymentsCommerceTrackedOrderAddress;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v28 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
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
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  v22 = [v6 copy];
  addressLines = v5->_addressLines;
  v5->_addressLines = v22;

  v24 = [v4 hasError];
  if (v24)
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
  v17 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self street];
  v16 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self city];
  v3 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self state];
  v4 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self postalCode];
  v5 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self country];
  v6 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self addressLines];
  v7 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self locality];
  v8 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self subLocality];
  v9 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self administrativeArea];
  v10 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self subAdministrativeArea];
  v11 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self countryCode];
  v12 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self rawAddress];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrderAddress with street: %@, city: %@, state: %@, postalCode: %@, country: %@, addressLines: %@, locality: %@, subLocality: %@, administrativeArea: %@, subAdministrativeArea: %@, countryCode: %@, rawAddress: %@", v17, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMWalletPaymentsCommerceTrackedOrderAddress)initWithStreet:(id)a3 city:(id)a4 state:(id)a5 postalCode:(id)a6 country:(id)a7 addressLines:(id)a8 locality:(id)a9 subLocality:(id)a10 administrativeArea:(id)a11 subAdministrativeArea:(id)a12 countryCode:(id)a13 rawAddress:(id)a14
{
  v36 = a3;
  v26 = a4;
  v35 = a4;
  v27 = a5;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  v31 = a8;
  v30 = a9;
  v29 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v37.receiver = self;
  v37.super_class = BMWalletPaymentsCommerceTrackedOrderAddress;
  v23 = [(BMEventBase *)&v37 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_street, a3);
    objc_storeStrong(&v23->_city, v26);
    objc_storeStrong(&v23->_state, v27);
    objc_storeStrong(&v23->_postalCode, a6);
    objc_storeStrong(&v23->_country, a7);
    objc_storeStrong(&v23->_addressLines, a8);
    objc_storeStrong(&v23->_locality, a9);
    objc_storeStrong(&v23->_subLocality, a10);
    objc_storeStrong(&v23->_administrativeArea, a11);
    objc_storeStrong(&v23->_subAdministrativeArea, a12);
    objc_storeStrong(&v23->_countryCode, a13);
    objc_storeStrong(&v23->_rawAddress, a14);
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
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"addressLines_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_436];
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

id __54__BMWalletPaymentsCommerceTrackedOrderAddress_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _addressLinesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMWalletPaymentsCommerceTrackedOrderAddress alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

- (BMWalletPaymentsCommerceTrackedOrderAddress)initWithAddressLines:(id)a3 locality:(id)a4 subLocality:(id)a5 administrativeArea:(id)a6 subAdministrativeArea:(id)a7 postalCode:(id)a8 countryCode:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v22 componentsJoinedByString:@"\n"];
  v24 = [(BMWalletPaymentsCommerceTrackedOrderAddress *)self initWithStreet:v23 city:v21 state:v19 postalCode:v17 country:0 addressLines:v22 locality:v21 subLocality:v20 administrativeArea:v19 subAdministrativeArea:v18 countryCode:v16 rawAddress:0];

  return v24;
}

@end
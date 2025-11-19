@interface CCSignificantLocationAddress
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCSignificantLocationAddress)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCSignificantLocationAddress)initWithThoroughfare:(id)a3 subLocality:(id)a4 locality:(id)a5 country:(id)a6 subPremises:(id)a7 subThoroughfare:(id)a8 subAministrativeArea:(id)a9 administrativeArea:(id)a10 administrativeAreaCode:(id)a11 postalCode:(id)a12 countryCode:(id)a13 inlandWater:(id)a14 ocean:(id)a15 areasOfInterest:(id)a16 isIsland:(id)a17 iso3166CountryCode:(id)a18 iso3166SubdivisionCode:(id)a19 mergedThoroughfare:(id)a20 error:(id *)a21;
- (NSArray)areasOfInterest;
- (NSArray)subPremises;
- (NSString)administrativeArea;
- (NSString)administrativeAreaCode;
- (NSString)country;
- (NSString)countryCode;
- (NSString)inlandWater;
- (NSString)iso3166CountryCode;
- (NSString)iso3166SubdivisionCode;
- (NSString)locality;
- (NSString)mergedThoroughfare;
- (NSString)ocean;
- (NSString)postalCode;
- (NSString)subAministrativeArea;
- (NSString)subLocality;
- (NSString)subThoroughfare;
- (NSString)thoroughfare;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCSignificantLocationAddress

- (CCSignificantLocationAddress)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v58 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"thoroughfare"];
    v10 = [v6 objectForKeyedSubscript:@"subLocality"];
    v11 = [v6 objectForKeyedSubscript:@"locality"];
    v12 = [v6 objectForKeyedSubscript:@"country"];
    v13 = [v6 objectForKeyedSubscript:@"subPremises"];
    v51 = v9;
    if (v13)
    {
      v14 = v13;
      objc_opt_class();
      v57 = v8;
      v15 = CCValidateIsInstanceOfExpectedClass();
      v16 = v8;

      if ((v15 & 1) == 0)
      {
        CCSetError();
        v31 = 0;
        v8 = v16;
        v32 = v51;
LABEL_22:

        goto LABEL_23;
      }

      v42 = v16;
      v43 = v11;
      v50 = v12;
      v44 = v10;
      v45 = self;
      v17 = objc_opt_new();
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v14 = v14;
      v18 = [v14 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v54;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v54 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = *(*(&v53 + 1) + 8 * i);
            v23 = [CCSignificantLocationSubPremise alloc];
            v52 = 0;
            v24 = [(CCSignificantLocationSubPremise *)v23 initWithJSONDictionary:v22 error:&v52];
            v25 = v52;
            if (v24)
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 0;
            }

            if (!v26)
            {
              v30 = v25;
              CCSetError();

              v31 = 0;
              self = v45;
              v12 = v50;
              v32 = v51;
              v11 = v43;
              goto LABEL_21;
            }

            [v17 addObject:v24];
          }

          v19 = [v14 countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v19);
      }

      v41 = a4;
    }

    else
    {
      v41 = a4;
      v42 = v8;
      v50 = v12;
      v43 = v11;
      v44 = v10;
      v45 = self;
      v17 = 0;
    }

    v40 = [v6 objectForKeyedSubscript:@"subThoroughfare"];
    v49 = [v6 objectForKeyedSubscript:@"subAministrativeArea"];
    v48 = [v6 objectForKeyedSubscript:@"administrativeArea"];
    v47 = [v6 objectForKeyedSubscript:@"administrativeAreaCode"];
    v46 = [v6 objectForKeyedSubscript:@"postalCode"];
    v39 = [v6 objectForKeyedSubscript:@"countryCode"];
    v38 = [v6 objectForKeyedSubscript:@"inlandWater"];
    v37 = [v6 objectForKeyedSubscript:@"ocean"];
    v36 = [v6 objectForKeyedSubscript:@"areasOfInterest"];
    v35 = [v6 objectForKeyedSubscript:@"isIsland"];
    v27 = [v6 objectForKeyedSubscript:@"iso3166CountryCode"];
    v28 = [v6 objectForKeyedSubscript:@"iso3166SubdivisionCode"];
    v29 = [v6 objectForKeyedSubscript:@"mergedThoroughfare"];
    v32 = v51;
    v11 = v43;
    v10 = v44;
    v31 = [[CCSignificantLocationAddress alloc] initWithThoroughfare:v51 subLocality:v44 locality:v43 country:v50 subPremises:v17 subThoroughfare:v40 subAministrativeArea:v49 administrativeArea:v48 administrativeAreaCode:v47 postalCode:v46 countryCode:v39 inlandWater:v38 ocean:v37 areasOfInterest:v36 isIsland:v35 iso3166CountryCode:v27 iso3166SubdivisionCode:v28 mergedThoroughfare:v29 error:v41];

    v14 = v17;
    v12 = v50;
    self = v45;
LABEL_21:
    v8 = v42;
    goto LABEL_22;
  }

  CCSetError();
  v31 = 0;
LABEL_23:

  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)jsonDictionary
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_thoroughfare)
  {
    v4 = [(CCSignificantLocationAddress *)self thoroughfare];
    [v3 setObject:v4 forKeyedSubscript:@"thoroughfare"];
  }

  if (self->_subLocality)
  {
    v5 = [(CCSignificantLocationAddress *)self subLocality];
    [v3 setObject:v5 forKeyedSubscript:@"subLocality"];
  }

  if (self->_locality)
  {
    v6 = [(CCSignificantLocationAddress *)self locality];
    [v3 setObject:v6 forKeyedSubscript:@"locality"];
  }

  if (self->_country)
  {
    v7 = [(CCSignificantLocationAddress *)self country];
    [v3 setObject:v7 forKeyedSubscript:@"country"];
  }

  if (self->_subPremises)
  {
    v8 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [(CCSignificantLocationAddress *)self subPremises];
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v31 + 1) + 8 * i) jsonDictionary];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"subPremises"];
  }

  if (self->_subThoroughfare)
  {
    v15 = [(CCSignificantLocationAddress *)self subThoroughfare];
    [v3 setObject:v15 forKeyedSubscript:@"subThoroughfare"];
  }

  if (self->_subAministrativeArea)
  {
    v16 = [(CCSignificantLocationAddress *)self subAministrativeArea];
    [v3 setObject:v16 forKeyedSubscript:@"subAministrativeArea"];
  }

  if (self->_administrativeArea)
  {
    v17 = [(CCSignificantLocationAddress *)self administrativeArea];
    [v3 setObject:v17 forKeyedSubscript:@"administrativeArea"];
  }

  if (self->_administrativeAreaCode)
  {
    v18 = [(CCSignificantLocationAddress *)self administrativeAreaCode];
    [v3 setObject:v18 forKeyedSubscript:@"administrativeAreaCode"];
  }

  if (self->_postalCode)
  {
    v19 = [(CCSignificantLocationAddress *)self postalCode];
    [v3 setObject:v19 forKeyedSubscript:@"postalCode"];
  }

  if (self->_countryCode)
  {
    v20 = [(CCSignificantLocationAddress *)self countryCode];
    [v3 setObject:v20 forKeyedSubscript:@"countryCode"];
  }

  if (self->_inlandWater)
  {
    v21 = [(CCSignificantLocationAddress *)self inlandWater];
    [v3 setObject:v21 forKeyedSubscript:@"inlandWater"];
  }

  if (self->_ocean)
  {
    v22 = [(CCSignificantLocationAddress *)self ocean];
    [v3 setObject:v22 forKeyedSubscript:@"ocean"];
  }

  if (self->_areasOfInterest)
  {
    v23 = [(CCSignificantLocationAddress *)self areasOfInterest];
    [v3 setObject:v23 forKeyedSubscript:@"areasOfInterest"];
  }

  if (self->_hasIsIsland)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CCSignificantLocationAddress isIsland](self, "isIsland")}];
    [v3 setObject:v24 forKeyedSubscript:@"isIsland"];
  }

  if (self->_iso3166CountryCode)
  {
    v25 = [(CCSignificantLocationAddress *)self iso3166CountryCode];
    [v3 setObject:v25 forKeyedSubscript:@"iso3166CountryCode"];
  }

  if (self->_iso3166SubdivisionCode)
  {
    v26 = [(CCSignificantLocationAddress *)self iso3166SubdivisionCode];
    [v3 setObject:v26 forKeyedSubscript:@"iso3166SubdivisionCode"];
  }

  if (self->_mergedThoroughfare)
  {
    v27 = [(CCSignificantLocationAddress *)self mergedThoroughfare];
    [v3 setObject:v27 forKeyedSubscript:@"mergedThoroughfare"];
  }

  v28 = [v3 copy];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v24 = a3;
  if (self->_thoroughfare)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15770 stringValue:self->_thoroughfare];
    v24[2](v24, v5);
  }

  if (self->_subLocality)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15771 stringValue:self->_subLocality];
    v24[2](v24, v6);
  }

  if (self->_locality)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15772 stringValue:self->_locality];
    v24[2](v24, v7);
  }

  if (self->_country)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15773 stringValue:self->_country];
    v24[2](v24, v8);
  }

  if (self->_subPremises)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15774 repeatedSubMessageValue:self->_subPremises];
    v24[2](v24, v9);
  }

  if (self->_subThoroughfare)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15777 stringValue:self->_subThoroughfare];
    v24[2](v24, v10);
  }

  if (self->_subAministrativeArea)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15778 stringValue:self->_subAministrativeArea];
    v24[2](v24, v11);
  }

  if (self->_administrativeArea)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15779 stringValue:self->_administrativeArea];
    v24[2](v24, v12);
  }

  if (self->_administrativeAreaCode)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15780 stringValue:self->_administrativeAreaCode];
    v24[2](v24, v13);
  }

  if (self->_postalCode)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15781 stringValue:self->_postalCode];
    v24[2](v24, v14);
  }

  if (self->_countryCode)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15782 stringValue:self->_countryCode];
    v24[2](v24, v15);
  }

  if (self->_inlandWater)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15783 stringValue:self->_inlandWater];
    v24[2](v24, v16);
  }

  if (self->_ocean)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15784 stringValue:self->_ocean];
    v24[2](v24, v17);
  }

  if (self->_areasOfInterest)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15785 repeatedStringValue:self->_areasOfInterest];
    v24[2](v24, v18);
  }

  if (self->_hasIsIsland)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15786 BOOLValue:self->_isIsland];
    v24[2](v24, v19);
  }

  if (self->_iso3166CountryCode)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15787 stringValue:self->_iso3166CountryCode];
    v24[2](v24, v20);
  }

  if (self->_iso3166SubdivisionCode)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15788 stringValue:self->_iso3166SubdivisionCode];
    v24[2](v24, v21);
  }

  v22 = v24;
  if (self->_mergedThoroughfare)
  {
    v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:15789 stringValue:self->_mergedThoroughfare];
    v24[2](v24, v23);

    v22 = v24;
  }
}

- (NSString)mergedThoroughfare
{
  v2 = [(NSString *)self->_mergedThoroughfare copy];

  return v2;
}

- (NSString)iso3166SubdivisionCode
{
  v2 = [(NSString *)self->_iso3166SubdivisionCode copy];

  return v2;
}

- (NSString)iso3166CountryCode
{
  v2 = [(NSString *)self->_iso3166CountryCode copy];

  return v2;
}

- (NSArray)areasOfInterest
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_areasOfInterest copyItems:1];

  return v2;
}

- (NSString)ocean
{
  v2 = [(NSString *)self->_ocean copy];

  return v2;
}

- (NSString)inlandWater
{
  v2 = [(NSString *)self->_inlandWater copy];

  return v2;
}

- (NSString)countryCode
{
  v2 = [(NSString *)self->_countryCode copy];

  return v2;
}

- (NSString)postalCode
{
  v2 = [(NSString *)self->_postalCode copy];

  return v2;
}

- (NSString)administrativeAreaCode
{
  v2 = [(NSString *)self->_administrativeAreaCode copy];

  return v2;
}

- (NSString)administrativeArea
{
  v2 = [(NSString *)self->_administrativeArea copy];

  return v2;
}

- (NSString)subAministrativeArea
{
  v2 = [(NSString *)self->_subAministrativeArea copy];

  return v2;
}

- (NSString)subThoroughfare
{
  v2 = [(NSString *)self->_subThoroughfare copy];

  return v2;
}

- (NSArray)subPremises
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_subPremises copyItems:1];

  return v2;
}

- (NSString)country
{
  v2 = [(NSString *)self->_country copy];

  return v2;
}

- (NSString)locality
{
  v2 = [(NSString *)self->_locality copy];

  return v2;
}

- (NSString)subLocality
{
  v2 = [(NSString *)self->_subLocality copy];

  return v2;
}

- (NSString)thoroughfare
{
  v2 = [(NSString *)self->_thoroughfare copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v6];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    v54 = 0;
    v55 = 0;
LABEL_71:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v54 = 0;
    v55 = 0;
    v11 = MEMORY[0x1E6993AA8];
    v12 = MEMORY[0x1E6993AA0];
    do
    {
      if (*&v7[*v11])
      {
        v13 = 0;
      }

      else
      {
        v13 = v10 == 0;
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
        if (v18 == -1 || v18 >= *&v7[*v9])
        {
          break;
        }

        v19 = *(*&v7[*v12] + v18);
        *&v7[v17] = v18 + 1;
        v16 |= (v19 & 0x7F) << v14;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        v20 = v15++ >= 9;
        if (v20)
        {
          v21 = 0;
          if (*&v7[*v11])
          {
            goto LABEL_71;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v11] = 1;
LABEL_17:
      v22 = *&v7[*v11];
      if (v22)
      {
        v21 = 0;
      }

      else
      {
        v21 = v16;
      }

      if (v22)
      {
        goto LABEL_71;
      }

LABEL_21:
      switch((v21 >> 3))
      {
        case 1u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 24;
          goto LABEL_58;
        case 2u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 32;
          goto LABEL_58;
        case 3u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 40;
          goto LABEL_58;
        case 4u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 48;
          goto LABEL_58;
        case 5u:
          v53 = a4;
          v32 = v6;
          v33 = CCPBReaderReadDataNoCopy();
          if (!v54)
          {
            v54 = objc_opt_new();
          }

          v34 = [CCSignificantLocationSubPremise alloc];
          v56 = 0;
          v35 = [(CCItemMessage *)v34 initWithData:v33 error:&v56];
          v10 = v56;
          if (!v10 && v35)
          {
            [v54 addObject:v35];
          }

          goto LABEL_55;
        case 6u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 64;
          goto LABEL_58;
        case 7u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 72;
          goto LABEL_58;
        case 8u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 80;
          goto LABEL_58;
        case 9u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 88;
          goto LABEL_58;
        case 0xAu:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 96;
          goto LABEL_58;
        case 0xBu:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 104;
          goto LABEL_58;
        case 0xCu:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 112;
          goto LABEL_58;
        case 0xDu:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 120;
          goto LABEL_58;
        case 0xEu:
          v36 = CCPBReaderReadStringNoCopy();
          if (!v55)
          {
            v55 = objc_opt_new();
          }

          if (v36)
          {
            [v55 addObject:v36];
          }

          goto LABEL_59;
        case 0xFu:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          break;
        case 0x10u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 136;
          goto LABEL_58;
        case 0x11u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 144;
          goto LABEL_58;
        case 0x12u:
          v23 = CCPBReaderReadStringNoCopy();
          v24 = 152;
LABEL_58:
          v39 = *(&self->super.super.isa + v24);
          *(&self->super.super.isa + v24) = v23;

          goto LABEL_59;
        default:
          if (CCPBReaderSkipValueWithTag())
          {
LABEL_59:
            v10 = 0;
          }

          else
          {
            v37 = objc_opt_class();
            NSStringFromClass(v37);
            v53 = a4;
            v33 = v32 = v6;
            v38 = *&v7[*v11];
            v10 = CCSkipFieldErrorForMessage();
LABEL_55:

            v6 = v32;
            a4 = v53;
          }

          continue;
      }

      while (1)
      {
        v28 = *v8;
        v29 = *&v7[v28];
        if (v29 == -1 || v29 >= *&v7[*v9])
        {
          break;
        }

        v30 = *(*&v7[*v12] + v29);
        *&v7[v28] = v29 + 1;
        v27 |= (v30 & 0x7F) << v25;
        if ((v30 & 0x80) == 0)
        {
          goto LABEL_63;
        }

        v25 += 7;
        v20 = v26++ >= 9;
        if (v20)
        {
          v31 = 0;
          goto LABEL_69;
        }
      }

      *&v7[*v11] = 1;
LABEL_63:
      v40 = *&v7[*v11] || v27 == 0;
      v31 = !v40;
LABEL_69:
      v10 = 0;
      self->_isIsland = v31;
      self->_hasIsIsland = 1;
    }

    while (*&v7[*v8] < *&v7[*v9]);
  }

  v41 = [v54 copy];
  subPremises = self->_subPremises;
  self->_subPremises = v41;

  v43 = [v55 copy];
  areasOfInterest = self->_areasOfInterest;
  self->_areasOfInterest = v43;

  if (v10)
  {
    CCSetError();
  }

  else
  {
    v45 = MEMORY[0x1E6993AA8];
    if (!*&v7[*MEMORY[0x1E6993AA8]])
    {
      v51 = 1;
      goto LABEL_77;
    }

    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = *&v7[*v45];
    CCInvalidBufferErrorForMessage();
    v50 = v49 = v6;
    CCSetError();

    v6 = v49;
  }

  v51 = 0;
LABEL_77:

  return v51;
}

- (CCSignificantLocationAddress)initWithThoroughfare:(id)a3 subLocality:(id)a4 locality:(id)a5 country:(id)a6 subPremises:(id)a7 subThoroughfare:(id)a8 subAministrativeArea:(id)a9 administrativeArea:(id)a10 administrativeAreaCode:(id)a11 postalCode:(id)a12 countryCode:(id)a13 inlandWater:(id)a14 ocean:(id)a15 areasOfInterest:(id)a16 isIsland:(id)a17 iso3166CountryCode:(id)a18 iso3166SubdivisionCode:(id)a19 mergedThoroughfare:(id)a20 error:(id *)a21
{
  v115 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v90 = a8;
  v31 = a9;
  v89 = a10;
  v88 = a11;
  v87 = a12;
  v86 = a13;
  v85 = a14;
  v84 = a15;
  v83 = a16;
  v82 = a17;
  v81 = a18;
  v80 = a19;
  v79 = a20;
  v32 = objc_opt_new();
  v77 = v30;
  if (v26)
  {
    objc_opt_class();
    v112 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v34 = 0;
    if (!IsInstanceOfExpectedClass)
    {
LABEL_75:
      CCSetError();
      v50 = 0;
      v51 = self;
      goto LABEL_83;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v34 = 0;
  }

  v76 = v31;
  if (v27)
  {
    objc_opt_class();
    v111 = v34;
    v35 = CCValidateIsInstanceOfExpectedClass();
    v36 = v34;

    if (!v35)
    {
      goto LABEL_74;
    }

    CCPBDataWriterWriteStringField();
    if (!v28)
    {
LABEL_8:
      v34 = v36;
      if (v29)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v36 = v34;
    if (!v28)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v110 = v36;
  v38 = CCValidateIsInstanceOfExpectedClass();
  v34 = v36;

  if (!v38)
  {
    goto LABEL_80;
  }

  CCPBDataWriterWriteStringField();
  if (v29)
  {
LABEL_9:
    objc_opt_class();
    v109 = v34;
    v37 = CCValidateIsInstanceOfExpectedClass();
    v36 = v34;

    if (!v37)
    {
      goto LABEL_74;
    }

    CCPBDataWriterWriteStringField();
    if (!v30)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  v36 = v34;
  if (!v30)
  {
LABEL_11:
    v34 = v36;
    goto LABEL_25;
  }

LABEL_16:
  objc_opt_class();
  v108 = v36;
  v39 = CCValidateArrayValues();
  v34 = v36;

  if (!v39)
  {
    goto LABEL_80;
  }

  v72 = v26;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v40 = v30;
  v41 = [v40 countByEnumeratingWithState:&v104 objects:v114 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v105;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v105 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v104 + 1) + 8 * i) data];
        CCPBDataWriterWriteDataField();
      }

      v42 = [v40 countByEnumeratingWithState:&v104 objects:v114 count:16];
    }

    while (v42);
  }

  v26 = v72;
LABEL_25:
  if (v90)
  {
    objc_opt_class();
    v103 = v34;
    v46 = CCValidateIsInstanceOfExpectedClass();
    v36 = v34;

    if (!v46)
    {
      goto LABEL_74;
    }

    v73 = v28;
    v47 = v29;
    CCPBDataWriterWriteStringField();
  }

  else
  {
    v73 = v28;
    v47 = v29;
    v36 = v34;
  }

  if (!v76)
  {
    v34 = v36;
    goto LABEL_33;
  }

  objc_opt_class();
  v102 = v36;
  v48 = CCValidateIsInstanceOfExpectedClass();
  v34 = v36;

  if (v48)
  {
    CCPBDataWriterWriteStringField();
LABEL_33:
    v29 = v47;
    if (v89)
    {
      objc_opt_class();
      v101 = v34;
      v49 = CCValidateIsInstanceOfExpectedClass();
      v36 = v34;

      v28 = v73;
      if (!v49)
      {
        goto LABEL_74;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v36 = v34;
      v28 = v73;
    }

    if (v88)
    {
      objc_opt_class();
      v100 = v36;
      v52 = CCValidateIsInstanceOfExpectedClass();
      v34 = v36;

      if (!v52)
      {
        goto LABEL_80;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v34 = v36;
    }

    if (v87)
    {
      objc_opt_class();
      v99 = v34;
      v53 = CCValidateIsInstanceOfExpectedClass();
      v36 = v34;

      if (!v53)
      {
        goto LABEL_74;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v36 = v34;
    }

    if (v86)
    {
      objc_opt_class();
      v98 = v36;
      v54 = CCValidateIsInstanceOfExpectedClass();
      v34 = v36;

      if (!v54)
      {
        goto LABEL_80;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v34 = v36;
    }

    if (v85)
    {
      objc_opt_class();
      v97 = v34;
      v55 = CCValidateIsInstanceOfExpectedClass();
      v36 = v34;

      if (!v55)
      {
        goto LABEL_74;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v36 = v34;
    }

    if (v84)
    {
      objc_opt_class();
      v96 = v36;
      v56 = CCValidateIsInstanceOfExpectedClass();
      v34 = v36;

      if (!v56)
      {
        goto LABEL_80;
      }

      CCPBDataWriterWriteStringField();
    }

    else
    {
      v34 = v36;
    }

    if (v83)
    {
      objc_opt_class();
      v95 = v34;
      v57 = CCValidateArrayValues();
      v36 = v34;

      if (!v57)
      {
        goto LABEL_74;
      }

      v34 = v36;
      v74 = v26;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v58 = v83;
      v59 = [v58 countByEnumeratingWithState:&v91 objects:v113 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v92;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v92 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v91 + 1) + 8 * j);
            CCPBDataWriterWriteStringField();
          }

          v60 = [v58 countByEnumeratingWithState:&v91 objects:v113 count:16];
        }

        while (v60);
      }

      v26 = v74;
    }

    v31 = v76;
    if (!v82)
    {
      goto LABEL_71;
    }

    objc_opt_class();
    v64 = v34;
    v75 = CCValidateIsInstanceOfExpectedClass();
    v34 = v34;

    if (v75)
    {
      [v82 BOOLValue];
      CCPBDataWriterWriteBOOLField();
LABEL_71:
      if (!v81)
      {
        v36 = v34;
        goto LABEL_77;
      }

      objc_opt_class();
      v65 = CCValidateIsInstanceOfExpectedClass();
      v36 = v34;

      if (v65)
      {
        CCPBDataWriterWriteStringField();
LABEL_77:
        if (!v80)
        {
          v34 = v36;
          goto LABEL_85;
        }

        objc_opt_class();
        v66 = CCValidateIsInstanceOfExpectedClass();
        v34 = v36;

        if (v66)
        {
          CCPBDataWriterWriteStringField();
LABEL_85:
          if (!v79)
          {
LABEL_88:
            v71 = [v32 immutableData];
            v51 = [(CCItemMessage *)self initWithData:v71 error:a21];

            v50 = v51;
            goto LABEL_82;
          }

          objc_opt_class();
          v69 = CCValidateIsInstanceOfExpectedClass();
          v70 = v34;

          if (v69)
          {
            CCPBDataWriterWriteStringField();
            v34 = v70;
            goto LABEL_88;
          }

          CCSetError();
          v50 = 0;
          v34 = v70;
LABEL_81:
          v51 = self;
LABEL_82:
          v31 = v76;
          goto LABEL_83;
        }

LABEL_80:
        CCSetError();
        v50 = 0;
        goto LABEL_81;
      }

LABEL_74:
      CCSetError();
      v50 = 0;
      v34 = v36;
      goto LABEL_81;
    }

    goto LABEL_75;
  }

  CCSetError();
  v50 = 0;
  v51 = self;
  v31 = v76;
  v29 = v47;
  v28 = v73;
LABEL_83:

  v67 = *MEMORY[0x1E69E9840];
  return v50;
}

@end
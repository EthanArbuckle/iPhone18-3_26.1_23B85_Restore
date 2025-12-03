@interface _NBPhoneMetaData
- (_NBPhoneMetaData)init;
- (_NBPhoneMetaData)initWithEntry:(id)entry;
- (id)description;
- (id)numberFormatsFromEntry:(id)entry;
@end

@implementation _NBPhoneMetaData

- (_NBPhoneMetaData)init
{
  v9.receiver = self;
  v9.super_class = _NBPhoneMetaData;
  v2 = [(_NBPhoneMetaData *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    numberFormats = v2->_numberFormats;
    v2->_numberFormats = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    intlNumberFormats = v2->_intlNumberFormats;
    v2->_intlNumberFormats = v5;

    v2->_leadingZeroPossible = 0;
    *&v2->_sameMobileAndFixedLinePattern = 0;
    internationalPrefix = v2->_internationalPrefix;
    v2->_internationalPrefix = @"NA";
  }

  return v2;
}

- (_NBPhoneMetaData)initWithEntry:(id)entry
{
  entryCopy = entry;
  v87.receiver = self;
  v87.super_class = _NBPhoneMetaData;
  v5 = [(_NBPhoneMetaData *)&v87 init];
  v6 = v5;
  if (entryCopy && v5)
  {
    v7 = [_NBPhoneNumberDesc alloc];
    v8 = [entryCopy nb_safeArrayAtIndex:1];
    v9 = [(_NBPhoneNumberDesc *)v7 initWithEntry:v8];
    generalDesc = v6->_generalDesc;
    v6->_generalDesc = v9;

    v11 = [_NBPhoneNumberDesc alloc];
    v12 = [entryCopy nb_safeArrayAtIndex:2];
    v13 = [(_NBPhoneNumberDesc *)v11 initWithEntry:v12];
    fixedLine = v6->_fixedLine;
    v6->_fixedLine = v13;

    v15 = [_NBPhoneNumberDesc alloc];
    v16 = [entryCopy nb_safeArrayAtIndex:3];
    v17 = [(_NBPhoneNumberDesc *)v15 initWithEntry:v16];
    mobile = v6->_mobile;
    v6->_mobile = v17;

    v19 = [_NBPhoneNumberDesc alloc];
    v20 = [entryCopy nb_safeArrayAtIndex:4];
    v21 = [(_NBPhoneNumberDesc *)v19 initWithEntry:v20];
    tollFree = v6->_tollFree;
    v6->_tollFree = v21;

    v23 = [_NBPhoneNumberDesc alloc];
    v24 = [entryCopy nb_safeArrayAtIndex:5];
    v25 = [(_NBPhoneNumberDesc *)v23 initWithEntry:v24];
    premiumRate = v6->_premiumRate;
    v6->_premiumRate = v25;

    v27 = [_NBPhoneNumberDesc alloc];
    v28 = [entryCopy nb_safeArrayAtIndex:6];
    v29 = [(_NBPhoneNumberDesc *)v27 initWithEntry:v28];
    sharedCost = v6->_sharedCost;
    v6->_sharedCost = v29;

    v31 = [_NBPhoneNumberDesc alloc];
    v32 = [entryCopy nb_safeArrayAtIndex:7];
    v33 = [(_NBPhoneNumberDesc *)v31 initWithEntry:v32];
    personalNumber = v6->_personalNumber;
    v6->_personalNumber = v33;

    v35 = [_NBPhoneNumberDesc alloc];
    v36 = [entryCopy nb_safeArrayAtIndex:8];
    v37 = [(_NBPhoneNumberDesc *)v35 initWithEntry:v36];
    voip = v6->_voip;
    v6->_voip = v37;

    v39 = [_NBPhoneNumberDesc alloc];
    v40 = [entryCopy nb_safeArrayAtIndex:21];
    v41 = [(_NBPhoneNumberDesc *)v39 initWithEntry:v40];
    pager = v6->_pager;
    v6->_pager = v41;

    v43 = [_NBPhoneNumberDesc alloc];
    v44 = [entryCopy nb_safeArrayAtIndex:25];
    v45 = [(_NBPhoneNumberDesc *)v43 initWithEntry:v44];
    uan = v6->_uan;
    v6->_uan = v45;

    v47 = [_NBPhoneNumberDesc alloc];
    v48 = [entryCopy nb_safeArrayAtIndex:27];
    v49 = [(_NBPhoneNumberDesc *)v47 initWithEntry:v48];
    emergency = v6->_emergency;
    v6->_emergency = v49;

    v51 = [_NBPhoneNumberDesc alloc];
    v52 = [entryCopy nb_safeArrayAtIndex:28];
    v53 = [(_NBPhoneNumberDesc *)v51 initWithEntry:v52];
    voicemail = v6->_voicemail;
    v6->_voicemail = v53;

    v55 = [_NBPhoneNumberDesc alloc];
    v56 = [entryCopy nb_safeArrayAtIndex:24];
    v57 = [(_NBPhoneNumberDesc *)v55 initWithEntry:v56];
    noInternationalDialling = v6->_noInternationalDialling;
    v6->_noInternationalDialling = v57;

    v59 = [entryCopy nb_safeStringAtIndex:9];
    codeID = v6->_codeID;
    v6->_codeID = v59;

    v61 = [entryCopy nb_safeNumberAtIndex:10];
    countryCode = v6->_countryCode;
    v6->_countryCode = v61;

    v63 = [entryCopy nb_safeStringAtIndex:11];
    internationalPrefix = v6->_internationalPrefix;
    v6->_internationalPrefix = v63;

    v65 = [entryCopy nb_safeStringAtIndex:17];
    preferredInternationalPrefix = v6->_preferredInternationalPrefix;
    v6->_preferredInternationalPrefix = v65;

    v67 = [entryCopy nb_safeStringAtIndex:12];
    nationalPrefix = v6->_nationalPrefix;
    v6->_nationalPrefix = v67;

    v69 = [entryCopy nb_safeStringAtIndex:13];
    preferredExtnPrefix = v6->_preferredExtnPrefix;
    v6->_preferredExtnPrefix = v69;

    v71 = [entryCopy nb_safeStringAtIndex:15];
    nationalPrefixForParsing = v6->_nationalPrefixForParsing;
    v6->_nationalPrefixForParsing = v71;

    v73 = [entryCopy nb_safeStringAtIndex:16];
    nationalPrefixTransformRule = v6->_nationalPrefixTransformRule;
    v6->_nationalPrefixTransformRule = v73;

    v75 = [entryCopy nb_safeNumberAtIndex:18];
    v6->_sameMobileAndFixedLinePattern = [v75 BOOLValue];

    v76 = [entryCopy nb_safeArrayAtIndex:19];
    v77 = [(_NBPhoneMetaData *)v6 numberFormatsFromEntry:v76];
    numberFormats = v6->_numberFormats;
    v6->_numberFormats = v77;

    v79 = [entryCopy nb_safeArrayAtIndex:20];
    v80 = [(_NBPhoneMetaData *)v6 numberFormatsFromEntry:v79];
    intlNumberFormats = v6->_intlNumberFormats;
    v6->_intlNumberFormats = v80;

    v82 = [entryCopy nb_safeNumberAtIndex:22];
    v6->_mainCountryForCode = [v82 BOOLValue];

    v83 = [entryCopy nb_safeStringAtIndex:23];
    leadingDigits = v6->_leadingDigits;
    v6->_leadingDigits = v83;

    v85 = [entryCopy nb_safeNumberAtIndex:26];
    v6->_leadingZeroPossible = [v85 BOOLValue];
  }

  return v6;
}

- (id)numberFormatsFromEntry:(id)entry
{
  v20 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(entryCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = entryCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [_NBNumberFormat alloc];
        v12 = [(_NBNumberFormat *)v11 initWithEntry:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)description
{
  v2 = @"N";
  if (self->_sameMobileAndFixedLinePattern)
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  if (self->_mainCountryForCode)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  if (self->_leadingZeroPossible)
  {
    v2 = @"Y";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"* codeID[%@] countryCode[%@] generalDesc[%@] fixedLine[%@] mobile[%@] tollFree[%@] premiumRate[%@] sharedCost[%@] personalNumber[%@] voip[%@] pager[%@] uan[%@] emergency[%@] voicemail[%@] noInternationalDialling[%@] internationalPrefix[%@] preferredInternationalPrefix[%@] nationalPrefix[%@] preferredExtnPrefix[%@] nationalPrefixForParsing[%@] nationalPrefixTransformRule[%@] sameMobileAndFixedLinePattern[%@] numberFormats[%@] intlNumberFormats[%@] mainCountryForCode[%@] leadingDigits[%@] leadingZeroPossible[%@]", *&self->_codeID, *&self->_generalDesc, *&self->_mobile, *&self->_premiumRate, *&self->_personalNumber, *&self->_pager, *&self->_emergency, self->_noInternationalDialling, self->_internationalPrefix, self->_preferredInternationalPrefix, self->_nationalPrefix, self->_preferredExtnPrefix, self->_nationalPrefixForParsing, self->_nationalPrefixTransformRule, v3, self->_numberFormats, self->_intlNumberFormats, v4, self->_leadingDigits, v2];
}

@end
@interface XREngineeringValueFormatter
+ (id)networkAddressStringFromSockaddr:(const void *)a3 length:(unint64_t)a4 resolveHostName:(id)a5;
- (BOOL)getTitleAndSubtitleForCoreEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5;
- (BOOL)getTitleAndSubtitleForEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5;
- (BOOL)getTitleAndSubtitleForProcessEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5;
- (BOOL)getTitleAndSubtitleForSwiftActorEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5;
- (BOOL)getTitleAndSubtitleForSwiftTaskEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5;
- (BOOL)getTitleAndSubtitleForSwiftTaskPriorityEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5;
- (BOOL)getTitleAndSubtitleForThreadEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5;
- (BOOL)getTitleAndSubtitleForURLSessionEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (XREngineeringValueFormatter)init;
- (id)stringForCallSiteEngineeringValue:(id)a3 shouldIncludeLibrary:(BOOL)a4;
- (id)stringForLibraryAddressEngineeringValue:(id)a3;
- (id)stringForObjectValue:(id)a3;
- (id)stringForSocketAddrEngineeringValue:(id)a3;
- (id)stringForTextSymbolEngineeringValue:(id)a3 shouldIncludeLibrary:(BOOL)a4;
- (id)stringForUserIDEngineeringValue:(id)a3;
- (id)typeStringForEngineeringValue:(id)a3;
- (unint64_t)hash;
@end

@implementation XREngineeringValueFormatter

- (BOOL)getTitleAndSubtitleForEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5
{
  v8 = a3;
  v13 = v8;
  if (a4)
  {
    if (a5)
    {
      v14 = objc_msgSend_engineeringType(v8, v9, v10, v11, v12);
      if (v14 <= 208)
      {
        switch(v14)
        {
          case 8:
            TitleAndSubtitleForThreadEngineeringValue_title_subtitle = objc_msgSend_getTitleAndSubtitleForThreadEngineeringValue_title_subtitle_(self, v15, v13, a4, a5);
            goto LABEL_22;
          case 23:
            TitleAndSubtitleForThreadEngineeringValue_title_subtitle = objc_msgSend_getTitleAndSubtitleForProcessEngineeringValue_title_subtitle_(self, v15, v13, a4, a5);
            goto LABEL_22;
          case 31:
            TitleAndSubtitleForThreadEngineeringValue_title_subtitle = objc_msgSend_getTitleAndSubtitleForCoreEngineeringValue_title_subtitle_(self, v15, v13, a4, a5);
            goto LABEL_22;
        }
      }

      else if (v14 > 232)
      {
        if (v14 == 233)
        {
          TitleAndSubtitleForThreadEngineeringValue_title_subtitle = objc_msgSend_getTitleAndSubtitleForSwiftActorEngineeringValue_title_subtitle_(self, v15, v13, a4, a5);
          goto LABEL_22;
        }

        if (v14 == 242)
        {
          v18 = *a4;
          *a4 = @"Commutator";

          v21 = sub_248095378(self, v13, 0, v19, v20);
          v22 = *a5;
          *a5 = v21;

          v23 = *a5;
LABEL_17:
          v17 = v23 != 0;
          goto LABEL_23;
        }
      }

      else
      {
        if (v14 == 209)
        {
          TitleAndSubtitleForThreadEngineeringValue_title_subtitle = objc_msgSend_getTitleAndSubtitleForURLSessionEngineeringValue_title_subtitle_(self, v15, v13, a4, a5);
          goto LABEL_22;
        }

        if (v14 == 225)
        {
          TitleAndSubtitleForThreadEngineeringValue_title_subtitle = objc_msgSend_getTitleAndSubtitleForSwiftTaskEngineeringValue_title_subtitle_(self, v15, v13, a4, a5);
LABEL_22:
          v17 = TitleAndSubtitleForThreadEngineeringValue_title_subtitle;
          goto LABEL_23;
        }
      }
    }

    v24 = sub_248095378(self, v13, 0, v11, v12);
    v25 = *a4;
    *a4 = v24;

    v23 = *a4;
    goto LABEL_17;
  }

  v17 = 0;
LABEL_23:

  return v17;
}

- (id)typeStringForEngineeringValue:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_engineeringType(v3, v4, v5, v6, v7);
  if (v8 == 209)
  {
    v9 = @"URLSession";
    v16 = 0;
    objc_msgSend_getURLSessionName_internalSessionID_backgroundIdentifier_isShared_isEphemeral_(v3, v10, 0, 0, 0, 0, &v16);
    if (v16 == 1)
    {
      v14 = objc_msgSend_stringByAppendingString_(@"Ephemeral ", v11, v9, v12, v13);

      v9 = v14;
    }
  }

  else
  {
    v9 = *(&XR_ENGINEERING_TITLE_BY_ETYPE + v8);
  }

  return v9;
}

- (XREngineeringValueFormatter)init
{
  v16.receiver = self;
  v16.super_class = XREngineeringValueFormatter;
  v2 = [(XREngineeringValueFormatter *)&v16 init];
  if (v2)
  {
    if (qword_27EE867F8 != -1)
    {
      sub_2480B385C();
    }

    objc_storeStrong(&v2->_countFormatter, qword_27EE867F0);
    v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
    intIDFormatter = v2->_intIDFormatter;
    v2->_intIDFormatter = v3;

    if (qword_27EE86808 != -1)
    {
      sub_2480B3884();
    }

    objc_storeStrong(&v2->_fpsFormatter, qword_27EE86800);
    if (qword_27EE86818 != -1)
    {
      sub_2480B38AC();
    }

    objc_storeStrong(&v2->_fixedDecimalFormatter, qword_27EE86810);
    if (qword_27EE86828 != -1)
    {
      sub_2480B38D4();
    }

    objc_storeStrong(&v2->_countersFormulaResultFormatter, qword_27EE86820);
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    objc_msgSend_setDateStyle_(v5, v6, 1, v7, v8);
    objc_msgSend_setTimeStyle_(v5, v9, 2, v10, v11);
    timeOfDayFormatter = v2->_timeOfDayFormatter;
    v2->_timeOfDayFormatter = v5;

    v13 = objc_alloc_init(MEMORY[0x277CCAB18]);
    measurementFormatter = v2->_measurementFormatter;
    v2->_measurementFormatter = v13;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = XREngineeringValueFormatter;
  v5 = 1;
  if (![(XREngineeringValueFormatter *)&v7 isEqual:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (self->_multiline != v4[64] || self->_highestResolutionTimeEnabled != v4[65]))
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = 0x234098509;
  if (self->_multiline)
  {
    v2 = 0x304545234;
  }

  v3 = 0x8875639026;
  if (self->_highestResolutionTimeEnabled)
  {
    v3 = 0x2348975685;
  }

  return v3 ^ v2;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  if (objc_msgSend_conformsToProtocol_(v4, v5, &unk_285A4AE00, v6, v7))
  {
    v11 = objc_msgSend_stringForEngineeringValue_(self, v8, v4, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)networkAddressStringFromSockaddr:(const void *)a3 length:(unint64_t)a4 resolveHostName:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v11 = v7;
  if (v7)
  {
    v12 = v7;
    v17 = objc_msgSend_UTF8String(v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = "???";
  }

  if (a4 < 2)
  {
    goto LABEL_6;
  }

  v18 = *a3;
  if (v18 > a4)
  {
    goto LABEL_6;
  }

  v23 = *(a3 + 1);
  HIDWORD(v25) = v23 - 2;
  LODWORD(v25) = v23 - 2;
  v24 = v25 >> 2;
  if (v24 > 3)
  {
    if (v24 == 4)
    {
      v17 = "route";
      goto LABEL_32;
    }

    if (v24 != 7)
    {
      goto LABEL_21;
    }

    if (v18 >= 0x1C)
    {
      if (!v11)
      {
        v17 = inet_ntop(v23, a3 + 8, v27, 0xFFu);
      }

      if (!*(a3 + 1))
      {
        v20 = @".*";
        goto LABEL_33;
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @".%hu", v9, v10, __rev16(*(a3 + 1)));
      goto LABEL_30;
    }
  }

  else
  {
    if (v24)
    {
      if (v24 == 2)
      {
        v17 = "ccitt";
LABEL_32:
        v20 = &stru_285A3F068;
        goto LABEL_33;
      }

LABEL_21:
      v17 = "???";
      goto LABEL_32;
    }

    if (v18 >= 0x10)
    {
      v8 = a3 + 4;
      v26 = *(a3 + 1);
      if (!v26)
      {
        v17 = "*";
      }

      if (!v11 && v26)
      {
        v17 = inet_ntop(v23, v8, v27, 0xFFu);
      }

      if (!*(a3 + 1))
      {
        v20 = @":*";
        goto LABEL_33;
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @":%hu", v9, v10, __rev16(*(a3 + 1)));
      v20 = LABEL_30:;
LABEL_33:
      if (v17)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s%@", v9, v10, v17, v20);
      }

      else
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%s%@", v9, v10, "???", v20);
      }
      v19 = ;
      goto LABEL_7;
    }
  }

LABEL_6:
  v19 = @"<error>";
  v20 = &stru_285A3F068;
LABEL_7:

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)getTitleAndSubtitleForCoreEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5
{
  v6 = a3;
  v11 = v6;
  if (a4)
  {
    if (objc_msgSend_uint32(v6, v7, v8, v9, v10) == 100000)
    {
      v16 = @"-";
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = objc_msgSend_uint32(v11, v12, v13, v14, v15);
      v16 = objc_msgSend_stringWithFormat_(v17, v19, @"CPU %u", v20, v21, v18);
    }

    v22 = *a4;
    *a4 = v16;
  }

  return a4 != 0;
}

- (BOOL)getTitleAndSubtitleForProcessEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5
{
  if (a4)
  {
    v17 = 0;
    if (objc_msgSend_getValue_fieldIndex_(a3, a2, &v17, 0, a5))
    {
      v10 = objc_msgSend_uint32(v17, v6, v7, v8, v9);
      if (v10 < 1)
      {
        if (v10)
        {
          v14 = @"Unknown";
        }

        else
        {
          v14 = @"kernel_task";
        }
      }

      else
      {
        v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"Process %d", v12, v13, v10);
      }
    }

    else
    {
      v14 = @"<error>";
    }

    v15 = *a4;
    *a4 = v14;
  }

  return a4 != 0;
}

- (BOOL)getTitleAndSubtitleForThreadEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5
{
  if (a4)
  {
    v12 = 0;
    if (objc_msgSend_getValue_fieldIndex_(a3, a2, &v12, 0, a5))
    {
      v9 = sub_248095378(self, v12, 0, v7, v8);
    }

    else
    {
      v9 = @"unknown";
    }

    v10 = *a4;
    *a4 = v9;
  }

  return a4 != 0;
}

- (BOOL)getTitleAndSubtitleForURLSessionEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5
{
  if (a4)
  {
    v19 = 0;
    v20 = 0;
    objc_msgSend_getURLSessionName_internalSessionID_backgroundIdentifier_isShared_isEphemeral_(a3, a2, &v20, 0, &v19, 0, 0);
    v7 = v20;
    v8 = v19;
    if (a5)
    {
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = &stru_285A3F068;
      }

      objc_storeStrong(a4, v9);
      v10 = v8;
      v11 = *a5;
      *a5 = v10;
    }

    else
    {
      v12 = v7;
      v16 = v12;
      if (v8)
      {
        v17 = objc_msgSend_stringByAppendingFormat_(v12, v13, @" (%@)", v14, v15, v8);

        v16 = v17;
      }

      v11 = *a4;
      *a4 = v16;
    }
  }

  return a4 != 0;
}

- (BOOL)getTitleAndSubtitleForSwiftTaskEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5
{
  v8 = a3;
  v11 = v8;
  if (a4)
  {
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    Value_fieldIndex = objc_msgSend_getValue_fieldIndex_(v8, v9, &v47, 2, v10);
    v15 = objc_msgSend_getValue_fieldIndex_(v11, v13, &v46, 3, v14);
    if (objc_msgSend_getValue_fieldIndex_(v11, v16, &v49, 1, v17) && objc_msgSend_getValue_fieldIndex_(v11, v18, &v48, 0, v19))
    {
      if (v15 && objc_msgSend_isValid(v46, v20, v21, v22, v23) && (objc_msgSend_string(v46, v20, v24, v25, v23), v26 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend_length(v26, v27, v28, v29, v30), v26, v31))
      {
        v34 = objc_msgSend_string(v46, v20, v32, v33, v23);
      }

      else
      {
        if (Value_fieldIndex)
        {
          objc_msgSend_stringForSwiftTaskNameUsingTextSymbolEngineeringValue_andTextSymbolBacktrace_(self, v20, v49, v47, v23);
        }

        else
        {
          objc_msgSend_stringForTextSymbolEngineeringValue_shouldIncludeLibrary_(self, v20, v49, 0, v23);
        }
        v34 = ;
      }

      v37 = v34;
      v41 = sub_248095378(self, v48, 0, v35, v36);
      if (a5)
      {
        objc_storeStrong(a4, v37);
        v42 = v41;
        v43 = *a5;
        *a5 = v42;
      }

      else
      {
        v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"%@ (%@)", v39, v40, v37, v41);
        v43 = *a4;
        *a4 = v44;
      }

      LOBYTE(a4) = 1;
    }

    else
    {
      LOBYTE(a4) = 0;
    }
  }

  return a4;
}

- (BOOL)getTitleAndSubtitleForSwiftActorEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5
{
  v8 = a3;
  v11 = v8;
  if (a4)
  {
    v27 = 0;
    v28 = 0;
    if (objc_msgSend_getValue_fieldIndex_(v8, v9, &v28, 1, v10) && objc_msgSend_getValue_fieldIndex_(v11, v12, &v27, 0, v13))
    {
      v16 = sub_248095378(self, v28, 0, v14, v15);
      v22 = sub_248095378(self, v27, 0, v17, v18);
      if (a5)
      {
        objc_storeStrong(a4, v16);
        v23 = v22;
        v24 = *a5;
        *a5 = v23;
      }

      else
      {
        v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%@ (%@)", v20, v21, v16, v22);
        v24 = *a4;
        *a4 = v25;
      }

      LOBYTE(a4) = 1;
    }

    else
    {
      LOBYTE(a4) = 0;
    }
  }

  return a4;
}

- (BOOL)getTitleAndSubtitleForSwiftTaskPriorityEngineeringValue:(id)a3 title:(id *)a4 subtitle:(id *)a5
{
  v8 = a3;
  v11 = v8;
  if (a4)
  {
    v28 = 0;
    v29 = 0;
    if (!objc_msgSend_getValue_fieldIndex_(v8, v9, &v28, 1, v10) || !objc_msgSend_getValue_fieldIndex_(v11, v12, &v29, 0, v13))
    {
      LOBYTE(a4) = 0;
LABEL_15:

      goto LABEL_16;
    }

    v16 = sub_248095378(self, v29, 0, v14, v15);
    v19 = sub_248095378(self, v28, 0, v17, v18);
    v23 = v19;
    if (a5)
    {
      if (v16)
      {
        objc_storeStrong(a4, v16);
        v24 = v23;
        v25 = *a5;
        *a5 = v24;
LABEL_14:

        LOBYTE(a4) = 1;
        goto LABEL_15;
      }

      v26 = v19;
    }

    else
    {
      if (v16)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@ (%@)", v21, v22, v16, v19);
      }

      else
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"%@", v21, v22, v19);
      }
      v26 = ;
    }

    v25 = *a4;
    *a4 = v26;
    goto LABEL_14;
  }

LABEL_16:

  return a4;
}

- (id)stringForLibraryAddressEngineeringValue:(id)a3
{
  v9 = 0;
  if (objc_msgSend_getValue_fieldIndex_(a3, a2, &v9, 1, v3))
  {
    v7 = sub_248095378(self, v9, 0, v5, v6);
  }

  else
  {
    v7 = @"unknown";
  }

  return v7;
}

- (id)stringForTextSymbolEngineeringValue:(id)a3 shouldIncludeLibrary:(BOOL)a4
{
  v10 = 0;
  if (objc_msgSend_getValue_fieldIndex_(a3, a2, &v10, 1, v4))
  {
    v8 = sub_248095378(self, v10, 0, v6, v7);
  }

  else
  {
    v8 = @"unknown";
  }

  return v8;
}

- (id)stringForCallSiteEngineeringValue:(id)a3 shouldIncludeLibrary:(BOOL)a4
{
  v5 = a3;
  v23 = 0;
  v24 = 0;
  if (objc_msgSend_getValue_fieldIndex_(v5, v6, &v24, 0, v7) && objc_msgSend_getValue_fieldIndex_(v5, v8, &v23, 1, v9))
  {
    withinNarrative = self->_withinNarrative;
    v13 = MEMORY[0x277CCACA8];
    v14 = sub_248095378(self, v24, withinNarrative, v10, v11);
    v17 = sub_248095378(self, v23, withinNarrative, v15, v16);
    v21 = objc_msgSend_stringWithFormat_(v13, v18, @"%@ + %@", v19, v20, v14, v17);
  }

  else
  {
    v21 = @"bad call site";
  }

  return v21;
}

- (id)stringForUserIDEngineeringValue:(id)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_uint32(a3, a2, a3, v3, v4);
  return objc_msgSend_stringWithFormat_(v5, v7, @"%u", v8, v9, v6);
}

- (id)stringForSocketAddrEngineeringValue:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = 0;
  if (objc_msgSend_getLengthOfUint64Representation_(v3, v4, &v15, v5, v6))
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2480986CC;
    v14[3] = &unk_278EFBF80;
    v14[4] = v16;
    objc_msgSend_enumerateUint64Values_(v3, v7, v14, v8, v9);
    v11 = objc_msgSend_networkAddressStringFromSockaddr_length_resolveHostName_(XREngineeringValueFormatter, v10, v16, 8 * v15, 0);
  }

  else
  {
    v11 = @"<error>";
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end
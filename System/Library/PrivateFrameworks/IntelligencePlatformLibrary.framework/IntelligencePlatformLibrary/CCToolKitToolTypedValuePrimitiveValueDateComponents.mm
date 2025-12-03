@interface CCToolKitToolTypedValuePrimitiveValueDateComponents
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueDateComponents)initWithCalendar:(id)calendar timeZoneIdentifier:(id)identifier era:(id)era year:(id)year month:(id)month day:(id)day hour:(id)hour minute:(id)self0 second:(id)self1 nanosecond:(id)self2 weekday:(id)self3 weekdayOrdinal:(id)self4 quarter:(id)self5 weekOfMonth:(id)self6 weekOfYear:(id)self7 yearForWeekOfYear:(id)self8 error:(id *)self9;
- (CCToolKitToolTypedValuePrimitiveValueDateComponents)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)calendar;
- (NSString)timeZoneIdentifier;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCToolKitToolTypedValuePrimitiveValueDateComponents

- (CCToolKitToolTypedValuePrimitiveValueDateComponents)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v35[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"calendar"];
    if (v9)
    {
      v10 = v9;
      v35[0] = 0;
      v11 = [[CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar alloc] initWithJSONDictionary:v9 error:v35];
      v12 = v35[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();
        v14 = 0;
        goto LABEL_10;
      }

      errorCopy2 = error;
      v31 = v8;
      selfCopy2 = self;
    }

    else
    {
      errorCopy2 = error;
      v31 = v8;
      selfCopy2 = self;
      v11 = 0;
    }

    v34 = v11;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"timeZoneIdentifier"];
    v27 = [dictionaryCopy objectForKeyedSubscript:@"era"];
    v29 = [dictionaryCopy objectForKeyedSubscript:@"year"];
    v28 = [dictionaryCopy objectForKeyedSubscript:@"month"];
    v26 = [dictionaryCopy objectForKeyedSubscript:@"day"];
    v33 = [dictionaryCopy objectForKeyedSubscript:@"hour"];
    v24 = [dictionaryCopy objectForKeyedSubscript:@"minute"];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"second"];
    v22 = [dictionaryCopy objectForKeyedSubscript:@"nanosecond"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"weekday"];
    v20 = [dictionaryCopy objectForKeyedSubscript:@"weekdayOrdinal"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"quarter"];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"weekOfMonth"];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"weekOfYear"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"yearForWeekOfYear"];
    v13 = v30;
    v11 = v27;
    v14 = [[CCToolKitToolTypedValuePrimitiveValueDateComponents alloc] initWithCalendar:v34 timeZoneIdentifier:v30 era:v27 year:v29 month:v28 day:v26 hour:v33 minute:v24 second:v23 nanosecond:v22 weekday:v21 weekdayOrdinal:v20 quarter:v19 weekOfMonth:v15 weekOfYear:v16 yearForWeekOfYear:v17 error:errorCopy2];

    v10 = v34;
    v8 = v31;
    self = selfCopy2;
LABEL_10:

    goto LABEL_11;
  }

  CCSetError();
  v14 = 0;
LABEL_11:

  return v14;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_calendar)
  {
    calendar = [(CCToolKitToolTypedValuePrimitiveValueDateComponents *)self calendar];
    jsonDictionary = [calendar jsonDictionary];
    [v3 setObject:jsonDictionary forKeyedSubscript:@"calendar"];
  }

  if (self->_timeZoneIdentifier)
  {
    timeZoneIdentifier = [(CCToolKitToolTypedValuePrimitiveValueDateComponents *)self timeZoneIdentifier];
    [v3 setObject:timeZoneIdentifier forKeyedSubscript:@"timeZoneIdentifier"];
  }

  if (self->_hasEra)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents era](self, "era")}];
    [v3 setObject:v7 forKeyedSubscript:@"era"];
  }

  if (self->_hasYear)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents year](self, "year")}];
    [v3 setObject:v8 forKeyedSubscript:@"year"];
  }

  if (self->_hasMonth)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents month](self, "month")}];
    [v3 setObject:v9 forKeyedSubscript:@"month"];
  }

  if (self->_hasDay)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents day](self, "day")}];
    [v3 setObject:v10 forKeyedSubscript:@"day"];
  }

  if (self->_hasHour)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents hour](self, "hour")}];
    [v3 setObject:v11 forKeyedSubscript:@"hour"];
  }

  if (self->_hasMinute)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents minute](self, "minute")}];
    [v3 setObject:v12 forKeyedSubscript:@"minute"];
  }

  if (self->_hasSecond)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents second](self, "second")}];
    [v3 setObject:v13 forKeyedSubscript:@"second"];
  }

  if (self->_hasNanosecond)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents nanosecond](self, "nanosecond")}];
    [v3 setObject:v14 forKeyedSubscript:@"nanosecond"];
  }

  if (self->_hasWeekday)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents weekday](self, "weekday")}];
    [v3 setObject:v15 forKeyedSubscript:@"weekday"];
  }

  if (self->_hasWeekdayOrdinal)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents weekdayOrdinal](self, "weekdayOrdinal")}];
    [v3 setObject:v16 forKeyedSubscript:@"weekdayOrdinal"];
  }

  if (self->_hasQuarter)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents quarter](self, "quarter")}];
    [v3 setObject:v17 forKeyedSubscript:@"quarter"];
  }

  if (self->_hasWeekOfMonth)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents weekOfMonth](self, "weekOfMonth")}];
    [v3 setObject:v18 forKeyedSubscript:@"weekOfMonth"];
  }

  if (self->_hasWeekOfYear)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents weekOfYear](self, "weekOfYear")}];
    [v3 setObject:v19 forKeyedSubscript:@"weekOfYear"];
  }

  if (self->_hasYearForWeekOfYear)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[CCToolKitToolTypedValuePrimitiveValueDateComponents yearForWeekOfYear](self, "yearForWeekOfYear")}];
    [v3 setObject:v20 forKeyedSubscript:@"yearForWeekOfYear"];
  }

  v21 = [v3 copy];

  return v21;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  v6 = MEMORY[0x1E69939A8];
  v23 = blockCopy;
  if (self->_calendar)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_calendar];
    v23[2](v23, v7);
  }

  if (self->_timeZoneIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 stringValue:self->_timeZoneIdentifier];
    v23[2](v23, v8);
  }

  if (self->_hasEra)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_era];
    v23[2](v23, v9);
  }

  if (self->_hasYear)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_year];
    v23[2](v23, v10);
  }

  if (self->_hasMonth)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_month];
    v23[2](v23, v11);
  }

  if (self->_hasDay)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_day];
    v23[2](v23, v12);
  }

  if (self->_hasHour)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_hour];
    v23[2](v23, v13);
  }

  if (self->_hasMinute)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_minute];
    v23[2](v23, v14);
  }

  if (self->_hasSecond)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_second];
    v23[2](v23, v15);
  }

  if (self->_hasNanosecond)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_nanosecond];
    v23[2](v23, v16);
  }

  if (self->_hasWeekday)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_weekday];
    v23[2](v23, v17);
  }

  if (self->_hasWeekdayOrdinal)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_weekdayOrdinal];
    v23[2](v23, v18);
  }

  if (self->_hasQuarter)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_quarter];
    v23[2](v23, v19);
  }

  if (self->_hasWeekOfMonth)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_weekOfMonth];
    v23[2](v23, v20);
  }

  if (self->_hasWeekOfYear)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_weekOfYear];
    v23[2](v23, v21);
  }

  if (self->_hasYearForWeekOfYear)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*v6 int64Value:self->_yearForWeekOfYear];
    v23[2](v23, v22);
  }
}

- (NSString)timeZoneIdentifier
{
  v2 = [(NSString *)self->_timeZoneIdentifier copy];

  return v2;
}

- (CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar)calendar
{
  v2 = [(CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar *)self->_calendar copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_187;
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
          goto LABEL_188;
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
      goto LABEL_188;
    }

LABEL_21:
    switch((v22 >> 3))
    {
      case 1u:
        v24 = [CCToolKitToolTypedValuePrimitiveValueDateComponentsCalendar alloc];
        CCPBReaderReadDataNoCopy();
        errorCopy = error;
        v27 = v26 = dataCopy;
        v144 = 0;
        v28 = [(CCItemMessage *)v24 initWithData:v27 error:&v144];
        v11 = v144;
        calendar = self->_calendar;
        self->_calendar = v28;

        dataCopy = v26;
        error = errorCopy;
        v10 = MEMORY[0x1E6993AA8];
        continue;
      case 2u:
        v93 = CCPBReaderReadStringNoCopy();
        timeZoneIdentifier = self->_timeZoneIdentifier;
        self->_timeZoneIdentifier = v93;

        v11 = 0;
        continue;
      case 3u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        while (1)
        {
          v68 = *v8;
          v69 = *&v7[v68];
          v70 = v69 + 1;
          if (v69 == -1 || v70 > *&v7[*v9])
          {
            break;
          }

          v71 = *(*&v7[*v12] + v69);
          *&v7[v68] = v70;
          v67 |= (v71 & 0x7F) << v65;
          if ((v71 & 0x80) == 0)
          {
            goto LABEL_145;
          }

          v65 += 7;
          v21 = v66++ >= 9;
          if (v21)
          {
            v67 = 0;
            goto LABEL_147;
          }
        }

        *&v7[*v10] = 1;
LABEL_145:
        if (*&v7[*v10])
        {
          v67 = 0;
        }

LABEL_147:
        v11 = 0;
        self->_era = v67;
        v130 = 16;
        goto LABEL_180;
      case 4u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        while (2)
        {
          v82 = *v8;
          v83 = *&v7[v82];
          v84 = v83 + 1;
          if (v83 == -1 || v84 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v85 = *(*&v7[*v12] + v83);
            *&v7[v82] = v84;
            v81 |= (v85 & 0x7F) << v79;
            if (v85 < 0)
            {
              v79 += 7;
              v21 = v80++ >= 9;
              if (v21)
              {
                v81 = 0;
                goto LABEL_155;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v81 = 0;
        }

LABEL_155:
        v11 = 0;
        self->_year = v81;
        v130 = 17;
        goto LABEL_180;
      case 5u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (2)
        {
          v47 = *v8;
          v48 = *&v7[v47];
          v49 = v48 + 1;
          if (v48 == -1 || v49 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v50 = *(*&v7[*v12] + v48);
            *&v7[v47] = v49;
            v46 |= (v50 & 0x7F) << v44;
            if (v50 < 0)
            {
              v44 += 7;
              v21 = v45++ >= 9;
              if (v21)
              {
                v46 = 0;
                goto LABEL_135;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v46 = 0;
        }

LABEL_135:
        v11 = 0;
        self->_month = v46;
        v130 = 18;
        goto LABEL_180;
      case 6u:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        while (2)
        {
          v98 = *v8;
          v99 = *&v7[v98];
          v100 = v99 + 1;
          if (v99 == -1 || v100 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v101 = *(*&v7[*v12] + v99);
            *&v7[v98] = v100;
            v97 |= (v101 & 0x7F) << v95;
            if (v101 < 0)
            {
              v95 += 7;
              v21 = v96++ >= 9;
              if (v21)
              {
                v97 = 0;
                goto LABEL_163;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v97 = 0;
        }

LABEL_163:
        v11 = 0;
        self->_day = v97;
        v130 = 19;
        goto LABEL_180;
      case 7u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        while (2)
        {
          v112 = *v8;
          v113 = *&v7[v112];
          v114 = v113 + 1;
          if (v113 == -1 || v114 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v115 = *(*&v7[*v12] + v113);
            *&v7[v112] = v114;
            v111 |= (v115 & 0x7F) << v109;
            if (v115 < 0)
            {
              v109 += 7;
              v21 = v110++ >= 9;
              if (v21)
              {
                v111 = 0;
                goto LABEL_171;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v111 = 0;
        }

LABEL_171:
        v11 = 0;
        self->_hour = v111;
        v130 = 20;
        goto LABEL_180;
      case 8u:
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
                v88 = 0;
                goto LABEL_159;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v88 = 0;
        }

LABEL_159:
        v11 = 0;
        self->_minute = v88;
        v130 = 21;
        goto LABEL_180;
      case 9u:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        while (2)
        {
          v126 = *v8;
          v127 = *&v7[v126];
          v128 = v127 + 1;
          if (v127 == -1 || v128 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v129 = *(*&v7[*v12] + v127);
            *&v7[v126] = v128;
            v125 |= (v129 & 0x7F) << v123;
            if (v129 < 0)
            {
              v123 += 7;
              v21 = v124++ >= 9;
              if (v21)
              {
                v125 = 0;
                goto LABEL_179;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v125 = 0;
        }

LABEL_179:
        v11 = 0;
        self->_second = v125;
        v130 = 22;
        goto LABEL_180;
      case 0xAu:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        while (2)
        {
          v61 = *v8;
          v62 = *&v7[v61];
          v63 = v62 + 1;
          if (v62 == -1 || v63 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v64 = *(*&v7[*v12] + v62);
            *&v7[v61] = v63;
            v60 |= (v64 & 0x7F) << v58;
            if (v64 < 0)
            {
              v58 += 7;
              v21 = v59++ >= 9;
              if (v21)
              {
                v60 = 0;
                goto LABEL_143;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v60 = 0;
        }

LABEL_143:
        v11 = 0;
        self->_nanosecond = v60;
        v130 = 23;
        goto LABEL_180;
      case 0xBu:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        while (2)
        {
          v119 = *v8;
          v120 = *&v7[v119];
          v121 = v120 + 1;
          if (v120 == -1 || v121 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v122 = *(*&v7[*v12] + v120);
            *&v7[v119] = v121;
            v118 |= (v122 & 0x7F) << v116;
            if (v122 < 0)
            {
              v116 += 7;
              v21 = v117++ >= 9;
              if (v21)
              {
                v118 = 0;
                goto LABEL_175;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v118 = 0;
        }

LABEL_175:
        v11 = 0;
        self->_weekday = v118;
        v130 = 24;
        goto LABEL_180;
      case 0xCu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (2)
        {
          v40 = *v8;
          v41 = *&v7[v40];
          v42 = v41 + 1;
          if (v41 == -1 || v42 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v43 = *(*&v7[*v12] + v41);
            *&v7[v40] = v42;
            v39 |= (v43 & 0x7F) << v37;
            if (v43 < 0)
            {
              v37 += 7;
              v21 = v38++ >= 9;
              if (v21)
              {
                v39 = 0;
                goto LABEL_131;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v39 = 0;
        }

LABEL_131:
        v11 = 0;
        self->_weekdayOrdinal = v39;
        v130 = 25;
        goto LABEL_180;
      case 0xDu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (2)
        {
          v54 = *v8;
          v55 = *&v7[v54];
          v56 = v55 + 1;
          if (v55 == -1 || v56 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v57 = *(*&v7[*v12] + v55);
            *&v7[v54] = v56;
            v53 |= (v57 & 0x7F) << v51;
            if (v57 < 0)
            {
              v51 += 7;
              v21 = v52++ >= 9;
              if (v21)
              {
                v53 = 0;
                goto LABEL_139;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v53 = 0;
        }

LABEL_139:
        v11 = 0;
        self->_quarter = v53;
        v130 = 26;
        goto LABEL_180;
      case 0xEu:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        while (2)
        {
          v105 = *v8;
          v106 = *&v7[v105];
          v107 = v106 + 1;
          if (v106 == -1 || v107 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v108 = *(*&v7[*v12] + v106);
            *&v7[v105] = v107;
            v104 |= (v108 & 0x7F) << v102;
            if (v108 < 0)
            {
              v102 += 7;
              v21 = v103++ >= 9;
              if (v21)
              {
                v104 = 0;
                goto LABEL_167;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v104 = 0;
        }

LABEL_167:
        v11 = 0;
        self->_weekOfMonth = v104;
        v130 = 27;
        goto LABEL_180;
      case 0xFu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (2)
        {
          v33 = *v8;
          v34 = *&v7[v33];
          v35 = v34 + 1;
          if (v34 == -1 || v35 > *&v7[*v9])
          {
            *&v7[*v10] = 1;
          }

          else
          {
            v36 = *(*&v7[*v12] + v34);
            *&v7[v33] = v35;
            v32 |= (v36 & 0x7F) << v30;
            if (v36 < 0)
            {
              v30 += 7;
              v21 = v31++ >= 9;
              if (v21)
              {
                v32 = 0;
                goto LABEL_127;
              }

              continue;
            }
          }

          break;
        }

        if (*&v7[*v10])
        {
          v32 = 0;
        }

LABEL_127:
        v11 = 0;
        self->_weekOfYear = v32;
        v130 = 28;
        goto LABEL_180;
      case 0x10u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        break;
      default:
        if (CCPBReaderSkipValueWithTag())
        {
          v11 = 0;
        }

        else
        {
          v131 = objc_opt_class();
          NSStringFromClass(v131);
          selfCopy = self;
          v132 = v10;
          errorCopy2 = error;
          v135 = v134 = dataCopy;
          v136 = *&v7[*v132];
          v11 = CCSkipFieldErrorForMessage();

          dataCopy = v134;
          error = errorCopy2;
          v10 = v132;
          self = selfCopy;
        }

        continue;
    }

    while (1)
    {
      v75 = *v8;
      v76 = *&v7[v75];
      v77 = v76 + 1;
      if (v76 == -1 || v77 > *&v7[*v9])
      {
        break;
      }

      v78 = *(*&v7[*v12] + v76);
      *&v7[v75] = v77;
      v74 |= (v78 & 0x7F) << v72;
      if ((v78 & 0x80) == 0)
      {
        goto LABEL_149;
      }

      v72 += 7;
      v21 = v73++ >= 9;
      if (v21)
      {
        v74 = 0;
        goto LABEL_151;
      }
    }

    *&v7[*v10] = 1;
LABEL_149:
    if (*&v7[*v10])
    {
      v74 = 0;
    }

LABEL_151:
    v11 = 0;
    self->_yearForWeekOfYear = v74;
    v130 = 29;
LABEL_180:
    *(&self->super.super.isa + v130) = 1;
  }

  while (*&v7[*v8] < *&v7[*v9]);
  if (v11)
  {
    CCSetError();
  }

  else
  {
LABEL_187:
    if (!*&v7[*v10])
    {
      v11 = 0;
      v141 = 1;
      goto LABEL_191;
    }

LABEL_188:
    v137 = objc_opt_class();
    v138 = NSStringFromClass(v137);
    v139 = *&v7[*v10];
    v140 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v11 = 0;
  }

  v141 = 0;
LABEL_191:

  return v141;
}

- (CCToolKitToolTypedValuePrimitiveValueDateComponents)initWithCalendar:(id)calendar timeZoneIdentifier:(id)identifier era:(id)era year:(id)year month:(id)month day:(id)day hour:(id)hour minute:(id)self0 second:(id)self1 nanosecond:(id)self2 weekday:(id)self3 weekdayOrdinal:(id)self4 quarter:(id)self5 weekOfMonth:(id)self6 weekOfYear:(id)self7 yearForWeekOfYear:(id)self8 error:(id *)self9
{
  calendarCopy = calendar;
  identifierCopy = identifier;
  eraCopy = era;
  yearCopy = year;
  monthCopy = month;
  dayCopy = day;
  hourCopy = hour;
  minuteCopy = minute;
  secondCopy = second;
  nanosecondCopy = nanosecond;
  weekdayCopy = weekday;
  ordinalCopy = ordinal;
  quarterCopy = quarter;
  ofMonthCopy = ofMonth;
  ofYearCopy = ofYear;
  weekOfYearCopy = weekOfYear;
  v84 = objc_opt_new();
  v72 = minuteCopy;
  v73 = hourCopy;
  if (calendarCopy)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v32 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      CCSetError();
      v46 = 0;
      goto LABEL_20;
    }

    data = [calendarCopy data];
    CCPBDataWriterWriteDataField();

    if (!identifierCopy)
    {
LABEL_4:
      v34 = v32;
      goto LABEL_8;
    }
  }

  else
  {
    v32 = 0;
    if (!identifierCopy)
    {
      goto LABEL_4;
    }
  }

  v35 = eraCopy;
  v36 = yearCopy;
  v37 = monthCopy;
  v38 = calendarCopy;
  objc_opt_class();
  v39 = CCValidateIsInstanceOfExpectedClass();
  v34 = v32;

  if (v39)
  {
    CCPBDataWriterWriteStringField();
    calendarCopy = v38;
    monthCopy = v37;
    yearCopy = v36;
    eraCopy = v35;
LABEL_8:
    v71 = calendarCopy;
    v40 = 0x1E696A000uLL;
    v41 = dayCopy;
    if (eraCopy)
    {
      objc_opt_class();
      v42 = CCValidateIsInstanceOfExpectedClass();
      v32 = v34;

      if (!v42)
      {
        goto LABEL_57;
      }

      [eraCopy longLongValue];
      CCPBDataWriterWriteInt64Field();
      v40 = 0x1E696A000uLL;
      if (!yearCopy)
      {
LABEL_11:
        v43 = v32;
        if (monthCopy)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v32 = v34;
      if (!yearCopy)
      {
        goto LABEL_11;
      }
    }

    objc_opt_class();
    v48 = CCValidateIsInstanceOfExpectedClass();
    v43 = v32;

    if (!v48)
    {
      goto LABEL_62;
    }

    [yearCopy longLongValue];
    CCPBDataWriterWriteInt64Field();
    v40 = 0x1E696A000uLL;
    if (monthCopy)
    {
LABEL_12:
      objc_opt_class();
      v44 = CCValidateIsInstanceOfExpectedClass();
      v32 = v43;

      if (!v44)
      {
        goto LABEL_57;
      }

      [monthCopy longLongValue];
      CCPBDataWriterWriteInt64Field();
      v40 = 0x1E696A000uLL;
      if (!dayCopy)
      {
LABEL_14:
        v43 = v32;
        if (hourCopy)
        {
          goto LABEL_15;
        }

        goto LABEL_27;
      }

LABEL_25:
      objc_opt_class();
      v49 = CCValidateIsInstanceOfExpectedClass();
      v43 = v32;

      if (!v49)
      {
        goto LABEL_62;
      }

      [dayCopy longLongValue];
      CCPBDataWriterWriteInt64Field();
      v40 = 0x1E696A000uLL;
      if (hourCopy)
      {
LABEL_15:
        objc_opt_class();
        v45 = CCValidateIsInstanceOfExpectedClass();
        v32 = v43;

        if (!v45)
        {
          goto LABEL_57;
        }

        [hourCopy longLongValue];
        CCPBDataWriterWriteInt64Field();
        v40 = 0x1E696A000;
        if (!minuteCopy)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }

LABEL_27:
      v32 = v43;
      if (!minuteCopy)
      {
LABEL_17:
        v43 = v32;
LABEL_30:
        if (secondCopy)
        {
          v52 = *(v40 + 3480);
          objc_opt_class();
          v53 = CCValidateIsInstanceOfExpectedClass();
          v32 = v43;

          if (!v53)
          {
            goto LABEL_57;
          }

          [secondCopy longLongValue];
          CCPBDataWriterWriteInt64Field();
          v40 = 0x1E696A000;
        }

        else
        {
          v32 = v43;
        }

        if (nanosecondCopy)
        {
          v54 = *(v40 + 3480);
          objc_opt_class();
          v55 = CCValidateIsInstanceOfExpectedClass();
          v43 = v32;

          if (!v55)
          {
            goto LABEL_62;
          }

          [nanosecondCopy longLongValue];
          CCPBDataWriterWriteInt64Field();
          v40 = 0x1E696A000;
        }

        else
        {
          v43 = v32;
        }

        if (weekdayCopy)
        {
          v56 = *(v40 + 3480);
          objc_opt_class();
          v57 = CCValidateIsInstanceOfExpectedClass();
          v32 = v43;

          if (!v57)
          {
            goto LABEL_57;
          }

          [weekdayCopy longLongValue];
          CCPBDataWriterWriteInt64Field();
          v40 = 0x1E696A000;
        }

        else
        {
          v32 = v43;
        }

        if (ordinalCopy)
        {
          v58 = *(v40 + 3480);
          objc_opt_class();
          v59 = CCValidateIsInstanceOfExpectedClass();
          v43 = v32;

          if (!v59)
          {
            goto LABEL_62;
          }

          [ordinalCopy longLongValue];
          CCPBDataWriterWriteInt64Field();
          v40 = 0x1E696A000;
        }

        else
        {
          v43 = v32;
        }

        if (quarterCopy)
        {
          v60 = *(v40 + 3480);
          objc_opt_class();
          v61 = CCValidateIsInstanceOfExpectedClass();
          v32 = v43;

          if (!v61)
          {
            goto LABEL_57;
          }

          [quarterCopy longLongValue];
          CCPBDataWriterWriteInt64Field();
          v40 = 0x1E696A000;
        }

        else
        {
          v32 = v43;
        }

        if (!ofMonthCopy)
        {
          v43 = v32;
          goto LABEL_54;
        }

        v62 = *(v40 + 3480);
        objc_opt_class();
        v63 = CCValidateIsInstanceOfExpectedClass();
        v43 = v32;

        if (v63)
        {
          [ofMonthCopy longLongValue];
          CCPBDataWriterWriteInt64Field();
          v40 = 0x1E696A000;
LABEL_54:
          if (!ofYearCopy)
          {
            v32 = v43;
            goto LABEL_59;
          }

          v64 = *(v40 + 3480);
          objc_opt_class();
          v65 = CCValidateIsInstanceOfExpectedClass();
          v32 = v43;

          if (v65)
          {
            [ofYearCopy longLongValue];
            CCPBDataWriterWriteInt64Field();
            v40 = 0x1E696A000;
LABEL_59:
            if (!weekOfYearCopy)
            {
              v68 = v84;
              goto LABEL_67;
            }

            v66 = *(v40 + 3480);
            objc_opt_class();
            v67 = CCValidateIsInstanceOfExpectedClass();
            v43 = v32;

            if (v67)
            {
              [weekOfYearCopy longLongValue];
              v68 = v84;
              CCPBDataWriterWriteInt64Field();
              v32 = v43;
LABEL_67:
              immutableData = [v68 immutableData];
              selfCopy2 = [(CCItemMessage *)self initWithData:immutableData error:error];

              v46 = selfCopy2;
              goto LABEL_64;
            }

            goto LABEL_62;
          }

LABEL_57:
          CCSetError();
          v46 = 0;
LABEL_63:
          selfCopy2 = self;
LABEL_64:
          calendarCopy = v71;
          goto LABEL_65;
        }

LABEL_62:
        CCSetError();
        v46 = 0;
        v32 = v43;
        goto LABEL_63;
      }

LABEL_28:
      v50 = *(v40 + 3480);
      objc_opt_class();
      v51 = CCValidateIsInstanceOfExpectedClass();
      v43 = v32;

      if (!v51)
      {
        goto LABEL_62;
      }

      [minuteCopy longLongValue];
      CCPBDataWriterWriteInt64Field();
      v40 = 0x1E696A000uLL;
      goto LABEL_30;
    }

LABEL_24:
    v32 = v43;
    if (!dayCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  CCSetError();
  v46 = 0;
  v32 = v34;
  calendarCopy = v38;
  monthCopy = v37;
  yearCopy = v36;
  eraCopy = v35;
LABEL_20:
  v41 = dayCopy;
  selfCopy2 = self;
LABEL_65:

  return v46;
}

@end
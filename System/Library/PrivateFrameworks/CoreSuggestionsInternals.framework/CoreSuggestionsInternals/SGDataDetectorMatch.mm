@interface SGDataDetectorMatch
+ (BOOL)approximateTimeForDataDetectorResult:(__DDResult *)result;
+ (BOOL)inferredDateForDataDetectorResult:(__DDResult *)result;
+ (BOOL)partialDateForDataDetectorResult:(__DDResult *)result;
+ (BOOL)stringHasDatesOrTimes:(id)times;
+ (id)_detectionsInPlainText:(id)text withEligibleRegions:(id)regions ddSignature:(_NSRange *)signature baseDate:(id)date;
+ (id)detectionsAndSignatureInText:(id)text eligibleRegions:(id)regions baseDate:(id)date;
+ (id)detectionsInPlainText:(id)text baseDate:(id)date;
+ (void)resetUnusedScannersForTesting;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDataDetectorMatch:(id)match;
- (SGDataDetectorMatch)initWithCoder:(id)coder;
- (SGDataDetectorMatch)initWithDetectedDate:(id)date detectedTimeZone:(id)zone detectedEndDate:(id)endDate detectedEndTimeZone:(id)timeZone matchType:(unsigned int)type range:(_NSRange)range labelRange:(_NSRange)labelRange labelString:(id)self0 valueRange:(_NSRange)self1 valueString:(id)self2 allDay:(BOOL)self3 inferredDate:(BOOL)self4 approximateTime:(BOOL)self5 partialDate:(BOOL)self6;
- (SGDataDetectorMatch)initWithLookupHintInDomain:(int)domain range:(_NSRange)range labelRange:(_NSRange)labelRange labelString:(id)string valueRange:(_NSRange)valueRange valueString:(id)valueString qid:(id)qid;
- (SGDataDetectorMatch)initWithMatchType:(unsigned int)type range:(_NSRange)range labelRange:(_NSRange)labelRange labelString:(id)string valueRange:(_NSRange)valueRange valueString:(id)valueString;
- (SGDataDetectorMatch)initWithMatchType:(unsigned int)type range:(_NSRange)range labelRange:(_NSRange)labelRange labelString:(id)string valueRange:(_NSRange)valueRange valueString:(id)valueString postalAddressComponents:(id)components;
- (_NSRange)labelRange;
- (_NSRange)range;
- (_NSRange)valueRange;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGDataDetectorMatch

- (_NSRange)valueRange
{
  length = self->_valueRange.length;
  location = self->_valueRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)labelRange
{
  length = self->_labelRange.length;
  location = self->_labelRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)hash
{
  matchType = [(SGDataDetectorMatch *)self matchType];
  range = [(SGDataDetectorMatch *)self range];
  [(SGDataDetectorMatch *)self range];
  return (v5 ^ range) - matchType + 32 * matchType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGDataDetectorMatch *)self isEqualToDataDetectorMatch:v5];
  }

  return v6;
}

- (BOOL)isEqualToDataDetectorMatch:(id)match
{
  matchCopy = match;
  if (matchCopy && (v8 = -[SGDataDetectorMatch matchType](self, "matchType"), v8 == [matchCopy matchType]))
  {
    range = [(SGDataDetectorMatch *)self range];
    v11 = v10;
    v13 = 0;
    if (range == [matchCopy range] && v11 == v12)
    {
      labelRange = [(SGDataDetectorMatch *)self labelRange];
      v16 = v15;
      v13 = 0;
      if (labelRange == [matchCopy labelRange] && v16 == v17)
      {
        valueRange = [(SGDataDetectorMatch *)self valueRange];
        v20 = v19;
        v13 = 0;
        if (valueRange == [matchCopy valueRange] && v20 == v21)
        {
          labelString = [(SGDataDetectorMatch *)self labelString];
          labelString2 = [matchCopy labelString];
          if (labelString != labelString2)
          {
            labelString3 = [(SGDataDetectorMatch *)self labelString];
            labelString4 = [matchCopy labelString];
            if (![labelString3 isEqual:labelString4])
            {
              v13 = 0;
              goto LABEL_24;
            }
          }

          valueString = [(SGDataDetectorMatch *)self valueString];
          valueString2 = [matchCopy valueString];
          if (valueString != valueString2)
          {
            valueString3 = [(SGDataDetectorMatch *)self valueString];
            valueString4 = [matchCopy valueString];
            v84 = valueString3;
            if (![valueString3 isEqual:valueString4])
            {
              v13 = 0;
              goto LABEL_22;
            }
          }

          parsecDomain = [(SGDataDetectorMatch *)self parsecDomain];
          if (parsecDomain != [matchCopy parsecDomain])
          {
            v13 = 0;
            if (valueString == valueString2)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          parsecWikidataQid = [(SGDataDetectorMatch *)self parsecWikidataQid];
          parsecWikidataQid2 = [matchCopy parsecWikidataQid];
          v83 = valueString4;
          v81 = labelString3;
          if (parsecWikidataQid == parsecWikidataQid2)
          {
            v80 = parsecWikidataQid;
          }

          else
          {
            v76 = labelString;
            v30 = valueString2;
            v31 = valueString;
            v32 = labelString4;
            parsecWikidataQid3 = [(SGDataDetectorMatch *)self parsecWikidataQid];
            [matchCopy parsecWikidataQid];
            v78 = v79 = parsecWikidataQid3;
            if (![parsecWikidataQid3 isEqual:?])
            {
              v39 = parsecWikidataQid;
              v13 = 0;
              v40 = parsecWikidataQid2;
              labelString4 = v32;
              valueString = v31;
              valueString2 = v30;
              labelString = v76;
              goto LABEL_35;
            }

            v80 = parsecWikidataQid;
            labelString4 = v32;
            valueString = v31;
            valueString2 = v30;
            labelString = v76;
          }

          allDay = [(SGDataDetectorMatch *)self allDay];
          if (allDay != [matchCopy allDay] || (v35 = -[SGDataDetectorMatch inferredDate](self, "inferredDate"), v35 != objc_msgSend(matchCopy, "inferredDate")) || (v36 = -[SGDataDetectorMatch approximateTime](self, "approximateTime"), v36 != objc_msgSend(matchCopy, "approximateTime")) || (v37 = -[SGDataDetectorMatch partialDate](self, "partialDate"), v37 != objc_msgSend(matchCopy, "partialDate")))
          {
            v13 = 0;
            v38 = 0;
            goto LABEL_32;
          }

          postalAddressComponents = [(SGDataDetectorMatch *)self postalAddressComponents];
          postalAddressComponents2 = [matchCopy postalAddressComponents];
          v75 = postalAddressComponents;
          if (postalAddressComponents != postalAddressComponents2)
          {
            postalAddressComponents3 = [(SGDataDetectorMatch *)self postalAddressComponents];
            postalAddressComponents4 = [matchCopy postalAddressComponents];
            v71 = postalAddressComponents3;
            if (![postalAddressComponents3 isEqual:?])
            {
              v13 = 0;
              v44 = postalAddressComponents2;
              v43 = v75;
              goto LABEL_60;
            }
          }

          detectedDate = [(SGDataDetectorMatch *)self detectedDate];
          detectedDate2 = [matchCopy detectedDate];
          v73 = detectedDate;
          if (detectedDate != detectedDate2)
          {
            detectedDate3 = [(SGDataDetectorMatch *)self detectedDate];
            detectedDate4 = [matchCopy detectedDate];
            v67 = detectedDate3;
            if (![detectedDate3 isEqual:?])
            {
              v47 = detectedDate2;
              v48 = v73;
              v13 = 0;
              v44 = postalAddressComponents2;
LABEL_58:

LABEL_59:
              v43 = v75;
              if (v75 == v44)
              {
LABEL_61:

                v38 = v13;
LABEL_32:
                v39 = v80;
                v40 = parsecWikidataQid2;
                if (v80 == parsecWikidataQid2)
                {

                  v13 = v38;
                  goto LABEL_36;
                }

LABEL_35:

LABEL_36:
                valueString4 = v83;
                labelString3 = v81;
                if (valueString == valueString2)
                {
LABEL_23:

                  if (labelString == labelString2)
                  {
LABEL_25:

                    goto LABEL_13;
                  }

LABEL_24:

                  goto LABEL_25;
                }

LABEL_22:

                goto LABEL_23;
              }

LABEL_60:

              goto LABEL_61;
            }
          }

          detectedTimeZone = [(SGDataDetectorMatch *)self detectedTimeZone];
          detectedTimeZone2 = [matchCopy detectedTimeZone];
          v69 = detectedTimeZone;
          if (detectedTimeZone != detectedTimeZone2)
          {
            detectedTimeZone3 = [(SGDataDetectorMatch *)self detectedTimeZone];
            detectedTimeZone4 = [matchCopy detectedTimeZone];
            v63 = detectedTimeZone3;
            if (![detectedTimeZone3 isEqual:?])
            {
              v13 = 0;
              v48 = v73;
              v44 = postalAddressComponents2;
              v51 = detectedTimeZone2;
LABEL_56:

LABEL_57:
              v47 = detectedDate2;
              if (v48 == detectedDate2)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }
          }

          detectedEndDate = [(SGDataDetectorMatch *)self detectedEndDate];
          [matchCopy detectedEndDate];
          v65 = v64 = detectedEndDate;
          v77 = labelString;
          if (detectedEndDate == v65 || (-[SGDataDetectorMatch detectedEndDate](self, "detectedEndDate"), v53 = objc_claimAutoreleasedReturnValue(), [matchCopy detectedEndDate], v60 = objc_claimAutoreleasedReturnValue(), v61 = v53, objc_msgSend(v53, "isEqual:")))
          {
            detectedEndTimeZone = [(SGDataDetectorMatch *)self detectedEndTimeZone];
            detectedEndTimeZone2 = [matchCopy detectedEndTimeZone];
            v57 = detectedEndTimeZone2;
            if (detectedEndTimeZone == detectedEndTimeZone2)
            {

              v13 = 1;
            }

            else
            {
              detectedEndTimeZone3 = [(SGDataDetectorMatch *)self detectedEndTimeZone];
              detectedEndTimeZone4 = [matchCopy detectedEndTimeZone];
              v13 = [detectedEndTimeZone3 isEqual:detectedEndTimeZone4];
            }

            detectedEndDate = v64;
            v54 = v65;
            labelString = v77;
            v44 = postalAddressComponents2;
            if (v64 == v65)
            {
LABEL_55:

              v51 = detectedTimeZone2;
              v48 = v73;
              if (v69 == detectedTimeZone2)
              {
                goto LABEL_57;
              }

              goto LABEL_56;
            }
          }

          else
          {
            v13 = 0;
            v44 = postalAddressComponents2;
            v54 = v65;
          }

          goto LABEL_55;
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  matchType = self->_matchType;
  coderCopy = coder;
  [coderCopy encodeInt64:matchType forKey:@"matchType"];
  [coderCopy encodeInteger:self->_range.location forKey:@"range_location"];
  [coderCopy encodeInteger:self->_range.length forKey:@"range_length"];
  [coderCopy encodeInteger:self->_labelRange.location forKey:@"labelRange_location"];
  [coderCopy encodeInteger:self->_labelRange.length forKey:@"labelRange_length"];
  [coderCopy encodeInteger:self->_valueRange.location forKey:@"valueRange_location"];
  [coderCopy encodeInteger:self->_valueRange.length forKey:@"valueRange_length"];
  [coderCopy encodeObject:self->_labelString forKey:@"labelString"];
  [coderCopy encodeObject:self->_valueString forKey:@"valueString"];
  [coderCopy encodeInt64:self->_parsecDomain forKey:@"parsecDomain"];
  [coderCopy encodeObject:self->_parsecWikidataQid forKey:@"parsecWikidataQid"];
  [coderCopy encodeBool:self->_allDay forKey:@"allDay"];
  [coderCopy encodeBool:self->_inferredDate forKey:@"inferredDate"];
  [coderCopy encodeBool:self->_approximateTime forKey:@"approximateTime"];
  [coderCopy encodeBool:self->_partialDate forKey:@"partialDate"];
  [coderCopy encodeObject:self->_postalAddressComponents forKey:@"postalAddressComponents"];
  [coderCopy encodeObject:self->_detectedDate forKey:@"detectedDate"];
  [coderCopy encodeObject:self->_detectedTimeZone forKey:@"detectedTimeZone"];
  [coderCopy encodeObject:self->_detectedEndDate forKey:@"detectedEndDate"];
  [coderCopy encodeObject:self->_detectedEndTimeZone forKey:@"detectedEndTimeZone"];
}

- (SGDataDetectorMatch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = SGDataDetectorMatch;
  v5 = [(SGDataDetectorMatch *)&v37 init];
  if (v5)
  {
    v5->_matchType = [coderCopy decodeInt64ForKey:@"matchType"];
    v6 = [coderCopy decodeIntegerForKey:@"range_location"];
    v7 = [coderCopy decodeIntegerForKey:@"range_length"];
    v5->_range.location = v6;
    v5->_range.length = v7;
    v8 = [coderCopy decodeIntegerForKey:@"labelRange_location"];
    v9 = [coderCopy decodeIntegerForKey:@"labelRange_length"];
    v5->_labelRange.location = v8;
    v5->_labelRange.length = v9;
    v10 = [coderCopy decodeIntegerForKey:@"valueRange_location"];
    v11 = [coderCopy decodeIntegerForKey:@"valueRange_length"];
    v5->_valueRange.location = v10;
    v5->_valueRange.length = v11;
    v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"labelString"];
    labelString = v5->_labelString;
    v5->_labelString = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"valueString"];
    valueString = v5->_valueString;
    v5->_valueString = v16;

    v5->_parsecDomain = [coderCopy decodeInt64ForKey:@"parsecDomain"];
    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"parsecWikidataQid"];
    parsecWikidataQid = v5->_parsecWikidataQid;
    v5->_parsecWikidataQid = v19;

    v5->_allDay = [coderCopy decodeBoolForKey:@"allDay"];
    v5->_inferredDate = [coderCopy decodeBoolForKey:@"inferredDate"];
    v5->_approximateTime = [coderCopy decodeBoolForKey:@"approximateTime"];
    v5->_partialDate = [coderCopy decodeBoolForKey:@"partialDate"];
    v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"postalAddressComponents"];
    postalAddressComponents = v5->_postalAddressComponents;
    v5->_postalAddressComponents = v22;

    v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"detectedDate"];
    detectedDate = v5->_detectedDate;
    v5->_detectedDate = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"detectedTimeZone"];
    detectedTimeZone = v5->_detectedTimeZone;
    v5->_detectedTimeZone = v28;

    v30 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"detectedEndDate"];
    detectedEndDate = v5->_detectedEndDate;
    v5->_detectedEndDate = v31;

    v33 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"detectedEndTimeZone"];
    detectedEndTimeZone = v5->_detectedEndTimeZone;
    v5->_detectedEndTimeZone = v34;
  }

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGDataDetectorMatch/%i %i-%i", self->_matchType, self->_range.location, self->_range.length + self->_range.location];

  return v2;
}

- (SGDataDetectorMatch)initWithMatchType:(unsigned int)type range:(_NSRange)range labelRange:(_NSRange)labelRange labelString:(id)string valueRange:(_NSRange)valueRange valueString:(id)valueString postalAddressComponents:(id)components
{
  length = labelRange.length;
  location = labelRange.location;
  v11 = range.length;
  v12 = range.location;
  stringCopy = string;
  valueStringCopy = valueString;
  componentsCopy = components;
  v22.receiver = self;
  v22.super_class = SGDataDetectorMatch;
  v17 = [(SGDataDetectorMatch *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_matchType = type;
    v17->_range.location = v12;
    v17->_range.length = v11;
    v17->_labelRange.location = location;
    v17->_labelRange.length = length;
    v17->_valueRange = valueRange;
    objc_storeStrong(&v17->_labelString, string);
    objc_storeStrong(&v18->_valueString, valueString);
    v18->_parsecDomain = -1;
    objc_storeStrong(&v18->_postalAddressComponents, components);
  }

  return v18;
}

- (SGDataDetectorMatch)initWithDetectedDate:(id)date detectedTimeZone:(id)zone detectedEndDate:(id)endDate detectedEndTimeZone:(id)timeZone matchType:(unsigned int)type range:(_NSRange)range labelRange:(_NSRange)labelRange labelString:(id)self0 valueRange:(_NSRange)self1 valueString:(id)self2 allDay:(BOOL)self3 inferredDate:(BOOL)self4 approximateTime:(BOOL)self5 partialDate:(BOOL)self6
{
  dateCopy = date;
  zoneCopy = zone;
  endDateCopy = endDate;
  obj = timeZone;
  timeZoneCopy = timeZone;
  stringCopy = string;
  valueStringCopy = valueString;
  v32.receiver = self;
  v32.super_class = SGDataDetectorMatch;
  v26 = [(SGDataDetectorMatch *)&v32 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_detectedDate, date);
    objc_storeStrong(&v27->_detectedTimeZone, zone);
    objc_storeStrong(&v27->_detectedEndDate, endDate);
    objc_storeStrong(&v27->_detectedEndTimeZone, obj);
    v27->_matchType = type;
    v27->_range = range;
    v27->_labelRange = labelRange;
    v27->_valueRange = valueRange;
    objc_storeStrong(&v27->_labelString, string);
    objc_storeStrong(&v27->_valueString, valueString);
    v27->_parsecDomain = -1;
    v27->_allDay = day;
    v27->_inferredDate = inferredDate;
    v27->_approximateTime = time;
    v27->_partialDate = partialDate;
  }

  return v27;
}

- (SGDataDetectorMatch)initWithLookupHintInDomain:(int)domain range:(_NSRange)range labelRange:(_NSRange)labelRange labelString:(id)string valueRange:(_NSRange)valueRange valueString:(id)valueString qid:(id)qid
{
  length = labelRange.length;
  location = labelRange.location;
  v11 = range.length;
  v12 = range.location;
  stringCopy = string;
  valueStringCopy = valueString;
  qidCopy = qid;
  v22.receiver = self;
  v22.super_class = SGDataDetectorMatch;
  v17 = [(SGDataDetectorMatch *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_matchType = 6;
    v17->_range.location = v12;
    v17->_range.length = v11;
    v17->_labelRange.location = location;
    v17->_labelRange.length = length;
    v17->_valueRange = valueRange;
    objc_storeStrong(&v17->_labelString, string);
    objc_storeStrong(&v18->_valueString, valueString);
    v18->_parsecDomain = domain;
    objc_storeStrong(&v18->_parsecWikidataQid, qid);
  }

  return v18;
}

- (SGDataDetectorMatch)initWithMatchType:(unsigned int)type range:(_NSRange)range labelRange:(_NSRange)labelRange labelString:(id)string valueRange:(_NSRange)valueRange valueString:(id)valueString
{
  length = labelRange.length;
  location = labelRange.location;
  v11 = range.length;
  v12 = range.location;
  stringCopy = string;
  valueStringCopy = valueString;
  v20.receiver = self;
  v20.super_class = SGDataDetectorMatch;
  v17 = [(SGDataDetectorMatch *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_matchType = type;
    v17->_range.location = v12;
    v17->_range.length = v11;
    v17->_labelRange.location = location;
    v17->_labelRange.length = length;
    v17->_valueRange = valueRange;
    objc_storeStrong(&v17->_labelString, string);
    objc_storeStrong(&v18->_valueString, valueString);
    v18->_parsecDomain = -1;
  }

  return v18;
}

+ (BOOL)stringHasDatesOrTimes:(id)times
{
  timesCopy = times;
  if ([timesCopy length])
  {
    ScannerRefAndAcquire = getScannerRefAndAcquire();
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v5 = *MEMORY[0x277D041E8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__SGDataDetectorMatch_stringHasDatesOrTimes___block_invoke;
    v8[3] = &unk_278950FB0;
    v8[4] = &v9;
    SGDataDetectorsScan(ScannerRefAndAcquire, timesCopy, v5, v8);
    releaseScannerRef(ScannerRefAndAcquire);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL __45__SGDataDetectorMatch_stringHasDatesOrTimes___block_invoke(uint64_t a1)
{
  Category = DDResultGetCategory();
  if (Category == 4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return Category != 4;
}

+ (id)_detectionsInPlainText:(id)text withEligibleRegions:(id)regions ddSignature:(_NSRange *)signature baseDate:(id)date
{
  textCopy = text;
  regionsCopy = regions;
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] now];
  }

  v12 = objc_opt_new();
  ScannerRefAndAcquire = getScannerRefAndAcquire();
  if (signature)
  {
    *signature = xmmword_232106CE0;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v15);
    }
  }

  else
  {
    Mutable = 0;
  }

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __87__SGDataDetectorMatch__detectionsInPlainText_withEligibleRegions_ddSignature_baseDate___block_invoke;
  v24 = &unk_27894CB90;
  v28 = ScannerRefAndAcquire;
  v16 = textCopy;
  v25 = v16;
  v29 = Mutable;
  v17 = dateCopy;
  v26 = v17;
  v18 = v12;
  v27 = v18;
  signatureCopy = signature;
  [regionsCopy enumerateRangesUsingBlock:&v21];

  releaseScannerRef(ScannerRefAndAcquire);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  matches = [v18 matches];

  return matches;
}

void __87__SGDataDetectorMatch__detectionsInPlainText_withEligibleRegions_ddSignature_baseDate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v60 = *MEMORY[0x277D85DE8];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __87__SGDataDetectorMatch__detectionsInPlainText_withEligibleRegions_ddSignature_baseDate___block_invoke_2;
  v50[3] = &unk_27894CB68;
  v6 = *(a1 + 56);
  v53 = *(a1 + 64);
  v7 = *(a1 + 32);
  v51 = *(a1 + 40);
  v52 = *(v5 + 48);
  SGDataDetectorsScanRange(v6, v7, a2, a3, 3, v50);
  v8 = *(v5 + 64);
  if (v8 && *(v5 + 72))
  {
    Count = CFArrayGetCount(v8);
    if (Count == 1)
    {
      v10 = *(v5 + 72);
      CFArrayGetValueAtIndex(*(v5 + 64), 0);
      Range = DDResultGetRange();
      *v10 = SGRangeFromCFRange(Range, v12);
      v10[1] = v13;
    }

    else
    {
      v14 = Count;
      if (Count >= 2)
      {
        v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = *MEMORY[0x277D04160];
        v44 = v5;
        v45 = v14;
        v43 = v15;
        do
        {
          v20 = objc_opt_new();
          CFArrayGetValueAtIndex(*(v5 + 64), v18);
          SubResults = DDResultGetSubResults();
          if (SubResults)
          {
            v22 = SubResults;
            v23 = CFArrayGetCount(SubResults);
            if (v23 > v17)
            {
              v17 = v23;
              v16 = v18;
            }

            if (v23 >= 1)
            {
              v24 = v23;
              v25 = v17;
              v26 = v16;
              for (i = 0; i != v24; ++i)
              {
                CFArrayGetValueAtIndex(v22, i);
                if (DDResultHasType())
                {
                  *buf = 0;
                  if (DDResultCopyPhoneValue())
                  {
                    v28 = *buf;
                    if (*buf)
                    {
                      v29 = SGNormalizePhoneNumber();
                      [v20 addObject:v29];
                    }
                  }
                }
              }

              v16 = v26;
              v17 = v25;
              v5 = v44;
              v14 = v45;
              v15 = v43;
            }
          }

          [v15 addObject:v20];

          ++v18;
        }

        while (v18 != v14);
        v30 = v17;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = v15;
        v32 = [v31 countByEnumeratingWithState:&v46 objects:v59 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = *v47;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v47 != v35)
              {
                objc_enumerationMutation(v31);
              }

              if (v34)
              {
                [v34 intersectSet:*(*(&v46 + 1) + 8 * j)];
              }

              else
              {
                v34 = [*(*(&v46 + 1) + 8 * j) mutableCopy];
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v46 objects:v59 count:16];
          }

          while (v33);
        }

        else
        {
          v34 = 0;
        }

        if ([v34 count] && v30 >= 1)
        {
          v37 = sgLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109632;
            *&buf[4] = v45;
            v55 = 1024;
            v56 = v16;
            v57 = 1024;
            v58 = v30;
            _os_log_debug_impl(&dword_231E60000, v37, OS_LOG_TYPE_DEBUG, "Found %i DD sigs for same person. Using sig %i with %i subresults", buf, 0x14u);
          }

          v38 = *(v5 + 72);
          CFArrayGetValueAtIndex(*(v5 + 64), v16);
          v39 = DDResultGetRange();
          *v38 = SGRangeFromCFRange(v39, v40);
          v38[1] = v41;
        }
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

uint64_t __87__SGDataDetectorMatch__detectionsInPlainText_withEligibleRegions_ddSignature_baseDate___block_invoke_2(uint64_t a1, const void *a2)
{
  v4 = *MEMORY[0x277D04170];
  if (DDResultHasType())
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      CFArrayAppendValue(v5, a2);
    }

    SubResults = DDResultGetSubResults();
    if (SubResults)
    {
      v7 = SubResults;
      Count = CFArrayGetCount(SubResults);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
          v12 = matchFromSimpleDDResult(ValueAtIndex, *(a1 + 32));
          if (v12)
          {
            [*(a1 + 40) coalesceAddress:ValueAtIndex orAppendMatch:v12];
          }
        }
      }
    }
  }

  else
  {
    v13 = matchFromSimpleDDResult(a2, *(a1 + 32));
    if (v13)
    {
      [*(a1 + 40) coalesceAddress:a2 orAppendMatch:v13];
    }
  }

  return 1;
}

+ (id)detectionsAndSignatureInText:(id)text eligibleRegions:(id)regions baseDate:(id)date
{
  dateCopy = date;
  regionsCopy = regions;
  textCopy = text;
  v11 = objc_opt_new();
  v14 = xmmword_232106CE0;
  v12 = [self _detectionsInPlainText:textCopy withEligibleRegions:regionsCopy ddSignature:&v14 baseDate:dateCopy];

  [v11 setMatches:v12];
  [v11 setSignatureRange:v14];

  return v11;
}

+ (id)detectionsInPlainText:(id)text baseDate:(id)date
{
  v6 = MEMORY[0x277CCAA78];
  dateCopy = date;
  textCopy = text;
  v9 = [[v6 alloc] initWithIndexesInRange:{0, objc_msgSend(textCopy, "length")}];
  v10 = [self _detectionsInPlainText:textCopy withEligibleRegions:v9 ddSignature:0 baseDate:dateCopy];

  return v10;
}

+ (void)resetUnusedScannersForTesting
{
  pthread_mutex_lock(&scannerPoolLock);
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = sharedScanners[v2];
    if (v5 && (scannerInUse[v2] & 1) == 0)
    {
      sharedScanners[v2] = 0;
    }

    v3 = 0;
    v2 = 1u;
  }

  while ((v4 & 1) != 0);

  pthread_mutex_unlock(&scannerPoolLock);
}

+ (BOOL)approximateTimeForDataDetectorResult:(__DDResult *)result
{
  SubResults = DDResultGetSubResults();
  if (!SubResults)
  {
    return DDResultTimeIsApprox() != 0;
  }

  v4 = SubResults;
  Count = CFArrayGetCount(SubResults);
  v6 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    CFArrayGetValueAtIndex(v4, v7);
    IsApprox = DDResultTimeIsApprox();
    result = IsApprox != 0;
    if (IsApprox)
    {
      break;
    }
  }

  while (v6 != v7++);
  return result;
}

+ (BOOL)partialDateForDataDetectorResult:(__DDResult *)result
{
  v3 = *MEMORY[0x277D040B0];
  if (DDResultHasType())
  {
    v4 = *MEMORY[0x277D040A8];
    DDResultGetSubresultWithType();
  }

  v5 = CFStringCreateWithCString(0, "PartialDate", 0x8000100u);
  v6 = CFStringCreateWithCString(0, "RelativeDayOfWeek", 0x8000100u);
  v8 = 1;
  if (!DDResultGetSubresultWithType() && !DDResultGetSubresultWithType())
  {
    v7 = *MEMORY[0x277D040A8];
    DDResultGetSubresultWithType();
    if (!DDResultGetSubresultWithType())
    {
      v8 = 0;
    }
  }

  CFRelease(v5);
  CFRelease(v6);
  return v8;
}

+ (BOOL)inferredDateForDataDetectorResult:(__DDResult *)result
{
  v3 = CFTimeZoneCopyDefault();
  if (calendarsAndFormatters_onceToken != -1)
  {
    dispatch_once(&calendarsAndFormatters_onceToken, &__block_literal_global_9187);
  }

  v4 = calendarsAndFormatters_result_0;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [v4 components:28 fromDate:distantPast];
  v7 = SGDataDetectorsGetDate();
  CFRelease(v3);
  if (v7)
  {
    v8 = [v4 components:28 fromDate:v7];
    year = [v8 year];
    if (year == [v6 year] && (v10 = objc_msgSend(v8, "month"), v10 == objc_msgSend(v6, "month")))
    {
      v11 = [v8 day];
      v12 = v11 == [v6 day];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
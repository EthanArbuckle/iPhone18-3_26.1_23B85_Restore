@interface SGDataDetectorMatch
+ (BOOL)approximateTimeForDataDetectorResult:(__DDResult *)a3;
+ (BOOL)inferredDateForDataDetectorResult:(__DDResult *)a3;
+ (BOOL)partialDateForDataDetectorResult:(__DDResult *)a3;
+ (BOOL)stringHasDatesOrTimes:(id)a3;
+ (id)_detectionsInPlainText:(id)a3 withEligibleRegions:(id)a4 ddSignature:(_NSRange *)a5 baseDate:(id)a6;
+ (id)detectionsAndSignatureInText:(id)a3 eligibleRegions:(id)a4 baseDate:(id)a5;
+ (id)detectionsInPlainText:(id)a3 baseDate:(id)a4;
+ (void)resetUnusedScannersForTesting;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDataDetectorMatch:(id)a3;
- (SGDataDetectorMatch)initWithCoder:(id)a3;
- (SGDataDetectorMatch)initWithDetectedDate:(id)a3 detectedTimeZone:(id)a4 detectedEndDate:(id)a5 detectedEndTimeZone:(id)a6 matchType:(unsigned int)a7 range:(_NSRange)a8 labelRange:(_NSRange)a9 labelString:(id)a10 valueRange:(_NSRange)a11 valueString:(id)a12 allDay:(BOOL)a13 inferredDate:(BOOL)a14 approximateTime:(BOOL)a15 partialDate:(BOOL)a16;
- (SGDataDetectorMatch)initWithLookupHintInDomain:(int)a3 range:(_NSRange)a4 labelRange:(_NSRange)a5 labelString:(id)a6 valueRange:(_NSRange)a7 valueString:(id)a8 qid:(id)a9;
- (SGDataDetectorMatch)initWithMatchType:(unsigned int)a3 range:(_NSRange)a4 labelRange:(_NSRange)a5 labelString:(id)a6 valueRange:(_NSRange)a7 valueString:(id)a8;
- (SGDataDetectorMatch)initWithMatchType:(unsigned int)a3 range:(_NSRange)a4 labelRange:(_NSRange)a5 labelString:(id)a6 valueRange:(_NSRange)a7 valueString:(id)a8 postalAddressComponents:(id)a9;
- (_NSRange)labelRange;
- (_NSRange)range;
- (_NSRange)valueRange;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(SGDataDetectorMatch *)self matchType];
  v4 = [(SGDataDetectorMatch *)self range];
  [(SGDataDetectorMatch *)self range];
  return (v5 ^ v4) - v3 + 32 * v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGDataDetectorMatch *)self isEqualToDataDetectorMatch:v5];
  }

  return v6;
}

- (BOOL)isEqualToDataDetectorMatch:(id)a3
{
  v7 = a3;
  if (v7 && (v8 = -[SGDataDetectorMatch matchType](self, "matchType"), v8 == [v7 matchType]))
  {
    v9 = [(SGDataDetectorMatch *)self range];
    v11 = v10;
    v13 = 0;
    if (v9 == [v7 range] && v11 == v12)
    {
      v14 = [(SGDataDetectorMatch *)self labelRange];
      v16 = v15;
      v13 = 0;
      if (v14 == [v7 labelRange] && v16 == v17)
      {
        v18 = [(SGDataDetectorMatch *)self valueRange];
        v20 = v19;
        v13 = 0;
        if (v18 == [v7 valueRange] && v20 == v21)
        {
          v22 = [(SGDataDetectorMatch *)self labelString];
          v23 = [v7 labelString];
          if (v22 != v23)
          {
            v3 = [(SGDataDetectorMatch *)self labelString];
            v4 = [v7 labelString];
            if (![v3 isEqual:v4])
            {
              v13 = 0;
              goto LABEL_24;
            }
          }

          v25 = [(SGDataDetectorMatch *)self valueString];
          v26 = [v7 valueString];
          if (v25 != v26)
          {
            v27 = [(SGDataDetectorMatch *)self valueString];
            v5 = [v7 valueString];
            v84 = v27;
            if (![v27 isEqual:v5])
            {
              v13 = 0;
              goto LABEL_22;
            }
          }

          v28 = [(SGDataDetectorMatch *)self parsecDomain];
          if (v28 != [v7 parsecDomain])
          {
            v13 = 0;
            if (v25 == v26)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          v29 = [(SGDataDetectorMatch *)self parsecWikidataQid];
          v82 = [v7 parsecWikidataQid];
          v83 = v5;
          v81 = v3;
          if (v29 == v82)
          {
            v80 = v29;
          }

          else
          {
            v76 = v22;
            v30 = v26;
            v31 = v25;
            v32 = v4;
            v33 = [(SGDataDetectorMatch *)self parsecWikidataQid];
            [v7 parsecWikidataQid];
            v78 = v79 = v33;
            if (![v33 isEqual:?])
            {
              v39 = v29;
              v13 = 0;
              v40 = v82;
              v4 = v32;
              v25 = v31;
              v26 = v30;
              v22 = v76;
              goto LABEL_35;
            }

            v80 = v29;
            v4 = v32;
            v25 = v31;
            v26 = v30;
            v22 = v76;
          }

          v34 = [(SGDataDetectorMatch *)self allDay];
          if (v34 != [v7 allDay] || (v35 = -[SGDataDetectorMatch inferredDate](self, "inferredDate"), v35 != objc_msgSend(v7, "inferredDate")) || (v36 = -[SGDataDetectorMatch approximateTime](self, "approximateTime"), v36 != objc_msgSend(v7, "approximateTime")) || (v37 = -[SGDataDetectorMatch partialDate](self, "partialDate"), v37 != objc_msgSend(v7, "partialDate")))
          {
            v13 = 0;
            v38 = 0;
            goto LABEL_32;
          }

          v41 = [(SGDataDetectorMatch *)self postalAddressComponents];
          v74 = [v7 postalAddressComponents];
          v75 = v41;
          if (v41 != v74)
          {
            v42 = [(SGDataDetectorMatch *)self postalAddressComponents];
            v70 = [v7 postalAddressComponents];
            v71 = v42;
            if (![v42 isEqual:?])
            {
              v13 = 0;
              v44 = v74;
              v43 = v75;
              goto LABEL_60;
            }
          }

          v45 = [(SGDataDetectorMatch *)self detectedDate];
          v72 = [v7 detectedDate];
          v73 = v45;
          if (v45 != v72)
          {
            v46 = [(SGDataDetectorMatch *)self detectedDate];
            v66 = [v7 detectedDate];
            v67 = v46;
            if (![v46 isEqual:?])
            {
              v47 = v72;
              v48 = v73;
              v13 = 0;
              v44 = v74;
LABEL_58:

LABEL_59:
              v43 = v75;
              if (v75 == v44)
              {
LABEL_61:

                v38 = v13;
LABEL_32:
                v39 = v80;
                v40 = v82;
                if (v80 == v82)
                {

                  v13 = v38;
                  goto LABEL_36;
                }

LABEL_35:

LABEL_36:
                v5 = v83;
                v3 = v81;
                if (v25 == v26)
                {
LABEL_23:

                  if (v22 == v23)
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

          v49 = [(SGDataDetectorMatch *)self detectedTimeZone];
          v68 = [v7 detectedTimeZone];
          v69 = v49;
          if (v49 != v68)
          {
            v50 = [(SGDataDetectorMatch *)self detectedTimeZone];
            v62 = [v7 detectedTimeZone];
            v63 = v50;
            if (![v50 isEqual:?])
            {
              v13 = 0;
              v48 = v73;
              v44 = v74;
              v51 = v68;
LABEL_56:

LABEL_57:
              v47 = v72;
              if (v48 == v72)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }
          }

          v52 = [(SGDataDetectorMatch *)self detectedEndDate];
          [v7 detectedEndDate];
          v65 = v64 = v52;
          v77 = v22;
          if (v52 == v65 || (-[SGDataDetectorMatch detectedEndDate](self, "detectedEndDate"), v53 = objc_claimAutoreleasedReturnValue(), [v7 detectedEndDate], v60 = objc_claimAutoreleasedReturnValue(), v61 = v53, objc_msgSend(v53, "isEqual:")))
          {
            v55 = [(SGDataDetectorMatch *)self detectedEndTimeZone];
            v56 = [v7 detectedEndTimeZone];
            v57 = v56;
            if (v55 == v56)
            {

              v13 = 1;
            }

            else
            {
              v58 = [(SGDataDetectorMatch *)self detectedEndTimeZone];
              v59 = [v7 detectedEndTimeZone];
              v13 = [v58 isEqual:v59];
            }

            v52 = v64;
            v54 = v65;
            v22 = v77;
            v44 = v74;
            if (v64 == v65)
            {
LABEL_55:

              v51 = v68;
              v48 = v73;
              if (v69 == v68)
              {
                goto LABEL_57;
              }

              goto LABEL_56;
            }
          }

          else
          {
            v13 = 0;
            v44 = v74;
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

- (void)encodeWithCoder:(id)a3
{
  matchType = self->_matchType;
  v5 = a3;
  [v5 encodeInt64:matchType forKey:@"matchType"];
  [v5 encodeInteger:self->_range.location forKey:@"range_location"];
  [v5 encodeInteger:self->_range.length forKey:@"range_length"];
  [v5 encodeInteger:self->_labelRange.location forKey:@"labelRange_location"];
  [v5 encodeInteger:self->_labelRange.length forKey:@"labelRange_length"];
  [v5 encodeInteger:self->_valueRange.location forKey:@"valueRange_location"];
  [v5 encodeInteger:self->_valueRange.length forKey:@"valueRange_length"];
  [v5 encodeObject:self->_labelString forKey:@"labelString"];
  [v5 encodeObject:self->_valueString forKey:@"valueString"];
  [v5 encodeInt64:self->_parsecDomain forKey:@"parsecDomain"];
  [v5 encodeObject:self->_parsecWikidataQid forKey:@"parsecWikidataQid"];
  [v5 encodeBool:self->_allDay forKey:@"allDay"];
  [v5 encodeBool:self->_inferredDate forKey:@"inferredDate"];
  [v5 encodeBool:self->_approximateTime forKey:@"approximateTime"];
  [v5 encodeBool:self->_partialDate forKey:@"partialDate"];
  [v5 encodeObject:self->_postalAddressComponents forKey:@"postalAddressComponents"];
  [v5 encodeObject:self->_detectedDate forKey:@"detectedDate"];
  [v5 encodeObject:self->_detectedTimeZone forKey:@"detectedTimeZone"];
  [v5 encodeObject:self->_detectedEndDate forKey:@"detectedEndDate"];
  [v5 encodeObject:self->_detectedEndTimeZone forKey:@"detectedEndTimeZone"];
}

- (SGDataDetectorMatch)initWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SGDataDetectorMatch;
  v5 = [(SGDataDetectorMatch *)&v37 init];
  if (v5)
  {
    v5->_matchType = [v4 decodeInt64ForKey:@"matchType"];
    v6 = [v4 decodeIntegerForKey:@"range_location"];
    v7 = [v4 decodeIntegerForKey:@"range_length"];
    v5->_range.location = v6;
    v5->_range.length = v7;
    v8 = [v4 decodeIntegerForKey:@"labelRange_location"];
    v9 = [v4 decodeIntegerForKey:@"labelRange_length"];
    v5->_labelRange.location = v8;
    v5->_labelRange.length = v9;
    v10 = [v4 decodeIntegerForKey:@"valueRange_location"];
    v11 = [v4 decodeIntegerForKey:@"valueRange_length"];
    v5->_valueRange.location = v10;
    v5->_valueRange.length = v11;
    v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"labelString"];
    labelString = v5->_labelString;
    v5->_labelString = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"valueString"];
    valueString = v5->_valueString;
    v5->_valueString = v16;

    v5->_parsecDomain = [v4 decodeInt64ForKey:@"parsecDomain"];
    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"parsecWikidataQid"];
    parsecWikidataQid = v5->_parsecWikidataQid;
    v5->_parsecWikidataQid = v19;

    v5->_allDay = [v4 decodeBoolForKey:@"allDay"];
    v5->_inferredDate = [v4 decodeBoolForKey:@"inferredDate"];
    v5->_approximateTime = [v4 decodeBoolForKey:@"approximateTime"];
    v5->_partialDate = [v4 decodeBoolForKey:@"partialDate"];
    v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"postalAddressComponents"];
    postalAddressComponents = v5->_postalAddressComponents;
    v5->_postalAddressComponents = v22;

    v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"detectedDate"];
    detectedDate = v5->_detectedDate;
    v5->_detectedDate = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"detectedTimeZone"];
    detectedTimeZone = v5->_detectedTimeZone;
    v5->_detectedTimeZone = v28;

    v30 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"detectedEndDate"];
    detectedEndDate = v5->_detectedEndDate;
    v5->_detectedEndDate = v31;

    v33 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"detectedEndTimeZone"];
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

- (SGDataDetectorMatch)initWithMatchType:(unsigned int)a3 range:(_NSRange)a4 labelRange:(_NSRange)a5 labelString:(id)a6 valueRange:(_NSRange)a7 valueString:(id)a8 postalAddressComponents:(id)a9
{
  length = a5.length;
  location = a5.location;
  v11 = a4.length;
  v12 = a4.location;
  v21 = a6;
  v15 = a8;
  v16 = a9;
  v22.receiver = self;
  v22.super_class = SGDataDetectorMatch;
  v17 = [(SGDataDetectorMatch *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_matchType = a3;
    v17->_range.location = v12;
    v17->_range.length = v11;
    v17->_labelRange.location = location;
    v17->_labelRange.length = length;
    v17->_valueRange = a7;
    objc_storeStrong(&v17->_labelString, a6);
    objc_storeStrong(&v18->_valueString, a8);
    v18->_parsecDomain = -1;
    objc_storeStrong(&v18->_postalAddressComponents, a9);
  }

  return v18;
}

- (SGDataDetectorMatch)initWithDetectedDate:(id)a3 detectedTimeZone:(id)a4 detectedEndDate:(id)a5 detectedEndTimeZone:(id)a6 matchType:(unsigned int)a7 range:(_NSRange)a8 labelRange:(_NSRange)a9 labelString:(id)a10 valueRange:(_NSRange)a11 valueString:(id)a12 allDay:(BOOL)a13 inferredDate:(BOOL)a14 approximateTime:(BOOL)a15 partialDate:(BOOL)a16
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  obj = a6;
  v24 = a6;
  v25 = a10;
  v31 = a12;
  v32.receiver = self;
  v32.super_class = SGDataDetectorMatch;
  v26 = [(SGDataDetectorMatch *)&v32 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_detectedDate, a3);
    objc_storeStrong(&v27->_detectedTimeZone, a4);
    objc_storeStrong(&v27->_detectedEndDate, a5);
    objc_storeStrong(&v27->_detectedEndTimeZone, obj);
    v27->_matchType = a7;
    v27->_range = a8;
    v27->_labelRange = a9;
    v27->_valueRange = a11;
    objc_storeStrong(&v27->_labelString, a10);
    objc_storeStrong(&v27->_valueString, a12);
    v27->_parsecDomain = -1;
    v27->_allDay = a13;
    v27->_inferredDate = a14;
    v27->_approximateTime = a15;
    v27->_partialDate = a16;
  }

  return v27;
}

- (SGDataDetectorMatch)initWithLookupHintInDomain:(int)a3 range:(_NSRange)a4 labelRange:(_NSRange)a5 labelString:(id)a6 valueRange:(_NSRange)a7 valueString:(id)a8 qid:(id)a9
{
  length = a5.length;
  location = a5.location;
  v11 = a4.length;
  v12 = a4.location;
  v14 = a6;
  v15 = a8;
  v16 = a9;
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
    v17->_valueRange = a7;
    objc_storeStrong(&v17->_labelString, a6);
    objc_storeStrong(&v18->_valueString, a8);
    v18->_parsecDomain = a3;
    objc_storeStrong(&v18->_parsecWikidataQid, a9);
  }

  return v18;
}

- (SGDataDetectorMatch)initWithMatchType:(unsigned int)a3 range:(_NSRange)a4 labelRange:(_NSRange)a5 labelString:(id)a6 valueRange:(_NSRange)a7 valueString:(id)a8
{
  length = a5.length;
  location = a5.location;
  v11 = a4.length;
  v12 = a4.location;
  v15 = a6;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = SGDataDetectorMatch;
  v17 = [(SGDataDetectorMatch *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_matchType = a3;
    v17->_range.location = v12;
    v17->_range.length = v11;
    v17->_labelRange.location = location;
    v17->_labelRange.length = length;
    v17->_valueRange = a7;
    objc_storeStrong(&v17->_labelString, a6);
    objc_storeStrong(&v18->_valueString, a8);
    v18->_parsecDomain = -1;
  }

  return v18;
}

+ (BOOL)stringHasDatesOrTimes:(id)a3
{
  v3 = a3;
  if ([v3 length])
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
    SGDataDetectorsScan(ScannerRefAndAcquire, v3, v5, v8);
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

+ (id)_detectionsInPlainText:(id)a3 withEligibleRegions:(id)a4 ddSignature:(_NSRange *)a5 baseDate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEAA8] now];
  }

  v12 = objc_opt_new();
  ScannerRefAndAcquire = getScannerRefAndAcquire();
  if (a5)
  {
    *a5 = xmmword_232106CE0;
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
  v16 = v9;
  v25 = v16;
  v29 = Mutable;
  v17 = v11;
  v26 = v17;
  v18 = v12;
  v27 = v18;
  v30 = a5;
  [v10 enumerateRangesUsingBlock:&v21];

  releaseScannerRef(ScannerRefAndAcquire);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v19 = [v18 matches];

  return v19;
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

+ (id)detectionsAndSignatureInText:(id)a3 eligibleRegions:(id)a4 baseDate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v14 = xmmword_232106CE0;
  v12 = [a1 _detectionsInPlainText:v10 withEligibleRegions:v9 ddSignature:&v14 baseDate:v8];

  [v11 setMatches:v12];
  [v11 setSignatureRange:v14];

  return v11;
}

+ (id)detectionsInPlainText:(id)a3 baseDate:(id)a4
{
  v6 = MEMORY[0x277CCAA78];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithIndexesInRange:{0, objc_msgSend(v8, "length")}];
  v10 = [a1 _detectionsInPlainText:v8 withEligibleRegions:v9 ddSignature:0 baseDate:v7];

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

+ (BOOL)approximateTimeForDataDetectorResult:(__DDResult *)a3
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

+ (BOOL)partialDateForDataDetectorResult:(__DDResult *)a3
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

+ (BOOL)inferredDateForDataDetectorResult:(__DDResult *)a3
{
  v3 = CFTimeZoneCopyDefault();
  if (calendarsAndFormatters_onceToken != -1)
  {
    dispatch_once(&calendarsAndFormatters_onceToken, &__block_literal_global_9187);
  }

  v4 = calendarsAndFormatters_result_0;
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [v4 components:28 fromDate:v5];
  v7 = SGDataDetectorsGetDate();
  CFRelease(v3);
  if (v7)
  {
    v8 = [v4 components:28 fromDate:v7];
    v9 = [v8 year];
    if (v9 == [v6 year] && (v10 = objc_msgSend(v8, "month"), v10 == objc_msgSend(v6, "month")))
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
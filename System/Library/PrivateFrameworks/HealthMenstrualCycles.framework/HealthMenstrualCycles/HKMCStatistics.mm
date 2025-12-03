@interface HKMCStatistics
+ (id)_emptyStatistics;
- (BOOL)isEqual:(id)equal;
- (HKMCStatistics)initWithCoder:(id)coder;
- (HKMCStatistics)initWithNumberOfCycles:(int64_t)cycles firstMenstruationStartDayIndex:(id)index lastMenstruationStartDayIndex:(id)dayIndex cycleLengthMedian:(id)median cycleLengthLowerPercentile:(id)percentile cycleLengthUpperPercentile:(id)upperPercentile menstruationLengthMedian:(id)lengthMedian menstruationLengthLowerPercentile:(id)self0 menstruationLengthUpperPercentile:(id)self1;
- (NSString)hk_redactedDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMCStatistics

- (HKMCStatistics)initWithNumberOfCycles:(int64_t)cycles firstMenstruationStartDayIndex:(id)index lastMenstruationStartDayIndex:(id)dayIndex cycleLengthMedian:(id)median cycleLengthLowerPercentile:(id)percentile cycleLengthUpperPercentile:(id)upperPercentile menstruationLengthMedian:(id)lengthMedian menstruationLengthLowerPercentile:(id)self0 menstruationLengthUpperPercentile:(id)self1
{
  indexCopy = index;
  dayIndexCopy = dayIndex;
  medianCopy = median;
  percentileCopy = percentile;
  upperPercentileCopy = upperPercentile;
  lengthMedianCopy = lengthMedian;
  lowerPercentileCopy = lowerPercentile;
  lengthUpperPercentileCopy = lengthUpperPercentile;
  v29.receiver = self;
  v29.super_class = HKMCStatistics;
  v19 = [(HKMCStatistics *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v19->_numberOfCycles = cycles;
    objc_storeStrong(&v19->_firstMenstruationStartDayIndex, index);
    objc_storeStrong(&v20->_lastMenstruationStartDayIndex, dayIndex);
    objc_storeStrong(&v20->_cycleLengthMedian, median);
    objc_storeStrong(&v20->_cycleLengthLowerPercentile, percentile);
    objc_storeStrong(&v20->_cycleLengthUpperPercentile, upperPercentile);
    objc_storeStrong(&v20->_menstruationLengthMedian, lengthMedian);
    objc_storeStrong(&v20->_menstruationLengthLowerPercentile, lowerPercentile);
    objc_storeStrong(&v20->_menstruationLengthUpperPercentile, lengthUpperPercentile);
  }

  return v20;
}

+ (id)_emptyStatistics
{
  v2 = [[self alloc] initWithNumberOfCycles:0 firstMenstruationStartDayIndex:0 lastMenstruationStartDayIndex:0 cycleLengthMedian:0 cycleLengthLowerPercentile:0 cycleLengthUpperPercentile:0 menstruationLengthMedian:0 menstruationLengthLowerPercentile:0 menstruationLengthUpperPercentile:0];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  numberOfCycles = self->_numberOfCycles;
  coderCopy = coder;
  [coderCopy encodeInteger:numberOfCycles forKey:@"NumberOfCycles"];
  [coderCopy encodeObject:self->_firstMenstruationStartDayIndex forKey:@"FirstMenstruationStartDayIndex"];
  [coderCopy encodeObject:self->_lastMenstruationStartDayIndex forKey:@"LastMenstruationStartDayIndex"];
  [coderCopy encodeObject:self->_cycleLengthMedian forKey:@"CycleLengthMedian"];
  [coderCopy encodeObject:self->_cycleLengthLowerPercentile forKey:@"CycleLengthLowerPercentile"];
  [coderCopy encodeObject:self->_cycleLengthUpperPercentile forKey:@"CycleLengthUpperPercentile"];
  [coderCopy encodeObject:self->_menstruationLengthMedian forKey:@"MenstruationLengthMedian"];
  [coderCopy encodeObject:self->_menstruationLengthLowerPercentile forKey:@"MenstruationLengthLowerPercentile"];
  [coderCopy encodeObject:self->_menstruationLengthUpperPercentile forKey:@"MenstruationLengthUpperPercentile"];
}

- (HKMCStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HKMCStatistics;
  v5 = [(HKMCStatistics *)&v23 init];
  if (v5)
  {
    v5->_numberOfCycles = [coderCopy decodeIntegerForKey:@"NumberOfCycles"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstMenstruationStartDayIndex"];
    firstMenstruationStartDayIndex = v5->_firstMenstruationStartDayIndex;
    v5->_firstMenstruationStartDayIndex = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastMenstruationStartDayIndex"];
    lastMenstruationStartDayIndex = v5->_lastMenstruationStartDayIndex;
    v5->_lastMenstruationStartDayIndex = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CycleLengthMedian"];
    cycleLengthMedian = v5->_cycleLengthMedian;
    v5->_cycleLengthMedian = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CycleLengthLowerPercentile"];
    cycleLengthLowerPercentile = v5->_cycleLengthLowerPercentile;
    v5->_cycleLengthLowerPercentile = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CycleLengthUpperPercentile"];
    cycleLengthUpperPercentile = v5->_cycleLengthUpperPercentile;
    v5->_cycleLengthUpperPercentile = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MenstruationLengthMedian"];
    menstruationLengthMedian = v5->_menstruationLengthMedian;
    v5->_menstruationLengthMedian = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MenstruationLengthLowerPercentile"];
    menstruationLengthLowerPercentile = v5->_menstruationLengthLowerPercentile;
    v5->_menstruationLengthLowerPercentile = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MenstruationLengthUpperPercentile"];
    menstruationLengthUpperPercentile = v5->_menstruationLengthUpperPercentile;
    v5->_menstruationLengthUpperPercentile = v20;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfCycles];
  v6 = [v3 stringWithFormat:@"<%@:%p %@ cycles, firstMenstruationStart: %@, lastMenstruationStart: %@, cycleLength: %@ (%@ - %@) menstruationLength: %@ (%@ - %@)>", v4, self, v5, self->_firstMenstruationStartDayIndex, self->_lastMenstruationStartDayIndex, self->_cycleLengthMedian, self->_cycleLengthLowerPercentile, self->_cycleLengthUpperPercentile, self->_menstruationLengthMedian, self->_menstruationLengthLowerPercentile, self->_menstruationLengthUpperPercentile];

  return v6;
}

- (NSString)hk_redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfCycles];
  v6 = [v3 stringWithFormat:@"<%@:%p %@ cycles>", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      numberOfCycles = [(HKMCStatistics *)self numberOfCycles];
      if (numberOfCycles == [(HKMCStatistics *)equalCopy numberOfCycles])
      {
        firstMenstruationStartDayIndex = [(HKMCStatistics *)self firstMenstruationStartDayIndex];
        firstMenstruationStartDayIndex2 = [(HKMCStatistics *)equalCopy firstMenstruationStartDayIndex];
        v84 = firstMenstruationStartDayIndex != firstMenstruationStartDayIndex2;
        if (firstMenstruationStartDayIndex != firstMenstruationStartDayIndex2)
        {
          firstMenstruationStartDayIndex3 = [(HKMCStatistics *)equalCopy firstMenstruationStartDayIndex];
          if (!firstMenstruationStartDayIndex3)
          {
            v11 = 0;

            goto LABEL_105;
          }

          firstMenstruationStartDayIndex4 = [(HKMCStatistics *)self firstMenstruationStartDayIndex];
          firstMenstruationStartDayIndex5 = [(HKMCStatistics *)equalCopy firstMenstruationStartDayIndex];
          if (![firstMenstruationStartDayIndex4 isEqual:firstMenstruationStartDayIndex5])
          {
            v11 = 0;
LABEL_55:

LABEL_104:
            goto LABEL_105;
          }

          v80 = firstMenstruationStartDayIndex5;
          v81 = firstMenstruationStartDayIndex4;
        }

        lastMenstruationStartDayIndex = [(HKMCStatistics *)self lastMenstruationStartDayIndex];
        lastMenstruationStartDayIndex2 = [(HKMCStatistics *)equalCopy lastMenstruationStartDayIndex];
        if (lastMenstruationStartDayIndex != lastMenstruationStartDayIndex2)
        {
          lastMenstruationStartDayIndex3 = [(HKMCStatistics *)equalCopy lastMenstruationStartDayIndex];
          if (!lastMenstruationStartDayIndex3)
          {

            v11 = 0;
            if (firstMenstruationStartDayIndex == firstMenstruationStartDayIndex2)
            {
              v84 = 0;
              goto LABEL_103;
            }

            v84 = 1;
LABEL_102:

LABEL_103:
            if (v84)
            {
              goto LABEL_104;
            }

            goto LABEL_105;
          }

          v3 = lastMenstruationStartDayIndex3;
          lastMenstruationStartDayIndex4 = [(HKMCStatistics *)self lastMenstruationStartDayIndex];
          lastMenstruationStartDayIndex5 = [(HKMCStatistics *)equalCopy lastMenstruationStartDayIndex];
          v79 = lastMenstruationStartDayIndex4;
          if (![lastMenstruationStartDayIndex4 isEqual:?])
          {
            v11 = 0;
LABEL_53:

            goto LABEL_54;
          }
        }

        cycleLengthMedian = [(HKMCStatistics *)self cycleLengthMedian];
        [(HKMCStatistics *)equalCopy cycleLengthMedian];
        v83 = v82 = cycleLengthMedian;
        v17 = cycleLengthMedian != v83;
        if (cycleLengthMedian != v83)
        {
          cycleLengthMedian2 = [(HKMCStatistics *)equalCopy cycleLengthMedian];
          if (!cycleLengthMedian2)
          {

            v11 = 0;
            if (lastMenstruationStartDayIndex != lastMenstruationStartDayIndex2)
            {
              LOBYTE(v24) = 1;
              goto LABEL_99;
            }

            v24 = 0;
LABEL_107:
            if (!v24)
            {
              goto LABEL_101;
            }

LABEL_100:

            goto LABEL_101;
          }

          v73 = cycleLengthMedian2;
          cycleLengthMedian3 = [(HKMCStatistics *)self cycleLengthMedian];
          cycleLengthMedian4 = [(HKMCStatistics *)equalCopy cycleLengthMedian];
          v75 = cycleLengthMedian3;
          if (![cycleLengthMedian3 isEqual:?])
          {
            v11 = 0;
            v20 = v82;
            goto LABEL_52;
          }
        }

        cycleLengthLowerPercentile = [(HKMCStatistics *)self cycleLengthLowerPercentile];
        cycleLengthLowerPercentile2 = [(HKMCStatistics *)equalCopy cycleLengthLowerPercentile];
        v69 = cycleLengthLowerPercentile != cycleLengthLowerPercentile2;
        if (cycleLengthLowerPercentile == cycleLengthLowerPercentile2)
        {
          v70 = v17;
          v68 = v3;
        }

        else
        {
          cycleLengthLowerPercentile3 = [(HKMCStatistics *)equalCopy cycleLengthLowerPercentile];
          if (!cycleLengthLowerPercentile3)
          {

            v11 = 0;
            v20 = v82;
            if (v82 != v83)
            {
              LOBYTE(v30) = 1;
              goto LABEL_96;
            }

            v30 = 0;
            goto LABEL_109;
          }

          v70 = v17;
          v65 = cycleLengthLowerPercentile3;
          cycleLengthLowerPercentile4 = [(HKMCStatistics *)self cycleLengthLowerPercentile];
          cycleLengthLowerPercentile5 = [(HKMCStatistics *)equalCopy cycleLengthLowerPercentile];
          v67 = cycleLengthLowerPercentile4;
          if (![cycleLengthLowerPercentile4 isEqual:?])
          {
            v76 = cycleLengthLowerPercentile;
            v11 = 0;
            v20 = v82;
            goto LABEL_51;
          }

          v68 = v3;
        }

        cycleLengthUpperPercentile = [(HKMCStatistics *)self cycleLengthUpperPercentile];
        cycleLengthUpperPercentile2 = [(HKMCStatistics *)equalCopy cycleLengthUpperPercentile];
        v72 = cycleLengthUpperPercentile;
        v26 = cycleLengthUpperPercentile != cycleLengthUpperPercentile2;
        v76 = cycleLengthLowerPercentile;
        if (cycleLengthUpperPercentile != cycleLengthUpperPercentile2)
        {
          cycleLengthUpperPercentile3 = [(HKMCStatistics *)equalCopy cycleLengthUpperPercentile];
          if (!cycleLengthUpperPercentile3)
          {

            v37 = cycleLengthLowerPercentile;
            v11 = 0;
            v3 = v68;
            v20 = v82;
            v30 = v70;
            if (v37 != cycleLengthLowerPercentile2)
            {
              LOBYTE(v38) = 1;
              goto LABEL_93;
            }

            v38 = 0;
LABEL_111:
            if (!v38)
            {
LABEL_95:

              if (v20 != v83)
              {
LABEL_96:

                if (!v30)
                {
                  goto LABEL_98;
                }

                goto LABEL_97;
              }

LABEL_109:
              if (v30)
              {
LABEL_97:
              }

LABEL_98:

              v24 = lastMenstruationStartDayIndex != lastMenstruationStartDayIndex2;
              if (lastMenstruationStartDayIndex != lastMenstruationStartDayIndex2)
              {
LABEL_99:

                if (!v24)
                {
                  goto LABEL_101;
                }

                goto LABEL_100;
              }

              goto LABEL_107;
            }

LABEL_94:

            goto LABEL_95;
          }

          v63 = cycleLengthUpperPercentile3;
          cycleLengthUpperPercentile4 = [(HKMCStatistics *)self cycleLengthUpperPercentile];
          cycleLengthUpperPercentile5 = [(HKMCStatistics *)equalCopy cycleLengthUpperPercentile];
          v64 = cycleLengthUpperPercentile4;
          if (![cycleLengthUpperPercentile4 isEqual:cycleLengthUpperPercentile5])
          {
            v11 = 0;
            v20 = v82;
LABEL_50:

            v3 = v68;
            v30 = v70;
            if (v76 == cycleLengthLowerPercentile2)
            {
              goto LABEL_95;
            }

LABEL_51:

            if (v20 != v83)
            {
LABEL_52:

              if (lastMenstruationStartDayIndex != lastMenstruationStartDayIndex2)
              {
                goto LABEL_53;
              }

LABEL_101:

              if (firstMenstruationStartDayIndex == firstMenstruationStartDayIndex2)
              {
                goto LABEL_103;
              }

              goto LABEL_102;
            }

            goto LABEL_98;
          }

          v60 = cycleLengthUpperPercentile5;
        }

        menstruationLengthMedian = [(HKMCStatistics *)self menstruationLengthMedian];
        menstruationLengthMedian2 = [(HKMCStatistics *)equalCopy menstruationLengthMedian];
        v33 = menstruationLengthMedian2;
        if (menstruationLengthMedian == menstruationLengthMedian2)
        {
          v62 = menstruationLengthMedian2;
        }

        else
        {
          menstruationLengthMedian3 = [(HKMCStatistics *)equalCopy menstruationLengthMedian];
          if (!menstruationLengthMedian3)
          {

            v11 = 0;
            v20 = v82;
            if (v72 != cycleLengthUpperPercentile2)
            {
              goto LABEL_87;
            }

            goto LABEL_90;
          }

          v59 = menstruationLengthMedian3;
          v62 = v33;
          menstruationLengthMedian4 = [(HKMCStatistics *)self menstruationLengthMedian];
          menstruationLengthMedian5 = [(HKMCStatistics *)equalCopy menstruationLengthMedian];
          v58 = menstruationLengthMedian4;
          if (![menstruationLengthMedian4 isEqual:?])
          {
            v11 = 0;
            v20 = v82;
            v36 = cycleLengthUpperPercentile2;
LABEL_85:

            if (v72 != v36)
            {
              LOBYTE(v26) = 1;
LABEL_87:

              if (!v26)
              {
                goto LABEL_92;
              }

LABEL_91:

              goto LABEL_92;
            }

            v26 = 0;
LABEL_90:
            if (!v26)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          }
        }

        menstruationLengthLowerPercentile = [(HKMCStatistics *)self menstruationLengthLowerPercentile];
        menstruationLengthLowerPercentile2 = [(HKMCStatistics *)equalCopy menstruationLengthLowerPercentile];
        if (menstruationLengthLowerPercentile == menstruationLengthLowerPercentile2)
        {
          v56 = menstruationLengthMedian;
        }

        else
        {
          menstruationLengthLowerPercentile3 = [(HKMCStatistics *)equalCopy menstruationLengthLowerPercentile];
          if (!menstruationLengthLowerPercentile3)
          {
            v11 = 0;
            v20 = v82;
            goto LABEL_82;
          }

          v53 = menstruationLengthLowerPercentile;
          v55 = menstruationLengthLowerPercentile3;
          menstruationLengthLowerPercentile4 = [(HKMCStatistics *)self menstruationLengthLowerPercentile];
          menstruationLengthLowerPercentile5 = [(HKMCStatistics *)equalCopy menstruationLengthLowerPercentile];
          if (([menstruationLengthLowerPercentile4 isEqual:menstruationLengthLowerPercentile5] & 1) == 0)
          {

            v11 = 0;
            v48 = v62;
LABEL_69:
            if (menstruationLengthMedian != v48)
            {
            }

            if (v72 != cycleLengthUpperPercentile2)
            {
            }

            if (v76 != cycleLengthLowerPercentile2)
            {
            }

            if (v82 != v83)
            {
            }

            if (lastMenstruationStartDayIndex != lastMenstruationStartDayIndex2)
            {
            }

LABEL_54:

            firstMenstruationStartDayIndex5 = v80;
            firstMenstruationStartDayIndex4 = v81;
            if (firstMenstruationStartDayIndex != firstMenstruationStartDayIndex2)
            {
              goto LABEL_55;
            }

LABEL_105:

            goto LABEL_106;
          }

          v56 = menstruationLengthMedian;
          v51 = menstruationLengthLowerPercentile5;
          v52 = menstruationLengthLowerPercentile4;
          menstruationLengthLowerPercentile = v53;
        }

        menstruationLengthUpperPercentile = [(HKMCStatistics *)self menstruationLengthUpperPercentile];
        menstruationLengthUpperPercentile2 = [(HKMCStatistics *)equalCopy menstruationLengthUpperPercentile];
        v11 = menstruationLengthUpperPercentile == menstruationLengthUpperPercentile2;
        if (menstruationLengthUpperPercentile == menstruationLengthUpperPercentile2)
        {
        }

        else
        {
          v54 = menstruationLengthUpperPercentile2;
          menstruationLengthUpperPercentile3 = [(HKMCStatistics *)equalCopy menstruationLengthUpperPercentile];
          if (menstruationLengthUpperPercentile3)
          {
            v85 = menstruationLengthUpperPercentile3;
            menstruationLengthUpperPercentile4 = [(HKMCStatistics *)self menstruationLengthUpperPercentile];
            menstruationLengthUpperPercentile5 = [(HKMCStatistics *)equalCopy menstruationLengthUpperPercentile];
            v11 = [menstruationLengthUpperPercentile4 isEqual:menstruationLengthUpperPercentile5];

            if (menstruationLengthLowerPercentile != menstruationLengthLowerPercentile2)
            {
            }

            v48 = v62;
            menstruationLengthMedian = v56;
            goto LABEL_69;
          }
        }

        if (menstruationLengthLowerPercentile == menstruationLengthLowerPercentile2)
        {

          v33 = v62;
          menstruationLengthMedian = v56;
          v49 = v56 == v62;
          v20 = v82;
          goto LABEL_84;
        }

        v20 = v82;
        menstruationLengthMedian = v56;
LABEL_82:

        v33 = v62;
        v49 = menstruationLengthMedian == v62;
LABEL_84:
        v36 = cycleLengthUpperPercentile2;
        if (!v49)
        {
          goto LABEL_85;
        }

        cycleLengthUpperPercentile5 = v60;
        if (v72 == cycleLengthUpperPercentile2)
        {
LABEL_92:

          v3 = v68;
          v38 = v69;
          v30 = v70;
          if (v76 != cycleLengthLowerPercentile2)
          {
LABEL_93:

            if (!v38)
            {
              goto LABEL_95;
            }

            goto LABEL_94;
          }

          goto LABEL_111;
        }

        goto LABEL_50;
      }
    }

    v11 = 0;
  }

LABEL_106:

  return v11;
}

- (unint64_t)hash
{
  numberOfCycles = self->_numberOfCycles;
  v4 = [(NSNumber *)self->_firstMenstruationStartDayIndex hash]^ numberOfCycles;
  v5 = [(NSNumber *)self->_lastMenstruationStartDayIndex hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_cycleLengthLowerPercentile hash];
  v7 = [(NSNumber *)self->_cycleLengthUpperPercentile hash];
  v8 = v7 ^ [(NSNumber *)self->_menstruationLengthMedian hash];
  v9 = v6 ^ v8 ^ [(NSNumber *)self->_menstruationLengthLowerPercentile hash];
  return v9 ^ [(NSNumber *)self->_menstruationLengthUpperPercentile hash];
}

@end
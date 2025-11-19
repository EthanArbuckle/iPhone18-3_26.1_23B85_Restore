@interface HKMCStatistics
+ (id)_emptyStatistics;
- (BOOL)isEqual:(id)a3;
- (HKMCStatistics)initWithCoder:(id)a3;
- (HKMCStatistics)initWithNumberOfCycles:(int64_t)a3 firstMenstruationStartDayIndex:(id)a4 lastMenstruationStartDayIndex:(id)a5 cycleLengthMedian:(id)a6 cycleLengthLowerPercentile:(id)a7 cycleLengthUpperPercentile:(id)a8 menstruationLengthMedian:(id)a9 menstruationLengthLowerPercentile:(id)a10 menstruationLengthUpperPercentile:(id)a11;
- (NSString)hk_redactedDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMCStatistics

- (HKMCStatistics)initWithNumberOfCycles:(int64_t)a3 firstMenstruationStartDayIndex:(id)a4 lastMenstruationStartDayIndex:(id)a5 cycleLengthMedian:(id)a6 cycleLengthLowerPercentile:(id)a7 cycleLengthUpperPercentile:(id)a8 menstruationLengthMedian:(id)a9 menstruationLengthLowerPercentile:(id)a10 menstruationLengthUpperPercentile:(id)a11
{
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v17 = a10;
  v18 = a11;
  v29.receiver = self;
  v29.super_class = HKMCStatistics;
  v19 = [(HKMCStatistics *)&v29 init];
  v20 = v19;
  if (v19)
  {
    v19->_numberOfCycles = a3;
    objc_storeStrong(&v19->_firstMenstruationStartDayIndex, a4);
    objc_storeStrong(&v20->_lastMenstruationStartDayIndex, a5);
    objc_storeStrong(&v20->_cycleLengthMedian, a6);
    objc_storeStrong(&v20->_cycleLengthLowerPercentile, a7);
    objc_storeStrong(&v20->_cycleLengthUpperPercentile, a8);
    objc_storeStrong(&v20->_menstruationLengthMedian, a9);
    objc_storeStrong(&v20->_menstruationLengthLowerPercentile, a10);
    objc_storeStrong(&v20->_menstruationLengthUpperPercentile, a11);
  }

  return v20;
}

+ (id)_emptyStatistics
{
  v2 = [[a1 alloc] initWithNumberOfCycles:0 firstMenstruationStartDayIndex:0 lastMenstruationStartDayIndex:0 cycleLengthMedian:0 cycleLengthLowerPercentile:0 cycleLengthUpperPercentile:0 menstruationLengthMedian:0 menstruationLengthLowerPercentile:0 menstruationLengthUpperPercentile:0];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  numberOfCycles = self->_numberOfCycles;
  v5 = a3;
  [v5 encodeInteger:numberOfCycles forKey:@"NumberOfCycles"];
  [v5 encodeObject:self->_firstMenstruationStartDayIndex forKey:@"FirstMenstruationStartDayIndex"];
  [v5 encodeObject:self->_lastMenstruationStartDayIndex forKey:@"LastMenstruationStartDayIndex"];
  [v5 encodeObject:self->_cycleLengthMedian forKey:@"CycleLengthMedian"];
  [v5 encodeObject:self->_cycleLengthLowerPercentile forKey:@"CycleLengthLowerPercentile"];
  [v5 encodeObject:self->_cycleLengthUpperPercentile forKey:@"CycleLengthUpperPercentile"];
  [v5 encodeObject:self->_menstruationLengthMedian forKey:@"MenstruationLengthMedian"];
  [v5 encodeObject:self->_menstruationLengthLowerPercentile forKey:@"MenstruationLengthLowerPercentile"];
  [v5 encodeObject:self->_menstruationLengthUpperPercentile forKey:@"MenstruationLengthUpperPercentile"];
}

- (HKMCStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HKMCStatistics;
  v5 = [(HKMCStatistics *)&v23 init];
  if (v5)
  {
    v5->_numberOfCycles = [v4 decodeIntegerForKey:@"NumberOfCycles"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstMenstruationStartDayIndex"];
    firstMenstruationStartDayIndex = v5->_firstMenstruationStartDayIndex;
    v5->_firstMenstruationStartDayIndex = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastMenstruationStartDayIndex"];
    lastMenstruationStartDayIndex = v5->_lastMenstruationStartDayIndex;
    v5->_lastMenstruationStartDayIndex = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CycleLengthMedian"];
    cycleLengthMedian = v5->_cycleLengthMedian;
    v5->_cycleLengthMedian = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CycleLengthLowerPercentile"];
    cycleLengthLowerPercentile = v5->_cycleLengthLowerPercentile;
    v5->_cycleLengthLowerPercentile = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CycleLengthUpperPercentile"];
    cycleLengthUpperPercentile = v5->_cycleLengthUpperPercentile;
    v5->_cycleLengthUpperPercentile = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MenstruationLengthMedian"];
    menstruationLengthMedian = v5->_menstruationLengthMedian;
    v5->_menstruationLengthMedian = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MenstruationLengthLowerPercentile"];
    menstruationLengthLowerPercentile = v5->_menstruationLengthLowerPercentile;
    v5->_menstruationLengthLowerPercentile = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MenstruationLengthUpperPercentile"];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(HKMCStatistics *)self numberOfCycles];
      if (v6 == [(HKMCStatistics *)v5 numberOfCycles])
      {
        v7 = [(HKMCStatistics *)self firstMenstruationStartDayIndex];
        v8 = [(HKMCStatistics *)v5 firstMenstruationStartDayIndex];
        v84 = v7 != v8;
        if (v7 != v8)
        {
          v86 = [(HKMCStatistics *)v5 firstMenstruationStartDayIndex];
          if (!v86)
          {
            v11 = 0;

            goto LABEL_105;
          }

          v9 = [(HKMCStatistics *)self firstMenstruationStartDayIndex];
          v10 = [(HKMCStatistics *)v5 firstMenstruationStartDayIndex];
          if (![v9 isEqual:v10])
          {
            v11 = 0;
LABEL_55:

LABEL_104:
            goto LABEL_105;
          }

          v80 = v10;
          v81 = v9;
        }

        v12 = [(HKMCStatistics *)self lastMenstruationStartDayIndex];
        v13 = [(HKMCStatistics *)v5 lastMenstruationStartDayIndex];
        if (v12 != v13)
        {
          v14 = [(HKMCStatistics *)v5 lastMenstruationStartDayIndex];
          if (!v14)
          {

            v11 = 0;
            if (v7 == v8)
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

          v3 = v14;
          v15 = [(HKMCStatistics *)self lastMenstruationStartDayIndex];
          v78 = [(HKMCStatistics *)v5 lastMenstruationStartDayIndex];
          v79 = v15;
          if (![v15 isEqual:?])
          {
            v11 = 0;
LABEL_53:

            goto LABEL_54;
          }
        }

        v16 = [(HKMCStatistics *)self cycleLengthMedian];
        [(HKMCStatistics *)v5 cycleLengthMedian];
        v83 = v82 = v16;
        v17 = v16 != v83;
        if (v16 != v83)
        {
          v18 = [(HKMCStatistics *)v5 cycleLengthMedian];
          if (!v18)
          {

            v11 = 0;
            if (v12 != v13)
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

          v73 = v18;
          v19 = [(HKMCStatistics *)self cycleLengthMedian];
          v74 = [(HKMCStatistics *)v5 cycleLengthMedian];
          v75 = v19;
          if (![v19 isEqual:?])
          {
            v11 = 0;
            v20 = v82;
            goto LABEL_52;
          }
        }

        v21 = [(HKMCStatistics *)self cycleLengthLowerPercentile];
        v77 = [(HKMCStatistics *)v5 cycleLengthLowerPercentile];
        v69 = v21 != v77;
        if (v21 == v77)
        {
          v70 = v17;
          v68 = v3;
        }

        else
        {
          v22 = [(HKMCStatistics *)v5 cycleLengthLowerPercentile];
          if (!v22)
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
          v65 = v22;
          v23 = [(HKMCStatistics *)self cycleLengthLowerPercentile];
          v66 = [(HKMCStatistics *)v5 cycleLengthLowerPercentile];
          v67 = v23;
          if (![v23 isEqual:?])
          {
            v76 = v21;
            v11 = 0;
            v20 = v82;
            goto LABEL_51;
          }

          v68 = v3;
        }

        v25 = [(HKMCStatistics *)self cycleLengthUpperPercentile];
        v71 = [(HKMCStatistics *)v5 cycleLengthUpperPercentile];
        v72 = v25;
        v26 = v25 != v71;
        v76 = v21;
        if (v25 != v71)
        {
          v27 = [(HKMCStatistics *)v5 cycleLengthUpperPercentile];
          if (!v27)
          {

            v37 = v21;
            v11 = 0;
            v3 = v68;
            v20 = v82;
            v30 = v70;
            if (v37 != v77)
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

              v24 = v12 != v13;
              if (v12 != v13)
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

          v63 = v27;
          v28 = [(HKMCStatistics *)self cycleLengthUpperPercentile];
          v29 = [(HKMCStatistics *)v5 cycleLengthUpperPercentile];
          v64 = v28;
          if (![v28 isEqual:v29])
          {
            v11 = 0;
            v20 = v82;
LABEL_50:

            v3 = v68;
            v30 = v70;
            if (v76 == v77)
            {
              goto LABEL_95;
            }

LABEL_51:

            if (v20 != v83)
            {
LABEL_52:

              if (v12 != v13)
              {
                goto LABEL_53;
              }

LABEL_101:

              if (v7 == v8)
              {
                goto LABEL_103;
              }

              goto LABEL_102;
            }

            goto LABEL_98;
          }

          v60 = v29;
        }

        v31 = [(HKMCStatistics *)self menstruationLengthMedian];
        v32 = [(HKMCStatistics *)v5 menstruationLengthMedian];
        v33 = v32;
        if (v31 == v32)
        {
          v62 = v32;
        }

        else
        {
          v34 = [(HKMCStatistics *)v5 menstruationLengthMedian];
          if (!v34)
          {

            v11 = 0;
            v20 = v82;
            if (v72 != v71)
            {
              goto LABEL_87;
            }

            goto LABEL_90;
          }

          v59 = v34;
          v62 = v33;
          v35 = [(HKMCStatistics *)self menstruationLengthMedian];
          v57 = [(HKMCStatistics *)v5 menstruationLengthMedian];
          v58 = v35;
          if (![v35 isEqual:?])
          {
            v11 = 0;
            v20 = v82;
            v36 = v71;
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

        v39 = [(HKMCStatistics *)self menstruationLengthLowerPercentile];
        v61 = [(HKMCStatistics *)v5 menstruationLengthLowerPercentile];
        if (v39 == v61)
        {
          v56 = v31;
        }

        else
        {
          v40 = [(HKMCStatistics *)v5 menstruationLengthLowerPercentile];
          if (!v40)
          {
            v11 = 0;
            v20 = v82;
            goto LABEL_82;
          }

          v53 = v39;
          v55 = v40;
          v41 = [(HKMCStatistics *)self menstruationLengthLowerPercentile];
          v42 = [(HKMCStatistics *)v5 menstruationLengthLowerPercentile];
          if (([v41 isEqual:v42] & 1) == 0)
          {

            v11 = 0;
            v48 = v62;
LABEL_69:
            if (v31 != v48)
            {
            }

            if (v72 != v71)
            {
            }

            if (v76 != v77)
            {
            }

            if (v82 != v83)
            {
            }

            if (v12 != v13)
            {
            }

LABEL_54:

            v10 = v80;
            v9 = v81;
            if (v7 != v8)
            {
              goto LABEL_55;
            }

LABEL_105:

            goto LABEL_106;
          }

          v56 = v31;
          v51 = v42;
          v52 = v41;
          v39 = v53;
        }

        v43 = [(HKMCStatistics *)self menstruationLengthUpperPercentile];
        v44 = [(HKMCStatistics *)v5 menstruationLengthUpperPercentile];
        v11 = v43 == v44;
        if (v43 == v44)
        {
        }

        else
        {
          v54 = v44;
          v45 = [(HKMCStatistics *)v5 menstruationLengthUpperPercentile];
          if (v45)
          {
            v85 = v45;
            v46 = [(HKMCStatistics *)self menstruationLengthUpperPercentile];
            v47 = [(HKMCStatistics *)v5 menstruationLengthUpperPercentile];
            v11 = [v46 isEqual:v47];

            if (v39 != v61)
            {
            }

            v48 = v62;
            v31 = v56;
            goto LABEL_69;
          }
        }

        if (v39 == v61)
        {

          v33 = v62;
          v31 = v56;
          v49 = v56 == v62;
          v20 = v82;
          goto LABEL_84;
        }

        v20 = v82;
        v31 = v56;
LABEL_82:

        v33 = v62;
        v49 = v31 == v62;
LABEL_84:
        v36 = v71;
        if (!v49)
        {
          goto LABEL_85;
        }

        v29 = v60;
        if (v72 == v71)
        {
LABEL_92:

          v3 = v68;
          v38 = v69;
          v30 = v70;
          if (v76 != v77)
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
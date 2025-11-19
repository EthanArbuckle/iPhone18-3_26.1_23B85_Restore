@interface HMDTimeBasedFlagDaily
+ (id)convertLegacyFlagBits:(id)a3 lastSaveTIme:(id)a4;
- (HMDTimeBasedFlagContext)context;
- (HMDTimeBasedFlagDaily)initWithContext:(id)a3 dateProvider:(id)a4;
- (HMDTimeBasedFlagDaily)initWithSerializedFlag:(id)a3 context:(id)a4 dateProvider:(id)a5;
- (id)description;
- (id)serializeToDictionary;
- (unint64_t)_bitMaskForDate:(id)a3;
- (unint64_t)bitsForDate:(id)a3 bitCount:(int64_t)a4 outValidBitCount:(int64_t *)a5;
- (unint64_t)currentBits;
- (void)clearBitForDate:(id)a3;
- (void)clearCurrentBit;
- (void)setBitForDate:(id)a3;
- (void)setCurrentBit;
@end

@implementation HMDTimeBasedFlagDaily

- (HMDTimeBasedFlagContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDTimeBasedFlagDaily *)self bits];
  v5 = [(HMDTimeBasedFlagDaily *)self bit0Date];
  v6 = [v3 stringWithFormat:@"Daily flags: bits=0x%llx, date=%@", v4, v5];

  return v6;
}

- (id)serializeToDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v8[0] = @"bits";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDTimeBasedFlagDaily bits](self, "bits")}];
  v9[0] = v3;
  v8[1] = @"bit0date";
  v4 = [(HMDTimeBasedFlagDaily *)self bit0Date];
  v8[2] = @"periodicity";
  v9[1] = v4;
  v9[2] = &unk_283E72278;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  os_unfair_lock_unlock(&self->_lock);
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)bitsForDate:(id)a3 bitCount:(int64_t)a4 outValidBitCount:(int64_t *)a5
{
  v8 = a3;
  os_unfair_lock_lock_with_options();
  v9 = MEMORY[0x277D17DB0];
  v10 = [(HMDTimeBasedFlagDaily *)self bit0Date];
  v11 = [v9 daysFromDate:v10 toDate:v8];

  if (v11 == 0 || v11 >= 0xFFFFFFFFFFFFFFC1)
  {
    if (a5)
    {
      v12 = v11 + 64;
      if (v11 + 64 >= a4)
      {
        v12 = a4;
      }

      *a5 = v12;
    }

    if (a4 >= 64)
    {
      v13 = [(HMDTimeBasedFlagDaily *)self bits]>> -v11;
      goto LABEL_26;
    }

    v15 = [(HMDTimeBasedFlagDaily *)self bits]>> -v11;
LABEL_22:
    v13 = v15 & ~(-1 << a4);
    goto LABEL_26;
  }

  if ((v11 - 1) <= 0x3E)
  {
    if (a5)
    {
      v14 = 64;
      if (a4 < 64)
      {
        v14 = a4;
      }

      *a5 = v14;
    }

    if (a4 >= 64)
    {
      v13 = [(HMDTimeBasedFlagDaily *)self bits]<< v11;
      goto LABEL_26;
    }

    v15 = [(HMDTimeBasedFlagDaily *)self bits]<< v11;
    goto LABEL_22;
  }

  if (v11 < 64)
  {
    if (a5)
    {
      v13 = 0;
      *a5 = 0;
      goto LABEL_26;
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  if (!a5)
  {
    goto LABEL_25;
  }

  v13 = 0;
  v16 = 64;
  if (a4 < 64)
  {
    v16 = a4;
  }

  *a5 = v16;
LABEL_26:
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (unint64_t)currentBits
{
  v3 = [(HMDTimeBasedFlagDaily *)self dateProvider];
  v4 = [v3 startOfCurrentDay];
  v5 = [(HMDTimeBasedFlagDaily *)self bitsForDate:v4 bitCount:64 outValidBitCount:0];

  return v5;
}

- (unint64_t)_bitMaskForDate:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D17DB0];
  v6 = [(HMDTimeBasedFlagDaily *)self bit0Date];
  v7 = [v5 daysFromDate:v6 toDate:v4];

  if (v7 != 0 && v7 < 0xFFFFFFFFFFFFFFC1)
  {
    if (v7 - 1 > 0x3E)
    {
      if (v7 + 127 <= 0x3F)
      {
        [(HMDTimeBasedFlagDaily *)self setBits:[(HMDTimeBasedFlagDaily *)self bits]>> (-63 - v7)];
        v11 = [MEMORY[0x277D17DB0] startOfDateByAddingDayCount:63 toDate:v4];
        [(HMDTimeBasedFlagDaily *)self setBit0Date:v11];

        v8 = 0x8000000000000000;
        goto LABEL_9;
      }

      v10 = self;
      v9 = 0;
    }

    else
    {
      v9 = [(HMDTimeBasedFlagDaily *)self bits]<< v7;
      v10 = self;
    }

    [(HMDTimeBasedFlagDaily *)v10 setBits:v9];
    [(HMDTimeBasedFlagDaily *)self setBit0Date:v4];
    v8 = 1;
    goto LABEL_9;
  }

  v8 = 1 << -v7;
LABEL_9:

  return v8;
}

- (void)clearBitForDate:(id)a3
{
  v7 = a3;
  if ([minAllowedDate compare:?] != 1)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(HMDTimeBasedFlagDaily *)self _bitMaskForDate:v7];
    v5 = [(HMDTimeBasedFlagDaily *)self bits];
    [(HMDTimeBasedFlagDaily *)self setBits:[(HMDTimeBasedFlagDaily *)self bits]& ~v4];
    os_unfair_lock_unlock(&self->_lock);
    if ((v5 & v4) != 0)
    {
      v6 = [(HMDTimeBasedFlagDaily *)self context];
      [v6 flagChanged];
    }
  }
}

- (void)clearCurrentBit
{
  v4 = [(HMDTimeBasedFlagDaily *)self dateProvider];
  v3 = [v4 startOfCurrentDay];
  [(HMDTimeBasedFlagDaily *)self clearBitForDate:v3];
}

- (void)setBitForDate:(id)a3
{
  v7 = a3;
  if ([minAllowedDate compare:?] != 1)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(HMDTimeBasedFlagDaily *)self _bitMaskForDate:v7];
    v5 = [(HMDTimeBasedFlagDaily *)self bits];
    [(HMDTimeBasedFlagDaily *)self setBits:[(HMDTimeBasedFlagDaily *)self bits]| v4];
    os_unfair_lock_unlock(&self->_lock);
    if ((v5 & v4) == 0)
    {
      v6 = [(HMDTimeBasedFlagDaily *)self context];
      [v6 flagChanged];
    }
  }
}

- (void)setCurrentBit
{
  v4 = [(HMDTimeBasedFlagDaily *)self dateProvider];
  v3 = [v4 startOfCurrentDay];
  [(HMDTimeBasedFlagDaily *)self setBitForDate:v3];
}

- (HMDTimeBasedFlagDaily)initWithSerializedFlag:(id)a3 context:(id)a4 dateProvider:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HMDTimeBasedFlagDaily *)self initWithContext:a4 dateProvider:v9];
  if (v10)
  {
    v11 = [v8 objectForKeyedSubscript:@"bits"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 unsignedLongLongValue];
    v10->_bits = v14;
    v15 = [v8 objectForKeyedSubscript:@"bit0date"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = [v9 startOfCurrentDay];
    }

    bit0Date = v10->_bit0Date;
    v10->_bit0Date = v18;
  }

  return v10;
}

- (HMDTimeBasedFlagDaily)initWithContext:(id)a3 dateProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (initWithContext_dateProvider__onceToken != -1)
  {
    dispatch_once(&initWithContext_dateProvider__onceToken, &__block_literal_global_56726);
  }

  v13.receiver = self;
  v13.super_class = HMDTimeBasedFlagDaily;
  v8 = [(HMDTimeBasedFlagDaily *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, v6);
    objc_storeStrong(&v9->_dateProvider, a4);
    v9->_bits = 0;
    v10 = [v7 startOfCurrentDay];
    bit0Date = v9->_bit0Date;
    v9->_bit0Date = v10;
  }

  return v9;
}

void __54__HMDTimeBasedFlagDaily_initWithContext_dateProvider___block_invoke()
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setDay:1];
  [v5 setMonth:1];
  [v5 setYear:2022];
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v2 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v1 setTimeZone:v2];

  v3 = [v1 dateFromComponents:v5];
  v4 = minAllowedDate;
  minAllowedDate = v3;
}

+ (id)convertLegacyFlagBits:(id)a3 lastSaveTIme:(id)a4
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"bits";
  v11[1] = @"bit0date";
  v12[0] = a3;
  v12[1] = a4;
  v11[2] = @"periodicity";
  v12[2] = &unk_283E72278;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end
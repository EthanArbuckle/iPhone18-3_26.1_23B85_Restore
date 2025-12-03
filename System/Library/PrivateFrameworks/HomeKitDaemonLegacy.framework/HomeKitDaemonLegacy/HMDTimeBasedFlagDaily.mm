@interface HMDTimeBasedFlagDaily
+ (id)convertLegacyFlagBits:(id)bits lastSaveTIme:(id)ime;
- (HMDTimeBasedFlagContext)context;
- (HMDTimeBasedFlagDaily)initWithContext:(id)context dateProvider:(id)provider;
- (HMDTimeBasedFlagDaily)initWithSerializedFlag:(id)flag context:(id)context dateProvider:(id)provider;
- (id)description;
- (id)serializeToDictionary;
- (unint64_t)_bitMaskForDate:(id)date;
- (unint64_t)bitsForDate:(id)date bitCount:(int64_t)count outValidBitCount:(int64_t *)bitCount;
- (unint64_t)currentBits;
- (void)clearBitForDate:(id)date;
- (void)clearCurrentBit;
- (void)setBitForDate:(id)date;
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
  bits = [(HMDTimeBasedFlagDaily *)self bits];
  bit0Date = [(HMDTimeBasedFlagDaily *)self bit0Date];
  v6 = [v3 stringWithFormat:@"Daily flags: bits=0x%llx, date=%@", bits, bit0Date];

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
  bit0Date = [(HMDTimeBasedFlagDaily *)self bit0Date];
  v8[2] = @"periodicity";
  v9[1] = bit0Date;
  v9[2] = &unk_28662A3A0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  os_unfair_lock_unlock(&self->_lock);
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)bitsForDate:(id)date bitCount:(int64_t)count outValidBitCount:(int64_t *)bitCount
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  v9 = MEMORY[0x277D17DB0];
  bit0Date = [(HMDTimeBasedFlagDaily *)self bit0Date];
  v11 = [v9 daysFromDate:bit0Date toDate:dateCopy];

  if (v11 == 0 || v11 >= 0xFFFFFFFFFFFFFFC1)
  {
    if (bitCount)
    {
      countCopy = v11 + 64;
      if (v11 + 64 >= count)
      {
        countCopy = count;
      }

      *bitCount = countCopy;
    }

    if (count >= 64)
    {
      v13 = [(HMDTimeBasedFlagDaily *)self bits]>> -v11;
      goto LABEL_26;
    }

    v15 = [(HMDTimeBasedFlagDaily *)self bits]>> -v11;
LABEL_22:
    v13 = v15 & ~(-1 << count);
    goto LABEL_26;
  }

  if ((v11 - 1) <= 0x3E)
  {
    if (bitCount)
    {
      countCopy2 = 64;
      if (count < 64)
      {
        countCopy2 = count;
      }

      *bitCount = countCopy2;
    }

    if (count >= 64)
    {
      v13 = [(HMDTimeBasedFlagDaily *)self bits]<< v11;
      goto LABEL_26;
    }

    v15 = [(HMDTimeBasedFlagDaily *)self bits]<< v11;
    goto LABEL_22;
  }

  if (v11 < 64)
  {
    if (bitCount)
    {
      v13 = 0;
      *bitCount = 0;
      goto LABEL_26;
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  if (!bitCount)
  {
    goto LABEL_25;
  }

  v13 = 0;
  countCopy3 = 64;
  if (count < 64)
  {
    countCopy3 = count;
  }

  *bitCount = countCopy3;
LABEL_26:
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (unint64_t)currentBits
{
  dateProvider = [(HMDTimeBasedFlagDaily *)self dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];
  v5 = [(HMDTimeBasedFlagDaily *)self bitsForDate:startOfCurrentDay bitCount:64 outValidBitCount:0];

  return v5;
}

- (unint64_t)_bitMaskForDate:(id)date
{
  dateCopy = date;
  v5 = MEMORY[0x277D17DB0];
  bit0Date = [(HMDTimeBasedFlagDaily *)self bit0Date];
  v7 = [v5 daysFromDate:bit0Date toDate:dateCopy];

  if (v7 != 0 && v7 < 0xFFFFFFFFFFFFFFC1)
  {
    if (v7 - 1 > 0x3E)
    {
      if (v7 + 127 <= 0x3F)
      {
        [(HMDTimeBasedFlagDaily *)self setBits:[(HMDTimeBasedFlagDaily *)self bits]>> (-63 - v7)];
        v11 = [MEMORY[0x277D17DB0] startOfDateByAddingDayCount:63 toDate:dateCopy];
        [(HMDTimeBasedFlagDaily *)self setBit0Date:v11];

        v8 = 0x8000000000000000;
        goto LABEL_9;
      }

      selfCopy2 = self;
      v9 = 0;
    }

    else
    {
      v9 = [(HMDTimeBasedFlagDaily *)self bits]<< v7;
      selfCopy2 = self;
    }

    [(HMDTimeBasedFlagDaily *)selfCopy2 setBits:v9];
    [(HMDTimeBasedFlagDaily *)self setBit0Date:dateCopy];
    v8 = 1;
    goto LABEL_9;
  }

  v8 = 1 << -v7;
LABEL_9:

  return v8;
}

- (void)clearBitForDate:(id)date
{
  dateCopy = date;
  if ([minAllowedDate compare:?] != 1)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(HMDTimeBasedFlagDaily *)self _bitMaskForDate:dateCopy];
    bits = [(HMDTimeBasedFlagDaily *)self bits];
    [(HMDTimeBasedFlagDaily *)self setBits:[(HMDTimeBasedFlagDaily *)self bits]& ~v4];
    os_unfair_lock_unlock(&self->_lock);
    if ((bits & v4) != 0)
    {
      context = [(HMDTimeBasedFlagDaily *)self context];
      [context flagChanged];
    }
  }
}

- (void)clearCurrentBit
{
  dateProvider = [(HMDTimeBasedFlagDaily *)self dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];
  [(HMDTimeBasedFlagDaily *)self clearBitForDate:startOfCurrentDay];
}

- (void)setBitForDate:(id)date
{
  dateCopy = date;
  if ([minAllowedDate compare:?] != 1)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(HMDTimeBasedFlagDaily *)self _bitMaskForDate:dateCopy];
    bits = [(HMDTimeBasedFlagDaily *)self bits];
    [(HMDTimeBasedFlagDaily *)self setBits:[(HMDTimeBasedFlagDaily *)self bits]| v4];
    os_unfair_lock_unlock(&self->_lock);
    if ((bits & v4) == 0)
    {
      context = [(HMDTimeBasedFlagDaily *)self context];
      [context flagChanged];
    }
  }
}

- (void)setCurrentBit
{
  dateProvider = [(HMDTimeBasedFlagDaily *)self dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];
  [(HMDTimeBasedFlagDaily *)self setBitForDate:startOfCurrentDay];
}

- (HMDTimeBasedFlagDaily)initWithSerializedFlag:(id)flag context:(id)context dateProvider:(id)provider
{
  flagCopy = flag;
  providerCopy = provider;
  v10 = [(HMDTimeBasedFlagDaily *)self initWithContext:context dateProvider:providerCopy];
  if (v10)
  {
    v11 = [flagCopy objectForKeyedSubscript:@"bits"];
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

    unsignedLongLongValue = [v13 unsignedLongLongValue];
    v10->_bits = unsignedLongLongValue;
    v15 = [flagCopy objectForKeyedSubscript:@"bit0date"];
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
      startOfCurrentDay = v15;
    }

    else
    {
      startOfCurrentDay = [providerCopy startOfCurrentDay];
    }

    bit0Date = v10->_bit0Date;
    v10->_bit0Date = startOfCurrentDay;
  }

  return v10;
}

- (HMDTimeBasedFlagDaily)initWithContext:(id)context dateProvider:(id)provider
{
  contextCopy = context;
  providerCopy = provider;
  if (initWithContext_dateProvider__onceToken != -1)
  {
    dispatch_once(&initWithContext_dateProvider__onceToken, &__block_literal_global_176662);
  }

  v13.receiver = self;
  v13.super_class = HMDTimeBasedFlagDaily;
  v8 = [(HMDTimeBasedFlagDaily *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, contextCopy);
    objc_storeStrong(&v9->_dateProvider, provider);
    v9->_bits = 0;
    startOfCurrentDay = [providerCopy startOfCurrentDay];
    bit0Date = v9->_bit0Date;
    v9->_bit0Date = startOfCurrentDay;
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

+ (id)convertLegacyFlagBits:(id)bits lastSaveTIme:(id)ime
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"bits";
  v11[1] = @"bit0date";
  v12[0] = bits;
  v12[1] = ime;
  v11[2] = @"periodicity";
  v12[2] = &unk_28662A3A0;
  v5 = MEMORY[0x277CBEAC0];
  imeCopy = ime;
  bitsCopy = bits;
  v8 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end
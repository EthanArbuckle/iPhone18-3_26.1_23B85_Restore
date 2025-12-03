@interface MKBenchmark
- (MKBenchmark)initWithLabel:(id)label count:(unint64_t)count time:(double)time;
- (id)benchmark;
@end

@implementation MKBenchmark

- (MKBenchmark)initWithLabel:(id)label count:(unint64_t)count time:(double)time
{
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = MKBenchmark;
  v9 = [(MKBenchmark *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_time = time;
    v9->_count = count;
    [(MKBenchmark *)v9 setLabel:labelCopy];
  }

  return v10;
}

- (id)benchmark
{
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v3 setLocale:currentLocale];

  [v3 setNumberStyle:1];
  [v3 setMaximumFractionDigits:1];
  [v3 setPositiveSuffix:@" assets"];
  [v3 setRoundingMode:6];
  time = self->_time;
  v6 = @" m";
  if (time >= 60.0)
  {
    v7 = time / 60.0;
  }

  else
  {
    v6 = @" s";
    v7 = self->_time;
  }

  if (v7 >= 60.0)
  {
    v8 = @" h";
  }

  else
  {
    v8 = v6;
  }

  v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v9 setNumberStyle:1];
  [v9 setMinimumFractionDigits:2];
  [v9 setMaximumFractionDigits:2];
  [v9 setPositiveSuffix:v8];
  [v9 setRoundingMode:6];
  v10 = self->_time;
  v11 = 0.0;
  if (v10 != 0.0)
  {
    v11 = self->_count / v10;
  }

  if (v7 >= 60.0)
  {
    v7 = v7 / 60.0;
  }

  v12 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v12 setNumberStyle:1];
  [v12 setMinimumFractionDigits:2];
  [v12 setMaximumFractionDigits:2];
  [v12 setPositiveSuffix:@" assets/sec"];
  [v12 setRoundingMode:6];
  v22 = MEMORY[0x277CCACA8];
  label = self->_label;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_count];
  v15 = [v3 stringFromNumber:v14];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v17 = [v9 stringFromNumber:v16];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v19 = [v12 stringFromNumber:v18];
  v20 = [v22 stringWithFormat:@"%@: %@, %@ (%@)", label, v15, v17, v19];

  return v20;
}

@end
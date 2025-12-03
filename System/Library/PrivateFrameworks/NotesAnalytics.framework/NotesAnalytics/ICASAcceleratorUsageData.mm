@interface ICASAcceleratorUsageData
- (ICASAcceleratorUsageData)initWithMaxNumCharTyped:(id)typed endResultCount:(id)count;
- (id)toDict;
@end

@implementation ICASAcceleratorUsageData

- (ICASAcceleratorUsageData)initWithMaxNumCharTyped:(id)typed endResultCount:(id)count
{
  typedCopy = typed;
  countCopy = count;
  v12.receiver = self;
  v12.super_class = ICASAcceleratorUsageData;
  v9 = [(ICASAcceleratorUsageData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_maxNumCharTyped, typed);
    objc_storeStrong(&v10->_endResultCount, count);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"maxNumCharTyped";
  maxNumCharTyped = [(ICASAcceleratorUsageData *)self maxNumCharTyped];
  if (maxNumCharTyped)
  {
    maxNumCharTyped2 = [(ICASAcceleratorUsageData *)self maxNumCharTyped];
  }

  else
  {
    maxNumCharTyped2 = objc_opt_new();
  }

  v5 = maxNumCharTyped2;
  v12[1] = @"endResultCount";
  v13[0] = maxNumCharTyped2;
  endResultCount = [(ICASAcceleratorUsageData *)self endResultCount];
  if (endResultCount)
  {
    endResultCount2 = [(ICASAcceleratorUsageData *)self endResultCount];
  }

  else
  {
    endResultCount2 = objc_opt_new();
  }

  v8 = endResultCount2;
  v13[1] = endResultCount2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
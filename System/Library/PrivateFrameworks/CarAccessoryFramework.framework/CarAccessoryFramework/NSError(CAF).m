@interface NSError(CAF)
+ (id)CAF_elementParseFailedForCharacteristic:()CAF;
+ (id)CAF_elementParseFailedForDataSupportType:()CAF;
+ (id)CAF_errorWithCode:()CAF userInfo:;
+ (id)CAF_groupRequestAlreadyPerformed;
+ (id)CAF_groupRequestErrors:()CAF;
+ (id)CAF_groupRequestNilForCharacteristics:()CAF;
+ (id)CAF_groupRequestWithNoCharacteristics;
+ (id)CAF_invalidDataForFormat:()CAF;
+ (id)CAF_outOfRangeErrorForValue:()CAF min:max:;
+ (id)CAF_outOfRangeErrorForValue:()CAF range:;
+ (id)CAF_plistConversionFailedForError:()CAF;
+ (id)CAF_writeToReadonlyError;
@end

@implementation NSError(CAF)

+ (id)CAF_errorWithCode:()CAF userInfo:
{
  v5 = [a4 mutableCopy];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v5 setObject:v6 forKeyedSubscript:CAFErrorDateCreated];

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:CAFErrorDomain code:a3 userInfo:v5];

  return v7;
}

+ (id)CAF_outOfRangeErrorForValue:()CAF range:
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setNumberStyle:1];
  v9 = MEMORY[0x277CCA9B8];
  v21 = *MEMORY[0x277CCA450];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v8 stringFromNumber:v7];

  v12 = [v6 minimum];
  v13 = [v8 stringFromNumber:v12];
  v14 = [v6 maximum];

  v15 = [v8 stringFromNumber:v14];
  v16 = [v10 stringWithFormat:@"%@ is out of range.  min=%@ max=%@", v11, v13, v15];
  v22[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v18 = [v9 CAF_errorWithCode:100 userInfo:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)CAF_outOfRangeErrorForValue:()CAF min:max:
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCABB8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  [v11 setNumberStyle:1];
  v12 = MEMORY[0x277CCA9B8];
  v22 = *MEMORY[0x277CCA450];
  v13 = MEMORY[0x277CCACA8];
  v14 = [v11 stringFromNumber:v10];

  v15 = [v11 stringFromNumber:v9];

  v16 = [v11 stringFromNumber:v8];

  v17 = [v13 stringWithFormat:@"%@ is out of range.  min=%@ max=%@", v14, v15, v16];
  v23[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v19 = [v12 CAF_errorWithCode:100 userInfo:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)CAF_writeToReadonlyError
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"characteristic is not writable";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 CAF_errorWithCode:101 userInfo:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)CAF_invalidDataForFormat:()CAF
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data format is not kCFPropertyListBinaryFormat_v1_0.  format=%@", a3, *MEMORY[0x277CCA450]];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 CAF_errorWithCode:102 userInfo:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] CAF_errorWithCode:102 userInfo:0];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)CAF_plistConversionFailedForError:()CAF
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Plist conversion failed. errorString=%@", a3, *MEMORY[0x277CCA450]];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 CAF_errorWithCode:103 userInfo:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] CAF_errorWithCode:103 userInfo:0];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)CAF_elementParseFailedForDataSupportType:()CAF
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed parsing element(s) for dataSupport type %@", a3, *MEMORY[0x277CCA450]];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 CAF_errorWithCode:104 userInfo:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] CAF_errorWithCode:104 userInfo:0];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)CAF_elementParseFailedForCharacteristic:()CAF
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  if (a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed parsing element(s) for characteristic %@", a3, *MEMORY[0x277CCA450]];
    v10[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 CAF_errorWithCode:104 userInfo:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] CAF_errorWithCode:104 userInfo:0];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)CAF_groupRequestWithNoCharacteristics
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupRequest was performed with no characteristics"];
  v7[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 CAF_errorWithCode:104 userInfo:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)CAF_groupRequestAlreadyPerformed
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupRequest was already performed"];
  v7[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 CAF_errorWithCode:104 userInfo:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)CAF_groupRequestNilForCharacteristics:()CAF
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v11[0] = *MEMORY[0x277CCA450];
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"GroupRequest was nil"];
  v11[1] = CAFErrorCharacteristics;
  v12[0] = v6;
  v12[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v3 CAF_errorWithCode:104 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)CAF_groupRequestErrors:()CAF
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v11[0] = *MEMORY[0x277CCA450];
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"GroupRequest multiple errors"];
  v11[1] = CAFErrorErrors;
  v12[0] = v6;
  v12[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v3 CAF_errorWithCode:104 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end
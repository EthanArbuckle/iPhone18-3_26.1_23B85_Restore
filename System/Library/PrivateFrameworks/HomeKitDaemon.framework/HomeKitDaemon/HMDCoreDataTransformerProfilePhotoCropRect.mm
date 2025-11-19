@interface HMDCoreDataTransformerProfilePhotoCropRect
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDCoreDataTransformerProfilePhotoCropRect

+ (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 hmf_numberForKey:@"x"];
    [v9 floatValue];
    v11 = v10;
    v12 = [v8 hmf_numberForKey:@"y"];
    [v12 floatValue];
    v14 = v13;
    v15 = [v8 hmf_numberForKey:@"w"];
    [v15 floatValue];
    v17 = v16;
    v18 = [v8 hmf_numberForKey:@"h"];
    [v18 floatValue];
    v20 = v19;

    a4 = [MEMORY[0x277CCAE60] valueWithRect:{v11, v14, v17, v20}];
  }

  else if (a4)
  {
    v21 = MEMORY[0x277CCA9B8];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSDictionary value to create crop rect value: %@", v5];
    *a4 = [v21 hmfErrorWithCode:3 reason:v22];

    a4 = 0;
  }

  return a4;
}

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v27[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 rectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v26[0] = @"x";
    *&v13 = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    v27[0] = v14;
    v26[1] = @"y";
    *&v15 = v8;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    v27[1] = v16;
    v26[2] = @"w";
    *&v17 = v10;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    v27[2] = v18;
    v26[3] = @"h";
    *&v19 = v12;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    v27[3] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  }

  else
  {
    if (a4)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid crop rect value: %@", 0];
      *a4 = [v22 hmfErrorWithCode:3 reason:v23];
    }

    v21 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

@end
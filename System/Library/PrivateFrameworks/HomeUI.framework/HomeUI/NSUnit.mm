@interface NSUnit
@end

@implementation NSUnit

void __44__NSUnit_HUAdditions__unitFromSymbolString___block_invoke()
{
  v17[14] = *MEMORY[0x277D85DE8];
  v16[0] = @"seconds";
  v15 = [MEMORY[0x277CCADD0] seconds];
  v17[0] = v15;
  v16[1] = @"minutes";
  v14 = [MEMORY[0x277CCADD0] minutes];
  v17[1] = v14;
  v16[2] = @"hours";
  v13 = [MEMORY[0x277CCADD0] hours];
  v17[2] = v13;
  v16[3] = @"meters";
  v12 = [MEMORY[0x277CCAE20] meters];
  v17[3] = v12;
  v16[4] = @"kilometers";
  v0 = [MEMORY[0x277CCAE20] kilometers];
  v17[4] = v0;
  v16[5] = @"centimeters";
  v1 = [MEMORY[0x277CCAE20] centimeters];
  v17[5] = v1;
  v16[6] = @"millimeters";
  v2 = [MEMORY[0x277CCAE20] millimeters];
  v17[6] = v2;
  v16[7] = @"grams";
  v3 = [MEMORY[0x277CCAE28] grams];
  v17[7] = v3;
  v16[8] = @"kilograms";
  v4 = [MEMORY[0x277CCAE28] kilograms];
  v17[8] = v4;
  v16[9] = @"pounds";
  v5 = [MEMORY[0x277CCAE28] poundsMass];
  v17[9] = v5;
  v16[10] = @"ounces";
  v6 = [MEMORY[0x277CCAE28] ounces];
  v17[10] = v6;
  v16[11] = @"celsius";
  v7 = [MEMORY[0x277CCAE48] celsius];
  v17[11] = v7;
  v16[12] = @"fahrenheit";
  v8 = [MEMORY[0x277CCAE48] fahrenheit];
  v17[12] = v8;
  v16[13] = @"kelvin";
  v9 = [MEMORY[0x277CCAE48] kelvin];
  v17[13] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:14];
  v11 = _MergedGlobals_642;
  _MergedGlobals_642 = v10;
}

@end
@interface NWMUltravioletIndexColorIndex
+ (NSArray)allIndices;
+ (id)indexWithUltravioletIndexValue:(double)a3 color:(id)a4;
- (NWMUltravioletIndexColorIndex)initWithUltravioletIndexValue:(double)a3 color:(id)a4;
@end

@implementation NWMUltravioletIndexColorIndex

+ (id)indexWithUltravioletIndexValue:(double)a3 color:(id)a4
{
  v5 = a4;
  v6 = [[NWMUltravioletIndexColorIndex alloc] initWithUltravioletIndexValue:v5 color:a3];

  return v6;
}

- (NWMUltravioletIndexColorIndex)initWithUltravioletIndexValue:(double)a3 color:(id)a4
{
  v5.receiver = self;
  v5.super_class = NWMUltravioletIndexColorIndex;
  return [(NWKUIColorIndex *)&v5 initWithValue:a4 color:a3];
}

+ (NSArray)allIndices
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NWMUltravioletIndexColorIndex_allIndices__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allIndices_onceToken != -1)
  {
    dispatch_once(&allIndices_onceToken, block);
  }

  v2 = allIndices_AllIndices;

  return v2;
}

void __43__NWMUltravioletIndexColorIndex_allIndices__block_invoke(uint64_t a1)
{
  v31[12] = *MEMORY[0x277D85DE8];
  v30 = [MEMORY[0x277D75348] systemGreenColor];
  v29 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v30 color:0.9];
  v31[0] = v29;
  v28 = [MEMORY[0x277D75348] colorWithRed:0.345098039 green:0.882352941 blue:0.337254902 alpha:1.0];
  v27 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v28 color:1.9];
  v31[1] = v27;
  v26 = [MEMORY[0x277D75348] colorWithRed:0.670588235 green:0.890196078 blue:0.37254902 alpha:1.0];
  v25 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v26 color:2.9];
  v31[2] = v25;
  v24 = [MEMORY[0x277D75348] systemYellowColor];
  v23 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v24 color:3.9];
  v31[3] = v23;
  v21 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.796078431 blue:0.0823529412 alpha:1.0];
  v20 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v21 color:4.9];
  v31[4] = v20;
  v19 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.690196078 blue:0.0431372549 alpha:1.0];
  v18 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v19 color:5.9];
  v31[5] = v18;
  v17 = [MEMORY[0x277D75348] systemOrangeColor];
  v16 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v17 color:6.9];
  v31[6] = v16;
  v1 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.380392157 blue:0.168627451 alpha:1.0];
  v2 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v1 color:7.9];
  v31[7] = v2;
  v3 = [MEMORY[0x277D75348] systemPinkColor];
  v4 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v3 color:8.9];
  v31[8] = v4;
  v5 = [MEMORY[0x277D75348] colorWithRed:0.890196078 green:0.117647059 blue:0.556862745 alpha:1.0];
  v6 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v5 color:9.9];
  v31[9] = v6;
  v7 = [MEMORY[0x277D75348] colorWithRed:0.776470588 green:0.0588235294 blue:0.776470588 alpha:1.0];
  v8 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v7 color:10.9];
  v31[10] = v8;
  [*(a1 + 32) lastValue];
  v10 = v9;
  v11 = [MEMORY[0x277D75348] colorWithRed:0.666666667 green:0.0 blue:1.0 alpha:1.0];
  v12 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v11 color:v10];
  v31[11] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:12];
  v14 = allIndices_AllIndices;
  allIndices_AllIndices = v13;

  v15 = *MEMORY[0x277D85DE8];
}

@end
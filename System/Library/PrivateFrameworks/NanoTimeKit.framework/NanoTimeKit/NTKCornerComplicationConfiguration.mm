@interface NTKCornerComplicationConfiguration
- (NTKCornerComplicationConfiguration)initWithTopLeftComplication:(unint64_t)complication topRightComplication:(unint64_t)rightComplication bottomLeftComplication:(unint64_t)leftComplication bottomRightComplication:(unint64_t)bottomRightComplication;
- (id)complicationSlotDescriptors;
- (id)orderedComplicationSlots;
- (id)richComplicationSlotsForDevice:(id)device;
@end

@implementation NTKCornerComplicationConfiguration

- (NTKCornerComplicationConfiguration)initWithTopLeftComplication:(unint64_t)complication topRightComplication:(unint64_t)rightComplication bottomLeftComplication:(unint64_t)leftComplication bottomRightComplication:(unint64_t)bottomRightComplication
{
  v11.receiver = self;
  v11.super_class = NTKCornerComplicationConfiguration;
  result = [(NTKCornerComplicationConfiguration *)&v11 init];
  if (result)
  {
    result->_topLeftComplication = complication;
    result->_topRightComplication = rightComplication;
    result->_bottomLeftComplication = leftComplication;
    result->_bottomRightComplication = bottomRightComplication;
  }

  return result;
}

- (id)complicationSlotDescriptors
{
  v29[1] = *MEMORY[0x277D85DE8];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v3 = NTKAllSignatureCircularTypes();
  [indexSet addIndexes:v3];

  v4 = NTKAllSignatureCornerTypes();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_topLeftComplication];
  v29[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v7 = NTKComplicationTypeRankedListWithDefaultTypes(v6);

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_topRightComplication];
  v28 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v10 = NTKComplicationTypeRankedListWithDefaultTypes(v9);

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bottomLeftComplication];
  v27 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v13 = NTKComplicationTypeRankedListWithDefaultTypes(v12);

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bottomRightComplication];
  v26 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v16 = NTKComplicationTypeRankedListWithDefaultTypes(v15);

  v24[0] = @"top-left";
  v17 = NTKComplicationSlotDescriptor(8, v4, v7);
  v25[0] = v17;
  v24[1] = @"top-right";
  v18 = NTKComplicationSlotDescriptor(8, v4, v10);
  v25[1] = v18;
  v24[2] = @"bottom-left";
  v19 = NTKComplicationSlotDescriptor(8, v4, v13);
  v25[2] = v19;
  v24[3] = @"bottom-right";
  v20 = NTKComplicationSlotDescriptor(8, v4, v16);
  v25[3] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  return v21;
}

- (id)orderedComplicationSlots
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"top-left";
  v4[1] = @"top-right";
  v4[2] = @"bottom-left";
  v4[3] = @"bottom-right";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];

  return v2;
}

- (id)richComplicationSlotsForDevice:(id)device
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"top-left";
  v5[1] = @"top-right";
  v5[2] = @"bottom-left";
  v5[3] = @"bottom-right";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];

  return v3;
}

@end
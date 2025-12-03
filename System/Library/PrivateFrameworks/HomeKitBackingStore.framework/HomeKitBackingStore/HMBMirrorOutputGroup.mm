@interface HMBMirrorOutputGroup
- (HMBMirrorOutputGroup)initWithBlockRow:(unint64_t)row options:(id)options;
- (id)description;
@end

@implementation HMBMirrorOutputGroup

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  blockRow = [(HMBMirrorOutputGroup *)self blockRow];
  options = [(HMBMirrorOutputGroup *)self options];
  v6 = [v3 stringWithFormat:@"<HMBLocalZoneOutputRecords: %lu options: %@>", blockRow, options];

  return v6;
}

- (HMBMirrorOutputGroup)initWithBlockRow:(unint64_t)row options:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = HMBMirrorOutputGroup;
  v8 = [(HMBMirrorOutputGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_blockRow = row;
    objc_storeStrong(&v8->_options, options);
  }

  return v9;
}

@end
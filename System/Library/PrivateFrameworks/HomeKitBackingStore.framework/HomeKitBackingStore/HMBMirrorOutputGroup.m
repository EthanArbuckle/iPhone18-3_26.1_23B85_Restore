@interface HMBMirrorOutputGroup
- (HMBMirrorOutputGroup)initWithBlockRow:(unint64_t)a3 options:(id)a4;
- (id)description;
@end

@implementation HMBMirrorOutputGroup

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMBMirrorOutputGroup *)self blockRow];
  v5 = [(HMBMirrorOutputGroup *)self options];
  v6 = [v3 stringWithFormat:@"<HMBLocalZoneOutputRecords: %lu options: %@>", v4, v5];

  return v6;
}

- (HMBMirrorOutputGroup)initWithBlockRow:(unint64_t)a3 options:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMBMirrorOutputGroup;
  v8 = [(HMBMirrorOutputGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_blockRow = a3;
    objc_storeStrong(&v8->_options, a4);
  }

  return v9;
}

@end
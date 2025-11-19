@interface GTMTLResourceUsageItem
+ (void)initialize;
- (GTMTLResourceUsageItem)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTMTLResourceUsageItem

- (void)encodeWithCoder:(id)a3
{
  kind = self->_kind;
  v5 = a3;
  [v5 encodeInt64:kind forKey:@"kind"];
  [v5 encodeInt64:self->_stage forKey:@"stage"];
  [v5 encodeInt64:self->_resourceID forKey:@"resourceID"];
  [v5 encodeInt64:self->_usage forKey:@"usage"];
}

- (GTMTLResourceUsageItem)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GTMTLResourceUsageItem;
  v5 = [(GTMTLResourceUsageItem *)&v7 init];
  if (v5)
  {
    v5->_kind = [v4 decodeInt64ForKey:@"kind"];
    v5->_stage = [v4 decodeInt64ForKey:@"stage"];
    v5->_resourceID = [v4 decodeInt64ForKey:@"resourceID"];
    v5->_usage = [v4 decodeInt64ForKey:@"usage"];
  }

  return v5;
}

+ (void)initialize
{
  [MEMORY[0x277CCAAB0] setClassName:@"DYMTLResourceUsageItem" forClass:objc_opt_class()];
  v2 = MEMORY[0x277CCAAC8];
  v3 = objc_opt_class();

  [v2 setClass:v3 forClassName:@"DYMTLResourceUsageItem"];
}

@end
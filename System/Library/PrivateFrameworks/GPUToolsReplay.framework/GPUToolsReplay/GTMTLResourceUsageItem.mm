@interface GTMTLResourceUsageItem
+ (void)initialize;
- (GTMTLResourceUsageItem)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTMTLResourceUsageItem

- (void)encodeWithCoder:(id)coder
{
  kind = self->_kind;
  coderCopy = coder;
  [coderCopy encodeInt64:kind forKey:@"kind"];
  [coderCopy encodeInt64:self->_stage forKey:@"stage"];
  [coderCopy encodeInt64:self->_resourceID forKey:@"resourceID"];
  [coderCopy encodeInt64:self->_usage forKey:@"usage"];
}

- (GTMTLResourceUsageItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GTMTLResourceUsageItem;
  v5 = [(GTMTLResourceUsageItem *)&v7 init];
  if (v5)
  {
    v5->_kind = [coderCopy decodeInt64ForKey:@"kind"];
    v5->_stage = [coderCopy decodeInt64ForKey:@"stage"];
    v5->_resourceID = [coderCopy decodeInt64ForKey:@"resourceID"];
    v5->_usage = [coderCopy decodeInt64ForKey:@"usage"];
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
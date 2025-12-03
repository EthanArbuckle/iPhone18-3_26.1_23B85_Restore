@interface GTReplayQueryRasterMapReply
+ (void)initialize;
- (GTReplayQueryRasterMapReply)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setPhysicalGranularity:(GTSize *)granularity;
@end

@implementation GTReplayQueryRasterMapReply

- (void)setPhysicalGranularity:(GTSize *)granularity
{
  v3 = *&granularity->width;
  self->_physicalGranularity.depth = granularity->depth;
  *&self->_physicalGranularity.width = v3;
}

- (void)encodeWithCoder:(id)coder
{
  width = self->_physicalGranularity.width;
  coderCopy = coder;
  [coderCopy encodeInt64:width forKey:@"physicalGranularity.width"];
  [coderCopy encodeInt64:self->_physicalGranularity.height forKey:@"physicalGranularity.height"];
  [coderCopy encodeInt64:self->_physicalGranularity.depth forKey:@"physicalGranularity.depth"];
  [coderCopy encodeObject:self->_layers forKey:@"layers"];
}

- (GTReplayQueryRasterMapReply)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = GTReplayQueryRasterMapReply;
  v5 = [(GTReplayQueryRasterMapReply *)&v13 init];
  if (v5)
  {
    v5->_physicalGranularity.width = [coderCopy decodeInt64ForKey:@"physicalGranularity.width"];
    v5->_physicalGranularity.height = [coderCopy decodeInt64ForKey:@"physicalGranularity.height"];
    v5->_physicalGranularity.depth = [coderCopy decodeInt64ForKey:@"physicalGranularity.depth"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"layers"];
    layers = v5->_layers;
    v5->_layers = v9;

    v11 = v5;
  }

  return v5;
}

+ (void)initialize
{
  [MEMORY[0x277CCAAB0] setClassName:@"GTMTLReplayRasterMapQuery" forClass:objc_opt_class()];
  v2 = MEMORY[0x277CCAAC8];
  v3 = objc_opt_class();

  [v2 setClass:v3 forClassName:@"GTMTLReplayRasterMapQuery"];
}

@end
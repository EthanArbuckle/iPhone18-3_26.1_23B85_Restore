@interface GTReplayQueryRasterMapReply
+ (void)initialize;
- (GTReplayQueryRasterMapReply)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPhysicalGranularity:(GTSize *)a3;
@end

@implementation GTReplayQueryRasterMapReply

- (void)setPhysicalGranularity:(GTSize *)a3
{
  v3 = *&a3->width;
  self->_physicalGranularity.depth = a3->depth;
  *&self->_physicalGranularity.width = v3;
}

- (void)encodeWithCoder:(id)a3
{
  width = self->_physicalGranularity.width;
  v5 = a3;
  [v5 encodeInt64:width forKey:@"physicalGranularity.width"];
  [v5 encodeInt64:self->_physicalGranularity.height forKey:@"physicalGranularity.height"];
  [v5 encodeInt64:self->_physicalGranularity.depth forKey:@"physicalGranularity.depth"];
  [v5 encodeObject:self->_layers forKey:@"layers"];
}

- (GTReplayQueryRasterMapReply)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GTReplayQueryRasterMapReply;
  v5 = [(GTReplayQueryRasterMapReply *)&v13 init];
  if (v5)
  {
    v5->_physicalGranularity.width = [v4 decodeInt64ForKey:@"physicalGranularity.width"];
    v5->_physicalGranularity.height = [v4 decodeInt64ForKey:@"physicalGranularity.height"];
    v5->_physicalGranularity.depth = [v4 decodeInt64ForKey:@"physicalGranularity.depth"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"layers"];
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
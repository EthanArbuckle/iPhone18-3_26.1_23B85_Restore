@interface NDDownloadLimits
+ (NDDownloadLimits)defaultLimits;
- (BOOL)isEqual:(id)a3;
- (NDDownloadLimits)initWithCoder:(id)a3;
- (NDDownloadLimits)initWithMinDeviceStorage:(int64_t)a3 maxDownloadStorage:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDDownloadLimits

+ (NDDownloadLimits)defaultLimits
{
  if (defaultLimits_onceToken != -1)
  {
    +[NDDownloadLimits defaultLimits];
  }

  v3 = defaultLimits_s_defaults;

  return v3;
}

uint64_t __33__NDDownloadLimits_defaultLimits__block_invoke()
{
  defaultLimits_s_defaults = [[NDDownloadLimits alloc] initWithMinDeviceStorage:2000000000 maxDownloadStorage:5000000000];

  return MEMORY[0x2821F96F8]();
}

- (NDDownloadLimits)initWithMinDeviceStorage:(int64_t)a3 maxDownloadStorage:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = NDDownloadLimits;
  result = [(NDDownloadLimits *)&v7 init];
  if (result)
  {
    result->_minDeviceStorage = a3;
    result->_maxDownloadStorage = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5 && (v6 = -[NDDownloadLimits minDeviceStorage](self, "minDeviceStorage"), v6 == [v5 minDeviceStorage]))
  {
    v7 = [(NDDownloadLimits *)self maxDownloadStorage];
    v8 = v7 == [v5 maxDownloadStorage];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NDDownloadLimits minDeviceStorage](self, "minDeviceStorage")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NDDownloadLimits maxDownloadStorage](self, "maxDownloadStorage")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D30F48]) initWithObject:self];
  v4 = [MEMORY[0x277CCA8E8] stringFromByteCount:-[NDDownloadLimits minDeviceStorage](self countStyle:{"minDeviceStorage"), 0}];
  [v3 addField:@"minDeviceStorage" object:v4];

  v5 = [MEMORY[0x277CCA8E8] stringFromByteCount:-[NDDownloadLimits maxDownloadStorage](self countStyle:{"maxDownloadStorage"), 0}];
  [v3 addField:@"maxDownloadStorage" object:v5];

  v6 = [v3 descriptionString];

  return v6;
}

- (NDDownloadLimits)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minDeviceStorage"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxDownloadStorage"];

  v7 = -[NDDownloadLimits initWithMinDeviceStorage:maxDownloadStorage:](self, "initWithMinDeviceStorage:maxDownloadStorage:", [v5 unsignedLongLongValue], objc_msgSend(v6, "unsignedLongLongValue"));
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithLongLong:{-[NDDownloadLimits minDeviceStorage](self, "minDeviceStorage")}];
  [v5 encodeObject:v6 forKey:@"minDeviceStorage"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NDDownloadLimits maxDownloadStorage](self, "maxDownloadStorage")}];
  [v5 encodeObject:v7 forKey:@"maxDownloadStorage"];
}

@end
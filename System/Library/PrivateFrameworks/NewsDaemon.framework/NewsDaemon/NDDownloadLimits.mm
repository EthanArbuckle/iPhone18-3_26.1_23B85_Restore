@interface NDDownloadLimits
+ (NDDownloadLimits)defaultLimits;
- (BOOL)isEqual:(id)equal;
- (NDDownloadLimits)initWithCoder:(id)coder;
- (NDDownloadLimits)initWithMinDeviceStorage:(int64_t)storage maxDownloadStorage:(int64_t)downloadStorage;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (NDDownloadLimits)initWithMinDeviceStorage:(int64_t)storage maxDownloadStorage:(int64_t)downloadStorage
{
  v7.receiver = self;
  v7.super_class = NDDownloadLimits;
  result = [(NDDownloadLimits *)&v7 init];
  if (result)
  {
    result->_minDeviceStorage = storage;
    result->_maxDownloadStorage = downloadStorage;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5 && (v6 = -[NDDownloadLimits minDeviceStorage](self, "minDeviceStorage"), v6 == [v5 minDeviceStorage]))
  {
    maxDownloadStorage = [(NDDownloadLimits *)self maxDownloadStorage];
    v8 = maxDownloadStorage == [v5 maxDownloadStorage];
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

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (NDDownloadLimits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minDeviceStorage"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maxDownloadStorage"];

  v7 = -[NDDownloadLimits initWithMinDeviceStorage:maxDownloadStorage:](self, "initWithMinDeviceStorage:maxDownloadStorage:", [v5 unsignedLongLongValue], objc_msgSend(v6, "unsignedLongLongValue"));
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithLongLong:{-[NDDownloadLimits minDeviceStorage](self, "minDeviceStorage")}];
  [coderCopy encodeObject:v6 forKey:@"minDeviceStorage"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NDDownloadLimits maxDownloadStorage](self, "maxDownloadStorage")}];
  [coderCopy encodeObject:v7 forKey:@"maxDownloadStorage"];
}

@end
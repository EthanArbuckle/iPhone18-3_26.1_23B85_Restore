@interface NetworkQualityServersResult
- (NetworkQualityServersResult)init;
- (NetworkQualityServersResult)initWithCoder:(id)coder;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation NetworkQualityServersResult

- (NetworkQualityServersResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NetworkQualityServersResult;
  v5 = [(NetworkQualityServersResult *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_servers"];
    servers = v5->_servers;
    v5->_servers = v9;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: _servers=%@>", v5, self->_servers];

  return v6;
}

- (NetworkQualityServersResult)init
{
  v6.receiver = self;
  v6.super_class = NetworkQualityServersResult;
  v2 = [(NetworkQualityServersResult *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    servers = v2->_servers;
    v2->_servers = v3;
  }

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NetworkQualityServersResult);
  servers = [(NetworkQualityServersResult *)self servers];
  v6 = [servers copy];
  [(NetworkQualityServersResult *)v4 setServers:v6];

  return v4;
}

@end
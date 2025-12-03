@interface BDSCRDTModelSyncVersionInfo
- (BDSCRDTModelSyncVersionInfo)initWithCoder:(id)coder;
- (BDSCRDTModelSyncVersionInfo)initWithData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSCRDTModelSyncVersionInfo

- (BDSCRDTModelSyncVersionInfo)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = BDSCRDTModelSyncVersionInfo;
  v6 = [(BDSCRDTModelSyncVersionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (BDSCRDTModelSyncVersionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSCRDTModelSyncVersionInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(BDSCRDTModelSyncVersionInfo *)self data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSCRDTModelSyncVersionInfo);
  if (v4)
  {
    data = [(BDSCRDTModelSyncVersionInfo *)self data];
    [(BDSCRDTModelSyncVersionInfo *)v4 setData:data];
  }

  return v4;
}

@end
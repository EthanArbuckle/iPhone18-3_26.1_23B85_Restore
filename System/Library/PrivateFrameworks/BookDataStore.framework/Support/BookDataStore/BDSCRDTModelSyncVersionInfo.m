@interface BDSCRDTModelSyncVersionInfo
- (BDSCRDTModelSyncVersionInfo)initWithCoder:(id)a3;
- (BDSCRDTModelSyncVersionInfo)initWithData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSCRDTModelSyncVersionInfo

- (BDSCRDTModelSyncVersionInfo)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BDSCRDTModelSyncVersionInfo;
  v6 = [(BDSCRDTModelSyncVersionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (BDSCRDTModelSyncVersionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSCRDTModelSyncVersionInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSCRDTModelSyncVersionInfo *)self data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSCRDTModelSyncVersionInfo);
  if (v4)
  {
    v5 = [(BDSCRDTModelSyncVersionInfo *)self data];
    [(BDSCRDTModelSyncVersionInfo *)v4 setData:v5];
  }

  return v4;
}

@end
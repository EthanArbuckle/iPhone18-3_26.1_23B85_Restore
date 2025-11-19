@interface BDSDistributedPriceTrackingConfigItemID
- (BDSDistributedPriceTrackingConfigItemID)initWithAdamID:(id)a3 isAudiobook:(BOOL)a4;
- (BDSDistributedPriceTrackingConfigItemID)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSDistributedPriceTrackingConfigItemID

- (BDSDistributedPriceTrackingConfigItemID)initWithAdamID:(id)a3 isAudiobook:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = BDSDistributedPriceTrackingConfigItemID;
  v7 = [(BDSDistributedPriceTrackingConfigItemID *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_10024C800;
    }

    objc_storeStrong(&v7->_adamID, v10);

    v7->_isAudiobook = a4;
  }

  return v7;
}

- (id)description
{
  if ([(BDSDistributedPriceTrackingConfigItemID *)self isAudiobook])
  {
    v3 = @"A";
  }

  else
  {
    v3 = @"B";
  }

  v4 = [(BDSDistributedPriceTrackingConfigItemID *)self adamID];
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(BDSDistributedPriceTrackingConfigItemID *)self adamID];
  [v5 encodeObject:v4 forKey:@"adamID"];

  [v5 encodeBool:-[BDSDistributedPriceTrackingConfigItemID isAudiobook](self forKey:{"isAudiobook"), @"isAudiobook"}];
}

- (BDSDistributedPriceTrackingConfigItemID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
  v6 = [v4 decodeBoolForKey:@"isAudiobook"];

  v7 = [(BDSDistributedPriceTrackingConfigItemID *)self initWithAdamID:v5 isAudiobook:v6];
  return v7;
}

@end
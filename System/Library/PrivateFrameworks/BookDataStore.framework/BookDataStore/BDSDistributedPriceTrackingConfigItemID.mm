@interface BDSDistributedPriceTrackingConfigItemID
- (BDSDistributedPriceTrackingConfigItemID)initWithAdamID:(id)d isAudiobook:(BOOL)audiobook;
- (BDSDistributedPriceTrackingConfigItemID)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSDistributedPriceTrackingConfigItemID

- (BDSDistributedPriceTrackingConfigItemID)initWithAdamID:(id)d isAudiobook:(BOOL)audiobook
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BDSDistributedPriceTrackingConfigItemID;
  v7 = [(BDSDistributedPriceTrackingConfigItemID *)&v12 init];
  if (v7)
  {
    v8 = [dCopy copy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_1F5E67610;
    }

    objc_storeStrong(&v7->_adamID, v10);

    v7->_isAudiobook = audiobook;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(BDSDistributedPriceTrackingConfigItemID *)self isAudiobook])
  {
    v4 = @"A";
  }

  else
  {
    v4 = @"B";
  }

  adamID = [(BDSDistributedPriceTrackingConfigItemID *)self adamID];
  v6 = [v3 stringWithFormat:@"%@.%@", v4, adamID];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  adamID = [(BDSDistributedPriceTrackingConfigItemID *)self adamID];
  [coderCopy encodeObject:adamID forKey:@"adamID"];

  [coderCopy encodeBool:-[BDSDistributedPriceTrackingConfigItemID isAudiobook](self forKey:{"isAudiobook"), @"isAudiobook"}];
}

- (BDSDistributedPriceTrackingConfigItemID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adamID"];
  v6 = [coderCopy decodeBoolForKey:@"isAudiobook"];

  v7 = [(BDSDistributedPriceTrackingConfigItemID *)self initWithAdamID:v5 isAudiobook:v6];
  return v7;
}

@end
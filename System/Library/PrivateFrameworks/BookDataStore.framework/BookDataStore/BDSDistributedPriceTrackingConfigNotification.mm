@interface BDSDistributedPriceTrackingConfigNotification
- (BDSDistributedPriceTrackingConfigNotification)initWithCoder:(id)a3;
- (BDSDistributedPriceTrackingConfigNotification)initWithTitleSingleAudiobook:(id)a3 titleSingleBook:(id)a4 titleMultiple:(id)a5 bodySingleAudiobook:(id)a6 bodySingleBook:(id)a7 bodyMultiple:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSDistributedPriceTrackingConfigNotification

- (BDSDistributedPriceTrackingConfigNotification)initWithTitleSingleAudiobook:(id)a3 titleSingleBook:(id)a4 titleMultiple:(id)a5 bodySingleAudiobook:(id)a6 bodySingleBook:(id)a7 bodyMultiple:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v40.receiver = self;
  v40.super_class = BDSDistributedPriceTrackingConfigNotification;
  v20 = [(BDSDistributedPriceTrackingConfigNotification *)&v40 init];
  if (v20)
  {
    v21 = [v14 copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_1F5E67610;
    }

    objc_storeStrong(&v20->_titleSingleAudiobook, v23);

    v24 = [v15 copy];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &stru_1F5E67610;
    }

    objc_storeStrong(&v20->_titleSingleBook, v26);

    v27 = [v16 copy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_1F5E67610;
    }

    objc_storeStrong(&v20->_titleMultiple, v29);

    v30 = [v17 copy];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = &stru_1F5E67610;
    }

    objc_storeStrong(&v20->_bodySingleAudiobook, v32);

    v33 = [v18 copy];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = &stru_1F5E67610;
    }

    objc_storeStrong(&v20->_bodySingleBook, v35);

    v36 = [v19 copy];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = &stru_1F5E67610;
    }

    objc_storeStrong(&v20->_bodyMultiple, v38);
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSDistributedPriceTrackingConfigNotification *)self titleSingleAudiobook];
  [v4 encodeObject:v5 forKey:@"titleSingleAudiobook"];

  v6 = [(BDSDistributedPriceTrackingConfigNotification *)self titleSingleBook];
  [v4 encodeObject:v6 forKey:@"titleSingleBook"];

  v7 = [(BDSDistributedPriceTrackingConfigNotification *)self titleMultiple];
  [v4 encodeObject:v7 forKey:@"titleMultiple"];

  v8 = [(BDSDistributedPriceTrackingConfigNotification *)self bodySingleAudiobook];
  [v4 encodeObject:v8 forKey:@"bodySingleAudiobook"];

  v9 = [(BDSDistributedPriceTrackingConfigNotification *)self bodySingleBook];
  [v4 encodeObject:v9 forKey:@"bodySingleBook"];

  v10 = [(BDSDistributedPriceTrackingConfigNotification *)self bodyMultiple];
  [v4 encodeObject:v10 forKey:@"bodyMultiple"];
}

- (BDSDistributedPriceTrackingConfigNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleSingleAudiobook"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleSingleBook"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleMultiple"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bodySingleAudiobook"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bodySingleBook"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bodyMultiple"];

  v11 = [(BDSDistributedPriceTrackingConfigNotification *)self initWithTitleSingleAudiobook:v5 titleSingleBook:v6 titleMultiple:v7 bodySingleAudiobook:v8 bodySingleBook:v9 bodyMultiple:v10];
  return v11;
}

@end
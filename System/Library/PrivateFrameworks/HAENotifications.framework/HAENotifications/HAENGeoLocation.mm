@interface HAENGeoLocation
- (HAENGeoLocation)init;
- (id)describeSource;
- (void)fetchGeoLocation;
@end

@implementation HAENGeoLocation

- (HAENGeoLocation)init
{
  v13.receiver = self;
  v13.super_class = HAENGeoLocation;
  v2 = [(HAENGeoLocation *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v4 = [v3 getPreferenceFor:*MEMORY[0x277CEFAC8]];
    countryCode = v2->countryCode;
    v2->countryCode = v4;

    timestamp = v2->timestamp;
    *&v2->source = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v2->countryCode == 0), 0x1FuLL)), 0xFF00000001, 0x10000000002);
    v2->timestamp = 0;

    [(HAENGeoLocation *)v2 fetchGeoLocation];
    v7 = MEMORY[0x277CCACA8];
    v8 = v2->countryCode;
    v9 = [(HAENGeoLocation *)v2 describeSource];
    v10 = [v7 stringWithFormat:@"HAENGeoLocation: [%@, %@, %@]", v8, v9, v2->timestamp];
    immutableDescription = v2->immutableDescription;
    v2->immutableDescription = v10;
  }

  return v2;
}

- (id)describeSource
{
  v4 = self->source - 2;
  v5 = @"unknown";
  v6 = @"unknown";
  if (v4 <= 4)
  {
    v6 = off_27969F358[v4];
  }

  if (self->sourceDevice == 256)
  {
    v5 = @"local";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v6, v5, v2, v3];
}

- (void)fetchGeoLocation
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->source == 2)
  {
    v3 = HAENotificationsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(HAENGeoLocation *)self description];
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, "Geo Location Country Code is overriden %@", buf, 0xCu);
    }
  }

  else
  {
    *buf = 1;
    v5 = [MEMORY[0x277D0EB00] sharedConfiguration];
    v14 = 0;
    v6 = [v5 countryCodeWithSource:buf updatedAtTime:&v14];
    v7 = v14;

    countryCode = self->countryCode;
    self->countryCode = v6;
    v9 = v6;

    timestamp = self->timestamp;
    self->timestamp = v7;
    v11 = v7;

    v12 = vld1_dup_f32(buf);
    *&self->source = vand_s8(v12, 0xFF00000000FFLL);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end
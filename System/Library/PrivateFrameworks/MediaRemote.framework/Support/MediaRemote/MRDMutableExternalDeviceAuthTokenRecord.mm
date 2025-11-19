@interface MRDMutableExternalDeviceAuthTokenRecord
- (void)setDateCreated:(id)a3;
- (void)setDeviceID:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setToken:(id)a3;
@end

@implementation MRDMutableExternalDeviceAuthTokenRecord

- (void)setDeviceID:(id)a3
{
  if (self->super._deviceID != a3)
  {
    v5 = [a3 copy];
    deviceID = self->super._deviceID;
    self->super._deviceID = v5;
  }
}

- (void)setToken:(id)a3
{
  if (self->super._token != a3)
  {
    v5 = [a3 copy];
    token = self->super._token;
    self->super._token = v5;
  }
}

- (void)setDateCreated:(id)a3
{
  v5 = a3;
  dateCreated = self->super._dateCreated;
  p_dateCreated = &self->super._dateCreated;
  if (dateCreated != v5)
  {
    v8 = v5;
    objc_storeStrong(p_dateCreated, a3);
    v5 = v8;
  }
}

- (void)setExpirationDate:(id)a3
{
  v5 = a3;
  expirationDate = self->super._expirationDate;
  p_expirationDate = &self->super._expirationDate;
  if (expirationDate != v5)
  {
    v8 = v5;
    objc_storeStrong(p_expirationDate, a3);
    v5 = v8;
  }
}

@end
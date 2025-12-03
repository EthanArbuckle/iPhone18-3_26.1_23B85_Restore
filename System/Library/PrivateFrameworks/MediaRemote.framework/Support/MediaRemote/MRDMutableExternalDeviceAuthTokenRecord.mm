@interface MRDMutableExternalDeviceAuthTokenRecord
- (void)setDateCreated:(id)created;
- (void)setDeviceID:(id)d;
- (void)setExpirationDate:(id)date;
- (void)setToken:(id)token;
@end

@implementation MRDMutableExternalDeviceAuthTokenRecord

- (void)setDeviceID:(id)d
{
  if (self->super._deviceID != d)
  {
    v5 = [d copy];
    deviceID = self->super._deviceID;
    self->super._deviceID = v5;
  }
}

- (void)setToken:(id)token
{
  if (self->super._token != token)
  {
    v5 = [token copy];
    token = self->super._token;
    self->super._token = v5;
  }
}

- (void)setDateCreated:(id)created
{
  createdCopy = created;
  dateCreated = self->super._dateCreated;
  p_dateCreated = &self->super._dateCreated;
  if (dateCreated != createdCopy)
  {
    v8 = createdCopy;
    objc_storeStrong(p_dateCreated, created);
    createdCopy = v8;
  }
}

- (void)setExpirationDate:(id)date
{
  dateCopy = date;
  expirationDate = self->super._expirationDate;
  p_expirationDate = &self->super._expirationDate;
  if (expirationDate != dateCopy)
  {
    v8 = dateCopy;
    objc_storeStrong(p_expirationDate, date);
    dateCopy = v8;
  }
}

@end
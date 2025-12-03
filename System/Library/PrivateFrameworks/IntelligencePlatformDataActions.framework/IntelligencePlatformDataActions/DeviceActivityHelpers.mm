@interface DeviceActivityHelpers
- (void)fetchSegmentsWithStartDate:(NSDate *)date endDate:(NSDate *)endDate userId:(NSString *)id deviceId:(NSString *)deviceId completionHandler:(id)handler;
@end

@implementation DeviceActivityHelpers

- (void)fetchSegmentsWithStartDate:(NSDate *)date endDate:(NSDate *)endDate userId:(NSString *)id deviceId:(NSString *)deviceId completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = date;
  v13[3] = endDate;
  v13[4] = id;
  v13[5] = deviceId;
  v13[6] = v12;
  v13[7] = self;
  dateCopy = date;
  endDateCopy = endDate;
  idCopy = id;
  deviceIdCopy = deviceId;
  selfCopy = self;

  sub_254FCEF0C(&unk_254FF3878, v13);
}

@end
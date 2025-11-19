@interface DeviceActivityHelpers
- (void)fetchSegmentsWithStartDate:(NSDate *)a3 endDate:(NSDate *)a4 userId:(NSString *)a5 deviceId:(NSString *)a6 completionHandler:(id)a7;
@end

@implementation DeviceActivityHelpers

- (void)fetchSegmentsWithStartDate:(NSDate *)a3 endDate:(NSDate *)a4 userId:(NSString *)a5 deviceId:(NSString *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = self;

  sub_254FCEF0C(&unk_254FF3878, v13);
}

@end
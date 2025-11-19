@interface BlastDoorBackgroundRequestInfo
- (BlastDoorBackgroundRequestInfo)init;
- (NSString)description;
@end

@implementation BlastDoorBackgroundRequestInfo

- (NSString)description
{
  v2 = *&self->backgroundRequestInfo[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo + 8];
  v3 = *&self->backgroundRequestInfo[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo + 16];
  v6 = *(&self->super.isa + OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo);
  v7 = *&self->backgroundRequestInfo[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo];
  v8 = self->backgroundRequestInfo[OBJC_IVAR___BlastDoorBackgroundRequestInfo_backgroundRequestInfo + 24];

  sub_213FDC9D0(v2, v3);
  sub_2146D9608();
  v4 = sub_2146D9588();

  return v4;
}

- (BlastDoorBackgroundRequestInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface DMCNextNag
- (DMCNextNag)init;
- (DMCNextNag)initWithDate:(id)date nearDeadline:(BOOL)deadline;
- (NSString)date;
@end

@implementation DMCNextNag

- (NSString)date
{
  v2 = *(self + OBJC_IVAR___DMCNextNag_date);
  v3 = *(self + OBJC_IVAR___DMCNextNag_date + 8);

  v4 = sub_247F23EFC();

  return v4;
}

- (DMCNextNag)initWithDate:(id)date nearDeadline:(BOOL)deadline
{
  v5 = sub_247F23DEC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F23DCC();
  return DMCNextNag.init(date:nearDeadline:)(v8, deadline);
}

- (DMCNextNag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
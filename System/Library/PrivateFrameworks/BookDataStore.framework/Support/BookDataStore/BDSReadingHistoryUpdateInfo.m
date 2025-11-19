@interface BDSReadingHistoryUpdateInfo
- (BDSReadingHistoryUpdateInfo)init;
- (BDSReadingHistoryUpdateInfo)initWithCoder:(id)a3;
- (BDSReadingHistoryUpdateInfo)initWithUpdate:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSReadingHistoryUpdateInfo

- (BDSReadingHistoryUpdateInfo)initWithCoder:(id)a3
{
  v4 = a3;
  result = sub_10011C4B8(v4);
  if (result)
  {
    *(&self->super.isa + OBJC_IVAR___BDSReadingHistoryUpdateInfo_update) = result;
    v7.receiver = self;
    v7.super_class = BDSReadingHistoryUpdateInfo;
    v6 = [(BDSReadingHistoryUpdateInfo *)&v7 init];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [(BDSReadingHistoryUpdateInfo *)v6 update];
  sub_10011C7B0(v4);
}

- (BDSReadingHistoryUpdateInfo)initWithUpdate:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___BDSReadingHistoryUpdateInfo_update) = a3;
  v5.receiver = self;
  v5.super_class = BDSReadingHistoryUpdateInfo;
  v3 = a3;
  return [(BDSReadingHistoryUpdateInfo *)&v5 init];
}

- (NSString)description
{
  v2 = self;
  v3 = [(BDSReadingHistoryUpdateInfo *)v2 update];
  ReadingHistoryUpdate.description.getter();

  v4 = sub_1001C5FE8();

  return v4;
}

- (BDSReadingHistoryUpdateInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
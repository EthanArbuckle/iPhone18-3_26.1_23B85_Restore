@interface BDSReadingHistoryUpdateInfo
- (BDSReadingHistoryUpdateInfo)init;
- (BDSReadingHistoryUpdateInfo)initWithCoder:(id)coder;
- (BDSReadingHistoryUpdateInfo)initWithUpdate:(id)update;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSReadingHistoryUpdateInfo

- (BDSReadingHistoryUpdateInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  result = sub_1E4654080(coderCopy);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  update = [(BDSReadingHistoryUpdateInfo *)selfCopy update];
  sub_1E46542E8(coderCopy);
}

- (BDSReadingHistoryUpdateInfo)initWithUpdate:(id)update
{
  *(&self->super.isa + OBJC_IVAR___BDSReadingHistoryUpdateInfo_update) = update;
  v5.receiver = self;
  v5.super_class = BDSReadingHistoryUpdateInfo;
  updateCopy = update;
  return [(BDSReadingHistoryUpdateInfo *)&v5 init];
}

- (NSString)description
{
  selfCopy = self;
  update = [(BDSReadingHistoryUpdateInfo *)selfCopy update];
  ReadingHistoryUpdate.description.getter();

  v4 = sub_1E470AF0C();

  return v4;
}

- (BDSReadingHistoryUpdateInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
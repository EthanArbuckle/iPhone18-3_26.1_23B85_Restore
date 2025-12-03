@interface TSAlertArticleUnavailable
- (TSAlertArticleUnavailable)init;
- (TSAlertArticleUnavailable)initWithBlockedReason:(unint64_t)reason;
- (TSAlertArticleUnavailable)initWithType:(int64_t)type;
@end

@implementation TSAlertArticleUnavailable

- (TSAlertArticleUnavailable)initWithBlockedReason:(unint64_t)reason
{
  v4 = sub_219BDE254();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDE214();
  (*(v5 + 32))(self + OBJC_IVAR___TSAlertArticleUnavailable_alert, v7, v4);
  v8 = type metadata accessor for BridgedAlertArticleUnavailable();
  v10.receiver = self;
  v10.super_class = v8;
  return [(TSAlertArticleUnavailable *)&v10 init];
}

- (TSAlertArticleUnavailable)initWithType:(int64_t)type
{
  if (!type)
  {
    v4 = MEMORY[0x277D2FEB8];
LABEL_5:
    v5 = OBJC_IVAR___TSAlertArticleUnavailable_alert;
    v6 = *v4;
    v7 = sub_219BDE254();
    (*(*(v7 - 8) + 104))(self + v5, v6, v7);
    v9.receiver = self;
    v9.super_class = type metadata accessor for BridgedAlertArticleUnavailable();
    return [(TSAlertArticleUnavailable *)&v9 init];
  }

  if (type == 1)
  {
    v4 = MEMORY[0x277D2FEC0];
    goto LABEL_5;
  }

  result = sub_219BF7974();
  __break(1u);
  return result;
}

- (TSAlertArticleUnavailable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
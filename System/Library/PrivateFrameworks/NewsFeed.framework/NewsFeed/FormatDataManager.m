@interface FormatDataManager
- (_TtC8NewsFeed17FormatDataManager)init;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation FormatDataManager

- (_TtC8NewsFeed17FormatDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  v11 = a5;
  if (a4)
  {
    v14 = sub_1D7262B0C();
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a5)
  {
LABEL_3:
    v11 = sub_1D7262B0C();
  }

LABEL_4:
  if (a6)
  {
    a6 = sub_1D7262B0C();
  }

  v15 = a3;
  v16 = a7;
  v17 = self;
  if (v16)
  {
    v18 = sub_1D7262B0C();
  }

  else
  {
    v18 = 0;
  }

  sub_1D5F42068(v14, v11, a6, v18, a8);
}

@end
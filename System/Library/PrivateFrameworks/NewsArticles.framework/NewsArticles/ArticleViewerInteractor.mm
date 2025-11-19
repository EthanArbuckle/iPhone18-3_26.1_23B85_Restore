@interface ArticleViewerInteractor
- (_TtC12NewsArticles23ArticleViewerInteractor)init;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation ArticleViewerInteractor

- (_TtC12NewsArticles23ArticleViewerInteractor)init
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
    sub_1D7D309AC();
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a5)
  {
LABEL_3:
    v11 = sub_1D7D309AC();
  }

LABEL_4:
  if (a6)
  {
    sub_1D7D309AC();
  }

  v14 = a3;
  v15 = a7;
  v16 = self;
  if (v15)
  {
    sub_1D7D309AC();
  }

  sub_1D7A6B9E4(v11, a8);
}

@end
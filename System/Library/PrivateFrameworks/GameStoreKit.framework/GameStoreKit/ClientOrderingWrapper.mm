@interface ClientOrderingWrapper
- (_TtC12GameStoreKit21ClientOrderingWrapper)init;
- (void)orderedVisibleIAPs:(id)a3 :(id)a4 :(id)a5 :(id)a6 :(id)a7;
- (void)visibilityForIAPs:(id)a3 :(id)a4;
@end

@implementation ClientOrderingWrapper

- (void)visibilityForIAPs:(id)a3 :(id)a4
{
  v6 = sub_24F92AE38();
  v7 = a4;
  v8 = self;
  sub_24EE05720(v6, v7);
}

- (void)orderedVisibleIAPs:(id)a3 :(id)a4 :(id)a5 :(id)a6 :(id)a7
{
  v10 = a4;
  if (a3)
  {
    v12 = sub_24F92B0D8();
    v14 = v13;
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  v14 = 0;
  if (a4)
  {
LABEL_3:
    v10 = sub_24F92B5A8();
  }

LABEL_4:
  if (a5)
  {
    a5 = sub_24F92B5A8();
  }

  v15 = a6;
  v16 = a7;
  v17 = self;
  if (v15)
  {
    v18 = sub_24F92B0D8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  sub_24EE05ACC(v12, v14, v10, a5, v18, v20, v16);
}

- (_TtC12GameStoreKit21ClientOrderingWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
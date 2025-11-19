@interface FMAPSConnectionHandler
- (_TtC7FMFCore22FMAPSConnectionHandler)init;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
@end

@implementation FMAPSConnectionHandler

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = sub_24A4AAA10();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_24A3A8D3C(v9, v11);
  sub_24A386DFC(v9, v11);
}

- (_TtC7FMFCore22FMAPSConnectionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v8 = a4;
  if (a4)
  {
    v10 = a3;
    v11 = a5;
    v12 = a6;
    v13 = self;
    v14 = v8;
    v8 = sub_24A4AAA10();
    v16 = v15;

    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = a3;
    v18 = a5;
    v19 = a6;
    v20 = self;
    v16 = 0xF000000000000000;
    if (a5)
    {
LABEL_3:
      sub_24A4AB850();

      if (!a6)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  if (a6)
  {
LABEL_4:
    sub_24A4AB850();
  }

LABEL_7:
  sub_24A456BE4(v8, v16);

  sub_24A386DFC(v8, v16);
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v5 = a5;
  if (a4)
  {
    v8 = sub_24A4AB850();
    v10 = v9;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (a5)
  {
LABEL_3:
    v5 = sub_24A4AB780();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  sub_24A45714C(v8, v10, v5);
}

@end
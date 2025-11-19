@interface DKIDSHandler
- (_TtC11DockKitCore12DKIDSHandler)init;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation DKIDSHandler

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  if (a5)
  {
    v12 = a3;
    v13 = a4;
    v14 = a6;
    v15 = a7;
    v16 = self;
    v17 = v9;
    v9 = sub_224627038();
    v19 = v18;

    if (a6)
    {
LABEL_3:
      v20 = sub_224627CD8();
      v22 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    v23 = a3;
    v24 = a4;
    v25 = a6;
    v26 = a7;
    v27 = self;
    v19 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v22 = 0;
LABEL_6:
  sub_224590994(v9, v19, v20, v22);

  sub_2245687AC(v9, v19);
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v8 = a6;
  if (a5)
  {
    sub_224627C58();
    if (v8)
    {
LABEL_3:
      v12 = sub_224627CD8();
      v8 = v13;
      goto LABEL_6;
    }
  }

  else if (a6)
  {
    goto LABEL_3;
  }

  v12 = 0;
LABEL_6:
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = self;
  sub_22459109C(a3, v12, v8);
}

- (_TtC11DockKitCore12DKIDSHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DKIDSHandler();
  return [(DKIDSHandler *)&v3 init];
}

@end
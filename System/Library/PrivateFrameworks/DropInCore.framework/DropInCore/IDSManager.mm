@interface IDSManager
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation IDSManager

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  if (a5)
  {
    sub_249E7A9D8();
    if (!a6)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a6)
  {
LABEL_3:
    sub_249E7AAA8();
  }

LABEL_5:
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = self;
  sub_249E59B90();
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  if (a5)
  {
    sub_249E7AAA8();
  }

  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = self;
  sub_249E5C678();
}

@end
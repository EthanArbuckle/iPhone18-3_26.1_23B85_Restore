@interface PushNotifications
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation PushNotifications

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = v4;
    v4 = sub_217005FB4();
    v10 = v9;
  }

  else
  {
    v11 = a3;
    v12 = self;
    v10 = 0xF000000000000000;
  }

  sub_21677A510(v4, v10);
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v5 = a5;
  if (a4)
  {
    v8 = sub_21700E514();
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
    v5 = sub_21700E354();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  sub_216EFD3C4(v12, v8, v10, v5);
}

@end
@interface IDSManager
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation IDSManager

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  if (message)
  {
    sub_249E7A9D8();
    if (!d)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (d)
  {
LABEL_3:
    sub_249E7AAA8();
  }

LABEL_5:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_249E59B90();
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  if (identifier)
  {
    sub_249E7AAA8();
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  selfCopy = self;
  sub_249E5C678();
}

@end
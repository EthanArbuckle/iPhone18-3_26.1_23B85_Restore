@interface IDSMessageDeliveryFactory
+ (id)sharedFactory;
- (id)createAPNSMessageDelivery;
- (id)createHTTPMessageDelivery;
@end

@implementation IDSMessageDeliveryFactory

+ (id)sharedFactory
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10051FEF8;
  block[3] = &unk_100BD75B8;
  block[4] = a1;
  if (qword_100CBEE70 != -1)
  {
    dispatch_once(&qword_100CBEE70, block);
  }

  v2 = qword_100CBEE68;

  return v2;
}

- (id)createHTTPMessageDelivery
{
  v2 = objc_alloc_init(+[FTMessageDelivery HTTPMessageDeliveryClass]);

  return v2;
}

- (id)createAPNSMessageDelivery
{
  v2 = objc_alloc_init(+[FTMessageDelivery APNSMessageDeliveryClass]);

  return v2;
}

@end
@interface FTiMessageStatus
+ (id)sharedInstance;
- (BOOL)iMessageSupported;
- (id)initPrivate;
@end

@implementation FTiMessageStatus

+ (id)sharedInstance
{
  if (qword_1ED768738 != -1)
  {
    sub_19596338C();
  }

  v3 = qword_1ED768748;

  return v3;
}

- (id)initPrivate
{
  v6.receiver = self;
  v6.super_class = FTiMessageStatus;
  v2 = [(FTiMessageStatus *)&v6 init];
  if (v2)
  {
    v3 = +[FTServiceStatus sharedInstance];
    serviceStatus = v2->_serviceStatus;
    v2->_serviceStatus = v3;
  }

  return v2;
}

- (BOOL)iMessageSupported
{
  serviceStatus = [(FTiMessageStatus *)self serviceStatus];
  iMessageSupported = [serviceStatus iMessageSupported];

  return iMessageSupported;
}

@end
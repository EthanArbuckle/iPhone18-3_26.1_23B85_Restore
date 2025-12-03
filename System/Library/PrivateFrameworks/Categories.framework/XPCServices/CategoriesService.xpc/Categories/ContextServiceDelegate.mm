@interface ContextServiceDelegate
- (ContextServiceDelegate)init;
@end

@implementation ContextServiceDelegate

- (ContextServiceDelegate)init
{
  v13.receiver = self;
  v13.super_class = ContextServiceDelegate;
  v2 = [(ContextServiceDelegate *)&v13 init];
  v3 = +[CTCategory client];
  indexVersionId = [v3 indexVersionId];
  v5 = [indexVersionId copy];
  currentIndexVersionID = v2->_currentIndexVersionID;
  v2->_currentIndexVersionID = v5;

  objc_initWeak(&location, v2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000012A0;
  v9[3] = &unk_10000C3C0;
  v7 = v3;
  v10 = v7;
  objc_copyWeak(&v11, &location);
  [v7 registerConfigurationUpdateHandler:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
  return v2;
}

@end
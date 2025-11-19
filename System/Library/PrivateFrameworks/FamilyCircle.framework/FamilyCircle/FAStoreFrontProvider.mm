@interface FAStoreFrontProvider
- (id)fetchCurrentStoreFrontWithSelectedStoreFront:(id)a3;
@end

@implementation FAStoreFrontProvider

- (id)fetchCurrentStoreFrontWithSelectedStoreFront:(id)a3
{
  v3 = a3;
  v4 = [AAFPromise alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008764;
  v8[3] = &unk_1000A6198;
  v9 = v3;
  v5 = v3;
  v6 = [v4 initWithBlock:v8];

  return v6;
}

@end
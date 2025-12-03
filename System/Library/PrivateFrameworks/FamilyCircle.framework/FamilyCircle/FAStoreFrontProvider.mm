@interface FAStoreFrontProvider
- (id)fetchCurrentStoreFrontWithSelectedStoreFront:(id)front;
@end

@implementation FAStoreFrontProvider

- (id)fetchCurrentStoreFrontWithSelectedStoreFront:(id)front
{
  frontCopy = front;
  v4 = [AAFPromise alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008764;
  v8[3] = &unk_1000A6198;
  v9 = frontCopy;
  v5 = frontCopy;
  v6 = [v4 initWithBlock:v8];

  return v6;
}

@end
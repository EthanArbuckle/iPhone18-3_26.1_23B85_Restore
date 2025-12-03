@interface EDMessageActionProvider
- (EDMessageActionProvider)initWithID:(id)d name:(id)name;
@end

@implementation EDMessageActionProvider

- (EDMessageActionProvider)initWithID:(id)d name:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = EDMessageActionProvider;
  v9 = [(EDMessageActionProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ID, d);
    objc_storeStrong(&v10->_name, name);
  }

  return v10;
}

@end
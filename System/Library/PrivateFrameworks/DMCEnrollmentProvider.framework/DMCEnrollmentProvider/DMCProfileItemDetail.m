@interface DMCProfileItemDetail
+ (id)itemDetailWithTitle:(id)a3 detail:(id)a4;
- (DMCProfileItemDetail)initWithTitle:(id)a3 detail:(id)a4 trustText:(id)a5;
@end

@implementation DMCProfileItemDetail

+ (id)itemDetailWithTitle:(id)a3 detail:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DMCProfileItemDetail alloc] initWithTitle:v6 detail:v5 trustText:0];

  return v7;
}

- (DMCProfileItemDetail)initWithTitle:(id)a3 detail:(id)a4 trustText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DMCProfileItemDetail;
  v12 = [(DMCProfileItemDetail *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_detail, a4);
    objc_storeStrong(&v13->_trustText, a5);
  }

  return v13;
}

@end
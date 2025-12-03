@interface DMCProfileItemDetail
+ (id)itemDetailWithTitle:(id)title detail:(id)detail;
- (DMCProfileItemDetail)initWithTitle:(id)title detail:(id)detail trustText:(id)text;
@end

@implementation DMCProfileItemDetail

+ (id)itemDetailWithTitle:(id)title detail:(id)detail
{
  detailCopy = detail;
  titleCopy = title;
  v7 = [[DMCProfileItemDetail alloc] initWithTitle:titleCopy detail:detailCopy trustText:0];

  return v7;
}

- (DMCProfileItemDetail)initWithTitle:(id)title detail:(id)detail trustText:(id)text
{
  titleCopy = title;
  detailCopy = detail;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = DMCProfileItemDetail;
  v12 = [(DMCProfileItemDetail *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_detail, detail);
    objc_storeStrong(&v13->_trustText, text);
  }

  return v13;
}

@end
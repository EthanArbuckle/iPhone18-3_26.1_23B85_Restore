@interface ICMarkupActivityItem
- (ICMarkupActivityItem)initWithAttachment:(id)a3;
@end

@implementation ICMarkupActivityItem

- (ICMarkupActivityItem)initWithAttachment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICMarkupActivityItem;
  v5 = [(ICMarkupActivityItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICMarkupActivityItem *)v5 setAttachment:v4];
  }

  return v6;
}

@end
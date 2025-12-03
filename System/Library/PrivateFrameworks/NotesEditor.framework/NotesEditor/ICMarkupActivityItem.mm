@interface ICMarkupActivityItem
- (ICMarkupActivityItem)initWithAttachment:(id)attachment;
@end

@implementation ICMarkupActivityItem

- (ICMarkupActivityItem)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v8.receiver = self;
  v8.super_class = ICMarkupActivityItem;
  v5 = [(ICMarkupActivityItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICMarkupActivityItem *)v5 setAttachment:attachmentCopy];
  }

  return v6;
}

@end
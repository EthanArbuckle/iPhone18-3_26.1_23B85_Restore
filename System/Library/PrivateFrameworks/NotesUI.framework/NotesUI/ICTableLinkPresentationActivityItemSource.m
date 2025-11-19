@interface ICTableLinkPresentationActivityItemSource
- (ICTableLinkPresentationActivityItemSource)init;
- (ICTableLinkPresentationActivityItemSource)initWithAttachment:(id)a3;
- (id)detail;
@end

@implementation ICTableLinkPresentationActivityItemSource

- (ICTableLinkPresentationActivityItemSource)init
{
  [(ICTableLinkPresentationActivityItemSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICTableLinkPresentationActivityItemSource)initWithAttachment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICTableLinkPresentationActivityItemSource;
  v5 = [(ICTableLinkPresentationActivityItemSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICTableLinkPresentationActivityItemSource *)v5 setAttachment:v4];
  }

  return v6;
}

- (id)detail
{
  objc_opt_class();
  v3 = [(ICTableLinkPresentationActivityItemSource *)self attachment];
  v4 = [v3 attachmentModel];
  v5 = ICCheckedDynamicCast();

  v6 = [v5 stringsAtRow:0];
  v7 = [v6 componentsJoinedByString:@" "];

  return v7;
}

@end
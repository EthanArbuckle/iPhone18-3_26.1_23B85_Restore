@interface ICAttachmentMapModel(NSItemProvider)
- (id)itemProvider;
@end

@implementation ICAttachmentMapModel(NSItemProvider)

- (id)itemProvider
{
  mKMapItem = [self MKMapItem];
  v3 = mKMapItem;
  if (mKMapItem && [mKMapItem conformsToProtocol:&unk_1F4FF8AE0])
  {
    v4 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &off_1F505D098;
    v4 = objc_msgSendSuper2(&v7, sel_itemProvider);
  }

  v5 = v4;

  return v5;
}

@end
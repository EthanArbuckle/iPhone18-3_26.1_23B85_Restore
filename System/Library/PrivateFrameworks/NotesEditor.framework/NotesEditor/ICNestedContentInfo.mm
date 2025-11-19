@interface ICNestedContentInfo
- (ICNestedContentInfo)init;
@end

@implementation ICNestedContentInfo

- (ICNestedContentInfo)init
{
  v2 = (self + OBJC_IVAR___ICNestedContentInfo_frame);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (&self->super.isa + OBJC_IVAR___ICNestedContentInfo_contentSize);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR___ICNestedContentInfo_contentOffset);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR___ICNestedContentInfo_scrollBounds);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (self + OBJC_IVAR___ICNestedContentInfo_adjustedContentInset);
  v7 = *(MEMORY[0x277D768C8] + 16);
  *v6 = *MEMORY[0x277D768C8];
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for NestedContentInfo();
  return [(ICNestedContentInfo *)&v9 init];
}

@end
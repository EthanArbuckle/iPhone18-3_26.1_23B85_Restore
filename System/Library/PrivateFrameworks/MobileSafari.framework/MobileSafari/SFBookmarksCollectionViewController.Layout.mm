@interface SFBookmarksCollectionViewController.Layout
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithCoder:(id)coder;
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithSection:(id)section;
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithSection:(id)section configuration:(id)configuration;
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithSectionProvider:(id)provider;
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (void)finalizeCollectionViewUpdates;
@end

@implementation SFBookmarksCollectionViewController.Layout

- (void)finalizeCollectionViewUpdates
{
  v3 = (self + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset);
  if (*(&self->super.super._collectionViewBoundsSize.width + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset))
  {
    selfCopy = self;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    collectionView = [(SFBookmarksCollectionViewController.Layout *)self collectionView];
    if (collectionView)
    {
      v8 = collectionView;
      [collectionView setContentOffset:0 animated:{v6, v5}];
    }
  }

  v9.receiver = self;
  v9.super_class = _s6LayoutCMa();
  [(SFBookmarksCollectionViewController.Layout *)&v9 finalizeCollectionViewUpdates];
}

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithSection:(id)section
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_scrollLockActive) = 0;
  v4 = self + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v6.receiver = self;
  v6.super_class = _s6LayoutCMa();
  return [(SFBookmarksCollectionViewController.Layout *)&v6 initWithSection:section];
}

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithSection:(id)section configuration:(id)configuration
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_scrollLockActive) = 0;
  v6 = self + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v8.receiver = self;
  v8.super_class = _s6LayoutCMa();
  return [(SFBookmarksCollectionViewController.Layout *)&v8 initWithSection:section configuration:configuration];
}

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithSectionProvider:(id)provider
{
  v4 = _Block_copy(provider);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_scrollLockActive) = 0;
  v6 = self + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  aBlock[4] = sub_18B9984B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B9B53C0;
  aBlock[3] = &block_descriptor_12;
  v7 = _Block_copy(aBlock);
  sub_18BC1E1A8();

  v10.receiver = self;
  v10.super_class = _s6LayoutCMa();
  v8 = [(SFBookmarksCollectionViewController.Layout *)&v10 initWithSectionProvider:v7];

  _Block_release(v7);
  return v8;
}

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v6 = _Block_copy(provider);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_scrollLockActive) = 0;
  v8 = self + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset;
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  aBlock[4] = sub_18B9984A8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B9B53C0;
  aBlock[3] = &block_descriptor_0;
  v9 = _Block_copy(aBlock);
  configurationCopy = configuration;
  sub_18BC1E1A8();

  v13.receiver = self;
  v13.super_class = _s6LayoutCMa();
  v11 = [(SFBookmarksCollectionViewController.Layout *)&v13 initWithSectionProvider:v9 configuration:configurationCopy];

  _Block_release(v9);
  return v11;
}

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_scrollLockActive) = 0;
  v4 = self + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v8.receiver = self;
  v8.super_class = _s6LayoutCMa();
  coderCopy = coder;
  v6 = [(SFBookmarksCollectionViewController.Layout *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end
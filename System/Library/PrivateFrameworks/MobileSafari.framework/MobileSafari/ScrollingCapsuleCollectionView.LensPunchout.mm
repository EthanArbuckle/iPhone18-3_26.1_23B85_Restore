@interface ScrollingCapsuleCollectionView.LensPunchout
- (_TtCC12MobileSafari30ScrollingCapsuleCollectionView12LensPunchout)initWithCoder:(id)coder;
- (_TtCC12MobileSafari30ScrollingCapsuleCollectionView12LensPunchout)initWithFrame:(CGRect)frame;
@end

@implementation ScrollingCapsuleCollectionView.LensPunchout

- (_TtCC12MobileSafari30ScrollingCapsuleCollectionView12LensPunchout)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = _s12LensPunchoutCMa();
  height = [(ScrollingCapsuleCollectionView.LensPunchout *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  blackColor = [v8 blackColor];
  [(ScrollingCapsuleCollectionView.LensPunchout *)v9 setBackgroundColor:blackColor];

  return v9;
}

- (_TtCC12MobileSafari30ScrollingCapsuleCollectionView12LensPunchout)initWithCoder:(id)coder
{
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

@end
@interface ScrollingCapsuleCollectionView.LensPunchout
- (_TtCC12MobileSafari30ScrollingCapsuleCollectionView12LensPunchout)initWithCoder:(id)a3;
- (_TtCC12MobileSafari30ScrollingCapsuleCollectionView12LensPunchout)initWithFrame:(CGRect)a3;
@end

@implementation ScrollingCapsuleCollectionView.LensPunchout

- (_TtCC12MobileSafari30ScrollingCapsuleCollectionView12LensPunchout)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = _s12LensPunchoutCMa();
  v7 = [(ScrollingCapsuleCollectionView.LensPunchout *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 blackColor];
  [(ScrollingCapsuleCollectionView.LensPunchout *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtCC12MobileSafari30ScrollingCapsuleCollectionView12LensPunchout)initWithCoder:(id)a3
{
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

@end
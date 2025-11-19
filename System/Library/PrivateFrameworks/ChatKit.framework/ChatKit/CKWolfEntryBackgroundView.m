@interface CKWolfEntryBackgroundView
- (CKWolfEntryBackgroundView)init;
- (void)layoutSubviews;
@end

@implementation CKWolfEntryBackgroundView

- (CKWolfEntryBackgroundView)init
{
  v3.receiver = self;
  v3.super_class = CKWolfEntryBackgroundView;
  return [(CKWolfEntryBackgroundView *)&v3 init];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CKWolfEntryBackgroundView;
  [(CKWolfEntryBackgroundView *)&v12 layoutSubviews];
  [(CKWolfEntryBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKWolfEntryBackgroundView *)self blurView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end
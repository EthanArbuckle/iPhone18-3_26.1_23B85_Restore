@interface AlertStackCompoundCollectionViewController
- (_TtC18HealthExperienceUI42AlertStackCompoundCollectionViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI42AlertStackCompoundCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AlertStackCompoundCollectionViewController

- (_TtC18HealthExperienceUI42AlertStackCompoundCollectionViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AlertStackCompoundCollectionViewController *)&v5 viewWillAppear:v3];
  UICollectionViewController.clearSelection()();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:v3];
  v5 = [v4 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18HealthExperienceUI42AlertStackCompoundCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
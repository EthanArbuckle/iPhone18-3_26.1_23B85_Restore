@interface HUAccessoryDetailsRouter
+ (id)detailsViewFor:(id)a3 navigationController:(id)a4 dismiss:(id)a5;
- (HUAccessoryDetailsRouter)init;
@end

@implementation HUAccessoryDetailsRouter

- (HUAccessoryDetailsRouter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccessoryDetailsRouter();
  return [(HUAccessoryDetailsRouter *)&v3 init];
}

+ (id)detailsViewFor:(id)a3 navigationController:(id)a4 dismiss:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_20CF79684;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a4;
  v11 = _s6HomeUI22AccessoryDetailsRouterC11detailsView3for20navigationController7dismissSo33HUDetailsPresentationDelegateHost_So06UIViewJ0CXcSgSo6HFItemC_So012UINavigationJ0CSgyycSgtFZ_0(v9, a4, v7, v8);
  sub_20CEC8164(v7);

  return v11;
}

@end
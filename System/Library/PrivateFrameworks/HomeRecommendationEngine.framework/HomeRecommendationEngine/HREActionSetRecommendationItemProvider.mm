@interface HREActionSetRecommendationItemProvider
- (HREActionSetRecommendationItemProvider)initWithHome:(id)a3 andServiceLikeItems:(id)a4;
- (id)items;
- (id)reloadItems;
- (id)suggestionItemTransformingRecommendationItem:(id)a3;
- (unint64_t)engineOptions;
- (void)setEngineOptions:(unint64_t)a3;
@end

@implementation HREActionSetRecommendationItemProvider

- (HREActionSetRecommendationItemProvider)initWithHome:(id)a3 andServiceLikeItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = HREActionSetRecommendationItemProvider;
  v9 = [(HFItemProvider *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_serviceLikeItems, a4);
    v11 = [[HRERecommendationItemProvider alloc] initWithHome:v7 andServiceLikeItems:v8];
    recommendationProvider = v10->_recommendationProvider;
    v10->_recommendationProvider = v11;

    [(HRERecommendationItemProvider *)v10->_recommendationProvider setEngineOptions:1];
    objc_initWeak(&location, v10);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__HREActionSetRecommendationItemProvider_initWithHome_andServiceLikeItems___block_invoke;
    v20[3] = &unk_2797771D0;
    objc_copyWeak(&v21, &location);
    [(HRERecommendationItemProvider *)v10->_recommendationProvider setFilter:v20];
    v13 = objc_alloc(MEMORY[0x277D14C38]);
    v14 = [(HREActionSetRecommendationItemProvider *)v10 recommendationProvider];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__HREActionSetRecommendationItemProvider_initWithHome_andServiceLikeItems___block_invoke_2;
    v18[3] = &unk_2797771F8;
    objc_copyWeak(&v19, &location);
    v15 = [v13 initWithSourceProvider:v14 transformationBlock:v18];
    transformItemProvider = v10->_transformItemProvider;
    v10->_transformItemProvider = v15;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v10;
}

uint64_t __75__HREActionSetRecommendationItemProvider_initWithHome_andServiceLikeItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained filter];
    if (v5)
    {
      v6 = [WeakRetained filter];
      v7 = (v6)[2](v6, v3);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __75__HREActionSetRecommendationItemProvider_initWithHome_andServiceLikeItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained suggestionItemTransformingRecommendationItem:v3];

  return v5;
}

- (unint64_t)engineOptions
{
  v2 = [(HREActionSetRecommendationItemProvider *)self recommendationProvider];
  v3 = [v2 engineOptions];

  return v3;
}

- (void)setEngineOptions:(unint64_t)a3
{
  v4 = [(HREActionSetRecommendationItemProvider *)self recommendationProvider];
  [v4 setEngineOptions:a3];
}

- (id)items
{
  v2 = [(HREActionSetRecommendationItemProvider *)self transformItemProvider];
  v3 = [v2 items];

  return v3;
}

- (id)reloadItems
{
  v2 = [(HREActionSetRecommendationItemProvider *)self transformItemProvider];
  v3 = [v2 reloadItems];

  return v3;
}

- (id)suggestionItemTransformingRecommendationItem:(id)a3
{
  v4 = a3;
  v5 = [[HREActionSetRecommendationItem alloc] initWithRecommendationItem:v4];

  v6 = [(HREActionSetRecommendationItemProvider *)self serviceLikeItems];
  v7 = [v6 firstObject];
  [(HREActionSetRecommendationItem *)v5 setServiceLikeItem:v7];

  return v5;
}

@end
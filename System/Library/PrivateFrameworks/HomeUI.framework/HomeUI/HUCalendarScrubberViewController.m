@interface HUCalendarScrubberViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (HUCalendarScrubberViewController)initWithCoder:(id)a3;
- (HUCalendarScrubberViewController)initWithCollectionViewLayout:(id)a3;
- (HUCalendarScrubberViewController)initWithDataSource:(id)a3;
- (HUCalendarScrubberViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HUCalendarScrubberViewDelegate)scrubberDelegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (unint64_t)nextSection;
- (unint64_t)previousSection;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)jumpToSection:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrubberDataSourceDidReload:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation HUCalendarScrubberViewController

- (HUCalendarScrubberViewController)initWithDataSource:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setScrollDirection:1];
  [v6 setSectionInset:{0.0, 20.0, 0.0, 20.0}];
  [v6 setMinimumLineSpacing:16.0];
  v10.receiver = self;
  v10.super_class = HUCalendarScrubberViewController;
  v7 = [(HUCalendarScrubberViewController *)&v10 initWithCollectionViewLayout:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataSource, a3);
    [(HUCalendarScrubberDataSource *)v8->_dataSource addChangeObserver:v8];
  }

  return v8;
}

- (HUCalendarScrubberViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDataSource_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCalendarScrubberViewController.m" lineNumber:54 description:{@"%s is unavailable; use %@ instead", "-[HUCalendarScrubberViewController initWithCoder:]", v6}];

  return 0;
}

- (HUCalendarScrubberViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDataSource_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUCalendarScrubberViewController.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HUCalendarScrubberViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUCalendarScrubberViewController)initWithCollectionViewLayout:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDataSource_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCalendarScrubberViewController.m" lineNumber:62 description:{@"%s is unavailable; use %@ instead", "-[HUCalendarScrubberViewController initWithCollectionViewLayout:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HUCalendarScrubberViewController;
  [(HUCalendarScrubberViewController *)&v9 viewDidLoad];
  [(HUCalendarScrubberViewController *)self setCurrentSection:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(HUCalendarScrubberViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [(HUCalendarScrubberViewController *)self collectionView];
  [v5 setPagingEnabled:1];

  v6 = [(HUCalendarScrubberViewController *)self collectionView];
  [v6 setShowsHorizontalScrollIndicator:0];

  v7 = [(HUCalendarScrubberViewController *)self collectionView];
  [v7 setSemanticContentAttribute:3];

  v8 = [(HUCalendarScrubberViewController *)self collectionView];
  [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CalendarScrubberCell"];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = HUCalendarScrubberViewController;
  [(HUCalendarScrubberViewController *)&v15 viewDidLayoutSubviews];
  [(HUCalendarScrubberViewController *)self lastBoundsWidth];
  v3 = [(HUCalendarScrubberViewController *)self collectionView];
  [v3 bounds];
  v4 = NACGFloatEqualToFloat();

  if ((v4 & 1) == 0)
  {
    v5 = [(HUCalendarScrubberViewController *)self collectionView];
    [v5 bounds];
    [(HUCalendarScrubberViewController *)self setLastBoundsWidth:v6];

    v7 = [(HUCalendarScrubberViewController *)self collectionView];
    [v7 bounds];
    v9 = (v8 + -168.0) * 0.125;

    v10 = fmax(v9, 0.0);
    v11 = [(HUCalendarScrubberViewController *)self collectionViewLayout];
    [v11 setMinimumLineSpacing:v10];

    v12 = [(HUCalendarScrubberViewController *)self collectionViewLayout];
    [v12 setSectionInset:{0.0, v10, 0.0, v10}];

    v13 = [(HUCalendarScrubberViewController *)self collectionView];
    [v13 reloadData];

    v14 = [(HUCalendarScrubberViewController *)self collectionViewLayout];
    [v14 invalidateLayout];
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = HUCalendarScrubberViewController;
  [(HUCalendarScrubberViewController *)&v2 didReceiveMemoryWarning];
}

- (unint64_t)nextSection
{
  v3 = [(HUCalendarScrubberViewController *)self currentSection];
  v4 = [(HUCalendarScrubberViewController *)self collectionView];
  if (v3 >= [v4 numberOfSections] - 1)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = [(HUCalendarScrubberViewController *)self currentSection]+ 1;
  }

  return v5;
}

- (unint64_t)previousSection
{
  if ([(HUCalendarScrubberViewController *)self currentSection]< 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return [(HUCalendarScrubberViewController *)self currentSection]- 1;
  }
}

- (void)jumpToSection:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v19 = a5;
  v8 = [(HUCalendarScrubberViewController *)self collectionView];
  v9 = [v8 numberOfSections];

  if (v9 > a3)
  {
    v10 = [(HUCalendarScrubberViewController *)self collectionView];
    [v10 bounds];
    v12 = v11;
    v14 = v13;

    v15 = [(HUCalendarScrubberViewController *)self collectionView];
    [v15 contentOffset];
    v17 = v16;

    v18 = [(HUCalendarScrubberViewController *)self collectionView];
    [v18 scrollRectToVisible:v5 animated:{v12 * a3, 0.0, v12, v14}];

    if (v5 && vabdd_f64(v12 * a3, v17) > 0.00000011920929)
    {
      [(HUCalendarScrubberViewController *)self setScrollCompletionBlock:v19];
    }

    else if (v19)
    {
      v19[2](v19, 1);
    }

    [(HUCalendarScrubberViewController *)self setCurrentSection:a3];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(HUCalendarScrubberViewController *)self dataSource];
  v4 = [v3 totalNumberOfWeeks];

  return v4;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"CalendarScrubberCell" forIndexPath:v6];
  v8 = [(HUCalendarScrubberViewController *)self dataSource];
  v9 = [v8 dayOfMonthForItemAtIndexPath:v6];
  v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%li", v9];
  [v7 setDateString:v10];

  if (v9 == 1)
  {
    [v8 shortMonthNameForItemAtIndexPath:v6];
  }

  else
  {
    [v8 dayOfWeekForItemAtIndexPath:v6];
  }
  v11 = ;
  [v7 setDayOfWeekString:v11];

  [v7 setEnabled:{objc_msgSend(v8, "eventExistsForItemAtIndexPath:", v6)}];

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUCalendarScrubberViewController *)self scrubberDelegate];
  [v6 scrubberViewController:self didSelectItemAtIndex:v5];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = HUCalendarScrubberViewController;
  v7 = a4;
  [(HUCalendarScrubberViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HUCalendarScrubberViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __87__HUCalendarScrubberViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = [(HUCalendarScrubberViewController *)self collectionView:a3];
  [v5 bounds];
  v7 = v6;

  v8 = 24.0;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = [(HUCalendarScrubberViewController *)self collectionView];
  v5 = [(HUCalendarScrubberViewController *)self collectionView];
  [v5 bounds];
  MidX = CGRectGetMidX(v12);
  v7 = [(HUCalendarScrubberViewController *)self collectionView];
  [v7 bounds];
  v10 = [v4 indexPathForItemAtPoint:{MidX, CGRectGetMidY(v13)}];

  -[HUCalendarScrubberViewController setCurrentSection:](self, "setCurrentSection:", [v10 section]);
  v8 = [(HUCalendarScrubberViewController *)self scrubberDelegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = [(HUCalendarScrubberViewController *)self scrubberDelegate];
    [v9 scrubberViewController:self didMoveToSection:{-[HUCalendarScrubberViewController currentSection](self, "currentSection")}];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = [(HUCalendarScrubberViewController *)self scrollCompletionBlock];

  if (v4)
  {
    v5 = [(HUCalendarScrubberViewController *)self scrollCompletionBlock];
    v5[2](v5, 1);

    [(HUCalendarScrubberViewController *)self setScrollCompletionBlock:0];
  }
}

- (void)scrubberDataSourceDidReload:(id)a3
{
  v3 = [(HUCalendarScrubberViewController *)self collectionView];
  [v3 reloadData];
}

- (HUCalendarScrubberViewDelegate)scrubberDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubberDelegate);

  return WeakRetained;
}

@end
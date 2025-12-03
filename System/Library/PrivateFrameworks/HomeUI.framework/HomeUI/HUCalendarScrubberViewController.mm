@interface HUCalendarScrubberViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (HUCalendarScrubberViewController)initWithCoder:(id)coder;
- (HUCalendarScrubberViewController)initWithCollectionViewLayout:(id)layout;
- (HUCalendarScrubberViewController)initWithDataSource:(id)source;
- (HUCalendarScrubberViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HUCalendarScrubberViewDelegate)scrubberDelegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (unint64_t)nextSection;
- (unint64_t)previousSection;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didReceiveMemoryWarning;
- (void)jumpToSection:(unint64_t)section animated:(BOOL)animated completion:(id)completion;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrubberDataSourceDidReload:(id)reload;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation HUCalendarScrubberViewController

- (HUCalendarScrubberViewController)initWithDataSource:(id)source
{
  sourceCopy = source;
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
    objc_storeStrong(&v7->_dataSource, source);
    [(HUCalendarScrubberDataSource *)v8->_dataSource addChangeObserver:v8];
  }

  return v8;
}

- (HUCalendarScrubberViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDataSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCalendarScrubberViewController.m" lineNumber:54 description:{@"%s is unavailable; use %@ instead", "-[HUCalendarScrubberViewController initWithCoder:]", v6}];

  return 0;
}

- (HUCalendarScrubberViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDataSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCalendarScrubberViewController.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HUCalendarScrubberViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUCalendarScrubberViewController)initWithCollectionViewLayout:(id)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDataSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCalendarScrubberViewController.m" lineNumber:62 description:{@"%s is unavailable; use %@ instead", "-[HUCalendarScrubberViewController initWithCollectionViewLayout:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HUCalendarScrubberViewController;
  [(HUCalendarScrubberViewController *)&v9 viewDidLoad];
  [(HUCalendarScrubberViewController *)self setCurrentSection:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  collectionView = [(HUCalendarScrubberViewController *)self collectionView];
  [collectionView setBackgroundColor:clearColor];

  collectionView2 = [(HUCalendarScrubberViewController *)self collectionView];
  [collectionView2 setPagingEnabled:1];

  collectionView3 = [(HUCalendarScrubberViewController *)self collectionView];
  [collectionView3 setShowsHorizontalScrollIndicator:0];

  collectionView4 = [(HUCalendarScrubberViewController *)self collectionView];
  [collectionView4 setSemanticContentAttribute:3];

  collectionView5 = [(HUCalendarScrubberViewController *)self collectionView];
  [collectionView5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CalendarScrubberCell"];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = HUCalendarScrubberViewController;
  [(HUCalendarScrubberViewController *)&v15 viewDidLayoutSubviews];
  [(HUCalendarScrubberViewController *)self lastBoundsWidth];
  collectionView = [(HUCalendarScrubberViewController *)self collectionView];
  [collectionView bounds];
  v4 = NACGFloatEqualToFloat();

  if ((v4 & 1) == 0)
  {
    collectionView2 = [(HUCalendarScrubberViewController *)self collectionView];
    [collectionView2 bounds];
    [(HUCalendarScrubberViewController *)self setLastBoundsWidth:v6];

    collectionView3 = [(HUCalendarScrubberViewController *)self collectionView];
    [collectionView3 bounds];
    v9 = (v8 + -168.0) * 0.125;

    v10 = fmax(v9, 0.0);
    collectionViewLayout = [(HUCalendarScrubberViewController *)self collectionViewLayout];
    [collectionViewLayout setMinimumLineSpacing:v10];

    collectionViewLayout2 = [(HUCalendarScrubberViewController *)self collectionViewLayout];
    [collectionViewLayout2 setSectionInset:{0.0, v10, 0.0, v10}];

    collectionView4 = [(HUCalendarScrubberViewController *)self collectionView];
    [collectionView4 reloadData];

    collectionViewLayout3 = [(HUCalendarScrubberViewController *)self collectionViewLayout];
    [collectionViewLayout3 invalidateLayout];
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
  currentSection = [(HUCalendarScrubberViewController *)self currentSection];
  collectionView = [(HUCalendarScrubberViewController *)self collectionView];
  if (currentSection >= [collectionView numberOfSections] - 1)
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

- (void)jumpToSection:(unint64_t)section animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  collectionView = [(HUCalendarScrubberViewController *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (numberOfSections > section)
  {
    collectionView2 = [(HUCalendarScrubberViewController *)self collectionView];
    [collectionView2 bounds];
    v12 = v11;
    v14 = v13;

    collectionView3 = [(HUCalendarScrubberViewController *)self collectionView];
    [collectionView3 contentOffset];
    v17 = v16;

    collectionView4 = [(HUCalendarScrubberViewController *)self collectionView];
    [collectionView4 scrollRectToVisible:animatedCopy animated:{v12 * section, 0.0, v12, v14}];

    if (animatedCopy && vabdd_f64(v12 * section, v17) > 0.00000011920929)
    {
      [(HUCalendarScrubberViewController *)self setScrollCompletionBlock:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }

    [(HUCalendarScrubberViewController *)self setCurrentSection:section];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataSource = [(HUCalendarScrubberViewController *)self dataSource];
  totalNumberOfWeeks = [dataSource totalNumberOfWeeks];

  return totalNumberOfWeeks;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"CalendarScrubberCell" forIndexPath:pathCopy];
  dataSource = [(HUCalendarScrubberViewController *)self dataSource];
  v9 = [dataSource dayOfMonthForItemAtIndexPath:pathCopy];
  v10 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%li", v9];
  [v7 setDateString:v10];

  if (v9 == 1)
  {
    [dataSource shortMonthNameForItemAtIndexPath:pathCopy];
  }

  else
  {
    [dataSource dayOfWeekForItemAtIndexPath:pathCopy];
  }
  v11 = ;
  [v7 setDayOfWeekString:v11];

  [v7 setEnabled:{objc_msgSend(dataSource, "eventExistsForItemAtIndexPath:", pathCopy)}];

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  scrubberDelegate = [(HUCalendarScrubberViewController *)self scrubberDelegate];
  [scrubberDelegate scrubberViewController:self didSelectItemAtIndex:pathCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = HUCalendarScrubberViewController;
  coordinatorCopy = coordinator;
  [(HUCalendarScrubberViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HUCalendarScrubberViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_277DB79B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __87__HUCalendarScrubberViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = [(HUCalendarScrubberViewController *)self collectionView:view];
  [v5 bounds];
  v7 = v6;

  v8 = 24.0;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  collectionView = [(HUCalendarScrubberViewController *)self collectionView];
  collectionView2 = [(HUCalendarScrubberViewController *)self collectionView];
  [collectionView2 bounds];
  MidX = CGRectGetMidX(v12);
  collectionView3 = [(HUCalendarScrubberViewController *)self collectionView];
  [collectionView3 bounds];
  v10 = [collectionView indexPathForItemAtPoint:{MidX, CGRectGetMidY(v13)}];

  -[HUCalendarScrubberViewController setCurrentSection:](self, "setCurrentSection:", [v10 section]);
  scrubberDelegate = [(HUCalendarScrubberViewController *)self scrubberDelegate];
  LOBYTE(collectionView2) = objc_opt_respondsToSelector();

  if (collectionView2)
  {
    scrubberDelegate2 = [(HUCalendarScrubberViewController *)self scrubberDelegate];
    [scrubberDelegate2 scrubberViewController:self didMoveToSection:{-[HUCalendarScrubberViewController currentSection](self, "currentSection")}];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  scrollCompletionBlock = [(HUCalendarScrubberViewController *)self scrollCompletionBlock];

  if (scrollCompletionBlock)
  {
    scrollCompletionBlock2 = [(HUCalendarScrubberViewController *)self scrollCompletionBlock];
    scrollCompletionBlock2[2](scrollCompletionBlock2, 1);

    [(HUCalendarScrubberViewController *)self setScrollCompletionBlock:0];
  }
}

- (void)scrubberDataSourceDidReload:(id)reload
{
  collectionView = [(HUCalendarScrubberViewController *)self collectionView];
  [collectionView reloadData];
}

- (HUCalendarScrubberViewDelegate)scrubberDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubberDelegate);

  return WeakRetained;
}

@end
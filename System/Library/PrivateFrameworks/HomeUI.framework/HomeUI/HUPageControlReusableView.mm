@interface HUPageControlReusableView
- (HUPageControlReusableView)initWithFrame:(CGRect)frame;
@end

@implementation HUPageControlReusableView

- (HUPageControlReusableView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25[3] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = HUPageControlReusableView;
  v7 = [(HUPageControlReusableView *)&v24 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D757E0]) initWithFrame:{x, y, width, height}];
    pageControl = v7->_pageControl;
    v7->_pageControl = v8;

    [(UIPageControl *)v7->_pageControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUPageControlReusableView *)v7 addSubview:v7->_pageControl];
    pageControl = [(HUPageControlReusableView *)v7 pageControl];
    centerXAnchor = [pageControl centerXAnchor];
    centerXAnchor2 = [(HUPageControlReusableView *)v7 centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v25[0] = v20;
    pageControl2 = [(HUPageControlReusableView *)v7 pageControl];
    topAnchor = [pageControl2 topAnchor];
    topAnchor2 = [(HUPageControlReusableView *)v7 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[1] = v13;
    pageControl3 = [(HUPageControlReusableView *)v7 pageControl];
    bottomAnchor = [pageControl3 bottomAnchor];
    bottomAnchor2 = [(HUPageControlReusableView *)v7 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];

    [MEMORY[0x277CCAAD0] activateConstraints:v18];
  }

  return v7;
}

@end
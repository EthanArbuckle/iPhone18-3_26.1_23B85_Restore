@interface HUPageControlReusableView
- (HUPageControlReusableView)initWithFrame:(CGRect)a3;
@end

@implementation HUPageControlReusableView

- (HUPageControlReusableView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v23 = [(HUPageControlReusableView *)v7 pageControl];
    v22 = [v23 centerXAnchor];
    v21 = [(HUPageControlReusableView *)v7 centerXAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v25[0] = v20;
    v10 = [(HUPageControlReusableView *)v7 pageControl];
    v11 = [v10 topAnchor];
    v12 = [(HUPageControlReusableView *)v7 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v25[1] = v13;
    v14 = [(HUPageControlReusableView *)v7 pageControl];
    v15 = [v14 bottomAnchor];
    v16 = [(HUPageControlReusableView *)v7 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v25[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];

    [MEMORY[0x277CCAAD0] activateConstraints:v18];
  }

  return v7;
}

@end
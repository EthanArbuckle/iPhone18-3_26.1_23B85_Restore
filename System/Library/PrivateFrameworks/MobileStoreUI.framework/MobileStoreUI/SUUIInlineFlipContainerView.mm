@interface SUUIInlineFlipContainerView
- (SUUIInlineFlipContainerView)initWithFrontView:(id)view backView:(id)backView;
- (void)flipToBackViewWithDuration:(double)duration options:(unint64_t)options completionBlock:(id)block;
@end

@implementation SUUIInlineFlipContainerView

- (SUUIInlineFlipContainerView)initWithFrontView:(id)view backView:(id)backView
{
  viewCopy = view;
  backViewCopy = backView;
  [viewCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [backViewCopy bounds];
  v36.origin.x = v16;
  v36.origin.y = v17;
  v36.size.width = v18;
  v36.size.height = v19;
  v34.origin.x = v9;
  v34.origin.y = v11;
  v34.size.width = v13;
  v34.size.height = v15;
  v35 = CGRectUnion(v34, v36);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v33.receiver = self;
  v33.super_class = SUUIInlineFlipContainerView;
  v24 = [(SUUIInlineFlipContainerView *)&v33 initWithFrame:?];
  if (v24)
  {
    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    backgroundColor = [viewCopy backgroundColor];
    [(UIView *)v25 setBackgroundColor:backgroundColor];

    [viewCopy frame];
    v28 = (width - v27) * 0.5;
    v30 = (height - v29) * 0.5;
    [viewCopy setFrame:{floorf(v28), floorf(v30)}];
    [(UIView *)v25 addSubview:viewCopy];
    [(SUUIInlineFlipContainerView *)v24 addSubview:v25];
    objc_storeStrong(&v24->_backView, backView);
    frontView = v24->_frontView;
    v24->_frontView = v25;
  }

  return v24;
}

- (void)flipToBackViewWithDuration:(double)duration options:(unint64_t)options completionBlock:(id)block
{
  blockCopy = block;
  [(SUUIInlineFlipContainerView *)self bounds];
  v10 = v9;
  v12 = v11;
  v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v13, v14, v9, v11}];
  backgroundColor = [(UIView *)self->_backView backgroundColor];
  [v15 setBackgroundColor:backgroundColor];

  [(UIView *)self->_backView frame];
  v18 = (v10 - v17) * 0.5;
  v20 = (v12 - v19) * 0.5;
  [(UIView *)self->_backView setFrame:floorf(v18), floorf(v20)];
  [v15 addSubview:self->_backView];
  v21 = MEMORY[0x277D75D18];
  frontView = self->_frontView;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__SUUIInlineFlipContainerView_flipToBackViewWithDuration_options_completionBlock___block_invoke;
  v24[3] = &unk_2798F5DD0;
  v25 = blockCopy;
  v23 = blockCopy;
  [v21 transitionFromView:frontView toView:v15 duration:options options:v24 completion:duration];
}

uint64_t __82__SUUIInlineFlipContainerView_flipToBackViewWithDuration_options_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end
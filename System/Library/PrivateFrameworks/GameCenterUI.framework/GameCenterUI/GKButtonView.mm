@interface GKButtonView
+ (void)registerSupplementaryViewClassesForKind:(id)kind withCollectionView:(id)view;
- (GKButtonView)initWithFrame:(CGRect)frame;
- (SEL)action;
- (void)applyLayoutAttributes:(id)attributes;
- (void)buttonPressed:(id)pressed;
- (void)setAction:(SEL)action;
- (void)updateConstraints;
@end

@implementation GKButtonView

+ (void)registerSupplementaryViewClassesForKind:(id)kind withCollectionView:(id)view
{
  viewCopy = view;
  kindCopy = kind;
  [viewCopy _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:kindCopy];
}

- (GKButtonView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = GKButtonView;
  v3 = [(GKButtonView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [GKButton alloc];
    v5 = [(GKButton *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    button = v3->_button;
    v3->_button = v5;

    [(UIButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_button addTarget:v3 action:sel_buttonPressed_ forControlEvents:64];
    [(GKButtonView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)updateConstraints
{
  v8.receiver = self;
  v8.super_class = GKButtonView;
  [(GKButtonView *)&v8 updateConstraints];
  if (self->_buttonConstraints)
  {
    [(GKButtonView *)self removeConstraints:?];
  }

  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [(GKButtonView *)self setButtonConstraints:v3];

  buttonConstraints = self->_buttonConstraints;
  v5 = [MEMORY[0x277CCAAD0] _gkConstraintForView:self->_button centeredXInView:self];
  [(NSMutableArray *)buttonConstraints addObject:v5];

  v6 = self->_buttonConstraints;
  v7 = [MEMORY[0x277CCAAD0] _gkConstraintForView:self->_button centeredYInView:self];
  [(NSMutableArray *)v6 addObject:v7];

  [(GKButtonView *)self addConstraints:self->_buttonConstraints];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataSource = [attributesCopy dataSource];
    [(GKButtonView *)self setDataSource:dataSource];
  }
}

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  action = self->_action;
  if (action)
  {
    v11 = pressedCopy;
    v6 = [(GKCollectionViewDataSource *)self->_dataSource targetForAction:action];
    v7 = v6;
    if (self->_action)
    {
      v8 = self->_action;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v6 methodForSelector:v8];
    if (self->_action)
    {
      v10 = self->_action;
    }

    else
    {
      v10 = 0;
    }

    v9(v7, v10);

    pressedCopy = v11;
  }
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end
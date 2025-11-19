@interface GKButtonView
+ (void)registerSupplementaryViewClassesForKind:(id)a3 withCollectionView:(id)a4;
- (GKButtonView)initWithFrame:(CGRect)a3;
- (SEL)action;
- (void)applyLayoutAttributes:(id)a3;
- (void)buttonPressed:(id)a3;
- (void)setAction:(SEL)a3;
- (void)updateConstraints;
@end

@implementation GKButtonView

+ (void)registerSupplementaryViewClassesForKind:(id)a3 withCollectionView:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:v6];
}

- (GKButtonView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = GKButtonView;
  v3 = [(GKButtonView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)applyLayoutAttributes:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 dataSource];
    [(GKButtonView *)self setDataSource:v4];
  }
}

- (void)buttonPressed:(id)a3
{
  v4 = a3;
  action = self->_action;
  if (action)
  {
    v11 = v4;
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

    v4 = v11;
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

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end
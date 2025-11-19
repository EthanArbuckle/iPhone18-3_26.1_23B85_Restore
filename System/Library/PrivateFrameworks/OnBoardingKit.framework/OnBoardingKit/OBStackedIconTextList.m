@interface OBStackedIconTextList
- (OBStackedIconTextList)initWithFrame:(CGRect)a3;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)addEntryWithIcon:(id)a3 iconSize:(CGSize)a4 attributedText:(id)a5;
- (void)addEntryWithIcon:(id)a3 iconSize:(CGSize)a4 text:(id)a5;
- (void)setIconTextPadding:(double)a3;
- (void)updateSpacing;
@end

@implementation OBStackedIconTextList

- (OBStackedIconTextList)initWithFrame:(CGRect)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = OBStackedIconTextList;
  v3 = [(OBStackedIconTextList *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    entries = v3->_entries;
    v3->_entries = v4;

    v3->_itemSpacing = 32.0;
    [(OBStackedIconTextList *)v3 setAxis:1];
    v3->_iconTextPadding = 12.0;
    [(OBStackedIconTextList *)v3 setBaselineRelativeArrangement:1];
    [(OBStackedIconTextList *)v3 updateSpacing];
    v11[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7 = [(OBStackedIconTextList *)v3 registerForTraitChanges:v6 withAction:sel_updateSpacing];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)updateSpacing
{
  v3 = +[OBFeatureFlags isNaturalUIEnabled];
  v4 = MEMORY[0x1E69DDDC0];
  if (!v3)
  {
    v4 = MEMORY[0x1E69DDD80];
  }

  v5 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*v4];
  [v5 scaledValueForValue:30.0];
  [(OBStackedIconTextList *)self setSpacing:?];
}

- (id)viewForFirstBaselineLayout
{
  v3 = [(OBStackedIconTextList *)self subviews];
  v4 = [v3 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 textView];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OBStackedIconTextList;
    v5 = [(OBStackedIconTextList *)&v8 viewForFirstBaselineLayout];
  }

  v6 = v5;

  return v6;
}

- (id)viewForLastBaselineLayout
{
  v3 = [(OBStackedIconTextList *)self subviews];
  v4 = [v3 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 textView];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OBStackedIconTextList;
    v5 = [(OBStackedIconTextList *)&v8 viewForLastBaselineLayout];
  }

  v6 = v5;

  return v6;
}

- (void)setIconTextPadding:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_iconTextPadding != a3)
  {
    self->_iconTextPadding = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(OBStackedIconTextList *)self subviews];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * i) setPadding:a3];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addEntryWithIcon:(id)a3 iconSize:(CGSize)a4 text:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  v11 = [[OBIconTextView alloc] initWithIcon:v10 iconSize:v9 text:[(OBStackedIconTextList *)self dataDetectorTypes] dataDetectorTypes:width, height];

  [(OBIconTextView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBIconTextView *)v11 setPadding:self->_iconTextPadding];
  [(OBStackedIconTextList *)self addArrangedSubview:v11];
  [(NSMutableArray *)self->_entries addObject:v11];
}

- (void)addEntryWithIcon:(id)a3 iconSize:(CGSize)a4 attributedText:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  v12 = [[OBIconTextView alloc] initWithIcon:v10 iconSize:0 text:[(OBStackedIconTextList *)self dataDetectorTypes] dataDetectorTypes:width, height];

  [(OBIconTextView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(OBIconTextView *)v12 textView];
  [v11 setAttributedText:v9];

  [(OBIconTextView *)v12 setPadding:self->_iconTextPadding];
  [(OBStackedIconTextList *)self addArrangedSubview:v12];
  [(NSMutableArray *)self->_entries addObject:v12];
}

@end
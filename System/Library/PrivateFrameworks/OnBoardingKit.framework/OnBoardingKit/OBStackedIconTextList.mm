@interface OBStackedIconTextList
- (OBStackedIconTextList)initWithFrame:(CGRect)frame;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)addEntryWithIcon:(id)icon iconSize:(CGSize)size attributedText:(id)text;
- (void)addEntryWithIcon:(id)icon iconSize:(CGSize)size text:(id)text;
- (void)setIconTextPadding:(double)padding;
- (void)updateSpacing;
@end

@implementation OBStackedIconTextList

- (OBStackedIconTextList)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = OBStackedIconTextList;
  v3 = [(OBStackedIconTextList *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  subviews = [(OBStackedIconTextList *)self subviews];
  firstObject = [subviews firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textView = [firstObject textView];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OBStackedIconTextList;
    textView = [(OBStackedIconTextList *)&v8 viewForFirstBaselineLayout];
  }

  v6 = textView;

  return v6;
}

- (id)viewForLastBaselineLayout
{
  subviews = [(OBStackedIconTextList *)self subviews];
  lastObject = [subviews lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textView = [lastObject textView];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OBStackedIconTextList;
    textView = [(OBStackedIconTextList *)&v8 viewForLastBaselineLayout];
  }

  v6 = textView;

  return v6;
}

- (void)setIconTextPadding:(double)padding
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_iconTextPadding != padding)
  {
    self->_iconTextPadding = padding;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    subviews = [(OBStackedIconTextList *)self subviews];
    v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(subviews);
          }

          [*(*(&v10 + 1) + 8 * i) setPadding:padding];
        }

        v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addEntryWithIcon:(id)icon iconSize:(CGSize)size text:(id)text
{
  height = size.height;
  width = size.width;
  textCopy = text;
  iconCopy = icon;
  height = [[OBIconTextView alloc] initWithIcon:iconCopy iconSize:textCopy text:[(OBStackedIconTextList *)self dataDetectorTypes] dataDetectorTypes:width, height];

  [(OBIconTextView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBIconTextView *)height setPadding:self->_iconTextPadding];
  [(OBStackedIconTextList *)self addArrangedSubview:height];
  [(NSMutableArray *)self->_entries addObject:height];
}

- (void)addEntryWithIcon:(id)icon iconSize:(CGSize)size attributedText:(id)text
{
  height = size.height;
  width = size.width;
  textCopy = text;
  iconCopy = icon;
  height = [[OBIconTextView alloc] initWithIcon:iconCopy iconSize:0 text:[(OBStackedIconTextList *)self dataDetectorTypes] dataDetectorTypes:width, height];

  [(OBIconTextView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  textView = [(OBIconTextView *)height textView];
  [textView setAttributedText:textCopy];

  [(OBIconTextView *)height setPadding:self->_iconTextPadding];
  [(OBStackedIconTextList *)self addArrangedSubview:height];
  [(NSMutableArray *)self->_entries addObject:height];
}

@end
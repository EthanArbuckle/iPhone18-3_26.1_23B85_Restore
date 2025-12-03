@interface HKMaximumSizeView
- (CGSize)maximumSize;
- (HKMaximumSizeView)initWithView:(id)view maximumSize:(CGSize)size;
- (void)_buildConstraintsForView:(id)view;
- (void)_setConstraints:(id)constraints active:(BOOL)active;
- (void)setMaximumSize:(CGSize)size;
@end

@implementation HKMaximumSizeView

- (HKMaximumSizeView)initWithView:(id)view maximumSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = HKMaximumSizeView;
  v8 = [(HKMaximumSizeView *)&v11 initWithFrame:0.0, 0.0, 1.0, 1.0];
  v9 = v8;
  if (v8)
  {
    [(HKMaximumSizeView *)v8 addSubview:viewCopy];
    [(HKMaximumSizeView *)v9 _buildConstraintsForView:viewCopy];
    [(HKMaximumSizeView *)v9 setMaximumSize:width, height];
  }

  return v9;
}

- (void)_buildConstraintsForView:(id)view
{
  v52[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [viewCopy widthAnchor];
  v6 = [widthAnchor constraintLessThanOrEqualToConstant:10.0];
  maximumWidthConstraint = self->_maximumWidthConstraint;
  self->_maximumWidthConstraint = v6;

  heightAnchor = [viewCopy heightAnchor];
  v9 = [heightAnchor constraintLessThanOrEqualToConstant:10.0];
  maximumHeightConstraint = self->_maximumHeightConstraint;
  self->_maximumHeightConstraint = v9;

  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [(HKMaximumSizeView *)self leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v52[0] = v13;
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(HKMaximumSizeView *)self trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v52[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  hardHorizontalConstraints = self->_hardHorizontalConstraints;
  self->_hardHorizontalConstraints = v17;

  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [(HKMaximumSizeView *)self topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[0] = v21;
  bottomAnchor = [viewCopy bottomAnchor];
  bottomAnchor2 = [(HKMaximumSizeView *)self bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v51[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  hardVerticalConstraints = self->_hardVerticalConstraints;
  self->_hardVerticalConstraints = v25;

  leadingAnchor3 = [viewCopy leadingAnchor];
  leadingAnchor4 = [(HKMaximumSizeView *)self leadingAnchor];
  v28 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v50[0] = v28;
  trailingAnchor3 = [viewCopy trailingAnchor];
  trailingAnchor4 = [(HKMaximumSizeView *)self trailingAnchor];
  v31 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  v50[1] = v31;
  centerXAnchor = [viewCopy centerXAnchor];
  centerXAnchor2 = [(HKMaximumSizeView *)self centerXAnchor];
  v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v50[2] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
  softHorizontalConstraints = self->_softHorizontalConstraints;
  self->_softHorizontalConstraints = v35;

  topAnchor3 = [viewCopy topAnchor];
  topAnchor4 = [(HKMaximumSizeView *)self topAnchor];
  v39 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v49[0] = v39;
  bottomAnchor3 = [viewCopy bottomAnchor];
  bottomAnchor4 = [(HKMaximumSizeView *)self bottomAnchor];
  v42 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v49[1] = v42;
  centerYAnchor = [viewCopy centerYAnchor];

  centerYAnchor2 = [(HKMaximumSizeView *)self centerYAnchor];
  v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v49[2] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
  softVerticalConstraints = self->_softVerticalConstraints;
  self->_softVerticalConstraints = v46;
}

- (void)setMaximumSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  maximumWidthConstraint = [(HKMaximumSizeView *)self maximumWidthConstraint];
  v7 = maximumWidthConstraint;
  if (width <= 0.0)
  {
    [maximumWidthConstraint setActive:0];

    softHorizontalConstraints = [(HKMaximumSizeView *)self softHorizontalConstraints];
    [(HKMaximumSizeView *)self _setConstraints:softHorizontalConstraints active:0];

    [(HKMaximumSizeView *)self hardHorizontalConstraints];
  }

  else
  {
    [maximumWidthConstraint setConstant:width];

    maximumWidthConstraint2 = [(HKMaximumSizeView *)self maximumWidthConstraint];
    [maximumWidthConstraint2 setActive:1];

    hardHorizontalConstraints = [(HKMaximumSizeView *)self hardHorizontalConstraints];
    [(HKMaximumSizeView *)self _setConstraints:hardHorizontalConstraints active:0];

    [(HKMaximumSizeView *)self softHorizontalConstraints];
  }
  v11 = ;
  [(HKMaximumSizeView *)self _setConstraints:v11 active:1];

  maximumHeightConstraint = [(HKMaximumSizeView *)self maximumHeightConstraint];
  v13 = maximumHeightConstraint;
  if (height <= 0.0)
  {
    [maximumHeightConstraint setActive:0];

    softVerticalConstraints = [(HKMaximumSizeView *)self softVerticalConstraints];
    [(HKMaximumSizeView *)self _setConstraints:softVerticalConstraints active:0];

    [(HKMaximumSizeView *)self hardVerticalConstraints];
  }

  else
  {
    [maximumHeightConstraint setConstant:height];

    maximumHeightConstraint2 = [(HKMaximumSizeView *)self maximumHeightConstraint];
    [maximumHeightConstraint2 setActive:1];

    hardVerticalConstraints = [(HKMaximumSizeView *)self hardVerticalConstraints];
    [(HKMaximumSizeView *)self _setConstraints:hardVerticalConstraints active:0];

    [(HKMaximumSizeView *)self softVerticalConstraints];
  }
  v17 = ;
  [(HKMaximumSizeView *)self _setConstraints:v17 active:1];

  [(HKMaximumSizeView *)self setNeedsLayout];
}

- (void)_setConstraints:(id)constraints active:(BOOL)active
{
  activeCopy = active;
  v15 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [constraintsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(constraintsCopy);
        }

        [*(*(&v10 + 1) + 8 * v9++) setActive:activeCopy];
      }

      while (v7 != v9);
      v7 = [constraintsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
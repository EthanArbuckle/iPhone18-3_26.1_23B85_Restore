@interface NSLayoutConstraint(IC)
+ (id)ic_constraintWithItem:()IC attribute:relatedBy:toItem:attribute:multiplier:constant:priority:;
+ (id)ic_constraints:()IC affectingViews:;
+ (id)ic_widthLayoutConstraintsForView:()IC minValue:;
+ (id)ic_widthLayoutConstraintsForView:()IC minValue:maxValue:;
@end

@implementation NSLayoutConstraint(IC)

+ (id)ic_constraintWithItem:()IC attribute:relatedBy:toItem:attribute:multiplier:constant:priority:
{
  v5 = [self constraintWithItem:? attribute:? relatedBy:? toItem:? attribute:? multiplier:? constant:?];
  *&v6 = a4;
  [v5 setPriority:v6];

  return v5;
}

+ (id)ic_widthLayoutConstraintsForView:()IC minValue:maxValue:
{
  v7 = MEMORY[0x1E696AD98];
  v8 = a5;
  v9 = [v7 numberWithDouble:self];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  v11 = _NSDictionaryOfVariableBindings(&cfstr_MinwidthMaxwid.isa, v9, v10, 0);
  v12 = _NSDictionaryOfVariableBindings(&cfstr_View_0.isa, v8, 0);

  v13 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"[view(>=minWidth options:<=maxWidth)]" metrics:0 views:v11, v12];

  return v13;
}

+ (id)ic_widthLayoutConstraintsForView:()IC minValue:
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a4;
  v7 = [v5 numberWithDouble:self];
  v8 = _NSDictionaryOfVariableBindings(&cfstr_Minwidth.isa, v7, 0);
  v9 = _NSDictionaryOfVariableBindings(&cfstr_View_0.isa, v6, 0);

  v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"[view(>=minWidth)]" options:0 metrics:v8 views:v9];

  return v10;
}

+ (id)ic_constraints:()IC affectingViews:
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a3;
  v7 = [v5 setWithArray:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__NSLayoutConstraint_IC__ic_constraints_affectingViews___block_invoke;
  v11[3] = &unk_1E846E410;
  v12 = v7;
  v8 = v7;
  v9 = [v6 ic_objectsPassingTest:v11];

  return v9;
}

@end
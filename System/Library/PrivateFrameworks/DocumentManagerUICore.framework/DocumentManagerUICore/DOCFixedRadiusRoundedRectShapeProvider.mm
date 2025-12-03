@interface DOCFixedRadiusRoundedRectShapeProvider
- (DOCFixedRadiusRoundedRectShapeProvider)initWithCornerRadius:(double)radius insets:(UIEdgeInsets)insets;
- (UIEdgeInsets)insets;
- (id)resolvedShapeInContext:(id)context;
@end

@implementation DOCFixedRadiusRoundedRectShapeProvider

- (DOCFixedRadiusRoundedRectShapeProvider)initWithCornerRadius:(double)radius insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v10.receiver = self;
  v10.super_class = DOCFixedRadiusRoundedRectShapeProvider;
  result = [(DOCFixedRadiusRoundedRectShapeProvider *)&v10 init];
  if (result)
  {
    result->_cornerRadius = radius;
    result->_insets.top = top;
    result->_insets.left = left;
    result->_insets.bottom = bottom;
    result->_insets.right = right;
  }

  return result;
}

- (id)resolvedShapeInContext:(id)context
{
  contextCopy = context;
  contentShape = [contextCopy contentShape];
  [contentShape boundingRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(DOCFixedRadiusRoundedRectShapeProvider *)self insets];
  v15 = v7 + v14;
  v17 = v9 + v16;
  v19 = v11 - (v14 + v18);
  v21 = v13 - (v16 + v20);

  v22 = MEMORY[0x277D75A18];
  [(DOCFixedRadiusRoundedRectShapeProvider *)self cornerRadius];
  v24 = [v22 fixedRectShapeWithRect:v15 cornerRadius:{v17, v19, v21, v23}];
  v25 = [v24 resolvedShapeInContext:contextCopy];

  return v25;
}

- (UIEdgeInsets)insets
{
  objc_copyStruct(v6, &self->_insets, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end
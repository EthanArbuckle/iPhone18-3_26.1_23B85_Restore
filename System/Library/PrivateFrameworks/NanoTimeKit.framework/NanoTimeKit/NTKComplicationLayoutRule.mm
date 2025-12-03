@interface NTKComplicationLayoutRule
+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout keylinePadding:(UIEdgeInsets)padding;
+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout keylinePadding:(UIEdgeInsets)padding clip:(BOOL)clip;
+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout keylinePadding:(UIEdgeInsets)padding clip:(BOOL)clip contentTransform:(CGAffineTransform *)transform;
+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout keylinePadding:(UIEdgeInsets)padding clip:(BOOL)clip editingTransform:(CGAffineTransform *)transform;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)editingTransform;
- (UIEdgeInsets)keylinePadding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForDevice:(id)device;
- (unint64_t)hash;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setEditingTransform:(CGAffineTransform *)transform;
@end

@implementation NTKComplicationLayoutRule

- (id)initForDevice:(id)device
{
  v8.receiver = self;
  v8.super_class = NTKComplicationLayoutRule;
  result = [(NTKLayoutRule *)&v8 initForDevice:device];
  if (result)
  {
    v4 = MEMORY[0x277CBF2C0];
    v5 = *MEMORY[0x277CBF2C0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *(result + 104) = *MEMORY[0x277CBF2C0];
    *(result + 120) = v6;
    v7 = *(v4 + 32);
    *(result + 136) = v7;
    *(result + 168) = v6;
    *(result + 184) = v7;
    *(result + 152) = v5;
  }

  return result;
}

+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout keylinePadding:(UIEdgeInsets)padding
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  result = [self layoutRuleForDevice:device withReferenceFrame:layout horizontalLayout:verticalLayout verticalLayout:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  *(result + 9) = top;
  *(result + 10) = left;
  *(result + 11) = bottom;
  *(result + 12) = right;
  return result;
}

+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout keylinePadding:(UIEdgeInsets)padding clip:(BOOL)clip
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  result = [self layoutRuleForDevice:device withReferenceFrame:layout horizontalLayout:verticalLayout verticalLayout:clip clip:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  *(result + 9) = top;
  *(result + 10) = left;
  *(result + 11) = bottom;
  *(result + 12) = right;
  return result;
}

+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout keylinePadding:(UIEdgeInsets)padding clip:(BOOL)clip editingTransform:(CGAffineTransform *)transform
{
  result = [self layoutRuleForDevice:device withReferenceFrame:layout horizontalLayout:verticalLayout verticalLayout:clip keylinePadding:frame.origin.x clip:{frame.origin.y, frame.size.width, frame.size.height, padding.top, padding.left, padding.bottom, padding.right}];
  v12 = *&transform->c;
  v11 = *&transform->tx;
  *(result + 104) = *&transform->a;
  *(result + 120) = v12;
  *(result + 136) = v11;
  return result;
}

+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout keylinePadding:(UIEdgeInsets)padding clip:(BOOL)clip contentTransform:(CGAffineTransform *)transform
{
  result = [self layoutRuleForDevice:device withReferenceFrame:layout horizontalLayout:verticalLayout verticalLayout:clip keylinePadding:frame.origin.x clip:{frame.origin.y, frame.size.width, frame.size.height, padding.top, padding.left, padding.bottom, padding.right}];
  v12 = *&transform->c;
  v11 = *&transform->tx;
  *(result + 152) = *&transform->a;
  *(result + 168) = v12;
  *(result + 184) = v11;
  return result;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = NTKComplicationLayoutRule;
  v3 = round(self->_keylinePadding.bottom * 1000000.0) + [(NTKLayoutRule *)&v14 hash]+ round(self->_keylinePadding.left * 10000000.0) + round(self->_keylinePadding.right * 100000000.0) + round(self->_keylinePadding.top * 1000000000.0);
  v4 = *&self->_editingTransform.c;
  v11 = *&self->_editingTransform.a;
  v12 = v4;
  v13 = *&self->_editingTransform.tx;
  v5 = [MEMORY[0x277CCAE60] valueWithCGAffineTransform:&v11];
  v6 = v3 + [v5 hash] * 1.0e10;
  v7 = *&self->_contentTransform.c;
  v11 = *&self->_contentTransform.a;
  v12 = v7;
  v13 = *&self->_contentTransform.tx;
  v8 = [MEMORY[0x277CCAE60] valueWithCGAffineTransform:&v11];
  v9 = (v6 + [v8 hash] * 1.0e11);

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = NTKComplicationLayoutRule;
  if (![(NTKLayoutRule *)&v16 isEqual:equalCopy])
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  [equalCopy keylinePadding];
  v6.f64[1] = v5;
  v8.f64[1] = v7;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_keylinePadding.top, v6), vceqq_f64(*&self->_keylinePadding.bottom, v8)))) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (equalCopy)
  {
    [equalCopy editingTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v9 = *&self->_editingTransform.c;
  *&v14.a = *&self->_editingTransform.a;
  *&v14.c = v9;
  *&v14.tx = *&self->_editingTransform.tx;
  if (CGAffineTransformEqualToTransform(&v14, &t2))
  {
    p_contentTransform = &self->_contentTransform;
    if (equalCopy)
    {
      [equalCopy contentTransform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v13 = *&p_contentTransform->c;
    *&v14.a = *&p_contentTransform->a;
    *&v14.c = v13;
    *&v14.tx = *&p_contentTransform->tx;
    v11 = CGAffineTransformEqualToTransform(&v14, &t2);
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NTKComplicationLayoutRule;
  result = [(NTKLayoutRule *)&v10 copyWithZone:zone];
  v5 = *&self->_keylinePadding.bottom;
  *(result + 72) = *&self->_keylinePadding.top;
  *(result + 88) = v5;
  v6 = *&self->_editingTransform.a;
  v7 = *&self->_editingTransform.tx;
  *(result + 120) = *&self->_editingTransform.c;
  *(result + 136) = v7;
  *(result + 104) = v6;
  v8 = *&self->_contentTransform.tx;
  v9 = *&self->_contentTransform.a;
  *(result + 168) = *&self->_contentTransform.c;
  *(result + 184) = v8;
  *(result + 152) = v9;
  return result;
}

- (UIEdgeInsets)keylinePadding
{
  top = self->_keylinePadding.top;
  left = self->_keylinePadding.left;
  bottom = self->_keylinePadding.bottom;
  right = self->_keylinePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGAffineTransform)editingTransform
{
  v3 = *&self[2].d;
  *&retstr->a = *&self[2].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].ty;
  return self;
}

- (void)setEditingTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_editingTransform.a = *&transform->a;
  *&self->_editingTransform.c = v4;
  *&self->_editingTransform.tx = v3;
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[3].d;
  *&retstr->a = *&self[3].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].ty;
  return self;
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_contentTransform.a = *&transform->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
}

@end
@interface NTKComplicationLayoutRule
+ (id)layoutRuleForDevice:(id)a3 withReferenceFrame:(CGRect)a4 horizontalLayout:(int64_t)a5 verticalLayout:(int64_t)a6 keylinePadding:(UIEdgeInsets)a7;
+ (id)layoutRuleForDevice:(id)a3 withReferenceFrame:(CGRect)a4 horizontalLayout:(int64_t)a5 verticalLayout:(int64_t)a6 keylinePadding:(UIEdgeInsets)a7 clip:(BOOL)a8;
+ (id)layoutRuleForDevice:(id)a3 withReferenceFrame:(CGRect)a4 horizontalLayout:(int64_t)a5 verticalLayout:(int64_t)a6 keylinePadding:(UIEdgeInsets)a7 clip:(BOOL)a8 contentTransform:(CGAffineTransform *)a9;
+ (id)layoutRuleForDevice:(id)a3 withReferenceFrame:(CGRect)a4 horizontalLayout:(int64_t)a5 verticalLayout:(int64_t)a6 keylinePadding:(UIEdgeInsets)a7 clip:(BOOL)a8 editingTransform:(CGAffineTransform *)a9;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)editingTransform;
- (UIEdgeInsets)keylinePadding;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForDevice:(id)a3;
- (unint64_t)hash;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setEditingTransform:(CGAffineTransform *)a3;
@end

@implementation NTKComplicationLayoutRule

- (id)initForDevice:(id)a3
{
  v8.receiver = self;
  v8.super_class = NTKComplicationLayoutRule;
  result = [(NTKLayoutRule *)&v8 initForDevice:a3];
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

+ (id)layoutRuleForDevice:(id)a3 withReferenceFrame:(CGRect)a4 horizontalLayout:(int64_t)a5 verticalLayout:(int64_t)a6 keylinePadding:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  result = [a1 layoutRuleForDevice:a3 withReferenceFrame:a5 horizontalLayout:a6 verticalLayout:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
  *(result + 9) = top;
  *(result + 10) = left;
  *(result + 11) = bottom;
  *(result + 12) = right;
  return result;
}

+ (id)layoutRuleForDevice:(id)a3 withReferenceFrame:(CGRect)a4 horizontalLayout:(int64_t)a5 verticalLayout:(int64_t)a6 keylinePadding:(UIEdgeInsets)a7 clip:(BOOL)a8
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  result = [a1 layoutRuleForDevice:a3 withReferenceFrame:a5 horizontalLayout:a6 verticalLayout:a8 clip:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
  *(result + 9) = top;
  *(result + 10) = left;
  *(result + 11) = bottom;
  *(result + 12) = right;
  return result;
}

+ (id)layoutRuleForDevice:(id)a3 withReferenceFrame:(CGRect)a4 horizontalLayout:(int64_t)a5 verticalLayout:(int64_t)a6 keylinePadding:(UIEdgeInsets)a7 clip:(BOOL)a8 editingTransform:(CGAffineTransform *)a9
{
  result = [a1 layoutRuleForDevice:a3 withReferenceFrame:a5 horizontalLayout:a6 verticalLayout:a8 keylinePadding:a4.origin.x clip:{a4.origin.y, a4.size.width, a4.size.height, a7.top, a7.left, a7.bottom, a7.right}];
  v12 = *&a9->c;
  v11 = *&a9->tx;
  *(result + 104) = *&a9->a;
  *(result + 120) = v12;
  *(result + 136) = v11;
  return result;
}

+ (id)layoutRuleForDevice:(id)a3 withReferenceFrame:(CGRect)a4 horizontalLayout:(int64_t)a5 verticalLayout:(int64_t)a6 keylinePadding:(UIEdgeInsets)a7 clip:(BOOL)a8 contentTransform:(CGAffineTransform *)a9
{
  result = [a1 layoutRuleForDevice:a3 withReferenceFrame:a5 horizontalLayout:a6 verticalLayout:a8 keylinePadding:a4.origin.x clip:{a4.origin.y, a4.size.width, a4.size.height, a7.top, a7.left, a7.bottom, a7.right}];
  v12 = *&a9->c;
  v11 = *&a9->tx;
  *(result + 152) = *&a9->a;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NTKComplicationLayoutRule;
  if (![(NTKLayoutRule *)&v16 isEqual:v4])
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  [v4 keylinePadding];
  v6.f64[1] = v5;
  v8.f64[1] = v7;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_keylinePadding.top, v6), vceqq_f64(*&self->_keylinePadding.bottom, v8)))) & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    [v4 editingTransform];
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
    if (v4)
    {
      [v4 contentTransform];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = NTKComplicationLayoutRule;
  result = [(NTKLayoutRule *)&v10 copyWithZone:a3];
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

- (void)setEditingTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_editingTransform.a = *&a3->a;
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

- (void)setContentTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_contentTransform.a = *&a3->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
}

@end
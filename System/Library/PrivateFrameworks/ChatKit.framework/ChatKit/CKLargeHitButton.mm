@interface CKLargeHitButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIEdgeInsets)ck_hitTestInsets;
@end

@implementation CKLargeHitButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(CKLargeHitButton *)self ck_hitTestInsets];
  v9.f64[1] = v8;
  v11.f64[1] = v10;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *MEMORY[0x1E69DDCE0]), vceqq_f64(v11, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    v29.receiver = self;
    v29.super_class = CKLargeHitButton;
    v26 = [(CKLargeHitButton *)&v29 pointInside:eventCopy withEvent:x, y];
  }

  else
  {
    [(CKLargeHitButton *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(CKLargeHitButton *)self ck_hitTestInsets];
    v21 = v15 + v20;
    v24 = v17 - (v22 + v23);
    v31.size.height = v19 - (v20 + v25);
    v31.origin.x = v13 + v22;
    v31.origin.y = v21;
    v31.size.width = v24;
    v30.x = x;
    v30.y = y;
    v26 = CGRectContainsPoint(v31, v30);
  }

  v27 = v26;

  return v27;
}

- (UIEdgeInsets)ck_hitTestInsets
{
  top = self->_ck_hitTestInsets.top;
  left = self->_ck_hitTestInsets.left;
  bottom = self->_ck_hitTestInsets.bottom;
  right = self->_ck_hitTestInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
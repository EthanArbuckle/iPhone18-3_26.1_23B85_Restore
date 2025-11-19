@interface HKClinicalBulletedListLayoutManager
@end

@implementation HKClinicalBulletedListLayoutManager

void __72___HKClinicalBulletedListLayoutManager_drawGlyphsForGlyphRange_atPoint___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11)
{
  v21 = [*(a1 + 32) characterIndexForGlyphAtIndex:?];
  v22 = [*(a1 + 40) attribute:@"_IsBulletedAttributeName" atIndex:v21 effectiveRange:0];
  objc_opt_class();
  v31 = HKSafeObject();

  if ([v31 BOOLValue])
  {
    if (!a11 || (v23 = v21 - 1, [*(a1 + 40) string], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "substringWithRange:", v23, 1), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"\n"), v25, v24, v26))
    {
      v33.origin.x = a6;
      v33.origin.y = a7;
      v33.size.width = a8;
      v33.size.height = a9;
      v27 = CGRectGetMidY(v33) + *(*(a1 + 32) + 272) * -0.5;
      if (*(a1 + 48) == 1)
      {
        v34.origin.x = a2;
        v34.origin.y = a3;
        v34.size.width = a4;
        v34.size.height = a5;
        v28 = CGRectGetMaxX(v34) - *(*(a1 + 32) + 264);
      }

      else
      {
        v28 = *MEMORY[0x1E695EFF8];
      }

      v29 = [MEMORY[0x1E69DC888] labelColor];
      [v29 set];

      v30 = [*(a1 + 32) bullet];
      [v30 drawAtPoint:{v28, v27}];
    }
  }
}

@end
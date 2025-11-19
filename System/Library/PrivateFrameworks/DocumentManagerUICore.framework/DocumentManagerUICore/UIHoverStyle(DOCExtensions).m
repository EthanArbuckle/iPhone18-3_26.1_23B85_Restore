@interface UIHoverStyle(DOCExtensions)
+ (id)_doc_roundedRectWithCornerRadius:()DOCExtensions cornerRadiusIsStretchy:insets:;
+ (id)doc_capsuleWithInsets:()DOCExtensions;
+ (id)doc_circleWithInsets:()DOCExtensions;
@end

@implementation UIHoverStyle(DOCExtensions)

+ (id)_doc_roundedRectWithCornerRadius:()DOCExtensions cornerRadiusIsStretchy:insets:
{
  if (a8)
  {
    v12 = [MEMORY[0x277D75A18] rectShapeWithCornerRadius:a1];
    [(DOCFixedRadiusRoundedRectShapeProvider *)v12 shapeByApplyingInsets:a2, a3, a4, a5];
  }

  else
  {
    v12 = [[DOCFixedRadiusRoundedRectShapeProvider alloc] initWithCornerRadius:a1 insets:a2, a3, a4, a5];
    [MEMORY[0x277D75A18] shapeWithProvider:v12];
  }
  v13 = ;

  v14 = MEMORY[0x277D755A8];
  v15 = [MEMORY[0x277D75598] effect];
  v16 = [v14 styleWithEffect:v15 shape:v13];

  return v16;
}

+ (id)doc_capsuleWithInsets:()DOCExtensions
{
  v8 = [MEMORY[0x277D75A18] capsuleShape];
  v9 = [v8 shapeByApplyingInsets:{a1, a2, a3, a4}];

  v10 = MEMORY[0x277D755A8];
  v11 = [MEMORY[0x277D75598] effect];
  v12 = [v10 styleWithEffect:v11 shape:v9];

  return v12;
}

+ (id)doc_circleWithInsets:()DOCExtensions
{
  v8 = [MEMORY[0x277D75A18] circleShape];
  v9 = [v8 shapeByApplyingInsets:{a1, a2, a3, a4}];

  v10 = MEMORY[0x277D755A8];
  v11 = [MEMORY[0x277D75598] effect];
  v12 = [v10 styleWithEffect:v11 shape:v9];

  return v12;
}

@end
@interface HKAxisStyle
+ (id)defaultStyle;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HKAxisStyle

+ (id)defaultStyle
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v2 setLabelStyle:v3];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v2[7] setTextColor:blackColor];

  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  [v2[7] setFont:v5];

  [v2[7] setHorizontalAlignment:1];
  [v2[7] setVerticalAlignment:1];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(HKStrokeStyle *)self->_gridLineStyle copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  v7 = [(HKStrokeStyle *)self->_minorGridLineStyle copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(HKStrokeStyle *)self->_referenceGridLineStyle copy];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [(HKStrokeStyle *)self->_axisLineStyle copy];
  v12 = *(v4 + 40);
  *(v4 + 40) = v11;

  v13 = [(HKTickStyle *)self->_tickStyle copy];
  v14 = *(v4 + 48);
  *(v4 + 48) = v13;

  v15 = [(HKAxisLabelStyle *)self->_labelStyle copy];
  v16 = *(v4 + 56);
  *(v4 + 56) = v15;

  *(v4 + 64) = self->_tickPositions;
  *(v4 + 72) = self->_axisLabelPosition;
  *(v4 + 8) = self->_showGridLines;
  objc_storeStrong((v4 + 80), self->_fillStyle);
  *(v4 + 88) = self->_fillInnerPadding;
  *(v4 + 96) = self->_fillOuterPadding;
  v17 = [(HKStrokeStyle *)self->_borderStyleForFill copy];
  v18 = *(v4 + 104);
  *(v4 + 104) = v17;

  *(v4 + 112) = self->_location;
  return v4;
}

@end
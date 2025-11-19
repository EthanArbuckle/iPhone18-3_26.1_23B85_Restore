@interface OABTextBodyProperties
+ (void)readTextBodyProperties:(id)a3 textBox:(const EshTextBox *)a4 useDefaults:(BOOL)a5 state:(id)a6;
+ (void)setAutoFit:(BOOL)a3 textBodyProperties:(id)a4;
+ (void)setIsAnchorCenter:(int)a3 textBodyProperties:(id)a4;
+ (void)setTextAnchor:(int)a3 textBodyProperties:(id)a4;
+ (void)setTextDirection:(int)a3 textBodyProperties:(id)a4;
+ (void)setTextFlow:(int)a3 textBodyProperties:(id)a4;
+ (void)setTextRotation:(int)a3 textBodyProperties:(id)a4;
+ (void)writeTextBodyProperties:(id)a3 toShapeBase:(void *)a4 state:(id)a5;
@end

@implementation OABTextBodyProperties

+ (void)readTextBodyProperties:(id)a3 textBox:(const EshTextBox *)a4 useDefaults:(BOOL)a5 state:(id)a6
{
  v7 = a5;
  v45 = a3;
  v10 = a6;
  v11 = [objc_msgSend(v10 "client")];
  [v45 setIsUpright:v11 ^ 1u];
  isInsetLeftSet = EshTextBox::isInsetLeftSet(a4);
  if (isInsetLeftSet)
  {
    InsetLeft = EshTextBox::getInsetLeft(a4);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    InsetLeft = EshTextBox::getDefaultInsetLeft(isInsetLeftSet);
  }

  v14 = InsetLeft / 12700.0;
  *&v14 = v14;
  [v45 setLeftInset:v14];
LABEL_6:
  isInsetRightSet = EshTextBox::isInsetRightSet(a4);
  if (isInsetRightSet)
  {
    InsetRight = EshTextBox::getInsetRight(a4);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    InsetRight = EshTextBox::getDefaultInsetLeft(isInsetRightSet);
  }

  v17 = InsetRight / 12700.0;
  *&v17 = v17;
  [v45 setRightInset:v17];
LABEL_11:
  isInsetTopSet = EshTextBox::isInsetTopSet(a4);
  if (isInsetTopSet)
  {
    InsetTop = EshTextBox::getInsetTop(a4);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    InsetTop = EshTextBox::getDefaultInsetTop(isInsetTopSet);
  }

  v20 = InsetTop / 12700.0;
  *&v20 = v20;
  [v45 setTopInset:v20];
LABEL_16:
  isInsetBottomSet = EshTextBox::isInsetBottomSet(a4);
  if (isInsetBottomSet)
  {
    InsetBottom = EshTextBox::getInsetBottom(a4);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    InsetBottom = EshTextBox::getDefaultInsetTop(isInsetBottomSet);
  }

  v23 = InsetBottom / 12700.0;
  *&v23 = v23;
  [v45 setBottomInset:v23];
LABEL_21:
  isColumnCountSet = EshTextBox::isColumnCountSet(a4);
  if (isColumnCountSet)
  {
    ColumnCount = EshTextBox::getColumnCount(a4);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_26;
    }

    ColumnCount = EshContentProperties::getDefaultAllowOverlap(isColumnCountSet);
  }

  [v45 setColumnCount:ColumnCount];
LABEL_26:
  isColumnMarginSet = EshTextBox::isColumnMarginSet(a4);
  if (isColumnMarginSet)
  {
    ColumnMargin = EshTextBox::getColumnMargin(a4);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_31;
    }

    ColumnMargin = EshTextBox::getDefaultInsetLeft(isColumnMarginSet);
  }

  v28 = ColumnMargin / 12700.0;
  *&v28 = v28;
  [v45 setColumnSpacing:v28];
LABEL_31:
  isRotateSet = EshTextBox::isRotateSet(a4);
  if (!isRotateSet)
  {
    if (!v7)
    {
      goto LABEL_40;
    }

    if (v11)
    {
      DefaultPositionHorizontal = EshContentProperties::getDefaultPositionHorizontal(isRotateSet);
      goto LABEL_37;
    }

LABEL_38:
    v31 = 0;
    goto LABEL_39;
  }

  if (!v11)
  {
    goto LABEL_38;
  }

  DefaultPositionHorizontal = EshTextBox::getRotate(a4);
LABEL_37:
  v31 = DefaultPositionHorizontal;
LABEL_39:
  [a1 setTextRotation:v31 textBodyProperties:v45];
LABEL_40:
  isFlowSet = EshTextBox::isFlowSet(a4);
  if (isFlowSet)
  {
    Flow = EshTextBox::getFlow(a4);
  }

  else
  {
    Flow = EshContentProperties::getDefaultPositionHorizontal(isFlowSet);
  }

  [a1 setTextFlow:Flow textBodyProperties:v45];
  isDirectionSet = EshTextBox::isDirectionSet(a4);
  if (isDirectionSet)
  {
    Direction = EshTextBox::getDirection(a4);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_48;
    }

    Direction = EshContentProperties::getDefaultPositionHorizontal(isDirectionSet);
  }

  [a1 setTextDirection:Direction textBodyProperties:v45];
LABEL_48:
  isFitShapeToTextSet = EshTextBox::isFitShapeToTextSet(a4);
  if (isFitShapeToTextSet)
  {
    FitShapeToText = EshTextBox::getFitShapeToText(a4);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_53;
    }

    FitShapeToText = EshContentProperties::getDefaultPositionHorizontal(isFitShapeToTextSet);
  }

  [a1 setAutoFit:FitShapeToText textBodyProperties:v45];
LABEL_53:
  isWrapStyleSet = EshTextBox::isWrapStyleSet(a4);
  if (!isWrapStyleSet)
  {
    if (!v7)
    {
      goto LABEL_62;
    }

    if (v11)
    {
      WrapStyle = EshContentProperties::getDefaultPositionHorizontal(isWrapStyleSet);
      goto LABEL_59;
    }

LABEL_60:
    v40 = 0;
    goto LABEL_61;
  }

  if (!v11)
  {
    goto LABEL_60;
  }

  WrapStyle = EshTextBox::getWrapStyle(a4);
LABEL_59:
  v40 = WrapStyle;
LABEL_61:
  [a1 setWrap:v40 textBodyProperties:v45];
LABEL_62:
  if (v11)
  {
    [v45 setHorizontalOverflowType:0];
    v41 = 0;
  }

  else
  {
    [v45 setHorizontalOverflowType:1];
    v41 = 2;
  }

  [v45 setVerticalOverflowType:v41];
  if ((EshTextBox::isAnchorSet(a4) | v7) == 1)
  {
    if (v11)
    {
      isAnchorSet = EshTextBox::isAnchorSet(a4);
      if (isAnchorSet)
      {
        Anchor = EshTextBox::getAnchor(a4);
      }

      else
      {
        Anchor = EshContentProperties::getDefaultPositionHorizontal(isAnchorSet);
      }

      v44 = Anchor;
    }

    else
    {
      v44 = 0;
    }

    [a1 setTextAnchor:v44 textBodyProperties:v45];
    [a1 setIsAnchorCenter:v44 textBodyProperties:v45];
  }
}

+ (void)setTextRotation:(int)a3 textBodyProperties:(id)a4
{
  v5 = a4;
  v6 = 0.0;
  if ((a3 - 1) <= 2)
  {
    LODWORD(v6) = dword_25D6FB9A4[a3 - 1];
  }

  v7 = v5;
  [v5 setRotation:v6];
}

+ (void)setTextFlow:(int)a3 textBodyProperties:(id)a4
{
  v5 = a4;
  v6 = 0x40102030600uLL >> (8 * a3);
  if (a3 >= 6)
  {
    LOBYTE(v6) = 0;
  }

  v7 = v5;
  [v5 setFlowType:v6 & 7];
}

+ (void)setTextDirection:(int)a3 textBodyProperties:(id)a4
{
  v6 = a4;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  [v6 setIsLeftToRightColumns:v5];
LABEL_6:
}

+ (void)setAutoFit:(BOOL)a3 textBodyProperties:(id)a4
{
  v4 = a3;
  v6 = a4;
  v5 = [[OADTextBodyAutoFit alloc] initWithType:v4];
  [v6 setAutoFit:v5];
}

+ (void)setTextAnchor:(int)a3 textBodyProperties:(id)a4
{
  v5 = a4;
  if ((a3 - 1) > 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = byte_25D6FB9B0[a3 - 1];
  }

  v7 = v5;
  [v5 setTextAnchorType:v6];
}

+ (void)setIsAnchorCenter:(int)a3 textBodyProperties:(id)a4
{
  v5 = a4;
  [v5 setIsAnchorCenter:(a3 < 0xA) & (0x338u >> a3)];
}

+ (void)writeTextBodyProperties:(id)a3 toShapeBase:(void *)a4 state:(id)a5
{
  v32 = a3;
  [v32 leftInset];
  [v32 topInset];
  [v32 rightInset];
  [v32 bottomInset];
  v10 = [v32 columnCount];
  [v32 columnSpacing];
  v12 = [v32 isAnchorCenter];
  v13 = [v32 textAnchorType];
  if (v13)
  {
    if (v13 == 1)
    {
      if (v12)
      {
        v14 = 4;
      }

      else
      {
        v14 = 1;
      }
    }

    else if (v13 == 2)
    {
      if (v12)
      {
        v14 = 5;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v12)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v32 wrapType] != 1;
  v16 = [v32 isLeftToRightColumns];
  v17 = [v32 autoFit];
  v18 = [v17 type];

  if (v18 == 2)
  {
    EshTextBox::setFitShapeToText((a4 + 272), 0);
    v21 = 1;
  }

  else
  {
    if (v18 == 1)
    {
      v20 = 1;
    }

    else
    {
      if (v18)
      {
        goto LABEL_22;
      }

      v20 = 0;
    }

    EshTextBox::setFitShapeToText((a4 + 272), v20);
    v21 = 0;
  }

  v19 = EshTextBox::setFitTextToShape((a4 + 272), v21);
LABEL_22:
  [v32 rotation];
  v23 = llroundf(v22) / 360.0;
  v24 = llround((v23 - floor(v23)) * 4.0);
  v25 = v24 & 3;
  v27 = -v24;
  v26 = v27 < 0;
  v28 = v27 & 3;
  if (v26)
  {
    LODWORD(v29) = v25;
  }

  else
  {
    v29 = -v28;
  }

  v30 = [v32 flowType] - 1;
  if (v30 >= 7)
  {
    v31 = 0;
  }

  else
  {
    v31 = dword_25D6FB9BC[v30];
  }

  EshTextBox::setFlow(a4 + 272, v31);
}

@end
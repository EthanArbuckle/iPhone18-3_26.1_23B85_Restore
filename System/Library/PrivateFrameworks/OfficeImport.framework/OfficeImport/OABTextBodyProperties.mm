@interface OABTextBodyProperties
+ (void)readTextBodyProperties:(id)properties textBox:(const EshTextBox *)box useDefaults:(BOOL)defaults state:(id)state;
+ (void)setAutoFit:(BOOL)fit textBodyProperties:(id)properties;
+ (void)setIsAnchorCenter:(int)center textBodyProperties:(id)properties;
+ (void)setTextAnchor:(int)anchor textBodyProperties:(id)properties;
+ (void)setTextDirection:(int)direction textBodyProperties:(id)properties;
+ (void)setTextFlow:(int)flow textBodyProperties:(id)properties;
+ (void)setTextRotation:(int)rotation textBodyProperties:(id)properties;
+ (void)writeTextBodyProperties:(id)properties toShapeBase:(void *)base state:(id)state;
@end

@implementation OABTextBodyProperties

+ (void)readTextBodyProperties:(id)properties textBox:(const EshTextBox *)box useDefaults:(BOOL)defaults state:(id)state
{
  defaultsCopy = defaults;
  propertiesCopy = properties;
  stateCopy = state;
  v11 = [objc_msgSend(stateCopy "client")];
  [propertiesCopy setIsUpright:v11 ^ 1u];
  isInsetLeftSet = EshTextBox::isInsetLeftSet(box);
  if (isInsetLeftSet)
  {
    InsetLeft = EshTextBox::getInsetLeft(box);
  }

  else
  {
    if (!defaultsCopy)
    {
      goto LABEL_6;
    }

    InsetLeft = EshTextBox::getDefaultInsetLeft(isInsetLeftSet);
  }

  v14 = InsetLeft / 12700.0;
  *&v14 = v14;
  [propertiesCopy setLeftInset:v14];
LABEL_6:
  isInsetRightSet = EshTextBox::isInsetRightSet(box);
  if (isInsetRightSet)
  {
    InsetRight = EshTextBox::getInsetRight(box);
  }

  else
  {
    if (!defaultsCopy)
    {
      goto LABEL_11;
    }

    InsetRight = EshTextBox::getDefaultInsetLeft(isInsetRightSet);
  }

  v17 = InsetRight / 12700.0;
  *&v17 = v17;
  [propertiesCopy setRightInset:v17];
LABEL_11:
  isInsetTopSet = EshTextBox::isInsetTopSet(box);
  if (isInsetTopSet)
  {
    InsetTop = EshTextBox::getInsetTop(box);
  }

  else
  {
    if (!defaultsCopy)
    {
      goto LABEL_16;
    }

    InsetTop = EshTextBox::getDefaultInsetTop(isInsetTopSet);
  }

  v20 = InsetTop / 12700.0;
  *&v20 = v20;
  [propertiesCopy setTopInset:v20];
LABEL_16:
  isInsetBottomSet = EshTextBox::isInsetBottomSet(box);
  if (isInsetBottomSet)
  {
    InsetBottom = EshTextBox::getInsetBottom(box);
  }

  else
  {
    if (!defaultsCopy)
    {
      goto LABEL_21;
    }

    InsetBottom = EshTextBox::getDefaultInsetTop(isInsetBottomSet);
  }

  v23 = InsetBottom / 12700.0;
  *&v23 = v23;
  [propertiesCopy setBottomInset:v23];
LABEL_21:
  isColumnCountSet = EshTextBox::isColumnCountSet(box);
  if (isColumnCountSet)
  {
    ColumnCount = EshTextBox::getColumnCount(box);
  }

  else
  {
    if (!defaultsCopy)
    {
      goto LABEL_26;
    }

    ColumnCount = EshContentProperties::getDefaultAllowOverlap(isColumnCountSet);
  }

  [propertiesCopy setColumnCount:ColumnCount];
LABEL_26:
  isColumnMarginSet = EshTextBox::isColumnMarginSet(box);
  if (isColumnMarginSet)
  {
    ColumnMargin = EshTextBox::getColumnMargin(box);
  }

  else
  {
    if (!defaultsCopy)
    {
      goto LABEL_31;
    }

    ColumnMargin = EshTextBox::getDefaultInsetLeft(isColumnMarginSet);
  }

  v28 = ColumnMargin / 12700.0;
  *&v28 = v28;
  [propertiesCopy setColumnSpacing:v28];
LABEL_31:
  isRotateSet = EshTextBox::isRotateSet(box);
  if (!isRotateSet)
  {
    if (!defaultsCopy)
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

  DefaultPositionHorizontal = EshTextBox::getRotate(box);
LABEL_37:
  v31 = DefaultPositionHorizontal;
LABEL_39:
  [self setTextRotation:v31 textBodyProperties:propertiesCopy];
LABEL_40:
  isFlowSet = EshTextBox::isFlowSet(box);
  if (isFlowSet)
  {
    Flow = EshTextBox::getFlow(box);
  }

  else
  {
    Flow = EshContentProperties::getDefaultPositionHorizontal(isFlowSet);
  }

  [self setTextFlow:Flow textBodyProperties:propertiesCopy];
  isDirectionSet = EshTextBox::isDirectionSet(box);
  if (isDirectionSet)
  {
    Direction = EshTextBox::getDirection(box);
  }

  else
  {
    if (!defaultsCopy)
    {
      goto LABEL_48;
    }

    Direction = EshContentProperties::getDefaultPositionHorizontal(isDirectionSet);
  }

  [self setTextDirection:Direction textBodyProperties:propertiesCopy];
LABEL_48:
  isFitShapeToTextSet = EshTextBox::isFitShapeToTextSet(box);
  if (isFitShapeToTextSet)
  {
    FitShapeToText = EshTextBox::getFitShapeToText(box);
  }

  else
  {
    if (!defaultsCopy)
    {
      goto LABEL_53;
    }

    FitShapeToText = EshContentProperties::getDefaultPositionHorizontal(isFitShapeToTextSet);
  }

  [self setAutoFit:FitShapeToText textBodyProperties:propertiesCopy];
LABEL_53:
  isWrapStyleSet = EshTextBox::isWrapStyleSet(box);
  if (!isWrapStyleSet)
  {
    if (!defaultsCopy)
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

  WrapStyle = EshTextBox::getWrapStyle(box);
LABEL_59:
  v40 = WrapStyle;
LABEL_61:
  [self setWrap:v40 textBodyProperties:propertiesCopy];
LABEL_62:
  if (v11)
  {
    [propertiesCopy setHorizontalOverflowType:0];
    v41 = 0;
  }

  else
  {
    [propertiesCopy setHorizontalOverflowType:1];
    v41 = 2;
  }

  [propertiesCopy setVerticalOverflowType:v41];
  if ((EshTextBox::isAnchorSet(box) | defaultsCopy) == 1)
  {
    if (v11)
    {
      isAnchorSet = EshTextBox::isAnchorSet(box);
      if (isAnchorSet)
      {
        Anchor = EshTextBox::getAnchor(box);
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

    [self setTextAnchor:v44 textBodyProperties:propertiesCopy];
    [self setIsAnchorCenter:v44 textBodyProperties:propertiesCopy];
  }
}

+ (void)setTextRotation:(int)rotation textBodyProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = 0.0;
  if ((rotation - 1) <= 2)
  {
    LODWORD(v6) = dword_25D6FB9A4[rotation - 1];
  }

  v7 = propertiesCopy;
  [propertiesCopy setRotation:v6];
}

+ (void)setTextFlow:(int)flow textBodyProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = 0x40102030600uLL >> (8 * flow);
  if (flow >= 6)
  {
    LOBYTE(v6) = 0;
  }

  v7 = propertiesCopy;
  [propertiesCopy setFlowType:v6 & 7];
}

+ (void)setTextDirection:(int)direction textBodyProperties:(id)properties
{
  propertiesCopy = properties;
  if (direction)
  {
    if (direction != 1)
    {
      goto LABEL_6;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  [propertiesCopy setIsLeftToRightColumns:v5];
LABEL_6:
}

+ (void)setAutoFit:(BOOL)fit textBodyProperties:(id)properties
{
  fitCopy = fit;
  propertiesCopy = properties;
  v5 = [[OADTextBodyAutoFit alloc] initWithType:fitCopy];
  [propertiesCopy setAutoFit:v5];
}

+ (void)setTextAnchor:(int)anchor textBodyProperties:(id)properties
{
  propertiesCopy = properties;
  if ((anchor - 1) > 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = byte_25D6FB9B0[anchor - 1];
  }

  v7 = propertiesCopy;
  [propertiesCopy setTextAnchorType:v6];
}

+ (void)setIsAnchorCenter:(int)center textBodyProperties:(id)properties
{
  propertiesCopy = properties;
  [propertiesCopy setIsAnchorCenter:(center < 0xA) & (0x338u >> center)];
}

+ (void)writeTextBodyProperties:(id)properties toShapeBase:(void *)base state:(id)state
{
  propertiesCopy = properties;
  [propertiesCopy leftInset];
  [propertiesCopy topInset];
  [propertiesCopy rightInset];
  [propertiesCopy bottomInset];
  columnCount = [propertiesCopy columnCount];
  [propertiesCopy columnSpacing];
  isAnchorCenter = [propertiesCopy isAnchorCenter];
  textAnchorType = [propertiesCopy textAnchorType];
  if (textAnchorType)
  {
    if (textAnchorType == 1)
    {
      if (isAnchorCenter)
      {
        v14 = 4;
      }

      else
      {
        v14 = 1;
      }
    }

    else if (textAnchorType == 2)
    {
      if (isAnchorCenter)
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

  else if (isAnchorCenter)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  v15 = [propertiesCopy wrapType] != 1;
  isLeftToRightColumns = [propertiesCopy isLeftToRightColumns];
  autoFit = [propertiesCopy autoFit];
  type = [autoFit type];

  if (type == 2)
  {
    EshTextBox::setFitShapeToText((base + 272), 0);
    v21 = 1;
  }

  else
  {
    if (type == 1)
    {
      v20 = 1;
    }

    else
    {
      if (type)
      {
        goto LABEL_22;
      }

      v20 = 0;
    }

    EshTextBox::setFitShapeToText((base + 272), v20);
    v21 = 0;
  }

  v19 = EshTextBox::setFitTextToShape((base + 272), v21);
LABEL_22:
  [propertiesCopy rotation];
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

  v30 = [propertiesCopy flowType] - 1;
  if (v30 >= 7)
  {
    v31 = 0;
  }

  else
  {
    v31 = dword_25D6FB9BC[v30];
  }

  EshTextBox::setFlow(base + 272, v31);
}

@end
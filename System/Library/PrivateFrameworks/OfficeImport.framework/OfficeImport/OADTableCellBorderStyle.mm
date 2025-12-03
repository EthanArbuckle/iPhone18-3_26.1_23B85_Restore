@interface OADTableCellBorderStyle
+ (id)defaultAxisParallelStroke;
+ (id)defaultStyle;
- (id)description;
- (id)shallowCopy;
- (id)stroke:(int)stroke;
- (void)applyOverridesFrom:(id)from;
- (void)setStrokeOfType:(int)type toValue:(id)value;
@end

@implementation OADTableCellBorderStyle

- (id)stroke:(int)stroke
{
  leftStroke = 0;
  if (stroke <= 4)
  {
    if (stroke <= 2)
    {
      if (stroke == 1)
      {
        leftStroke = [(OADTableCellBorderStyle *)self leftStroke];
      }

      else if (stroke == 2)
      {
        leftStroke = [(OADTableCellBorderStyle *)self rightStroke];
      }

      goto LABEL_19;
    }

    if (stroke == 3)
    {
      [(OADTableCellBorderStyle *)self topStroke];
    }

    else
    {
      [(OADTableCellBorderStyle *)self bottomStroke];
    }

    leftStroke = LABEL_9:;
    goto LABEL_19;
  }

  if (stroke <= 6)
  {
    if (stroke == 5)
    {
      [(OADTableCellBorderStyle *)self horzInsideStroke];
    }

    else
    {
      [(OADTableCellBorderStyle *)self vertInsideStroke];
    }

    goto LABEL_9;
  }

  if (stroke == 7)
  {
    leftStroke = [(OADTableCellBorderStyle *)self topLeftToBottomRightStroke];
  }

  else if (stroke == 8)
  {
    leftStroke = [(OADTableCellBorderStyle *)self bottomLeftToTopRightStroke];
  }

LABEL_19:

  return leftStroke;
}

- (void)setStrokeOfType:(int)type toValue:(id)value
{
  valueCopy = value;
  v7 = valueCopy;
  if (type > 4)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        [(OADTableCellBorderStyle *)self setTopLeftToBottomRightStroke:valueCopy];
      }

      else if (type == 8)
      {
        [(OADTableCellBorderStyle *)self setBottomLeftToTopRightStroke:valueCopy];
      }
    }

    else if (type == 5)
    {
      [(OADTableCellBorderStyle *)self setHorzInsideStroke:valueCopy];
    }

    else
    {
      [(OADTableCellBorderStyle *)self setVertInsideStroke:valueCopy];
    }
  }

  else if (type > 2)
  {
    if (type == 3)
    {
      [(OADTableCellBorderStyle *)self setTopStroke:valueCopy];
    }

    else
    {
      [(OADTableCellBorderStyle *)self setBottomStroke:valueCopy];
    }
  }

  else if (type == 1)
  {
    [(OADTableCellBorderStyle *)self setLeftStroke:valueCopy];
  }

  else if (type == 2)
  {
    [(OADTableCellBorderStyle *)self setRightStroke:valueCopy];
  }
}

+ (id)defaultAxisParallelStroke
{
  v2 = +[OADTableCellBorderStyle defaultAxisParallelStroke]::defaultAxisParallelStroke;
  if (!+[OADTableCellBorderStyle defaultAxisParallelStroke]::defaultAxisParallelStroke)
  {
    v3 = +[OADStroke blackStroke];
    v4 = [v3 copy];
    v5 = +[OADTableCellBorderStyle defaultAxisParallelStroke]::defaultAxisParallelStroke;
    +[OADTableCellBorderStyle defaultAxisParallelStroke]::defaultAxisParallelStroke = v4;

    LODWORD(v6) = 1.0;
    [+[OADTableCellBorderStyle defaultAxisParallelStroke]::defaultAxisParallelStroke setWidth:v6];
    v2 = +[OADTableCellBorderStyle defaultAxisParallelStroke]::defaultAxisParallelStroke;
  }

  return v2;
}

+ (id)defaultStyle
{
  v3 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
  if (!+[OADTableCellBorderStyle defaultStyle]::defaultStyle)
  {
    v4 = objc_alloc_init(OADTableCellBorderStyle);
    v5 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    +[OADTableCellBorderStyle defaultStyle]::defaultStyle = v4;

    v6 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    defaultAxisParallelStroke = [self defaultAxisParallelStroke];
    [v6 setLeftStroke:defaultAxisParallelStroke];

    v8 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    defaultAxisParallelStroke2 = [self defaultAxisParallelStroke];
    [v8 setRightStroke:defaultAxisParallelStroke2];

    v10 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    defaultAxisParallelStroke3 = [self defaultAxisParallelStroke];
    [v10 setTopStroke:defaultAxisParallelStroke3];

    v12 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    defaultAxisParallelStroke4 = [self defaultAxisParallelStroke];
    [v12 setBottomStroke:defaultAxisParallelStroke4];

    v14 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    defaultAxisParallelStroke5 = [self defaultAxisParallelStroke];
    [v14 setHorzInsideStroke:defaultAxisParallelStroke5];

    v16 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    defaultAxisParallelStroke6 = [self defaultAxisParallelStroke];
    [v16 setVertInsideStroke:defaultAxisParallelStroke6];

    v18 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    defaultObliqueStroke = [self defaultObliqueStroke];
    [v18 setTopLeftToBottomRightStroke:defaultObliqueStroke];

    v20 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    defaultObliqueStroke2 = [self defaultObliqueStroke];
    [v20 setBottomLeftToTopRightStroke:defaultObliqueStroke2];

    v3 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
  }

  return v3;
}

- (id)shallowCopy
{
  v3 = objc_alloc_init(OADTableCellBorderStyle);
  leftStroke = [(OADTableCellBorderStyle *)self leftStroke];
  [(OADTableCellBorderStyle *)v3 setLeftStroke:leftStroke];

  rightStroke = [(OADTableCellBorderStyle *)self rightStroke];
  [(OADTableCellBorderStyle *)v3 setRightStroke:rightStroke];

  topStroke = [(OADTableCellBorderStyle *)self topStroke];
  [(OADTableCellBorderStyle *)v3 setTopStroke:topStroke];

  bottomStroke = [(OADTableCellBorderStyle *)self bottomStroke];
  [(OADTableCellBorderStyle *)v3 setBottomStroke:bottomStroke];

  horzInsideStroke = [(OADTableCellBorderStyle *)self horzInsideStroke];
  [(OADTableCellBorderStyle *)v3 setHorzInsideStroke:horzInsideStroke];

  vertInsideStroke = [(OADTableCellBorderStyle *)self vertInsideStroke];
  [(OADTableCellBorderStyle *)v3 setVertInsideStroke:vertInsideStroke];

  topLeftToBottomRightStroke = [(OADTableCellBorderStyle *)self topLeftToBottomRightStroke];
  [(OADTableCellBorderStyle *)v3 setTopLeftToBottomRightStroke:topLeftToBottomRightStroke];

  bottomLeftToTopRightStroke = [(OADTableCellBorderStyle *)self bottomLeftToTopRightStroke];
  [(OADTableCellBorderStyle *)v3 setBottomLeftToTopRightStroke:bottomLeftToTopRightStroke];

  return v3;
}

- (void)applyOverridesFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    v21 = fromCopy;
    leftStroke = [fromCopy leftStroke];

    if (leftStroke)
    {
      leftStroke2 = [v21 leftStroke];
      [(OADTableCellBorderStyle *)self setLeftStroke:leftStroke2];
    }

    rightStroke = [v21 rightStroke];

    if (rightStroke)
    {
      rightStroke2 = [v21 rightStroke];
      [(OADTableCellBorderStyle *)self setRightStroke:rightStroke2];
    }

    topStroke = [v21 topStroke];

    if (topStroke)
    {
      topStroke2 = [v21 topStroke];
      [(OADTableCellBorderStyle *)self setTopStroke:topStroke2];
    }

    bottomStroke = [v21 bottomStroke];

    if (bottomStroke)
    {
      bottomStroke2 = [v21 bottomStroke];
      [(OADTableCellBorderStyle *)self setBottomStroke:bottomStroke2];
    }

    horzInsideStroke = [v21 horzInsideStroke];

    if (horzInsideStroke)
    {
      horzInsideStroke2 = [v21 horzInsideStroke];
      [(OADTableCellBorderStyle *)self setHorzInsideStroke:horzInsideStroke2];
    }

    vertInsideStroke = [v21 vertInsideStroke];

    if (vertInsideStroke)
    {
      vertInsideStroke2 = [v21 vertInsideStroke];
      [(OADTableCellBorderStyle *)self setVertInsideStroke:vertInsideStroke2];
    }

    topLeftToBottomRightStroke = [v21 topLeftToBottomRightStroke];

    if (topLeftToBottomRightStroke)
    {
      topLeftToBottomRightStroke2 = [v21 topLeftToBottomRightStroke];
      [(OADTableCellBorderStyle *)self setTopLeftToBottomRightStroke:topLeftToBottomRightStroke2];
    }

    bottomLeftToTopRightStroke = [v21 bottomLeftToTopRightStroke];

    fromCopy = v21;
    if (bottomLeftToTopRightStroke)
    {
      bottomLeftToTopRightStroke2 = [v21 bottomLeftToTopRightStroke];
      [(OADTableCellBorderStyle *)self setBottomLeftToTopRightStroke:bottomLeftToTopRightStroke2];

      fromCopy = v21;
    }
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTableCellBorderStyle;
  v2 = [(OADTableCellBorderStyle *)&v4 description];

  return v2;
}

@end
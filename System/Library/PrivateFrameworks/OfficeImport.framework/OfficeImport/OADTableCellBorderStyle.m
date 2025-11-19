@interface OADTableCellBorderStyle
+ (id)defaultAxisParallelStroke;
+ (id)defaultStyle;
- (id)description;
- (id)shallowCopy;
- (id)stroke:(int)a3;
- (void)applyOverridesFrom:(id)a3;
- (void)setStrokeOfType:(int)a3 toValue:(id)a4;
@end

@implementation OADTableCellBorderStyle

- (id)stroke:(int)a3
{
  v4 = 0;
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v4 = [(OADTableCellBorderStyle *)self leftStroke];
      }

      else if (a3 == 2)
      {
        v4 = [(OADTableCellBorderStyle *)self rightStroke];
      }

      goto LABEL_19;
    }

    if (a3 == 3)
    {
      [(OADTableCellBorderStyle *)self topStroke];
    }

    else
    {
      [(OADTableCellBorderStyle *)self bottomStroke];
    }

    v4 = LABEL_9:;
    goto LABEL_19;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      [(OADTableCellBorderStyle *)self horzInsideStroke];
    }

    else
    {
      [(OADTableCellBorderStyle *)self vertInsideStroke];
    }

    goto LABEL_9;
  }

  if (a3 == 7)
  {
    v4 = [(OADTableCellBorderStyle *)self topLeftToBottomRightStroke];
  }

  else if (a3 == 8)
  {
    v4 = [(OADTableCellBorderStyle *)self bottomLeftToTopRightStroke];
  }

LABEL_19:

  return v4;
}

- (void)setStrokeOfType:(int)a3 toValue:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        [(OADTableCellBorderStyle *)self setTopLeftToBottomRightStroke:v6];
      }

      else if (a3 == 8)
      {
        [(OADTableCellBorderStyle *)self setBottomLeftToTopRightStroke:v6];
      }
    }

    else if (a3 == 5)
    {
      [(OADTableCellBorderStyle *)self setHorzInsideStroke:v6];
    }

    else
    {
      [(OADTableCellBorderStyle *)self setVertInsideStroke:v6];
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      [(OADTableCellBorderStyle *)self setTopStroke:v6];
    }

    else
    {
      [(OADTableCellBorderStyle *)self setBottomStroke:v6];
    }
  }

  else if (a3 == 1)
  {
    [(OADTableCellBorderStyle *)self setLeftStroke:v6];
  }

  else if (a3 == 2)
  {
    [(OADTableCellBorderStyle *)self setRightStroke:v6];
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
    v7 = [a1 defaultAxisParallelStroke];
    [v6 setLeftStroke:v7];

    v8 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    v9 = [a1 defaultAxisParallelStroke];
    [v8 setRightStroke:v9];

    v10 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    v11 = [a1 defaultAxisParallelStroke];
    [v10 setTopStroke:v11];

    v12 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    v13 = [a1 defaultAxisParallelStroke];
    [v12 setBottomStroke:v13];

    v14 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    v15 = [a1 defaultAxisParallelStroke];
    [v14 setHorzInsideStroke:v15];

    v16 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    v17 = [a1 defaultAxisParallelStroke];
    [v16 setVertInsideStroke:v17];

    v18 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    v19 = [a1 defaultObliqueStroke];
    [v18 setTopLeftToBottomRightStroke:v19];

    v20 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
    v21 = [a1 defaultObliqueStroke];
    [v20 setBottomLeftToTopRightStroke:v21];

    v3 = +[OADTableCellBorderStyle defaultStyle]::defaultStyle;
  }

  return v3;
}

- (id)shallowCopy
{
  v3 = objc_alloc_init(OADTableCellBorderStyle);
  v4 = [(OADTableCellBorderStyle *)self leftStroke];
  [(OADTableCellBorderStyle *)v3 setLeftStroke:v4];

  v5 = [(OADTableCellBorderStyle *)self rightStroke];
  [(OADTableCellBorderStyle *)v3 setRightStroke:v5];

  v6 = [(OADTableCellBorderStyle *)self topStroke];
  [(OADTableCellBorderStyle *)v3 setTopStroke:v6];

  v7 = [(OADTableCellBorderStyle *)self bottomStroke];
  [(OADTableCellBorderStyle *)v3 setBottomStroke:v7];

  v8 = [(OADTableCellBorderStyle *)self horzInsideStroke];
  [(OADTableCellBorderStyle *)v3 setHorzInsideStroke:v8];

  v9 = [(OADTableCellBorderStyle *)self vertInsideStroke];
  [(OADTableCellBorderStyle *)v3 setVertInsideStroke:v9];

  v10 = [(OADTableCellBorderStyle *)self topLeftToBottomRightStroke];
  [(OADTableCellBorderStyle *)v3 setTopLeftToBottomRightStroke:v10];

  v11 = [(OADTableCellBorderStyle *)self bottomLeftToTopRightStroke];
  [(OADTableCellBorderStyle *)v3 setBottomLeftToTopRightStroke:v11];

  return v3;
}

- (void)applyOverridesFrom:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v21 = v4;
    v5 = [v4 leftStroke];

    if (v5)
    {
      v6 = [v21 leftStroke];
      [(OADTableCellBorderStyle *)self setLeftStroke:v6];
    }

    v7 = [v21 rightStroke];

    if (v7)
    {
      v8 = [v21 rightStroke];
      [(OADTableCellBorderStyle *)self setRightStroke:v8];
    }

    v9 = [v21 topStroke];

    if (v9)
    {
      v10 = [v21 topStroke];
      [(OADTableCellBorderStyle *)self setTopStroke:v10];
    }

    v11 = [v21 bottomStroke];

    if (v11)
    {
      v12 = [v21 bottomStroke];
      [(OADTableCellBorderStyle *)self setBottomStroke:v12];
    }

    v13 = [v21 horzInsideStroke];

    if (v13)
    {
      v14 = [v21 horzInsideStroke];
      [(OADTableCellBorderStyle *)self setHorzInsideStroke:v14];
    }

    v15 = [v21 vertInsideStroke];

    if (v15)
    {
      v16 = [v21 vertInsideStroke];
      [(OADTableCellBorderStyle *)self setVertInsideStroke:v16];
    }

    v17 = [v21 topLeftToBottomRightStroke];

    if (v17)
    {
      v18 = [v21 topLeftToBottomRightStroke];
      [(OADTableCellBorderStyle *)self setTopLeftToBottomRightStroke:v18];
    }

    v19 = [v21 bottomLeftToTopRightStroke];

    v4 = v21;
    if (v19)
    {
      v20 = [v21 bottomLeftToTopRightStroke];
      [(OADTableCellBorderStyle *)self setBottomLeftToTopRightStroke:v20];

      v4 = v21;
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
@interface OADTableCellProperties
- (id)description;
- (id)stroke:(int)stroke;
- (id)strokeNormalToDir:(int)dir bound:(int)bound;
- (void)setStrokeOfType:(int)type toValue:(id)value;
@end

@implementation OADTableCellProperties

- (id)stroke:(int)stroke
{
  bottomStroke = 0;
  if (stroke > 3)
  {
    switch(stroke)
    {
      case 4:
        bottomStroke = [(OADTableCellProperties *)self bottomStroke];
        break;
      case 7:
        bottomStroke = [(OADTableCellProperties *)self topLeftToBottomRightStroke];
        break;
      case 8:
        bottomStroke = [(OADTableCellProperties *)self bottomLeftToTopRightStroke];
        break;
    }
  }

  else
  {
    switch(stroke)
    {
      case 1:
        bottomStroke = [(OADTableCellProperties *)self leftStroke];
        break;
      case 2:
        bottomStroke = [(OADTableCellProperties *)self rightStroke];
        break;
      case 3:
        bottomStroke = [(OADTableCellProperties *)self topStroke];
        break;
    }
  }

  return bottomStroke;
}

- (void)setStrokeOfType:(int)type toValue:(id)value
{
  valueCopy = value;
  v7 = valueCopy;
  if (type > 3)
  {
    switch(type)
    {
      case 4:
        [(OADTableCellProperties *)self setBottomStroke:valueCopy];
        break;
      case 7:
        [(OADTableCellProperties *)self setTopLeftToBottomRightStroke:valueCopy];
        break;
      case 8:
        [(OADTableCellProperties *)self setBottomLeftToTopRightStroke:valueCopy];
        break;
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        [(OADTableCellProperties *)self setLeftStroke:valueCopy];
        break;
      case 2:
        [(OADTableCellProperties *)self setRightStroke:valueCopy];
        break;
      case 3:
        [(OADTableCellProperties *)self setTopStroke:valueCopy];
        break;
    }
  }
}

- (id)strokeNormalToDir:(int)dir bound:(int)bound
{
  if (dir == 1)
  {
    if (bound != 1)
    {
      if (!bound)
      {
        leftStroke = [(OADTableCellProperties *)self leftStroke];
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    leftStroke = [(OADTableCellProperties *)self rightStroke];
  }

  else
  {
    if (dir)
    {
LABEL_9:
      leftStroke = 0;
      goto LABEL_10;
    }

    if (bound != 1)
    {
      if (!bound)
      {
        leftStroke = [(OADTableCellProperties *)self topStroke];
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    leftStroke = [(OADTableCellProperties *)self bottomStroke];
  }

LABEL_10:

  return leftStroke;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTableCellProperties;
  v2 = [(OADTableCellProperties *)&v4 description];

  return v2;
}

@end
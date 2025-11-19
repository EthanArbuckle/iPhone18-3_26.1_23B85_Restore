@interface OADTableCellProperties
- (id)description;
- (id)stroke:(int)a3;
- (id)strokeNormalToDir:(int)a3 bound:(int)a4;
- (void)setStrokeOfType:(int)a3 toValue:(id)a4;
@end

@implementation OADTableCellProperties

- (id)stroke:(int)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v4 = [(OADTableCellProperties *)self bottomStroke];
        break;
      case 7:
        v4 = [(OADTableCellProperties *)self topLeftToBottomRightStroke];
        break;
      case 8:
        v4 = [(OADTableCellProperties *)self bottomLeftToTopRightStroke];
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v4 = [(OADTableCellProperties *)self leftStroke];
        break;
      case 2:
        v4 = [(OADTableCellProperties *)self rightStroke];
        break;
      case 3:
        v4 = [(OADTableCellProperties *)self topStroke];
        break;
    }
  }

  return v4;
}

- (void)setStrokeOfType:(int)a3 toValue:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        [(OADTableCellProperties *)self setBottomStroke:v6];
        break;
      case 7:
        [(OADTableCellProperties *)self setTopLeftToBottomRightStroke:v6];
        break;
      case 8:
        [(OADTableCellProperties *)self setBottomLeftToTopRightStroke:v6];
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        [(OADTableCellProperties *)self setLeftStroke:v6];
        break;
      case 2:
        [(OADTableCellProperties *)self setRightStroke:v6];
        break;
      case 3:
        [(OADTableCellProperties *)self setTopStroke:v6];
        break;
    }
  }
}

- (id)strokeNormalToDir:(int)a3 bound:(int)a4
{
  if (a3 == 1)
  {
    if (a4 != 1)
    {
      if (!a4)
      {
        v4 = [(OADTableCellProperties *)self leftStroke];
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = [(OADTableCellProperties *)self rightStroke];
  }

  else
  {
    if (a3)
    {
LABEL_9:
      v4 = 0;
      goto LABEL_10;
    }

    if (a4 != 1)
    {
      if (!a4)
      {
        v4 = [(OADTableCellProperties *)self topStroke];
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v4 = [(OADTableCellProperties *)self bottomStroke];
  }

LABEL_10:

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTableCellProperties;
  v2 = [(OADTableCellProperties *)&v4 description];

  return v2;
}

@end
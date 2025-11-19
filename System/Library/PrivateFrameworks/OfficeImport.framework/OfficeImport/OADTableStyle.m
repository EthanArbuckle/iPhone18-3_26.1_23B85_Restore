@interface OADTableStyle
- (id)description;
- (id)partStyle:(int)a3;
- (void)setStyle:(id)a3 forPart:(int)a4;
@end

@implementation OADTableStyle

- (id)partStyle:(int)a3
{
  switch(a3)
  {
    case 1:
      v5 = [(OADTableStyle *)self wholeTableStyle];
      goto LABEL_18;
    case 2:
      v5 = [(OADTableStyle *)self band1HorzStyle];
      goto LABEL_18;
    case 3:
      v5 = [(OADTableStyle *)self band2HorzStyle];
      goto LABEL_18;
    case 4:
      v5 = [(OADTableStyle *)self band1VertStyle];
      goto LABEL_18;
    case 5:
      v5 = [(OADTableStyle *)self band2VertStyle];
      goto LABEL_18;
    case 6:
      v5 = [(OADTableStyle *)self firstRowStyle];
      goto LABEL_18;
    case 7:
      v5 = [(OADTableStyle *)self lastRowStyle];
      goto LABEL_18;
    case 8:
      v5 = [(OADTableStyle *)self firstColumnStyle];
      goto LABEL_18;
    case 9:
      v5 = [(OADTableStyle *)self lastColumnStyle];
      goto LABEL_18;
    case 10:
      v5 = [(OADTableStyle *)self northWestStyle];
      goto LABEL_18;
    case 11:
      v5 = [(OADTableStyle *)self northEastStyle];
      goto LABEL_18;
    case 12:
      v5 = [(OADTableStyle *)self southWestStyle];
      goto LABEL_18;
    case 13:
      v5 = [(OADTableStyle *)self southEastStyle];
LABEL_18:

      break;
    default:
      v5 = 0;

      break;
  }

  return v5;
}

- (void)setStyle:(id)a3 forPart:(int)a4
{
  v6 = a3;
  switch(a4)
  {
    case 1:
      [(OADTableStyle *)self setWholeTableStyle:v6];
      break;
    case 2:
      [(OADTableStyle *)self setBand1HorzStyle:v6];
      break;
    case 3:
      [(OADTableStyle *)self setBand2HorzStyle:v6];
      break;
    case 4:
      [(OADTableStyle *)self setBand1VertStyle:v6];
      break;
    case 5:
      [(OADTableStyle *)self setBand2VertStyle:v6];
      break;
    case 6:
      [(OADTableStyle *)self setFirstRowStyle:v6];
      break;
    case 7:
      [(OADTableStyle *)self setLastRowStyle:v6];
      break;
    case 8:
      [(OADTableStyle *)self setFirstColumnStyle:v6];
      break;
    case 9:
      [(OADTableStyle *)self setLastColumnStyle:v6];
      break;
    case 10:
      [(OADTableStyle *)self setNorthWestStyle:v6];
      break;
    case 11:
      [(OADTableStyle *)self setNorthEastStyle:v6];
      break;
    case 12:
      [(OADTableStyle *)self setSouthWestStyle:v6];
      break;
    case 13:
      [(OADTableStyle *)self setSouthEastStyle:v6];
      break;
    default:
      break;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTableStyle;
  v2 = [(OADTableStyle *)&v4 description];

  return v2;
}

@end
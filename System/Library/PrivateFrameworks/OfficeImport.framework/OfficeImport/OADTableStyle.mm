@interface OADTableStyle
- (id)description;
- (id)partStyle:(int)style;
- (void)setStyle:(id)style forPart:(int)part;
@end

@implementation OADTableStyle

- (id)partStyle:(int)style
{
  switch(style)
  {
    case 1:
      wholeTableStyle = [(OADTableStyle *)self wholeTableStyle];
      goto LABEL_18;
    case 2:
      wholeTableStyle = [(OADTableStyle *)self band1HorzStyle];
      goto LABEL_18;
    case 3:
      wholeTableStyle = [(OADTableStyle *)self band2HorzStyle];
      goto LABEL_18;
    case 4:
      wholeTableStyle = [(OADTableStyle *)self band1VertStyle];
      goto LABEL_18;
    case 5:
      wholeTableStyle = [(OADTableStyle *)self band2VertStyle];
      goto LABEL_18;
    case 6:
      wholeTableStyle = [(OADTableStyle *)self firstRowStyle];
      goto LABEL_18;
    case 7:
      wholeTableStyle = [(OADTableStyle *)self lastRowStyle];
      goto LABEL_18;
    case 8:
      wholeTableStyle = [(OADTableStyle *)self firstColumnStyle];
      goto LABEL_18;
    case 9:
      wholeTableStyle = [(OADTableStyle *)self lastColumnStyle];
      goto LABEL_18;
    case 10:
      wholeTableStyle = [(OADTableStyle *)self northWestStyle];
      goto LABEL_18;
    case 11:
      wholeTableStyle = [(OADTableStyle *)self northEastStyle];
      goto LABEL_18;
    case 12:
      wholeTableStyle = [(OADTableStyle *)self southWestStyle];
      goto LABEL_18;
    case 13:
      wholeTableStyle = [(OADTableStyle *)self southEastStyle];
LABEL_18:

      break;
    default:
      wholeTableStyle = 0;

      break;
  }

  return wholeTableStyle;
}

- (void)setStyle:(id)style forPart:(int)part
{
  styleCopy = style;
  switch(part)
  {
    case 1:
      [(OADTableStyle *)self setWholeTableStyle:styleCopy];
      break;
    case 2:
      [(OADTableStyle *)self setBand1HorzStyle:styleCopy];
      break;
    case 3:
      [(OADTableStyle *)self setBand2HorzStyle:styleCopy];
      break;
    case 4:
      [(OADTableStyle *)self setBand1VertStyle:styleCopy];
      break;
    case 5:
      [(OADTableStyle *)self setBand2VertStyle:styleCopy];
      break;
    case 6:
      [(OADTableStyle *)self setFirstRowStyle:styleCopy];
      break;
    case 7:
      [(OADTableStyle *)self setLastRowStyle:styleCopy];
      break;
    case 8:
      [(OADTableStyle *)self setFirstColumnStyle:styleCopy];
      break;
    case 9:
      [(OADTableStyle *)self setLastColumnStyle:styleCopy];
      break;
    case 10:
      [(OADTableStyle *)self setNorthWestStyle:styleCopy];
      break;
    case 11:
      [(OADTableStyle *)self setNorthEastStyle:styleCopy];
      break;
    case 12:
      [(OADTableStyle *)self setSouthWestStyle:styleCopy];
      break;
    case 13:
      [(OADTableStyle *)self setSouthEastStyle:styleCopy];
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
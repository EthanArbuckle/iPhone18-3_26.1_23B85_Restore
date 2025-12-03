@interface DBDateFormatterToken
+ (id)tokenWithDateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle;
+ (id)tokenWithFormatString:(id)string;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation DBDateFormatterToken

- (unint64_t)hash
{
  v2 = [(DBDateFormatterToken *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  formatString = [(DBDateFormatterToken *)self formatString];
  v6 = [v3 stringWithFormat:@"<%@: %p formatString=%@ dateStyle=%lu timeStyle=%lu>", v4, self, formatString, -[DBDateFormatterToken dateStyle](self, "dateStyle"), -[DBDateFormatterToken timeStyle](self, "timeStyle")];

  return v6;
}

+ (id)tokenWithFormatString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  [v4 setFormatString:stringCopy];

  return v4;
}

+ (id)tokenWithDateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle
{
  v6 = objc_opt_new();
  [v6 setDateStyle:style];
  [v6 setTimeStyle:timeStyle];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = equalCopy;
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    dateStyle = [(DBDateFormatterToken *)self dateStyle];
    if (dateStyle == [v6 dateStyle] && (v9 = -[DBDateFormatterToken timeStyle](self, "timeStyle"), v9 == objc_msgSend(v6, "timeStyle")))
    {
      formatString = [(DBDateFormatterToken *)self formatString];
      formatString2 = [v6 formatString];
      v7 = [formatString isEqualToString:formatString2];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
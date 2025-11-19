@interface DBDateFormatterToken
+ (id)tokenWithDateStyle:(unint64_t)a3 timeStyle:(unint64_t)a4;
+ (id)tokenWithFormatString:(id)a3;
- (BOOL)isEqual:(id)a3;
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
  v5 = [(DBDateFormatterToken *)self formatString];
  v6 = [v3 stringWithFormat:@"<%@: %p formatString=%@ dateStyle=%lu timeStyle=%lu>", v4, self, v5, -[DBDateFormatterToken dateStyle](self, "dateStyle"), -[DBDateFormatterToken timeStyle](self, "timeStyle")];

  return v6;
}

+ (id)tokenWithFormatString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setFormatString:v3];

  return v4;
}

+ (id)tokenWithDateStyle:(unint64_t)a3 timeStyle:(unint64_t)a4
{
  v6 = objc_opt_new();
  [v6 setDateStyle:a3];
  [v6 setTimeStyle:a4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = v4;
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [(DBDateFormatterToken *)self dateStyle];
    if (v8 == [v6 dateStyle] && (v9 = -[DBDateFormatterToken timeStyle](self, "timeStyle"), v9 == objc_msgSend(v6, "timeStyle")))
    {
      v10 = [(DBDateFormatterToken *)self formatString];
      v11 = [v6 formatString];
      v7 = [v10 isEqualToString:v11];
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
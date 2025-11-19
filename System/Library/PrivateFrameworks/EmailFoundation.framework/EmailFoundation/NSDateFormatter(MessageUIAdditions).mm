@interface NSDateFormatter(MessageUIAdditions)
+ (id)ef_formatDate:()MessageUIAdditions shortStyle:;
+ (id)ef_formatDate:()MessageUIAdditions style:;
+ (id)ef_formatDate:()MessageUIAdditions style:formattingContext:;
+ (id)ef_formatterForStyle:()MessageUIAdditions;
+ (id)ef_isoDateFormatter;
@end

@implementation NSDateFormatter(MessageUIAdditions)

+ (id)ef_formatDate:()MessageUIAdditions shortStyle:
{
  v5 = a3;
  if (a4)
  {
    _sharedShortDateFormatter();
  }

  else
  {
    _sharedLongDateFormatter();
  }
  v6 = ;
  v7 = [v6 stringFromDate:v5];

  return v7;
}

+ (id)ef_formatterForStyle:()MessageUIAdditions
{
  v3 = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        if (_sharedMediumRelativeDateOnlyFormatter_sharedMediumRelativeDateOnlyFormatterOnceToken != -1)
        {
          +[NSDateFormatter(MessageUIAdditions) ef_formatterForStyle:];
        }

        v4 = _sharedMediumRelativeDateOnlyFormatter__sharedMediumRelativeDateOnlyFormatter;
        break;
      case 4:
        if (_sharedShortTimeFormatter_sharedShortTimeFormatterrOnceToken != -1)
        {
          +[NSDateFormatter(MessageUIAdditions) ef_formatterForStyle:];
        }

        v4 = _sharedShortTimeFormatter__sharedShortTimeFormatter;
        break;
      case 5:
        v4 = _sharedLongTimeDateFormatter___sharedLongDateFormatter;
        if (!_sharedLongTimeDateFormatter___sharedLongDateFormatter)
        {
          v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v6 = _sharedLongTimeDateFormatter___sharedLongDateFormatter;
          _sharedLongTimeDateFormatter___sharedLongDateFormatter = v5;

          [_sharedLongTimeDateFormatter___sharedLongDateFormatter setTimeStyle:3];
          [_sharedLongTimeDateFormatter___sharedLongDateFormatter setDateStyle:1];
          v4 = _sharedLongTimeDateFormatter___sharedLongDateFormatter;
        }

        break;
      default:
        goto LABEL_22;
    }
  }

  else
  {
    if (!a3)
    {
      v3 = _sharedShortDateFormatter();
      goto LABEL_22;
    }

    if (a3 == 1)
    {
      v3 = _sharedLongDateFormatter();
      goto LABEL_22;
    }

    if (a3 != 2)
    {
      goto LABEL_22;
    }

    if (_sharedMediumRelativeDateFormatter_sharedMediumRelativeDateFormatterOnceToken != -1)
    {
      +[NSDateFormatter(MessageUIAdditions) ef_formatterForStyle:];
    }

    v4 = _sharedMediumRelativeDateFormatter__sharedMediumRelativeDateFormatter;
  }

  v3 = v4;
LABEL_22:

  return v3;
}

+ (id)ef_isoDateFormatter
{
  if (ef_isoDateFormatter_onceToken != -1)
  {
    +[NSDateFormatter(MessageUIAdditions) ef_isoDateFormatter];
  }

  v1 = ef_isoDateFormatter_dateFormatter;

  return v1;
}

+ (id)ef_formatDate:()MessageUIAdditions style:
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AB78] ef_formatterForStyle:a4];
  v7 = [v6 stringFromDate:v5];

  return v7;
}

+ (id)ef_formatDate:()MessageUIAdditions style:formattingContext:
{
  v7 = a3;
  v8 = [MEMORY[0x1E696AB78] ef_formatterForStyle:a4];
  v9 = [v8 formattingContext];
  [v8 setFormattingContext:a5];
  v10 = [v8 stringFromDate:v7];
  [v8 setFormattingContext:v9];

  return v10;
}

@end
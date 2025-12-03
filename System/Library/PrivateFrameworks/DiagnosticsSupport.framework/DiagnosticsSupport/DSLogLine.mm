@interface DSLogLine
+ (id)logLinesFromArray:(id)array;
- (BOOL)BOOLFromFieldAtIndex:(int)index;
- (DSLogLine)initWithLine:(id)line;
- (DSLogLine)initWithLogLine:(id)line;
- (double)doubleFromFieldAtIndex:(int)index;
- (id)blankingStringFromFieldAtIndex:(int)index;
- (id)stringFromFieldAtIndex:(int)index;
- (int)integerFromFieldAtIndex:(int)index;
- (int64_t)longLongFromFieldAtIndex:(int)index;
@end

@implementation DSLogLine

- (DSLogLine)initWithLine:(id)line
{
  lineCopy = line;
  v28.receiver = self;
  v28.super_class = DSLogLine;
  v5 = [(DSLogLine *)&v28 init];
  if (!v5)
  {
LABEL_26:
    v23 = v5;
    goto LABEL_27;
  }

  if ([lineCopy length] >= 2)
  {
    v6 = [lineCopy componentsSeparatedByString:{@", "}];
    p_fields = &v5->_fields;
    fields = v5->_fields;
    v5->_fields = v6;

    if ([(NSArray *)v5->_fields count]<= 1)
    {
      v9 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(DSLogLine *)&v5->_fields initWithLine:v9];
      }

      goto LABEL_20;
    }

    v10 = +[DSDateFormatter sharedFormatter];
    v11 = [v10 formatterWithType:2];
    v12 = [(NSArray *)v5->_fields objectAtIndex:0];
    v13 = [v11 dateFromString:v12];
    date = v5->_date;
    v5->_date = v13;

    v15 = v5->_date;
    if (v15)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(NSDate *)v15 timeIntervalSinceDate:date];
      v18 = v17;

      if (v18 > 86400.0 || v18 <= -1209600.0)
      {
        v22 = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(DSLogLine *)v22 initWithLine:v18];
        }
      }

      else
      {
        v19 = [(NSArray *)v5->_fields objectAtIndex:1];
        type = v5->_type;
        v5->_type = v19;

        if ([(NSString *)v5->_type length])
        {
          v5->_isUsable = 1;
          if ([(NSArray *)v5->_fields count]< 7)
          {
            v21 = 0;
          }

          else
          {
            v21 = [*p_fields objectAtIndexedSubscript:6];
          }

          exception = v5->_exception;
          v5->_exception = v21;

          if ([(NSArray *)v5->_fields count]< 6)
          {
            v25 = 0;
          }

          else
          {
            v25 = [*p_fields objectAtIndexedSubscript:5];
          }

          bundleID = v5->_bundleID;
          v5->_bundleID = v25;

          goto LABEL_26;
        }

        v22 = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [DSLogLine initWithLine:v22];
        }
      }
    }

    else
    {
      v22 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [DSLogLine initWithLine:v22];
      }
    }
  }

LABEL_20:
  v23 = 0;
LABEL_27:

  return v23;
}

- (DSLogLine)initWithLogLine:(id)line
{
  lineCopy = line;
  v15.receiver = self;
  v15.super_class = DSLogLine;
  v5 = [(DSLogLine *)&v15 init];
  if (v5)
  {
    type = [lineCopy type];
    type = v5->_type;
    v5->_type = type;

    date = [lineCopy date];
    date = v5->_date;
    v5->_date = date;

    v5->_isUsable = [lineCopy isUsable];
    exception = [lineCopy exception];
    exception = v5->_exception;
    v5->_exception = exception;

    fields = [lineCopy fields];
    fields = v5->_fields;
    v5->_fields = fields;
  }

  return v5;
}

+ (id)logLinesFromArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [DSLogLine alloc];
        v12 = [(DSLogLine *)v11 initWithLine:v10, v15];
        if (v12)
        {
          [array addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (int)integerFromFieldAtIndex:(int)index
{
  fields = [(DSLogLine *)self fields];
  v6 = [fields count];

  if (v6 <= index)
  {
    return 0;
  }

  fields2 = [(DSLogLine *)self fields];
  v8 = [fields2 objectAtIndexedSubscript:index];
  intValue = [v8 intValue];

  return intValue;
}

- (int64_t)longLongFromFieldAtIndex:(int)index
{
  fields = [(DSLogLine *)self fields];
  v6 = [fields count];

  if (v6 <= index)
  {
    return 0;
  }

  fields2 = [(DSLogLine *)self fields];
  v8 = [fields2 objectAtIndexedSubscript:index];
  longLongValue = [v8 longLongValue];

  return longLongValue;
}

- (double)doubleFromFieldAtIndex:(int)index
{
  fields = [(DSLogLine *)self fields];
  v6 = [fields count];

  if (v6 <= index)
  {
    return 0.0;
  }

  fields2 = [(DSLogLine *)self fields];
  v8 = [fields2 objectAtIndexedSubscript:index];
  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (BOOL)BOOLFromFieldAtIndex:(int)index
{
  fields = [(DSLogLine *)self fields];
  v6 = [fields count];

  if (v6 <= index)
  {
    return 0;
  }

  fields2 = [(DSLogLine *)self fields];
  v8 = [fields2 objectAtIndexedSubscript:index];
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (id)blankingStringFromFieldAtIndex:(int)index
{
  fields = [(DSLogLine *)self fields];
  v6 = [fields count];

  if (v6 <= index)
  {
    v8 = &stru_285B93678;
  }

  else
  {
    fields2 = [(DSLogLine *)self fields];
    v8 = [fields2 objectAtIndexedSubscript:index];
  }

  return v8;
}

- (id)stringFromFieldAtIndex:(int)index
{
  fields = [(DSLogLine *)self fields];
  v6 = [fields count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    fields2 = [(DSLogLine *)self fields];
    v8 = [fields2 objectAtIndexedSubscript:index];
  }

  return v8;
}

- (void)initWithLine:(os_log_t)log .cold.2(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_error_impl(&dword_248BD5000, log, OS_LOG_TYPE_ERROR, "[DSLogLine] ignoring log line, log date out of range: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithLine:(id *)a1 .cold.4(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 count];
  v5 = 134217984;
  v6 = v3;
  _os_log_error_impl(&dword_248BD5000, a2, OS_LOG_TYPE_ERROR, "[DSLogLine] ignoring log line, field count too small: %ld", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end
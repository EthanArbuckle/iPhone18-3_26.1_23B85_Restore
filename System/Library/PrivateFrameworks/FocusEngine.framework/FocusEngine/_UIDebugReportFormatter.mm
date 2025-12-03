@interface _UIDebugReportFormatter
+ (id)defaultFormatter;
- (_UIDebugReportFormatter)init;
- (id)stringFromReportComponents:(id)components;
@end

@implementation _UIDebugReportFormatter

+ (id)defaultFormatter
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (_UIDebugReportFormatter)init
{
  v6.receiver = self;
  v6.super_class = _UIDebugReportFormatter;
  v2 = [(_UIDebugReportFormatter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    indentString = v2->_indentString;
    v2->_indentString = @"\t";
  }

  return v3;
}

- (id)stringFromReportComponents:(id)components
{
  componentsCopy = components;
  if (!componentsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugReport.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"components"}];
  }

  string = [MEMORY[0x277CCAB68] string];
  header = [componentsCopy header];
  if (([header isEqualToString:&stru_285EB2008] & 1) == 0)
  {
    [string appendFormat:@"%@\n", header];
  }

  body = [componentsCopy body];
  if (([body isEqualToString:&stru_285EB2008] & 1) == 0)
  {
    extraBodyIndentLevel = self->_extraBodyIndentLevel;
    if (extraBodyIndentLevel)
    {
      v10 = [body mutableCopy];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%*s", extraBodyIndentLevel, "\t"];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", v11];
      [v10 replaceOccurrencesOfString:@"\n" withString:v12 options:0 range:{0, objc_msgSend(body, "length")}];

      [v10 insertString:v11 atIndex:0];
      body = v10;
    }

    [string appendString:body];
  }

  footer = [componentsCopy footer];
  if (([footer isEqualToString:&stru_285EB2008] & 1) == 0)
  {
    [string appendFormat:@"\n%@", footer];
  }

  indentLevel = self->_indentLevel;
  if (indentLevel)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%*s", indentLevel, -[NSString UTF8String](self->_indentString, "UTF8String")];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", v15];
    [string replaceOccurrencesOfString:@"\n" withString:v16 options:0 range:{0, objc_msgSend(string, "length")}];

    [string insertString:v15 atIndex:0];
  }

  return string;
}

@end
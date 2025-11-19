@interface _UIDebugReportComponents
- (_UIDebugReportComponents)init;
@end

@implementation _UIDebugReportComponents

- (_UIDebugReportComponents)init
{
  v8.receiver = self;
  v8.super_class = _UIDebugReportComponents;
  v2 = [(_UIDebugReportComponents *)&v8 init];
  v3 = v2;
  if (v2)
  {
    header = v2->_header;
    v2->_header = &stru_285EB2008;

    body = v3->_body;
    v3->_body = &stru_285EB2008;

    footer = v3->_footer;
    v3->_footer = &stru_285EB2008;
  }

  return v3;
}

@end
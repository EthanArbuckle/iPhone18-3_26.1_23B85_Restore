@interface DDSearchWebAction
- (DDSearchWebAction)initWithQueryString:(id)string range:(_NSRange)range context:(id)context;
- (void)performFromView:(id)view;
@end

@implementation DDSearchWebAction

- (void)performFromView:(id)view
{
  view;
  if (self->super.super._result)
  {
    v4 = DDResultGetMatchedString();
  }

  else
  {
    query = self->_query;
    if (!query)
    {
      goto LABEL_6;
    }

    v4 = query;
  }

  v6 = v4;
  DDPerformWebSearchFromQuery(v4);

LABEL_6:

  MEMORY[0x2821F96F8]();
}

- (DDSearchWebAction)initWithQueryString:(id)string range:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  v10 = [string substringWithRange:{location, length}];
  query = self->_query;
  self->_query = v10;

  v12 = [(DDAction *)self initWithURL:0 result:0 context:contextCopy];
  return v12;
}

@end
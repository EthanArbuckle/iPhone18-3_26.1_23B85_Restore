@interface DDSearchWebAction
- (DDSearchWebAction)initWithQueryString:(id)a3 range:(_NSRange)a4 context:(id)a5;
- (void)performFromView:(id)a3;
@end

@implementation DDSearchWebAction

- (void)performFromView:(id)a3
{
  a3;
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

- (DDSearchWebAction)initWithQueryString:(id)a3 range:(_NSRange)a4 context:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 substringWithRange:{location, length}];
  query = self->_query;
  self->_query = v10;

  v12 = [(DDAction *)self initWithURL:0 result:0 context:v9];
  return v12;
}

@end
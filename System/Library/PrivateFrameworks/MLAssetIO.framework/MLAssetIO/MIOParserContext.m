@interface MIOParserContext
- (MIOParserContext)initWithModelSpecificationFileURL:(id)a3;
@end

@implementation MIOParserContext

- (MIOParserContext)initWithModelSpecificationFileURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MIOParserContext;
  v5 = [(MIOParserContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    modelSpecificationFileURL = v5->_modelSpecificationFileURL;
    v5->_modelSpecificationFileURL = v6;
  }

  return v5;
}

@end
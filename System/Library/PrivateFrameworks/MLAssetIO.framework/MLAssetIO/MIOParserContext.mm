@interface MIOParserContext
- (MIOParserContext)initWithModelSpecificationFileURL:(id)l;
@end

@implementation MIOParserContext

- (MIOParserContext)initWithModelSpecificationFileURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = MIOParserContext;
  v5 = [(MIOParserContext *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    modelSpecificationFileURL = v5->_modelSpecificationFileURL;
    v5->_modelSpecificationFileURL = v6;
  }

  return v5;
}

@end
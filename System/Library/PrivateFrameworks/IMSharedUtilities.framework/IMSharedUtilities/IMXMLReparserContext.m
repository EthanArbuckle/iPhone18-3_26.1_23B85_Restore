@interface IMXMLReparserContext
- (IMXMLReparserContext)initWithContent:(id)a3 attributesToPreserve:(id)a4 attributesToMerge:(id)a5;
- (void)_setOutContent:(id)a3 error:(id)a4;
- (void)dealloc;
@end

@implementation IMXMLReparserContext

- (IMXMLReparserContext)initWithContent:(id)a3 attributesToPreserve:(id)a4 attributesToMerge:(id)a5
{
  v10.receiver = self;
  v10.super_class = IMXMLReparserContext;
  v8 = [(IMXMLReparserContext *)&v10 init];
  if (v8)
  {
    v8->_inContent = a3;
    v8->_attributesToPreserve = a4;
    v8->_attributesToMerge = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMXMLReparserContext;
  [(IMXMLReparserContext *)&v3 dealloc];
}

- (void)_setOutContent:(id)a3 error:(id)a4
{
  outContent = self->_outContent;
  if (outContent != a3)
  {

    self->_outContent = a3;
  }

  error = self->_error;
  if (error != a4)
  {

    self->_error = a4;
  }
}

@end
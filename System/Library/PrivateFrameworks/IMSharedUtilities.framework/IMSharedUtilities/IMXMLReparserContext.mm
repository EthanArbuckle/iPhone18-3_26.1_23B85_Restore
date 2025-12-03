@interface IMXMLReparserContext
- (IMXMLReparserContext)initWithContent:(id)content attributesToPreserve:(id)preserve attributesToMerge:(id)merge;
- (void)_setOutContent:(id)content error:(id)error;
- (void)dealloc;
@end

@implementation IMXMLReparserContext

- (IMXMLReparserContext)initWithContent:(id)content attributesToPreserve:(id)preserve attributesToMerge:(id)merge
{
  v10.receiver = self;
  v10.super_class = IMXMLReparserContext;
  v8 = [(IMXMLReparserContext *)&v10 init];
  if (v8)
  {
    v8->_inContent = content;
    v8->_attributesToPreserve = preserve;
    v8->_attributesToMerge = merge;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMXMLReparserContext;
  [(IMXMLReparserContext *)&v3 dealloc];
}

- (void)_setOutContent:(id)content error:(id)error
{
  outContent = self->_outContent;
  if (outContent != content)
  {

    self->_outContent = content;
  }

  error = self->_error;
  if (error != error)
  {

    self->_error = error;
  }
}

@end
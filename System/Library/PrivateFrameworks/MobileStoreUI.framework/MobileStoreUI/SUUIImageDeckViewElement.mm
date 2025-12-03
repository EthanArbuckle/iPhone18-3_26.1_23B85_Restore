@interface SUUIImageDeckViewElement
- (SUUIImageDeckViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIImageDeckViewElement

- (SUUIImageDeckViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v20.receiver = self;
  v20.super_class = SUUIImageDeckViewElement;
  v9 = [(SUUIViewElement *)&v20 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  v10 = v9;
  if (v9)
  {
    v9->_initialDragLeft = 0.25;
    v9->_initialDragRight = 0.25;
    v9->_additionalDragLeft = 0.33;
    v9->_additionalDragRight = 0.33;
    v11 = [elementCopy getAttribute:@"initialDragLeft"];
    v12 = [elementCopy getAttribute:@"initialDragRight"];
    v13 = [elementCopy getAttribute:@"additionalDragLeft"];
    v14 = [elementCopy getAttribute:@"additionalDragRight"];
    if (v11 && [v11 length])
    {
      [v11 floatValue];
      v10->_initialDragLeft = v15;
    }

    if (v12 && [v12 length])
    {
      [v12 floatValue];
      v10->_initialDragRight = v16;
    }

    if (v13 && [v13 length])
    {
      [v13 floatValue];
      v10->_additionalDragLeft = v17;
    }

    if (v14 && [v14 length])
    {
      [v14 floatValue];
      v10->_additionalDragRight = v18;
    }
  }

  return v10;
}

@end
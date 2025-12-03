@interface IKServiceContext
- (IKServiceContext)initWithContextDictionary:(id)dictionary element:(id)element;
@end

@implementation IKServiceContext

- (IKServiceContext)initWithContextDictionary:(id)dictionary element:(id)element
{
  dictionaryCopy = dictionary;
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = IKServiceContext;
  v8 = [(IKServiceContext *)&v12 init];
  if (v8)
  {
    v9 = [dictionaryCopy copy];
    contextDictionary = v8->_contextDictionary;
    v8->_contextDictionary = v9;

    objc_storeStrong(&v8->_element, element);
  }

  return v8;
}

@end
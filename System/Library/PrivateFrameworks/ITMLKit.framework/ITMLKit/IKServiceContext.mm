@interface IKServiceContext
- (IKServiceContext)initWithContextDictionary:(id)a3 element:(id)a4;
@end

@implementation IKServiceContext

- (IKServiceContext)initWithContextDictionary:(id)a3 element:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IKServiceContext;
  v8 = [(IKServiceContext *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    contextDictionary = v8->_contextDictionary;
    v8->_contextDictionary = v9;

    objc_storeStrong(&v8->_element, a4);
  }

  return v8;
}

@end
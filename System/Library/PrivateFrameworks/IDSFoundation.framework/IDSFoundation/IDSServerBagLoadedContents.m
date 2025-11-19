@interface IDSServerBagLoadedContents
- (IDSServerBagLoadedContents)initWithDictionary:(id)a3;
@end

@implementation IDSServerBagLoadedContents

- (IDSServerBagLoadedContents)initWithDictionary:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = IDSServerBagLoadedContents;
    v6 = [(IDSServerBagLoadedContents *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_dictionary, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
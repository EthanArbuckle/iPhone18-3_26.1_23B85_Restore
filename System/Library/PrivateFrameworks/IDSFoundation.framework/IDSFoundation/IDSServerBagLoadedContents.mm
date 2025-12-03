@interface IDSServerBagLoadedContents
- (IDSServerBagLoadedContents)initWithDictionary:(id)dictionary;
@end

@implementation IDSServerBagLoadedContents

- (IDSServerBagLoadedContents)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v10.receiver = self;
    v10.super_class = IDSServerBagLoadedContents;
    v6 = [(IDSServerBagLoadedContents *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_dictionary, dictionary);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
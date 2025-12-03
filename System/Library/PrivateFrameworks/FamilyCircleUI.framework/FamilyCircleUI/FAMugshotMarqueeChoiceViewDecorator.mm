@interface FAMugshotMarqueeChoiceViewDecorator
+ (BOOL)shouldProcessElement:(id)element;
+ (BOOL)shouldProcessObjectModel:(id)model;
- (FAMugshotMarqueeChoiceViewDecorator)initWithElement:(id)element pictureStore:(id)store;
- (FAMugshotMarqueeChoiceViewDecorator)initWithObjectModel:(id)model pictureStore:(id)store;
- (id)altDSIDsFromString:(id)string;
- (id)imageWithAltDSIDs:(id)ds familyCircle:(id)circle;
- (void)applyImage;
@end

@implementation FAMugshotMarqueeChoiceViewDecorator

+ (BOOL)shouldProcessObjectModel:(id)model
{
  defaultPages = [model defaultPages];
  firstObject = [defaultPages firstObject];

  if ([firstObject hasChoiceView])
  {
    primaryElement = [firstObject primaryElement];
    v7 = [self shouldProcessElement:primaryElement];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)shouldProcessElement:(id)element
{
  elementCopy = element;
  attributes = [elementCopy attributes];
  v5 = [attributes objectForKeyedSubscript:@"familyAction"];
  if ([v5 isEqual:@"InjectProfileImages"])
  {
    attributes2 = [elementCopy attributes];
    v7 = [attributes2 objectForKeyedSubscript:@"altDSIDs"];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (FAMugshotMarqueeChoiceViewDecorator)initWithObjectModel:(id)model pictureStore:(id)store
{
  storeCopy = store;
  defaultPages = [model defaultPages];
  firstObject = [defaultPages firstObject];

  primaryElement = [firstObject primaryElement];
  v10 = [(FAMugshotMarqueeChoiceViewDecorator *)self initWithElement:primaryElement pictureStore:storeCopy];

  return v10;
}

- (FAMugshotMarqueeChoiceViewDecorator)initWithElement:(id)element pictureStore:(id)store
{
  elementCopy = element;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = FAMugshotMarqueeChoiceViewDecorator;
  v9 = [(FAMugshotMarqueeChoiceViewDecorator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_element, element);
    objc_storeStrong(&v10->_pictureStore, store);
  }

  return v10;
}

- (id)altDSIDsFromString:(id)string
{
  v3 = [string stringByReplacingOccurrencesOfString:@" " withString:&stru_282D9AA68];
  v4 = MEMORY[0x277CBEB98];
  v5 = [v3 componentsSeparatedByString:{@", "}];
  v6 = [v4 setWithArray:v5];

  return v6;
}

- (id)imageWithAltDSIDs:(id)ds familyCircle:(id)circle
{
  dsCopy = ds;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__FAMugshotMarqueeChoiceViewDecorator_imageWithAltDSIDs_familyCircle___block_invoke;
  v10[3] = &unk_2782F3520;
  v11 = dsCopy;
  v6 = dsCopy;
  pictureStore = [(FAMugshotMarqueeChoiceViewDecorator *)self pictureStore];
  v8 = [FAMugshotMarqueeView imageWithMemberFilter:v10 profilePictureStore:pictureStore];

  return v8;
}

uint64_t __70__FAMugshotMarqueeChoiceViewDecorator_imageWithAltDSIDs_familyCircle___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 altDSID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)applyImage
{
  element = [(FAMugshotMarqueeChoiceViewDecorator *)self element];
  attributes = [element attributes];
  v11 = [attributes objectForKeyedSubscript:@"altDSIDs"];

  v5 = [(FAMugshotMarqueeChoiceViewDecorator *)self altDSIDsFromString:v11];
  if ([v5 count])
  {
    pictureStore = [(FAMugshotMarqueeChoiceViewDecorator *)self pictureStore];
    familyCircle = [pictureStore familyCircle];
    v8 = [(FAMugshotMarqueeChoiceViewDecorator *)self imageWithAltDSIDs:v5 familyCircle:familyCircle];

    element2 = [(FAMugshotMarqueeChoiceViewDecorator *)self element];
    [v8 size];
    [element2 setImageSize:?];

    element3 = [(FAMugshotMarqueeChoiceViewDecorator *)self element];
    [element3 setImage:v8];
  }
}

@end
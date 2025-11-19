@interface FAMugshotMarqueeChoiceViewDecorator
+ (BOOL)shouldProcessElement:(id)a3;
+ (BOOL)shouldProcessObjectModel:(id)a3;
- (FAMugshotMarqueeChoiceViewDecorator)initWithElement:(id)a3 pictureStore:(id)a4;
- (FAMugshotMarqueeChoiceViewDecorator)initWithObjectModel:(id)a3 pictureStore:(id)a4;
- (id)altDSIDsFromString:(id)a3;
- (id)imageWithAltDSIDs:(id)a3 familyCircle:(id)a4;
- (void)applyImage;
@end

@implementation FAMugshotMarqueeChoiceViewDecorator

+ (BOOL)shouldProcessObjectModel:(id)a3
{
  v4 = [a3 defaultPages];
  v5 = [v4 firstObject];

  if ([v5 hasChoiceView])
  {
    v6 = [v5 primaryElement];
    v7 = [a1 shouldProcessElement:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)shouldProcessElement:(id)a3
{
  v3 = a3;
  v4 = [v3 attributes];
  v5 = [v4 objectForKeyedSubscript:@"familyAction"];
  if ([v5 isEqual:@"InjectProfileImages"])
  {
    v6 = [v3 attributes];
    v7 = [v6 objectForKeyedSubscript:@"altDSIDs"];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (FAMugshotMarqueeChoiceViewDecorator)initWithObjectModel:(id)a3 pictureStore:(id)a4
{
  v6 = a4;
  v7 = [a3 defaultPages];
  v8 = [v7 firstObject];

  v9 = [v8 primaryElement];
  v10 = [(FAMugshotMarqueeChoiceViewDecorator *)self initWithElement:v9 pictureStore:v6];

  return v10;
}

- (FAMugshotMarqueeChoiceViewDecorator)initWithElement:(id)a3 pictureStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FAMugshotMarqueeChoiceViewDecorator;
  v9 = [(FAMugshotMarqueeChoiceViewDecorator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_element, a3);
    objc_storeStrong(&v10->_pictureStore, a4);
  }

  return v10;
}

- (id)altDSIDsFromString:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@" " withString:&stru_282D9AA68];
  v4 = MEMORY[0x277CBEB98];
  v5 = [v3 componentsSeparatedByString:{@", "}];
  v6 = [v4 setWithArray:v5];

  return v6;
}

- (id)imageWithAltDSIDs:(id)a3 familyCircle:(id)a4
{
  v5 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__FAMugshotMarqueeChoiceViewDecorator_imageWithAltDSIDs_familyCircle___block_invoke;
  v10[3] = &unk_2782F3520;
  v11 = v5;
  v6 = v5;
  v7 = [(FAMugshotMarqueeChoiceViewDecorator *)self pictureStore];
  v8 = [FAMugshotMarqueeView imageWithMemberFilter:v10 profilePictureStore:v7];

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
  v3 = [(FAMugshotMarqueeChoiceViewDecorator *)self element];
  v4 = [v3 attributes];
  v11 = [v4 objectForKeyedSubscript:@"altDSIDs"];

  v5 = [(FAMugshotMarqueeChoiceViewDecorator *)self altDSIDsFromString:v11];
  if ([v5 count])
  {
    v6 = [(FAMugshotMarqueeChoiceViewDecorator *)self pictureStore];
    v7 = [v6 familyCircle];
    v8 = [(FAMugshotMarqueeChoiceViewDecorator *)self imageWithAltDSIDs:v5 familyCircle:v7];

    v9 = [(FAMugshotMarqueeChoiceViewDecorator *)self element];
    [v8 size];
    [v9 setImageSize:?];

    v10 = [(FAMugshotMarqueeChoiceViewDecorator *)self element];
    [v10 setImage:v8];
  }
}

@end
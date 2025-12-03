@interface NUArticleActivity
- (NUArticleActivity)initWithActivityType:(id)type title:(id)title image:(id)image performBlock:(id)block;
- (void)performActivity;
@end

@implementation NUArticleActivity

- (NUArticleActivity)initWithActivityType:(id)type title:(id)title image:(id)image performBlock:(id)block
{
  typeCopy = type;
  titleCopy = title;
  imageCopy = image;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = NUArticleActivity;
  v15 = [(UIActivity *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_activityType, type);
    objc_storeStrong(&v16->_activityTitle, title);
    objc_storeStrong(&v16->_activityImage, image);
    v17 = MEMORY[0x25F883F30](blockCopy);
    performBlock = v16->_performBlock;
    v16->_performBlock = v17;
  }

  return v16;
}

- (void)performActivity
{
  performBlock = [(NUArticleActivity *)self performBlock];

  if (performBlock)
  {
    performBlock2 = [(NUArticleActivity *)self performBlock];
    activityItems = [(NUArticleActivity *)self activityItems];
    (performBlock2)[2](performBlock2, activityItems);
  }

  [(UIActivity *)self activityDidFinish:1];
}

@end
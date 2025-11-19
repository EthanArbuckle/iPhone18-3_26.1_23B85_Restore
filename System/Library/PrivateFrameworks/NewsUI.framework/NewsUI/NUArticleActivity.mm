@interface NUArticleActivity
- (NUArticleActivity)initWithActivityType:(id)a3 title:(id)a4 image:(id)a5 performBlock:(id)a6;
- (void)performActivity;
@end

@implementation NUArticleActivity

- (NUArticleActivity)initWithActivityType:(id)a3 title:(id)a4 image:(id)a5 performBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = NUArticleActivity;
  v15 = [(UIActivity *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_activityType, a3);
    objc_storeStrong(&v16->_activityTitle, a4);
    objc_storeStrong(&v16->_activityImage, a5);
    v17 = MEMORY[0x25F883F30](v14);
    performBlock = v16->_performBlock;
    v16->_performBlock = v17;
  }

  return v16;
}

- (void)performActivity
{
  v3 = [(NUArticleActivity *)self performBlock];

  if (v3)
  {
    v4 = [(NUArticleActivity *)self performBlock];
    v5 = [(NUArticleActivity *)self activityItems];
    (v4)[2](v4, v5);
  }

  [(UIActivity *)self activityDidFinish:1];
}

@end
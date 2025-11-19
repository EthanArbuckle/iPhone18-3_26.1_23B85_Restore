@interface NUFeedTitleViewUpdate
+ (id)feedTitleViewUpdateCheckingForNewStoriesForType:(unint64_t)a3;
+ (id)feedTitleViewUpdateCheckingForUpdatesForType:(unint64_t)a3;
+ (id)feedTitleViewUpdateEmptyStateForType:(unint64_t)a3;
+ (id)feedTitleViewUpdateForAttributedText:(id)a3 forType:(unint64_t)a4;
+ (id)feedTitleViewUpdateForFeedImage:(id)a3 accessibilityTitle:(id)a4;
+ (id)feedTitleViewUpdateForFeedName:(id)a3;
+ (id)feedTitleViewUpdateNewStoriesWithStoryForType:(unint64_t)a3 storyCount:(unint64_t)a4;
+ (id)feedTitleViewUpdateNewStoriesWithStoryForType:(unint64_t)a3 storyCount:(unint64_t)a4 linger:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (NUFeedTitleViewUpdate)initWithType:(unint64_t)a3 updateType:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NUFeedTitleViewUpdate

+ (id)feedTitleViewUpdateEmptyStateForType:(unint64_t)a3
{
  v3 = [[NUFeedTitleViewUpdate alloc] initWithType:a3 updateType:0];

  return v3;
}

+ (id)feedTitleViewUpdateForFeedName:(id)a3
{
  v3 = a3;
  v4 = [[NUFeedTitleViewUpdate alloc] initWithType:0 updateType:0];
  [(NUFeedTitleViewUpdate *)v4 setFeedName:v3];
  [(NUFeedTitleViewUpdate *)v4 setAccessibilityTitle:v3];

  return v4;
}

+ (id)feedTitleViewUpdateForAttributedText:(id)a3 forType:(unint64_t)a4
{
  v5 = a3;
  v6 = [[NUFeedTitleViewUpdate alloc] initWithType:a4 updateType:0];
  [(NUFeedTitleViewUpdate *)v6 setAttributedText:v5];

  return v6;
}

+ (id)feedTitleViewUpdateForFeedImage:(id)a3 accessibilityTitle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NUFeedTitleViewUpdate alloc] initWithType:0 updateType:0];
  [(NUFeedTitleViewUpdate *)v7 setFeedImage:v6];

  [(NUFeedTitleViewUpdate *)v7 setAccessibilityTitle:v5];

  return v7;
}

+ (id)feedTitleViewUpdateCheckingForNewStoriesForType:(unint64_t)a3
{
  v3 = [[NUFeedTitleViewUpdate alloc] initWithType:a3 updateType:1];

  return v3;
}

+ (id)feedTitleViewUpdateCheckingForUpdatesForType:(unint64_t)a3
{
  v3 = [[NUFeedTitleViewUpdate alloc] initWithType:a3 updateType:2];

  return v3;
}

+ (id)feedTitleViewUpdateNewStoriesWithStoryForType:(unint64_t)a3 storyCount:(unint64_t)a4
{
  v5 = [[NUFeedTitleViewUpdate alloc] initWithType:a3 updateType:3];
  [(NUFeedTitleViewUpdate *)v5 setStoryCount:a4];
  [(NUFeedTitleViewUpdate *)v5 setLingerTimeInterval:3.0];

  return v5;
}

+ (id)feedTitleViewUpdateNewStoriesWithStoryForType:(unint64_t)a3 storyCount:(unint64_t)a4 linger:(BOOL)a5
{
  v5 = a5;
  v7 = [[NUFeedTitleViewUpdate alloc] initWithType:a3 updateType:3];
  [(NUFeedTitleViewUpdate *)v7 setStoryCount:a4];
  v8 = 0.0;
  if (v5)
  {
    v8 = 3.0;
  }

  [(NUFeedTitleViewUpdate *)v7 setLingerTimeInterval:v8];

  return v7;
}

- (NUFeedTitleViewUpdate)initWithType:(unint64_t)a3 updateType:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = NUFeedTitleViewUpdate;
  result = [(NUFeedTitleViewUpdate *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_updateType = a4;
    result->_lingerTimeInterval = 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [[NUFeedTitleViewUpdate alloc] initWithType:[(NUFeedTitleViewUpdate *)self type] updateType:[(NUFeedTitleViewUpdate *)self updateType]];
  [(NUFeedTitleViewUpdate *)v5 setStoryCount:[(NUFeedTitleViewUpdate *)self storyCount]];
  v6 = [(NUFeedTitleViewUpdate *)self feedName];
  v7 = [v6 copyWithZone:a3];
  [(NUFeedTitleViewUpdate *)v5 setFeedName:v7];

  v8 = [(NUFeedTitleViewUpdate *)self feedImage];
  [(NUFeedTitleViewUpdate *)v5 setFeedImage:v8];

  [(NUFeedTitleViewUpdate *)self lingerTimeInterval];
  [(NUFeedTitleViewUpdate *)v5 setLingerTimeInterval:?];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NUFeedTitleViewUpdate *)self type];
      if (v6 == [(NUFeedTitleViewUpdate *)v5 type]&& (v7 = [(NUFeedTitleViewUpdate *)self updateType], v7 == [(NUFeedTitleViewUpdate *)v5 updateType]) && ([(NUFeedTitleViewUpdate *)self lingerTimeInterval], v9 = v8, [(NUFeedTitleViewUpdate *)v5 lingerTimeInterval], v9 == v10))
      {
        if ([(NUFeedTitleViewUpdate *)self updateType])
        {
          v11 = 1;
        }

        else
        {
          v13 = MEMORY[0x277D82BB8];
          v14 = [(NUFeedTitleViewUpdate *)self feedImage];
          v15 = [(NUFeedTitleViewUpdate *)v5 feedImage];
          if ([v13 nf_object:v14 isEqualToObject:v15])
          {
            v11 = 1;
          }

          else
          {
            v16 = MEMORY[0x277D82BB8];
            v17 = [(NUFeedTitleViewUpdate *)self feedImage];
            v18 = [(NUFeedTitleViewUpdate *)v5 feedImage];
            v11 = [v16 nf_object:v17 isEqualToObject:v18];
          }
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end
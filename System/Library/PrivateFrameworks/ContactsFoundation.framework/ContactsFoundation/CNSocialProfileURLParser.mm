@interface CNSocialProfileURLParser
+ (id)parseSocialProfileURL:(id)a3;
+ (id)parseURLStringByInference:(id)a3;
+ (id)parseURLStringWithRegularExpressions:(id)a3;
+ (id)servicesDictionary;
+ (void)enumerateMatchesWithRegexPattern:(id)a3 inString:(id)a4 withBlock:(id)a5;
+ (void)enumerateServiceMatchesForURLString:(id)a3 withBlock:(id)a4;
@end

@implementation CNSocialProfileURLParser

+ (id)parseSocialProfileURL:(id)a3
{
  v4 = a3;
  if (off_1EF440708(&__block_literal_global_120, v4))
  {
    v5 = +[CNFoundationSocialProfile emptySocialProfile];
  }

  else
  {
    v5 = [a1 parseURLStringWithRegularExpressions:v4];
    if ([v5 isEmpty])
    {
      v6 = [a1 parseURLStringByInference:v4];

      v5 = v6;
    }
  }

  return v5;
}

+ (id)parseURLStringWithRegularExpressions:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = +[CNFoundationSocialProfile emptySocialProfile];
  v7 = [v5 arrayWithObject:v6];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __65__CNSocialProfileURLParser_parseURLStringWithRegularExpressions___block_invoke;
  v15 = &unk_1E6ED5D88;
  v16 = v4;
  v17 = v7;
  v8 = v7;
  v9 = v4;
  [a1 enumerateServiceMatchesForURLString:v9 withBlock:&v12];
  v10 = [v8 objectAtIndexedSubscript:{0, v12, v13, v14, v15}];

  return v10;
}

void __65__CNSocialProfileURLParser_parseURLStringWithRegularExpressions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  if ([v12 numberOfRanges] < 3)
  {
    v10 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v12 rangeAtIndex:2];
    v9 = [v6 substringWithRange:{v7, v8}];
    v10 = [v9 stringByRemovingPercentEncoding];
  }

  v11 = [[CNFoundationSocialProfile alloc] initWithUrlString:*(a1 + 32) username:v10 userIdentifier:0 service:v5 displayName:0];

  [*(a1 + 40) setObject:v11 atIndexedSubscript:0];
}

+ (void)enumerateServiceMatchesForURLString:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 servicesDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CNSocialProfileURLParser_enumerateServiceMatchesForURLString_withBlock___block_invoke;
  v11[3] = &unk_1E6ED5DD8;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
}

void __74__CNSocialProfileURLParser_enumerateServiceMatchesForURLString_withBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CNSocialProfileURLParser_enumerateServiceMatchesForURLString_withBlock___block_invoke_2;
  v10[3] = &unk_1E6ED5DB0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v7 enumerateMatchesWithRegexPattern:a2 inString:v6 withBlock:v10];
}

+ (void)enumerateMatchesWithRegexPattern:(id)a3 inString:(id)a4 withBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__CNSocialProfileURLParser_enumerateMatchesWithRegexPattern_inString_withBlock___block_invoke;
  v12[3] = &unk_1E6ED5E00;
  v13 = v7;
  v11 = v7;
  [v9 enumerateMatchesInString:v8 options:0 range:0 usingBlock:{v10, v12}];
}

+ (id)parseURLStringByInference:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  v5 = [v4 scheme];
  v6 = v3;
  if ([v5 isEqualToString:@"x-apple"])
  {
    v7 = [v4 resourceSpecifier];
    v8 = [v7 stringByRemovingPercentEncoding];

    v9 = 0;
  }

  else
  {
    v10 = [v5 length];
    if (v10)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    if (v10)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }
  }

  v11 = [v4 host];
  v12 = v11;
  if (v11 && ![v11 rangeOfString:@"www."])
  {
    v13 = [v12 substringFromIndex:4];

    v12 = v13;
  }

  if (off_1EF440708(&__block_literal_global_120, v12))
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [[CNFoundationSocialProfile alloc] initWithUrlString:v9 username:v8 userIdentifier:0 service:v15 displayName:0];

  return v16;
}

+ (id)servicesDictionary
{
  if (servicesDictionary_cn_once_token_0 != -1)
  {
    +[CNSocialProfileURLParser servicesDictionary];
  }

  v3 = servicesDictionary_cn_once_object_0;

  return v3;
}

void __46__CNSocialProfileURLParser_servicesDictionary__block_invoke()
{
  v19[14] = *MEMORY[0x1E69E9840];
  v17 = sRE(@"https?://(?:www\\.)?(facebook\\.com)/profile\\.php\\?id=(?:\\d+)$");
  v18[0] = v17;
  v19[0] = @"Facebook";
  v16 = sRE(@"https?://(?:www\\.)?(facebook\\.com)/([%\\w\\d\\.]+)$");
  v18[1] = v16;
  v19[1] = @"Facebook";
  v15 = sRE(@"http://(?:www\\.)?(flickr\\.com)(?:/photos|profile)?/([%\\w\\d]+)/?$");
  v18[2] = v15;
  v19[2] = @"Flickr";
  v14 = sRE(@"https?://(?:www\\.)?(linkedin\\.com)/in/([%\\w\\d]+)/?$");
  v18[3] = v14;
  v19[3] = @"LinkedIn";
  v13 = sRE(@"https?://(?:www\\.)?(linkedin\\.com)/pub/[%\\w\\d-]+/.+$");
  v18[4] = v13;
  v19[4] = @"LinkedIn";
  v0 = sRE(@"https?://(?:www\\.)?(linkedin\\.com)/profile/view\\?id=(?:\\d+).*");
  v18[5] = v0;
  v19[5] = @"LinkedIn";
  v1 = sRE(@"http://(?:www\\.)?(myspace\\.com)/([%\\w\\d]+)/?$");
  v18[6] = v1;
  v19[6] = @"MySpace";
  v2 = sRE(@"https?://(?:www\\.)?(twitter\\.com)/(?:#!/)?([%\\w\\d]+)/?$");
  v18[7] = v2;
  v19[7] = @"Twitter";
  v3 = sRE(@"https?://(?:www\\.)?(x\\.com)/(?:#!/)?([%\\w\\d]+)/?$");
  v18[8] = v3;
  v19[8] = @"Twitter";
  v4 = sRE(@"https?://(?:www\\.)?(weibo\\.com)/u/(?:\\d+)/?$");
  v18[9] = v4;
  v19[9] = @"SinaWeibo";
  v5 = sRE(@"https?://(?:www\\.)?(weibo\\.com)/(?:n/)?([%\\w\\d]+)/?$");
  v18[10] = v5;
  v19[10] = @"SinaWeibo";
  v6 = sRE(@"https?://(?:www\\.)?(t\\.qq\\.com)/([%\\w\\d]+)/?$");
  v18[11] = v6;
  v19[11] = @"TencentWeibo";
  v7 = sRE(@"https?://(?:www\\.)?(yelp\\.com)/biz/([-\\w\\d]+)/?$");
  v18[12] = v7;
  v19[12] = @"Yelp";
  v8 = sRE(@"https?://(?:www\\.)?(yelp\\.com)/user_details\\?userid=(?:[\\w\\d_-]+)$");
  v18[13] = v8;
  v19[13] = @"Yelp";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:14];
  v10 = [v9 copy];
  v11 = servicesDictionary_cn_once_object_0;
  servicesDictionary_cn_once_object_0 = v10;

  v12 = *MEMORY[0x1E69E9840];
}

@end
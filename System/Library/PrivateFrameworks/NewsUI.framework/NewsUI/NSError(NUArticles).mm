@interface NSError(NUArticles)
+ (id)nu_errorArticleContentTypeUnsupported:()NUArticles;
+ (id)nu_errorArticleDownloadFailed:()NUArticles underlyingError:;
+ (id)nu_errorArticleMissingContentURL:()NUArticles;
+ (id)nu_errorArticleMissingHeadline:()NUArticles;
@end

@implementation NSError(NUArticles)

+ (id)nu_errorArticleMissingHeadline:()NUArticles
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v13[0] = @"articleId";
  articleID = [a3 articleID];
  v5 = articleID;
  v6 = @"nil";
  if (articleID)
  {
    v6 = articleID;
  }

  v14[0] = v6;
  v13[1] = *MEMORY[0x277CCA450];
  v7 = NUBundle();
  v8 = [v7 localizedStringForKey:@"Article did not load a headline" value:&stru_286E03B58 table:0];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 errorWithDomain:@"NUNewsUIErrorDomain" code:-1 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)nu_errorArticleContentTypeUnsupported:()NUArticles
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = NUBundle();
  v5 = [v4 localizedStringForKey:@"Article content type %llu is not supported by article viewer" value:&stru_286E03B58 table:0];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, objc_msgSend(v3, "contentType")];
  v7 = MEMORY[0x277CCA9B8];
  v18[0] = @"articleId";
  identifier = [v3 identifier];
  v9 = identifier;
  v10 = @"nil";
  if (identifier)
  {
    v10 = identifier;
  }

  v19[0] = v10;
  v18[1] = @"contentType";
  v11 = MEMORY[0x277CCABB0];
  contentType = [v3 contentType];

  v13 = [v11 numberWithUnsignedLongLong:contentType];
  v18[2] = *MEMORY[0x277CCA450];
  v19[1] = v13;
  v19[2] = v6;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v15 = [v7 errorWithDomain:@"NUNewsUIErrorDomain" code:-2 userInfo:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)nu_errorArticleMissingContentURL:()NUArticles
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v13[0] = @"articleId";
  identifier = [a3 identifier];
  v5 = identifier;
  v6 = @"nil";
  if (identifier)
  {
    v6 = identifier;
  }

  v14[0] = v6;
  v13[1] = *MEMORY[0x277CCA450];
  v7 = NUBundle();
  v8 = [v7 localizedStringForKey:@"Article missing content URL needed to load web view" value:&stru_286E03B58 table:0];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 errorWithDomain:@"NUNewsUIErrorDomain" code:-3 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)nu_errorArticleDownloadFailed:()NUArticles underlyingError:
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  dictionary = [v6 dictionary];
  articleID = [v7 articleID];

  if (articleID)
  {
    v10 = articleID;
  }

  else
  {
    v10 = @"nil";
  }

  [dictionary setObject:v10 forKeyedSubscript:@"articleId"];

  v11 = NUBundle();
  v12 = [v11 localizedStringForKey:@"Article download failed" value:&stru_286E03B58 table:0];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v5)
  {
    [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NUNewsUIErrorDomain" code:-4 userInfo:dictionary];

  return v13;
}

@end
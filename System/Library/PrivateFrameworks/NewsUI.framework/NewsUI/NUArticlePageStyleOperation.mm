@interface NUArticlePageStyleOperation
- (BOOL)validateOperation;
- (NUArticlePageStyleOperation)initWithArticle:(id)a3 pageNextAction:(unint64_t)a4 completion:(id)a5;
- (void)operationDidFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation NUArticlePageStyleOperation

- (NUArticlePageStyleOperation)initWithArticle:(id)a3 pageNextAction:(unint64_t)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = NUArticlePageStyleOperation;
  v11 = [(FCOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_article, a3);
    v12->_pageNextAction = a4;
    v13 = MEMORY[0x25F883F30](v10);
    completion = v12->_completion;
    v12->_completion = v13;
  }

  return v12;
}

- (BOOL)validateOperation
{
  v2 = [(NUArticlePageStyleOperation *)self article];
  v3 = v2 != 0;

  return v3;
}

- (void)performOperation
{
  v3 = [(NUArticlePageStyleOperation *)self article];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NUArticlePageStyleOperation_performOperation__block_invoke;
  v4[3] = &unk_2799A4980;
  v4[4] = self;
  [v3 performBlockWhenFullyLoaded:v4];
}

void __47__NUArticlePageStyleOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 headline];

  if (v4)
  {
    v5 = [v3 headline];
    v6 = [v5 sourceChannel];
    v7 = [v6 theme];

    v8 = [v7 nameImageAssetHandle];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__NUArticlePageStyleOperation_performOperation__block_invoke_2;
    v12[3] = &unk_2799A4468;
    v9 = *(a1 + 32);
    v13 = v8;
    v14 = v9;
    v15 = v3;
    v10 = v8;
    v11 = [v10 downloadIfNeededWithCompletion:v12];
  }

  else
  {
    [*(a1 + 32) operationDidFinishWithError:0];
  }
}

void __47__NUArticlePageStyleOperation_performOperation__block_invoke_2(id *a1)
{
  v2 = [a1[4] filePath];

  if (v2)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = [a1[4] filePath];
    v16 = [v3 imageWithContentsOfFile:v4];

    v5 = objc_alloc_init(NUPageStyle);
    [a1[5] setPageStyle:v5];

    v6 = [a1[5] pageStyle];
    [v6 setTitleImage:v16];

    v7 = [a1[6] headline];
    v8 = [v7 sourceName];
    v9 = [a1[5] pageStyle];
    [v9 setTitle:v8];

    v10 = NUBundle();
    v11 = [v10 localizedStringForKey:@"Next Story" value:&stru_286E03B58 table:0];
    v12 = [a1[5] pageStyle];
    [v12 setNextButtonTitle:v11];

    v13 = a1[5];
    v14 = 0;
  }

  else
  {
    v15 = a1[5];
    v14 = [a1[4] downloadError];
    v13 = v15;
    v16 = v14;
  }

  [v13 operationDidFinishWithError:v14];
}

- (void)operationDidFinishWithError:(id)a3
{
  v4 = a3;
  v6 = [(NUArticlePageStyleOperation *)self completion];
  v5 = [(NUArticlePageStyleOperation *)self pageStyle];
  v6[2](v6, v5, v4);
}

@end
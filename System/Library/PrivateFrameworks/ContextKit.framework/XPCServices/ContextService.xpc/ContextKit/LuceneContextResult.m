@interface LuceneContextResult
- (LuceneContextResult)initWithCoder:(id)a3;
- (LuceneContextResult)initWithDocId:(int64_t)a3 title:(id)a4 query:(id)a5 url:(id)a6 category:(id)a7;
- (LuceneContextResult)initWithText:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addToFoldedResults:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finalizeFoldedResult;
- (void)mergeWithResult:(id)a3;
@end

@implementation LuceneContextResult

- (LuceneContextResult)initWithDocId:(int64_t)a3 title:(id)a4 query:(id)a5 url:(id)a6 category:(id)a7
{
  v13.receiver = self;
  v13.super_class = LuceneContextResult;
  v8 = [(LuceneContextResult *)&v13 initWithTitle:a4 query:a5 url:a6 category:a7];
  v9 = v8;
  if (v8)
  {
    v8->_foldCurrentRank = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [NSNumber numberWithInteger:a3];
    docId = v9->_docId;
    v9->_docId = v10;
  }

  return v9;
}

- (LuceneContextResult)initWithText:(id)a3
{
  v7.receiver = self;
  v7.super_class = LuceneContextResult;
  v3 = [(LuceneContextResult *)&v7 initWithTitle:a3 query:a3 url:0 category:0];
  v4 = v3;
  if (v3)
  {
    v3->_foldCurrentRank = 0x7FFFFFFFFFFFFFFFLL;
    docId = v3->_docId;
    v3->_docId = 0;
  }

  return v4;
}

- (LuceneContextResult)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = LuceneContextResult;
  return [(LuceneContextResult *)&v4 initWithCoder:a3];
}

- (void)addToFoldedResults:(id)a3
{
  foldedResults = self->_foldedResults;
  if (foldedResults)
  {
    v4 = a3;
    v5 = foldedResults;
  }

  else
  {
    v7 = a3;
    v8 = +[NSMutableArray array];
    v9 = self->_foldedResults;
    self->_foldedResults = v8;

    v10 = self->_foldedResults;
    v11 = [(LuceneContextResult *)self copy];
    [(NSMutableArray *)v10 addObject:v11];

    v5 = self->_foldedResults;
    v4 = v7;
  }

  [(NSMutableArray *)v5 addObject:v4];
}

- (void)mergeWithResult:(id)a3
{
  v22 = a3;
  v4 = [(LuceneContextResult *)self topicId];

  if (!v4)
  {
    v5 = [v22 topicId];
    [(LuceneContextResult *)self setTopicId:v5];
  }

  v6 = [(LuceneContextResult *)self debug];
  v7 = v22;
  if (v6)
  {
    v8 = [v22 debug];

    v7 = v22;
    if (v8)
    {
      v9 = [(LuceneContextResult *)self debug];
      v10 = [v22 category];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = &stru_100484358;
      }

      v13 = [v22 debug];
      v14 = [v9 stringByAppendingFormat:@"\n  mergedWith: %@ %@", v12, v13];
      [(LuceneContextResult *)self setDebug:v14];

      v7 = v22;
    }
  }

  v15 = [v7 tags];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(LuceneContextResult *)self tags];
    v18 = [v17 count];

    if (v18)
    {
      v19 = [(LuceneContextResult *)self tags];
      v20 = [v22 tags];
      v21 = [v19 setByAddingObjectsFromSet:v20];
      [(LuceneContextResult *)self setTags:v21];
    }

    else
    {
      v19 = [v22 tags];
      v20 = [v19 copy];
      [(LuceneContextResult *)self setTags:v20];
    }
  }

  [(LuceneContextResult *)self addToFoldedResults:v22];
}

- (void)finalizeFoldedResult
{
  v12 = [(NSMutableArray *)self->_foldedResults objectAtIndexedSubscript:0];
  v3 = [v12 docId];
  [(LuceneContextResult *)self setDocId:v3];

  v4 = [v12 title];
  [(LuceneContextResult *)self setTitle:v4];

  v5 = [v12 query];
  [(LuceneContextResult *)self setQuery:v5];

  v6 = [v12 url];
  [(LuceneContextResult *)self setUrl:v6];

  v7 = [v12 topicId];
  [(LuceneContextResult *)self setTopicId:v7];

  v8 = [v12 category];
  [(LuceneContextResult *)self setCategory:v8];

  v9 = [v12 debug];
  [(LuceneContextResult *)self setDebug:v9];

  -[LuceneContextResult setTitlePrimary:](self, "setTitlePrimary:", [v12 titlePrimary]);
  -[LuceneContextResult setTitleMatch:](self, "setTitleMatch:", [v12 titleMatch]);
  [v12 relativeScore];
  [(LuceneContextResult *)self setRelativeScore:?];
  [v12 luceneScore];
  [(LuceneContextResult *)self setLuceneScore:?];
  v10 = [v12 titleTokenString];
  [(LuceneContextResult *)self setTitleTokenString:v10];

  -[LuceneContextResult setMinPrefix:](self, "setMinPrefix:", [v12 minPrefix]);
  -[LuceneContextResult setForceBottomRank:](self, "setForceBottomRank:", [v12 forceBottomRank]);
  v11 = [v12 relatedField];
  [(LuceneContextResult *)self setRelatedField:v11];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = LuceneContextResult;
  [(LuceneContextResult *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = LuceneContextResult;
  v4 = [(LuceneContextResult *)&v8 copyWithZone:a3];
  [v4 setDocId:self->_docId];
  [v4 setTitlePrimary:self->_titlePrimary];
  [v4 setTitleMatch:self->_titleMatch];
  *&v5 = self->_relativeScore;
  [v4 setRelativeScore:v5];
  *&v6 = self->_luceneScore;
  [v4 setLuceneScore:v6];
  [v4 setTerm:self->_term];
  [v4 setTitleTokenString:self->_titleTokenString];
  [v4 setForceBottomRank:self->_forceBottomRank];
  [v4 setRelatedField:self->_relatedField];
  return v4;
}

@end
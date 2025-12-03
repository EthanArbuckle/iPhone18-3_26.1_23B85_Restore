@interface LuceneContextResult
- (LuceneContextResult)initWithCoder:(id)coder;
- (LuceneContextResult)initWithDocId:(int64_t)id title:(id)title query:(id)query url:(id)url category:(id)category;
- (LuceneContextResult)initWithText:(id)text;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addToFoldedResults:(id)results;
- (void)encodeWithCoder:(id)coder;
- (void)finalizeFoldedResult;
- (void)mergeWithResult:(id)result;
@end

@implementation LuceneContextResult

- (LuceneContextResult)initWithDocId:(int64_t)id title:(id)title query:(id)query url:(id)url category:(id)category
{
  v13.receiver = self;
  v13.super_class = LuceneContextResult;
  v8 = [(LuceneContextResult *)&v13 initWithTitle:title query:query url:url category:category];
  v9 = v8;
  if (v8)
  {
    v8->_foldCurrentRank = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [NSNumber numberWithInteger:id];
    docId = v9->_docId;
    v9->_docId = v10;
  }

  return v9;
}

- (LuceneContextResult)initWithText:(id)text
{
  v7.receiver = self;
  v7.super_class = LuceneContextResult;
  v3 = [(LuceneContextResult *)&v7 initWithTitle:text query:text url:0 category:0];
  v4 = v3;
  if (v3)
  {
    v3->_foldCurrentRank = 0x7FFFFFFFFFFFFFFFLL;
    docId = v3->_docId;
    v3->_docId = 0;
  }

  return v4;
}

- (LuceneContextResult)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = LuceneContextResult;
  return [(LuceneContextResult *)&v4 initWithCoder:coder];
}

- (void)addToFoldedResults:(id)results
{
  foldedResults = self->_foldedResults;
  if (foldedResults)
  {
    resultsCopy = results;
    v5 = foldedResults;
  }

  else
  {
    resultsCopy2 = results;
    v8 = +[NSMutableArray array];
    v9 = self->_foldedResults;
    self->_foldedResults = v8;

    v10 = self->_foldedResults;
    v11 = [(LuceneContextResult *)self copy];
    [(NSMutableArray *)v10 addObject:v11];

    v5 = self->_foldedResults;
    resultsCopy = resultsCopy2;
  }

  [(NSMutableArray *)v5 addObject:resultsCopy];
}

- (void)mergeWithResult:(id)result
{
  resultCopy = result;
  topicId = [(LuceneContextResult *)self topicId];

  if (!topicId)
  {
    topicId2 = [resultCopy topicId];
    [(LuceneContextResult *)self setTopicId:topicId2];
  }

  debug = [(LuceneContextResult *)self debug];
  v7 = resultCopy;
  if (debug)
  {
    debug2 = [resultCopy debug];

    v7 = resultCopy;
    if (debug2)
    {
      debug3 = [(LuceneContextResult *)self debug];
      category = [resultCopy category];
      v11 = category;
      if (category)
      {
        v12 = category;
      }

      else
      {
        v12 = &stru_100484358;
      }

      debug4 = [resultCopy debug];
      v14 = [debug3 stringByAppendingFormat:@"\n  mergedWith: %@ %@", v12, debug4];
      [(LuceneContextResult *)self setDebug:v14];

      v7 = resultCopy;
    }
  }

  tags = [v7 tags];
  v16 = [tags count];

  if (v16)
  {
    tags2 = [(LuceneContextResult *)self tags];
    v18 = [tags2 count];

    if (v18)
    {
      tags3 = [(LuceneContextResult *)self tags];
      tags4 = [resultCopy tags];
      v21 = [tags3 setByAddingObjectsFromSet:tags4];
      [(LuceneContextResult *)self setTags:v21];
    }

    else
    {
      tags3 = [resultCopy tags];
      tags4 = [tags3 copy];
      [(LuceneContextResult *)self setTags:tags4];
    }
  }

  [(LuceneContextResult *)self addToFoldedResults:resultCopy];
}

- (void)finalizeFoldedResult
{
  v12 = [(NSMutableArray *)self->_foldedResults objectAtIndexedSubscript:0];
  docId = [v12 docId];
  [(LuceneContextResult *)self setDocId:docId];

  title = [v12 title];
  [(LuceneContextResult *)self setTitle:title];

  query = [v12 query];
  [(LuceneContextResult *)self setQuery:query];

  v6 = [v12 url];
  [(LuceneContextResult *)self setUrl:v6];

  topicId = [v12 topicId];
  [(LuceneContextResult *)self setTopicId:topicId];

  category = [v12 category];
  [(LuceneContextResult *)self setCategory:category];

  debug = [v12 debug];
  [(LuceneContextResult *)self setDebug:debug];

  -[LuceneContextResult setTitlePrimary:](self, "setTitlePrimary:", [v12 titlePrimary]);
  -[LuceneContextResult setTitleMatch:](self, "setTitleMatch:", [v12 titleMatch]);
  [v12 relativeScore];
  [(LuceneContextResult *)self setRelativeScore:?];
  [v12 luceneScore];
  [(LuceneContextResult *)self setLuceneScore:?];
  titleTokenString = [v12 titleTokenString];
  [(LuceneContextResult *)self setTitleTokenString:titleTokenString];

  -[LuceneContextResult setMinPrefix:](self, "setMinPrefix:", [v12 minPrefix]);
  -[LuceneContextResult setForceBottomRank:](self, "setForceBottomRank:", [v12 forceBottomRank]);
  relatedField = [v12 relatedField];
  [(LuceneContextResult *)self setRelatedField:relatedField];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = LuceneContextResult;
  [(LuceneContextResult *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = LuceneContextResult;
  v4 = [(LuceneContextResult *)&v8 copyWithZone:zone];
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
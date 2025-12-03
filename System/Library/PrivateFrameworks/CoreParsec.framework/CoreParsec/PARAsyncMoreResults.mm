@interface PARAsyncMoreResults
+ (id)moreResults:(id)results label:(id)label session:(id)session scale:(double)scale queryId:(unint64_t)id;
+ (id)moreResults:(id)results label:(id)label session:(id)session scale:(double)scale queryId:(unint64_t)id clientQueryId:(unint64_t)queryId;
- (PARAsyncMoreResults)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARAsyncMoreResults

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PARAsyncMoreResults;
  coderCopy = coder;
  [(SFMoreResults *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_moreResultsURL forKey:{@"_moreResultsURL", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"_scale" forKey:self->_scale];
  [coderCopy encodeInt64:self->_queryId forKey:@"_queryId"];
  [coderCopy encodeInt64:self->_clientQueryId forKey:@"_clientQueryId"];
}

- (PARAsyncMoreResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PARAsyncMoreResults;
  v5 = [(SFMoreResults *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_moreResultsURL"];
    moreResultsURL = v5->_moreResultsURL;
    v5->_moreResultsURL = v6;

    [coderCopy decodeDoubleForKey:@"_scale"];
    v5->_scale = v8;
    v5->_queryId = [coderCopy decodeInt64ForKey:@"_queryId"];
    v5->_clientQueryId = [coderCopy decodeInt64ForKey:@"_clientQueryId"];
  }

  return v5;
}

+ (id)moreResults:(id)results label:(id)label session:(id)session scale:(double)scale queryId:(unint64_t)id clientQueryId:(unint64_t)queryId
{
  result = [self moreResults:results label:label session:session scale:id queryId:scale];
  if (result)
  {
    *(result + 5) = queryId;
  }

  return result;
}

+ (id)moreResults:(id)results label:(id)label session:(id)session scale:(double)scale queryId:(unint64_t)id
{
  labelCopy = label;
  resultsCopy = results;
  v12 = objc_alloc_init(PARAsyncMoreResults);
  [(SFMoreResults *)v12 setLabel:labelCopy];

  v13 = [resultsCopy copy];
  moreResultsURL = v12->_moreResultsURL;
  v12->_moreResultsURL = v13;

  v12->_scale = scale;
  v12->_queryId = id;

  return v12;
}

@end
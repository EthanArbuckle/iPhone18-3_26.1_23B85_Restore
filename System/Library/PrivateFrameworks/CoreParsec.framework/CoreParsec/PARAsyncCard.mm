@interface PARAsyncCard
+ (id)cardWithTitle:(id)title url:(id)url session:(id)session scale:(double)scale queryId:(unint64_t)id;
+ (id)cardWithTitle:(id)title url:(id)url session:(id)session scale:(double)scale queryId:(unint64_t)id clientQueryId:(unint64_t)queryId;
- (PARAsyncCard)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARAsyncCard

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PARAsyncCard;
  coderCopy = coder;
  [(PARAsyncCard *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"_scale" forKey:{self->_scale, v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_clientQueryId forKey:@"_clientQueryId"];
}

- (PARAsyncCard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PARAsyncCard;
  v5 = [(PARAsyncCard *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_scale"];
    v5->_scale = v6;
    v5->_clientQueryId = [coderCopy decodeInt64ForKey:@"_clientQueryId"];
  }

  return v5;
}

+ (id)cardWithTitle:(id)title url:(id)url session:(id)session scale:(double)scale queryId:(unint64_t)id clientQueryId:(unint64_t)queryId
{
  result = [self cardWithTitle:title url:url session:session scale:id queryId:scale];
  if (result)
  {
    *(result + 25) = queryId;
  }

  return result;
}

+ (id)cardWithTitle:(id)title url:(id)url session:(id)session scale:(double)scale queryId:(unint64_t)id
{
  urlCopy = url;
  titleCopy = title;
  v12 = objc_alloc_init(PARAsyncCard);
  [(PARAsyncCard *)v12 setType:2];
  [(PARAsyncCard *)v12 setSource:1];
  [(PARAsyncCard *)v12 setTitle:titleCopy];

  v13 = [urlCopy copy];
  [(PARAsyncCard *)v12 setUrlValue:v13];

  [(PARAsyncCard *)v12 setQueryId:id];
  v12->_scale = scale;

  return v12;
}

@end
@interface PARAsyncCard
+ (id)cardWithTitle:(id)a3 url:(id)a4 session:(id)a5 scale:(double)a6 queryId:(unint64_t)a7;
+ (id)cardWithTitle:(id)a3 url:(id)a4 session:(id)a5 scale:(double)a6 queryId:(unint64_t)a7 clientQueryId:(unint64_t)a8;
- (PARAsyncCard)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARAsyncCard

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PARAsyncCard;
  v4 = a3;
  [(PARAsyncCard *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"_scale" forKey:{self->_scale, v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_clientQueryId forKey:@"_clientQueryId"];
}

- (PARAsyncCard)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PARAsyncCard;
  v5 = [(PARAsyncCard *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_scale"];
    v5->_scale = v6;
    v5->_clientQueryId = [v4 decodeInt64ForKey:@"_clientQueryId"];
  }

  return v5;
}

+ (id)cardWithTitle:(id)a3 url:(id)a4 session:(id)a5 scale:(double)a6 queryId:(unint64_t)a7 clientQueryId:(unint64_t)a8
{
  result = [a1 cardWithTitle:a3 url:a4 session:a5 scale:a7 queryId:a6];
  if (result)
  {
    *(result + 25) = a8;
  }

  return result;
}

+ (id)cardWithTitle:(id)a3 url:(id)a4 session:(id)a5 scale:(double)a6 queryId:(unint64_t)a7
{
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(PARAsyncCard);
  [(PARAsyncCard *)v12 setType:2];
  [(PARAsyncCard *)v12 setSource:1];
  [(PARAsyncCard *)v12 setTitle:v11];

  v13 = [v10 copy];
  [(PARAsyncCard *)v12 setUrlValue:v13];

  [(PARAsyncCard *)v12 setQueryId:a7];
  v12->_scale = a6;

  return v12;
}

@end
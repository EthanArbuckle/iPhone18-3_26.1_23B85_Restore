@interface MRMediaSuggestionRequestOptions
+ (id)defaultOptions;
- (MRMediaSuggestionRequestOptions)initWithBlock:(id)a3;
- (NSString)description;
@end

@implementation MRMediaSuggestionRequestOptions

- (MRMediaSuggestionRequestOptions)initWithBlock:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MRMediaSuggestionRequestOptions;
  v5 = [(MRMediaSuggestionRequestOptions *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

+ (id)defaultOptions
{
  v2 = objc_alloc_init(MRMediaSuggestionRequestOptions);

  return v2;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRMediaSuggestionRequestOptions *)self bundleIdentifiers];
  v6 = [(MRMediaSuggestionRequestOptions *)self contexts];
  v7 = [v3 initWithFormat:@"<%@: bundles=%@, contexts=%@>", v4, v5, v6];

  return v7;
}

@end
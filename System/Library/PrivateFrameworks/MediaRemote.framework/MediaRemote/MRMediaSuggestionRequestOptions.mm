@interface MRMediaSuggestionRequestOptions
+ (id)defaultOptions;
- (MRMediaSuggestionRequestOptions)initWithBlock:(id)block;
- (NSString)description;
@end

@implementation MRMediaSuggestionRequestOptions

- (MRMediaSuggestionRequestOptions)initWithBlock:(id)block
{
  blockCopy = block;
  v7.receiver = self;
  v7.super_class = MRMediaSuggestionRequestOptions;
  v5 = [(MRMediaSuggestionRequestOptions *)&v7 init];
  if (v5)
  {
    blockCopy[2](blockCopy, v5);
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
  bundleIdentifiers = [(MRMediaSuggestionRequestOptions *)self bundleIdentifiers];
  contexts = [(MRMediaSuggestionRequestOptions *)self contexts];
  v7 = [v3 initWithFormat:@"<%@: bundles=%@, contexts=%@>", v4, bundleIdentifiers, contexts];

  return v7;
}

@end
@interface NLResourceWrapper
+ (id)copyAssetURLWithLocale:(id)a3 contentType:(id)a4 contentName:(id)a5;
@end

@implementation NLResourceWrapper

+ (id)copyAssetURLWithLocale:(id)a3 contentType:(id)a4 contentName:(id)a5
{
  CoreNLP::Resource::getAssetResource(a3, a4, a5, 0, &v8);
  if (v8 && CoreNLP::Resource::exists(v8, v5))
  {
    v6 = [CoreNLP::Resource::URL(v8) copy];
  }

  else
  {
    v6 = 0;
  }

  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&v8);
  return v6;
}

@end
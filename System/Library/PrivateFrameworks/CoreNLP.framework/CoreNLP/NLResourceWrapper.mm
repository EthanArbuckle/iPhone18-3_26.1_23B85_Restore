@interface NLResourceWrapper
+ (id)copyAssetURLWithLocale:(id)locale contentType:(id)type contentName:(id)name;
@end

@implementation NLResourceWrapper

+ (id)copyAssetURLWithLocale:(id)locale contentType:(id)type contentName:(id)name
{
  CoreNLP::Resource::getAssetResource(locale, type, name, 0, &v8);
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
@interface PKAggregateDictionary
+ (id)sharedDictionary;
@end

@implementation PKAggregateDictionary

+ (id)sharedDictionary
{
  if (qword_1ED6D2078 != -1)
  {
    dispatch_once(&qword_1ED6D2078, &__block_literal_global_189);
  }

  v3 = _MergedGlobals_263;

  return v3;
}

void __41__PKAggregateDictionary_sharedDictionary__block_invoke()
{
  v0 = objc_alloc_init(PKAggregateDictionary);
  v1 = _MergedGlobals_263;
  _MergedGlobals_263 = v0;
}

@end
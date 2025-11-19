@interface NTKDateStyleFromStringDict
@end

@implementation NTKDateStyleFromStringDict

void ___NTKDateStyleFromStringDict_block_invoke()
{
  v2 = _NTKStringFromDateStyleDict();
  v0 = _DictionaryByReversingDictionary(v2);
  v1 = _NTKDateStyleFromStringDict_dictionary;
  _NTKDateStyleFromStringDict_dictionary = v0;
}

@end
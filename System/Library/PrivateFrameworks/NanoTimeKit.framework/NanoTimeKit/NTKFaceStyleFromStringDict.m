@interface NTKFaceStyleFromStringDict
@end

@implementation NTKFaceStyleFromStringDict

void ___NTKFaceStyleFromStringDict_block_invoke()
{
  v2 = _NTKStringFromFaceStyleDict();
  v0 = _DictionaryByReversingDictionary(v2);
  v1 = _NTKFaceStyleFromStringDict_dictionary;
  _NTKFaceStyleFromStringDict_dictionary = v0;
}

@end
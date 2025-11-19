@interface NTKEditModeFromStringDict
@end

@implementation NTKEditModeFromStringDict

void ___NTKEditModeFromStringDict_block_invoke()
{
  v2 = _NTKStringFromEditModeDict();
  v0 = _DictionaryByReversingDictionary(v2);
  v1 = _NTKEditModeFromStringDict_dictionary;
  _NTKEditModeFromStringDict_dictionary = v0;
}

@end
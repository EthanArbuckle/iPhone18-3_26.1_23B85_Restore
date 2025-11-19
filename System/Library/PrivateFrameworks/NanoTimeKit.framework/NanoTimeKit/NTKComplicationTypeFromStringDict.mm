@interface NTKComplicationTypeFromStringDict
@end

@implementation NTKComplicationTypeFromStringDict

void ___NTKComplicationTypeFromStringDict_block_invoke()
{
  v2 = _NTKStringFromComplicationTypeDict();
  v0 = _DictionaryByReversingDictionary(v2);
  v1 = _NTKComplicationTypeFromStringDict_dictionary;
  _NTKComplicationTypeFromStringDict_dictionary = v0;
}

@end
@interface NTKComplicationSlotFromStringDict
@end

@implementation NTKComplicationSlotFromStringDict

void ___NTKComplicationSlotFromStringDict_block_invoke()
{
  v2 = _NTKStringFromComplicationSlotDict();
  v0 = _DictionaryByReversingDictionary(v2);
  v1 = _NTKComplicationSlotFromStringDict_dictionary;
  _NTKComplicationSlotFromStringDict_dictionary = v0;
}

@end
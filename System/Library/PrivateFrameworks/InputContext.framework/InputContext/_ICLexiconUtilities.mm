@interface _ICLexiconUtilities
+ (BOOL)lexiconContainsEntry:(_LXLexicon *)entry forString:(id)string;
+ (_LXEntry)copyEntry:(_LXLexicon *)entry forString:(id)string;
+ (id)sortKeyEquivalents:(_LXLexicon *)equivalents forString:(id)string;
@end

@implementation _ICLexiconUtilities

+ (BOOL)lexiconContainsEntry:(_LXLexicon *)entry forString:(id)string
{
  stringCopy = string;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  LXLexiconEnumerateEntriesForString();
  v5 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v5;
}

+ (id)sortKeyEquivalents:(_LXLexicon *)equivalents forString:(id)string
{
  v4 = MEMORY[0x277CBEB18];
  stringCopy = string;
  array = [v4 array];
  LXLexiconEnumerateEntriesForString();

  return array;
}

+ (_LXEntry)copyEntry:(_LXLexicon *)entry forString:(id)string
{
  stringCopy = string;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  LXLexiconEnumerateEntriesForString();
  v5 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v5;
}

@end
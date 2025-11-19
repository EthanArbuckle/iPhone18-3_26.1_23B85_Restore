@interface _ICLexiconUtilities
+ (BOOL)lexiconContainsEntry:(_LXLexicon *)a3 forString:(id)a4;
+ (_LXEntry)copyEntry:(_LXLexicon *)a3 forString:(id)a4;
+ (id)sortKeyEquivalents:(_LXLexicon *)a3 forString:(id)a4;
@end

@implementation _ICLexiconUtilities

+ (BOOL)lexiconContainsEntry:(_LXLexicon *)a3 forString:(id)a4
{
  v4 = a4;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  LXLexiconEnumerateEntriesForString();
  v5 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v5;
}

+ (id)sortKeyEquivalents:(_LXLexicon *)a3 forString:(id)a4
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a4;
  v7 = [v4 array];
  LXLexiconEnumerateEntriesForString();

  return v7;
}

+ (_LXEntry)copyEntry:(_LXLexicon *)a3 forString:(id)a4
{
  v4 = a4;
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